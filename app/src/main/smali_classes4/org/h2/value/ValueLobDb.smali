.class public Lorg/h2/value/ValueLobDb;
.super Lorg/h2/value/Value;
.source "SourceFile"

# interfaces
.implements Lorg/h2/value/Value$ValueClob;
.implements Lorg/h2/value/Value$ValueBlob;


# instance fields
.field private final fileName:Ljava/lang/String;

.field private final handler:Lorg/h2/store/DataHandler;

.field private hash:I

.field private final hmac:[B

.field private isRecoveryReference:Z

.field private final lobId:J

.field private final precision:J

.field private final small:[B

.field private tableId:I

.field private final tempFile:Lorg/h2/store/FileStore;

.field private final type:I


# direct methods
.method private constructor <init>(ILorg/h2/store/DataHandler;IJ[BJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/h2/value/Value;-><init>()V

    iput p1, p0, Lorg/h2/value/ValueLobDb;->type:I

    iput-object p2, p0, Lorg/h2/value/ValueLobDb;->handler:Lorg/h2/store/DataHandler;

    iput p3, p0, Lorg/h2/value/ValueLobDb;->tableId:I

    iput-wide p4, p0, Lorg/h2/value/ValueLobDb;->lobId:J

    iput-object p6, p0, Lorg/h2/value/ValueLobDb;->hmac:[B

    iput-wide p7, p0, Lorg/h2/value/ValueLobDb;->precision:J

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/h2/value/ValueLobDb;->small:[B

    iput-object p1, p0, Lorg/h2/value/ValueLobDb;->fileName:Ljava/lang/String;

    iput-object p1, p0, Lorg/h2/value/ValueLobDb;->tempFile:Lorg/h2/store/FileStore;

    return-void
.end method

.method private constructor <init>(I[BJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/h2/value/Value;-><init>()V

    iput p1, p0, Lorg/h2/value/ValueLobDb;->type:I

    iput-object p2, p0, Lorg/h2/value/ValueLobDb;->small:[B

    iput-wide p3, p0, Lorg/h2/value/ValueLobDb;->precision:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lorg/h2/value/ValueLobDb;->lobId:J

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/h2/value/ValueLobDb;->hmac:[B

    iput-object p1, p0, Lorg/h2/value/ValueLobDb;->handler:Lorg/h2/store/DataHandler;

    iput-object p1, p0, Lorg/h2/value/ValueLobDb;->fileName:Ljava/lang/String;

    iput-object p1, p0, Lorg/h2/value/ValueLobDb;->tempFile:Lorg/h2/store/FileStore;

    return-void
.end method

.method private constructor <init>(Lorg/h2/store/DataHandler;Ljava/io/Reader;J)V
    .locals 8

    .line 3
    invoke-direct {p0}, Lorg/h2/value/Value;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lorg/h2/value/ValueLobDb;->type:I

    iput-object p1, p0, Lorg/h2/value/ValueLobDb;->handler:Lorg/h2/store/DataHandler;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/value/ValueLobDb;->small:[B

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/h2/value/ValueLobDb;->lobId:J

    iput-object v0, p0, Lorg/h2/value/ValueLobDb;->hmac:[B

    invoke-static {p1}, Lorg/h2/value/ValueLobDb;->createTempLobFileName(Lorg/h2/store/DataHandler;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/h2/value/ValueLobDb;->fileName:Ljava/lang/String;

    const-string v4, "rw"

    const/4 v5, 0x0

    invoke-interface {p1, v3, v4, v5}, Lorg/h2/store/DataHandler;->openFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/store/FileStore;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/value/ValueLobDb;->tempFile:Lorg/h2/store/FileStore;

    invoke-virtual {p1}, Lorg/h2/store/FileStore;->autoDelete()V

    new-instance v3, Lorg/h2/store/FileStoreOutputStream;

    invoke-direct {v3, p1, v0, v0}, Lorg/h2/store/FileStoreOutputStream;-><init>(Lorg/h2/store/FileStore;Lorg/h2/store/DataHandler;Ljava/lang/String;)V

    const/16 p1, 0x1000

    :try_start_0
    new-array p1, p1, [C

    :goto_0
    iget-object v0, p0, Lorg/h2/value/ValueLobDb;->handler:Lorg/h2/store/DataHandler;

    invoke-static {v0, v5, p3, p4}, Lorg/h2/value/ValueLobDb;->getBufferSize(Lorg/h2/store/DataHandler;ZJ)I

    move-result v0

    invoke-static {p2, p1, v0}, Lorg/h2/util/IOUtils;->readFully(Ljava/io/Reader;[CI)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    invoke-virtual {v3}, Lorg/h2/store/FileStoreOutputStream;->close()V

    iput-wide v1, p0, Lorg/h2/value/ValueLobDb;->precision:J

    return-void

    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1, v5, v0}, Ljava/lang/String;-><init>([CII)V

    const-string v6, "UTF-8"

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/h2/store/FileStoreOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v6, v0

    add-long/2addr v1, v6

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    :try_start_3
    invoke-virtual {v3}, Lorg/h2/store/FileStoreOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p3

    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p2
.end method

.method private constructor <init>(Lorg/h2/store/DataHandler;[BILjava/io/InputStream;J)V
    .locals 9

    .line 4
    invoke-direct {p0}, Lorg/h2/value/Value;-><init>()V

    const/16 v0, 0xf

    iput v0, p0, Lorg/h2/value/ValueLobDb;->type:I

    iput-object p1, p0, Lorg/h2/value/ValueLobDb;->handler:Lorg/h2/store/DataHandler;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/h2/value/ValueLobDb;->small:[B

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/h2/value/ValueLobDb;->lobId:J

    iput-object v1, p0, Lorg/h2/value/ValueLobDb;->hmac:[B

    invoke-static {p1}, Lorg/h2/value/ValueLobDb;->createTempLobFileName(Lorg/h2/store/DataHandler;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/h2/value/ValueLobDb;->fileName:Ljava/lang/String;

    const-string v5, "rw"

    const/4 v6, 0x0

    invoke-interface {p1, v4, v5, v6}, Lorg/h2/store/DataHandler;->openFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/store/FileStore;

    move-result-object v4

    iput-object v4, p0, Lorg/h2/value/ValueLobDb;->tempFile:Lorg/h2/store/FileStore;

    invoke-virtual {v4}, Lorg/h2/store/FileStore;->autoDelete()V

    new-instance v5, Lorg/h2/store/FileStoreOutputStream;

    invoke-direct {v5, v4, v1, v1}, Lorg/h2/store/FileStoreOutputStream;-><init>(Lorg/h2/store/FileStore;Lorg/h2/store/DataHandler;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lorg/h2/store/DataHandler;->getLobCompressionAlgorithm(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-wide v0, v2

    :cond_1
    int-to-long v7, p3

    add-long/2addr v0, v7

    :try_start_0
    invoke-virtual {v5, p2, v6, p3}, Lorg/h2/store/FileStoreOutputStream;->write([BII)V

    sub-long/2addr p5, v7

    cmp-long p3, p5, v2

    if-gtz p3, :cond_2

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lorg/h2/value/ValueLobDb;->handler:Lorg/h2/store/DataHandler;

    invoke-static {p3, p1, p5, p6}, Lorg/h2/value/ValueLobDb;->getBufferSize(Lorg/h2/store/DataHandler;ZJ)I

    move-result p3

    invoke-static {p4, p2, p3}, Lorg/h2/util/IOUtils;->readFully(Ljava/io/InputStream;[BI)I

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz p3, :cond_1

    :goto_1
    invoke-virtual {v5}, Lorg/h2/store/FileStoreOutputStream;->close()V

    iput-wide v0, p0, Lorg/h2/value/ValueLobDb;->precision:J

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v5}, Lorg/h2/store/FileStoreOutputStream;->close()V

    throw p1
.end method

.method public static create(ILorg/h2/store/DataHandler;IJ[BJ)Lorg/h2/value/ValueLobDb;
    .locals 10

    new-instance v9, Lorg/h2/value/ValueLobDb;

    move-object v0, v9

    move v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-wide/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lorg/h2/value/ValueLobDb;-><init>(ILorg/h2/store/DataHandler;IJ[BJ)V

    return-object v9
.end method

.method public static createSmallLob(I[B)Lorg/h2/value/Value;
    .locals 2

    .line 1
    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    array-length v0, p1

    :goto_0
    int-to-long v0, v0

    invoke-static {p0, p1, v0, v1}, Lorg/h2/value/ValueLobDb;->createSmallLob(I[BJ)Lorg/h2/value/ValueLobDb;

    move-result-object p0

    return-object p0
.end method

.method public static createSmallLob(I[BJ)Lorg/h2/value/ValueLobDb;
    .locals 1

    .line 2
    new-instance v0, Lorg/h2/value/ValueLobDb;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/h2/value/ValueLobDb;-><init>(I[BJ)V

    return-object v0
.end method

.method public static createTempBlob(Ljava/io/InputStream;JLorg/h2/store/DataHandler;)Lorg/h2/value/ValueLobDb;
    .locals 11

    const/16 v1, 0xf

    :try_start_0
    invoke-interface {p3, v1}, Lorg/h2/store/DataHandler;->getLobCompressionAlgorithm(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-wide/16 v5, 0x0

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v9, p1, v5

    if-ltz v9, :cond_1

    cmp-long v5, p1, v7

    if-gez v5, :cond_1

    move-wide v6, p1

    goto :goto_1

    :cond_1
    move-wide v6, v7

    :goto_1
    invoke-static {p3, v3, v6, v7}, Lorg/h2/value/ValueLobDb;->getBufferSize(Lorg/h2/store/DataHandler;ZJ)I

    move-result v3

    const v5, 0x7fffffff

    if-lt v3, v5, :cond_2

    const/4 v3, -0x1

    invoke-static {p0, v3}, Lorg/h2/util/IOUtils;->readBytesAndClose(Ljava/io/InputStream;I)[B

    move-result-object v3

    array-length v5, v3

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_2
    invoke-static {v3}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object v5

    invoke-static {p0, v5, v3}, Lorg/h2/util/IOUtils;->readFully(Ljava/io/InputStream;[BI)I

    move-result v3

    move-object v10, v5

    move v5, v3

    move-object v3, v10

    :goto_2
    invoke-interface {p3}, Lorg/h2/store/DataHandler;->getMaxLengthInplaceLob()I

    move-result v8

    if-gt v5, v8, :cond_3

    invoke-static {v5}, Lorg/h2/mvstore/DataUtils;->newBytes(I)[B

    move-result-object v0

    invoke-static {v3, v4, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v0

    int-to-long v2, v2

    invoke-static {v1, v0, v2, v3}, Lorg/h2/value/ValueLobDb;->createSmallLob(I[BJ)Lorg/h2/value/ValueLobDb;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v8, Lorg/h2/value/ValueLobDb;

    move-object v1, v8

    move-object v2, p3

    move v4, v5

    move-object v5, p0

    invoke-direct/range {v1 .. v7}, Lorg/h2/value/ValueLobDb;-><init>(Lorg/h2/store/DataHandler;[BILjava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    :goto_3
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public static createTempClob(Ljava/io/Reader;JLorg/h2/store/DataHandler;)Lorg/h2/value/ValueLobDb;
    .locals 9

    instance-of v0, p0, Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v1, 0x1000

    invoke-direct {v0, p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object p0, v0

    :goto_0
    const/16 v0, 0x10

    :try_start_0
    invoke-interface {p3, v0}, Lorg/h2/store/DataHandler;->getLobCompressionAlgorithm(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-wide/16 v3, 0x0

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v7, p1, v3

    if-ltz v7, :cond_2

    cmp-long v3, p1, v5

    if-gez v3, :cond_2

    goto :goto_2

    :cond_2
    move-wide p1, v5

    :goto_2
    invoke-static {p3, v1, p1, p2}, Lorg/h2/value/ValueLobDb;->getBufferSize(Lorg/h2/store/DataHandler;ZJ)I

    move-result v1

    const v3, 0x7fffffff

    if-lt v1, v3, :cond_3

    const/4 v1, -0x1

    invoke-static {p0, v1}, Lorg/h2/util/IOUtils;->readStringAndClose(Ljava/io/Reader;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v3, v1

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_3
    new-array v3, v1, [C

    invoke-virtual {p0, v1}, Ljava/io/BufferedReader;->mark(I)V

    invoke-static {p0, v3, v1}, Lorg/h2/util/IOUtils;->readFully(Ljava/io/Reader;[CI)I

    move-result v1

    move-object v8, v3

    move v3, v1

    move-object v1, v8

    :goto_3
    invoke-interface {p3}, Lorg/h2/store/DataHandler;->getMaxLengthInplaceLob()I

    move-result v4

    if-gt v3, v4, :cond_4

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    sget-object p1, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    int-to-long p1, v3

    invoke-static {v0, p0, p1, p2}, Lorg/h2/value/ValueLobDb;->createSmallLob(I[BJ)Lorg/h2/value/ValueLobDb;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/io/BufferedReader;->reset()V

    new-instance v0, Lorg/h2/value/ValueLobDb;

    invoke-direct {v0, p3, p0, p1, p2}, Lorg/h2/value/ValueLobDb;-><init>(Lorg/h2/store/DataHandler;Ljava/io/Reader;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_4
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private static createTempLobFileName(Lorg/h2/store/DataHandler;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lorg/h2/store/DataHandler;->getDatabasePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lorg/h2/engine/SysProperties;->PREFIX_TEMP_FILE:Ljava/lang/String;

    :cond_0
    const-string v0, ".temp.db"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v1}, Lorg/h2/store/fs/FileUtils;->createTempFile(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getBufferSize(Lorg/h2/store/DataHandler;ZJ)I
    .locals 9

    const-wide/32 v0, 0x7fffffff

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-ltz v4, :cond_0

    cmp-long v4, p2, v0

    if-lez v4, :cond_1

    :cond_0
    move-wide p2, v0

    :cond_1
    invoke-interface {p0}, Lorg/h2/store/DataHandler;->getMaxLengthInplaceLob()I

    move-result p0

    const-wide/16 v4, 0x1000

    if-eqz p1, :cond_2

    const-wide/32 v6, 0x20000

    goto :goto_0

    :cond_2
    move-wide v6, v4

    :goto_0
    cmp-long p1, v6, p2

    if-gez p1, :cond_3

    int-to-long p0, p0

    cmp-long v8, v6, p0

    if-gtz v8, :cond_3

    const-wide/16 v6, 0x1

    add-long/2addr p0, v6

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    invoke-static {p0, p1, v4, v5}, Lorg/h2/util/MathUtils;->roundUpLong(JJ)J

    move-result-wide v6

    :cond_3
    invoke-static {p2, p3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result p0

    int-to-long p0, p0

    cmp-long p2, p0, v2

    if-gez p2, :cond_4

    goto :goto_1

    :cond_4
    move-wide v0, p0

    :goto_1
    long-to-int p0, v0

    return p0
.end method


# virtual methods
.method public compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I
    .locals 6

    instance-of p2, p1, Lorg/h2/value/ValueLobDb;

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Lorg/h2/value/ValueLobDb;

    const/4 v0, 0x0

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    iget-wide v1, p0, Lorg/h2/value/ValueLobDb;->lobId:J

    iget-wide v3, p2, Lorg/h2/value/ValueLobDb;->lobId:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget-object v1, p0, Lorg/h2/value/ValueLobDb;->small:[B

    if-nez v1, :cond_1

    iget-object p2, p2, Lorg/h2/value/ValueLobDb;->small:[B

    if-nez p2, :cond_1

    return v0

    :cond_1
    iget p2, p0, Lorg/h2/value/ValueLobDb;->type:I

    const/16 v0, 0x10

    if-ne p2, v0, :cond_2

    invoke-virtual {p0}, Lorg/h2/value/ValueLobDb;->getString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p1}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object p1

    invoke-virtual {p0}, Lorg/h2/value/ValueLobDb;->getBytes()[B

    move-result-object p2

    invoke-static {p2, p1}, Lorg/h2/util/Utils;->compareNotNullSigned([B[B)I

    move-result p1

    return p1
.end method

.method public convertPrecision(JZ)Lorg/h2/value/Value;
    .locals 4

    iget-wide v0, p0, Lorg/h2/value/ValueLobDb;->precision:J

    cmp-long p3, v0, p1

    if-gtz p3, :cond_0

    return-object p0

    :cond_0
    iget p3, p0, Lorg/h2/value/ValueLobDb;->type:I

    const/16 v0, 0x10

    const/4 v1, 0x0

    if-ne p3, v0, :cond_2

    iget-object p3, p0, Lorg/h2/value/ValueLobDb;->handler:Lorg/h2/store/DataHandler;

    if-nez p3, :cond_1

    :try_start_0
    invoke-static {p1, p2}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result p1

    invoke-virtual {p0}, Lorg/h2/value/ValueLobDb;->getReader()Ljava/io/Reader;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/h2/util/IOUtils;->readStringAndClose(Ljava/io/Reader;I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    iget p3, p0, Lorg/h2/value/ValueLobDb;->type:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    int-to-long v2, p1

    invoke-static {p3, p2, v2, v3}, Lorg/h2/value/ValueLobDb;->createSmallLob(I[BJ)Lorg/h2/value/ValueLobDb;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1, v1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-virtual {p0}, Lorg/h2/value/ValueLobDb;->getReader()Ljava/io/Reader;

    move-result-object p3

    iget-object v0, p0, Lorg/h2/value/ValueLobDb;->handler:Lorg/h2/store/DataHandler;

    invoke-static {p3, p1, p2, v0}, Lorg/h2/value/ValueLobDb;->createTempClob(Ljava/io/Reader;JLorg/h2/store/DataHandler;)Lorg/h2/value/ValueLobDb;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lorg/h2/value/ValueLobDb;->handler:Lorg/h2/store/DataHandler;

    if-nez p3, :cond_3

    :try_start_1
    invoke-static {p1, p2}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result p1

    invoke-virtual {p0}, Lorg/h2/value/ValueLobDb;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/h2/util/IOUtils;->readBytesAndClose(Ljava/io/InputStream;I)[B

    move-result-object p1

    iget p2, p0, Lorg/h2/value/ValueLobDb;->type:I

    array-length p3, p1

    int-to-long v2, p3

    invoke-static {p2, p1, v2, v3}, Lorg/h2/value/ValueLobDb;->createSmallLob(I[BJ)Lorg/h2/value/ValueLobDb;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-static {p1, v1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_3
    invoke-virtual {p0}, Lorg/h2/value/ValueLobDb;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    iget-object v0, p0, Lorg/h2/value/ValueLobDb;->handler:Lorg/h2/store/DataHandler;

    invoke-static {p3, p1, p2, v0}, Lorg/h2/value/ValueLobDb;->createTempBlob(Ljava/io/InputStream;JLorg/h2/store/DataHandler;)Lorg/h2/value/ValueLobDb;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public convertTo(I)Lorg/h2/value/Value;
    .locals 3

    iget v0, p0, Lorg/h2/value/ValueLobDb;->type:I

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    const/16 v0, 0x10

    const-wide/16 v1, -0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lorg/h2/value/ValueLobDb;->handler:Lorg/h2/store/DataHandler;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/h2/store/DataHandler;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object p1

    invoke-virtual {p0}, Lorg/h2/value/ValueLobDb;->getReader()Ljava/io/Reader;

    move-result-object v0

    invoke-interface {p1, v0, v1, v2}, Lorg/h2/store/LobStorageInterface;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lorg/h2/value/ValueLobDb;->small:[B

    if-eqz v0, :cond_4

    invoke-static {p1, v0}, Lorg/h2/value/ValueLobDb;->createSmallLob(I[B)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v0, 0xf

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lorg/h2/value/ValueLobDb;->handler:Lorg/h2/store/DataHandler;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/h2/store/DataHandler;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object p1

    invoke-virtual {p0}, Lorg/h2/value/ValueLobDb;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {p1, v0, v1, v2}, Lorg/h2/store/LobStorageInterface;->createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object v0, p0, Lorg/h2/value/ValueLobDb;->small:[B

    if-eqz v0, :cond_4

    invoke-static {p1, v0}, Lorg/h2/value/ValueLobDb;->createSmallLob(I[B)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-super {p0, p1}, Lorg/h2/value/Value;->convertTo(I)Lorg/h2/value/Value;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lorg/h2/store/DataHandler;I)Lorg/h2/value/Value;
    .locals 4

    iget-object v0, p0, Lorg/h2/value/ValueLobDb;->small:[B

    if-nez v0, :cond_0

    iget-object p1, p0, Lorg/h2/value/ValueLobDb;->handler:Lorg/h2/store/DataHandler;

    invoke-interface {p1}, Lorg/h2/store/DataHandler;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object p1

    invoke-virtual {p0}, Lorg/h2/value/ValueLobDb;->getPrecision()J

    move-result-wide v0

    invoke-interface {p1, p0, p2, v0, v1}, Lorg/h2/store/LobStorageInterface;->copyLob(Lorg/h2/value/ValueLobDb;IJ)Lorg/h2/value/ValueLobDb;

    move-result-object p1

    return-object p1

    :cond_0
    array-length v0, v0

    invoke-interface {p1}, Lorg/h2/store/DataHandler;->getMaxLengthInplaceLob()I

    move-result v1

    if-le v0, v1, :cond_2

    invoke-interface {p1}, Lorg/h2/store/DataHandler;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object v0

    iget v1, p0, Lorg/h2/value/ValueLobDb;->type:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/h2/value/ValueLobDb;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0}, Lorg/h2/value/ValueLobDb;->getPrecision()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lorg/h2/store/LobStorageInterface;->createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/h2/value/ValueLobDb;->getReader()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {p0}, Lorg/h2/value/ValueLobDb;->getPrecision()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lorg/h2/store/LobStorageInterface;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p1, p2}, Lorg/h2/value/Value;->copy(Lorg/h2/store/DataHandler;I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {v0}, Lorg/h2/value/Value;->remove()V

    return-object p1

    :cond_2
    return-object p0
.end method

.method public bridge synthetic copyToResult()Lorg/h2/value/Value;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/h2/value/ValueLobDb;->copyToResult()Lorg/h2/value/ValueLobDb;

    move-result-object v0

    return-object v0
.end method

.method public copyToResult()Lorg/h2/value/ValueLobDb;
    .locals 4

    .line 2
    iget-object v0, p0, Lorg/h2/value/ValueLobDb;->handler:Lorg/h2/store/DataHandler;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {v0}, Lorg/h2/store/DataHandler;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/h2/store/LobStorageInterface;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    :cond_1
    const/4 v1, -0x3

    invoke-virtual {p0}, Lorg/h2/value/ValueLobDb;->getPrecision()J

    move-result-wide v2

    invoke-interface {v0, p0, v1, v2, v3}, Lorg/h2/store/LobStorageInterface;->copyLob(Lorg/h2/value/ValueLobDb;IJ)Lorg/h2/value/ValueLobDb;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copyToTemp()Lorg/h2/value/Value;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/h2/value/ValueLobDb;->copyToTemp()Lorg/h2/value/ValueLobDb;

    move-result-object v0

    return-object v0
.end method

.method public copyToTemp()Lorg/h2/value/ValueLobDb;
    .locals 0

    .line 2
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/h2/value/ValueLobDb;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/h2/value/Value;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/h2/value/ValueLobDb;->compareSecure(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getBytes()[B
    .locals 2

    iget v0, p0, Lorg/h2/value/ValueLobDb;->type:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Lorg/h2/value/Value;->getBytes()[B

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/h2/value/ValueLobDb;->getBytesNoCopy()[B

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/Utils;->cloneByteArray([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getBytesNoCopy()[B
    .locals 2

    iget v0, p0, Lorg/h2/value/ValueLobDb;->type:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Lorg/h2/value/Value;->getBytesNoCopy()[B

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/h2/value/ValueLobDb;->small:[B

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/value/ValueLobDb;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Lorg/h2/util/IOUtils;->readBytesAndClose(Ljava/io/InputStream;I)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lorg/h2/value/ValueLobDb;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public getDisplaySize()I
    .locals 2

    invoke-virtual {p0}, Lorg/h2/value/ValueLobDb;->getPrecision()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v0

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 6

    iget-object v0, p0, Lorg/h2/value/ValueLobDb;->small:[B

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/h2/value/ValueLobDb;->small:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/h2/value/ValueLobDb;->fileName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/h2/value/ValueLobDb;->handler:Lorg/h2/store/DataHandler;

    const-string v2, "r"

    const/4 v3, 0x1

    invoke-interface {v1, v0, v2, v3}, Lorg/h2/store/DataHandler;->openFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/store/FileStore;

    move-result-object v0

    sget-boolean v1, Lorg/h2/engine/SysProperties;->lobCloseBetweenReads:Z

    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Lorg/h2/store/FileStoreInputStream;

    iget-object v4, p0, Lorg/h2/value/ValueLobDb;->handler:Lorg/h2/store/DataHandler;

    const/4 v5, 0x0

    invoke-direct {v3, v0, v4, v5, v1}, Lorg/h2/store/FileStoreInputStream;-><init>(Lorg/h2/store/FileStore;Lorg/h2/store/DataHandler;ZZ)V

    const/16 v0, 0x1000

    invoke-direct {v2, v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v2

    :cond_1
    iget v0, p0, Lorg/h2/value/ValueLobDb;->type:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lorg/h2/value/ValueLobDb;->precision:J

    goto :goto_0

    :cond_2
    const-wide/16 v0, -0x1

    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/h2/value/ValueLobDb;->handler:Lorg/h2/store/DataHandler;

    invoke-interface {v2}, Lorg/h2/store/DataHandler;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/value/ValueLobDb;->hmac:[B

    invoke-interface {v2, p0, v3, v0, v1}, Lorg/h2/store/LobStorageInterface;->getInputStream(Lorg/h2/value/ValueLobDb;[BJ)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lorg/h2/value/ValueLobDb;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public getLobId()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/value/ValueLobDb;->lobId:J

    return-wide v0
.end method

.method public getMemory()I
    .locals 1

    iget-object v0, p0, Lorg/h2/value/ValueLobDb;->small:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x68

    return v0

    :cond_0
    const/16 v0, 0x8c

    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lorg/h2/value/ValueLobDb;->type:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/h2/value/ValueLobDb;->getReader()Ljava/io/Reader;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/h2/value/ValueLobDb;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPrecision()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/value/ValueLobDb;->precision:J

    return-wide v0
.end method

.method public getReader()Ljava/io/Reader;
    .locals 1

    invoke-virtual {p0}, Lorg/h2/value/ValueLobDb;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/IOUtils;->getBufferedReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lorg/h2/value/ValueLobDb;->type:I

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/h2/value/ValueLobDb;->getString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lorg/h2/value/ValueLobDb;->getBytes()[B

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lorg/h2/util/StringUtils;->convertBytesToHex([B)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "X\'"

    .line 25
    .line 26
    const-string v2, "\'"

    .line 27
    .line 28
    invoke-static {v1, v0, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method

.method public getSmall()[B
    .locals 1

    iget-object v0, p0, Lorg/h2/value/ValueLobDb;->small:[B

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 5

    iget-wide v0, p0, Lorg/h2/value/ValueLobDb;->precision:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    long-to-int v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const v1, 0x7fffffff

    :goto_1
    :try_start_0
    iget v0, p0, Lorg/h2/value/ValueLobDb;->type:I

    const/16 v2, 0x10

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lorg/h2/value/ValueLobDb;->small:[B

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Lorg/h2/value/ValueLobDb;->getReader()Ljava/io/Reader;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/h2/util/IOUtils;->readStringAndClose(Ljava/io/Reader;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Lorg/h2/value/ValueLobDb;->small:[B

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lorg/h2/value/ValueLobDb;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/h2/util/IOUtils;->readBytesAndClose(Ljava/io/InputStream;I)[B

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lorg/h2/util/StringUtils;->convertBytesToHex([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_3
    invoke-virtual {p0}, Lorg/h2/value/ValueLobDb;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public getTableId()I
    .locals 1

    iget v0, p0, Lorg/h2/value/ValueLobDb;->tableId:I

    return v0
.end method

.method public getTraceSQL()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/h2/value/ValueLobDb;->small:[B

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/h2/value/ValueLobDb;->getPrecision()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sget-wide v2, Lorg/h2/engine/SysProperties;->MAX_TRACE_DATA_LENGTH:J

    .line 10
    .line 11
    cmp-long v4, v0, v2

    .line 12
    .line 13
    if-gtz v4, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lorg/h2/value/ValueLobDb;->getSQL()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    iget v1, p0, Lorg/h2/value/ValueLobDb;->type:I

    .line 26
    .line 27
    const/16 v2, 0x10

    .line 28
    .line 29
    if-ne v1, v2, :cond_1

    .line 30
    .line 31
    const-string v1, "SPACE("

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lorg/h2/value/ValueLobDb;->getPrecision()J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const-string v1, "CAST(REPEAT(\'00\', "

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lorg/h2/value/ValueLobDb;->getPrecision()J

    .line 50
    .line 51
    .line 52
    move-result-wide v1

    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ") AS BINARY"

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    :goto_0
    const-string v1, " /* table: "

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget v1, p0, Lorg/h2/value/ValueLobDb;->tableId:I

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, " id: "

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-wide v1, p0, Lorg/h2/value/ValueLobDb;->lobId:J

    .line 77
    .line 78
    const-string v3, " */)"

    .line 79
    .line 80
    invoke-static {v0, v1, v2, v3}, LA/g;->l(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/h2/value/ValueLobDb;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Lorg/h2/value/ValueLobDb;->hash:I

    if-nez v0, :cond_2

    iget-wide v0, p0, Lorg/h2/value/ValueLobDb;->precision:J

    const-wide/16 v2, 0x1000

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1

    :cond_0
    iget v0, p0, Lorg/h2/value/ValueLobDb;->type:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/h2/value/ValueLobDb;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    iput v0, p0, Lorg/h2/value/ValueLobDb;->hash:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/h2/value/ValueLobDb;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/Utils;->getByteArrayHash([B)I

    move-result v0

    goto :goto_0

    :cond_2
    :goto_1
    iget v0, p0, Lorg/h2/value/ValueLobDb;->hash:I

    return v0
.end method

.method public isLinkedToTable()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/value/ValueLobDb;->small:[B

    if-nez v0, :cond_0

    iget v0, p0, Lorg/h2/value/ValueLobDb;->tableId:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRecoveryReference()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/value/ValueLobDb;->isRecoveryReference:Z

    return v0
.end method

.method public isStored()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/value/ValueLobDb;->small:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/value/ValueLobDb;->fileName:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lorg/h2/value/ValueLobDb;->fileName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/value/ValueLobDb;->tempFile:Lorg/h2/store/FileStore;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/h2/store/FileStore;->stopAutoDelete()V

    :cond_0
    iget-object v0, p0, Lorg/h2/value/ValueLobDb;->handler:Lorg/h2/store/DataHandler;

    invoke-interface {v0}, Lorg/h2/store/DataHandler;->getLobSyncObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/h2/value/ValueLobDb;->fileName:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/h2/value/ValueLobDb;->handler:Lorg/h2/store/DataHandler;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/h2/store/DataHandler;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/h2/store/LobStorageInterface;->removeLob(Lorg/h2/value/ValueLobDb;)V

    :cond_2
    return-void
.end method

.method public set(Ljava/sql/PreparedStatement;I)V
    .locals 5

    invoke-virtual {p0}, Lorg/h2/value/ValueLobDb;->getPrecision()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    :cond_0
    const-wide/16 v0, -0x1

    :cond_1
    iget v2, p0, Lorg/h2/value/ValueLobDb;->type:I

    const/16 v3, 0xf

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lorg/h2/value/ValueLobDb;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    long-to-int v1, v0

    invoke-interface {p1, p2, v2, v1}, Ljava/sql/PreparedStatement;->setBinaryStream(ILjava/io/InputStream;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/h2/value/ValueLobDb;->getReader()Ljava/io/Reader;

    move-result-object v2

    long-to-int v1, v0

    invoke-interface {p1, p2, v2, v1}, Ljava/sql/PreparedStatement;->setCharacterStream(ILjava/io/Reader;I)V

    :goto_0
    return-void
.end method

.method public setRecoveryReference(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/value/ValueLobDb;->isRecoveryReference:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lob: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/value/ValueLobDb;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " table: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/value/ValueLobDb;->tableId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/h2/value/ValueLobDb;->lobId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
