.class public Lorg/apache/ftpserver/command/impl/MD5;
.super Lorg/apache/ftpserver/command/AbstractCommand;
.source "SourceFile"


# static fields
.field private static final DIGITS:[C


# instance fields
.field private final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/ftpserver/command/impl/MD5;->DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/ftpserver/command/AbstractCommand;-><init>()V

    const-class v0, Lorg/apache/ftpserver/command/impl/MD5;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/MD5;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public static encodeHex([B)[C
    .locals 8

    array-length v0, p0

    shl-int/lit8 v1, v0, 0x1

    new-array v1, v1, [C

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit8 v4, v3, 0x1

    sget-object v5, Lorg/apache/ftpserver/command/impl/MD5;->DIGITS:[C

    aget-byte v6, p0, v2

    and-int/lit16 v7, v6, 0xf0

    ushr-int/lit8 v7, v7, 0x4

    aget-char v7, v5, v7

    aput-char v7, v1, v3

    add-int/lit8 v3, v3, 0x2

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private md5(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3

    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    new-instance v1, Ljava/security/DigestInputStream;

    invoke-direct {v1, p1, v0}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    const/16 p1, 0x400

    new-array p1, p1, [B

    :goto_0
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ftpserver/command/impl/MD5;->encodeHex([B)[C

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method


# virtual methods
.method public execute(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/ftplet/FtpRequest;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    invoke-interface/range {p3 .. p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getCommand()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MMD5"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface/range {p3 .. p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_c

    :cond_0
    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v9, :cond_1

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    goto :goto_0

    :cond_1
    new-array v2, v11, [Ljava/lang/String;

    aput-object v0, v2, v10

    move-object v12, v2

    :goto_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    :goto_1
    array-length v0, v12

    if-ge v14, v0, :cond_8

    aget-object v0, v12, v14

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFileSystemView()Lorg/apache/ftpserver/ftplet/FileSystemView;

    move-result-object v0

    invoke-interface {v0, v7}, Lorg/apache/ftpserver/ftplet/FileSystemView;->getFile(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/FtpFile;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v3, v1, Lorg/apache/ftpserver/command/impl/MD5;->LOG:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception getting the file object: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    :goto_2
    if-nez v0, :cond_2

    :goto_3
    const/16 v5, 0x1f8

    const-string v6, "MD5.invalid"

    :goto_4
    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    return-void

    :cond_2
    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/FtpFile;->isFile()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    const-wide/16 v3, 0x0

    :try_start_1
    invoke-interface {v0, v3, v4}, Lorg/apache/ftpserver/ftplet/FtpFile;->createInputStream(J)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ftpserver/command/impl/MD5;->md5(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    if-lez v14, :cond_4

    const-string v3, ", "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    move-object v15, v2

    goto :goto_7

    :cond_4
    :goto_5
    const/16 v3, 0x20

    invoke-virtual {v7, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_6

    :cond_5
    const/4 v4, 0x0

    :goto_6
    const/16 v5, 0x22

    if-eqz v4, :cond_6

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_7

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/InputStream;)V

    goto :goto_8

    :goto_7
    :try_start_2
    iget-object v2, v1, Lorg/apache/ftpserver/command/impl/MD5;->LOG:Lorg/slf4j/Logger;

    const-string v3, "MD5 algorithm not available"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v6, "MD5.notimplemened"

    const/4 v7, 0x0

    const/16 v5, 0x1f6

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v15}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/InputStream;)V

    :goto_8
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v15

    :goto_9
    invoke-static {v2}, Lorg/apache/ftpserver/util/IoUtils;->close(Ljava/io/InputStream;)V

    throw v0

    :cond_8
    if-eqz v9, :cond_9

    const-string v6, "MMD5"

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v5, 0xfc

    :goto_a
    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    goto :goto_b

    :cond_9
    const-string v6, "MD5"

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v5, 0xfb

    goto :goto_a

    :goto_b
    return-void

    :cond_a
    :goto_c
    const-string v6, "MD5.invalid"

    const/4 v7, 0x0

    const/16 v5, 0x1f8

    goto/16 :goto_4
.end method
