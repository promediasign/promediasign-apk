.class public Lorg/apache/ftpserver/command/impl/listing/LISTFileFormater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/ftpserver/command/impl/listing/FileFormater;


# static fields
.field private static final DELIM:C = ' '

.field private static final NEWLINE:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/ftpserver/command/impl/listing/LISTFileFormater;->NEWLINE:[C

    return-void

    nop

    :array_0
    .array-data 2
        0xds
        0xas
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getLastModified(Lorg/apache/ftpserver/ftplet/FtpFile;)Ljava/lang/String;
    .locals 2

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->getLastModified()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/ftpserver/util/DateUtils;->getUnixDate(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getLength(Lorg/apache/ftpserver/ftplet/FtpFile;)Ljava/lang/String;
    .locals 4

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->getSize()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-le v0, v1, :cond_1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    const-string v2, "            "

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getPermission(Lorg/apache/ftpserver/ftplet/FtpFile;)[C
    .locals 4

    const/16 v0, 0xa

    new-array v0, v0, [C

    const/16 v1, 0x2d

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x64

    goto :goto_0

    :cond_0
    const/16 v2, 0x2d

    :goto_0
    const/4 v3, 0x0

    aput-char v2, v0, v3

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->isReadable()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x72

    goto :goto_1

    :cond_1
    const/16 v2, 0x2d

    :goto_1
    const/4 v3, 0x1

    aput-char v2, v0, v3

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->isWritable()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x77

    goto :goto_2

    :cond_2
    const/16 v2, 0x2d

    :goto_2
    const/4 v3, 0x2

    aput-char v2, v0, v3

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 v1, 0x78

    :cond_3
    const/4 p1, 0x3

    aput-char v1, v0, p1

    return-object v0
.end method


# virtual methods
.method public format(Lorg/apache/ftpserver/ftplet/FtpFile;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lorg/apache/ftpserver/command/impl/listing/LISTFileFormater;->getPermission(Lorg/apache/ftpserver/ftplet/FtpFile;)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->getLinkCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->getOwnerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lorg/apache/ftpserver/command/impl/listing/LISTFileFormater;->getLength(Lorg/apache/ftpserver/ftplet/FtpFile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lorg/apache/ftpserver/command/impl/listing/LISTFileFormater;->getLastModified(Lorg/apache/ftpserver/ftplet/FtpFile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/ftpserver/ftplet/FtpFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lorg/apache/ftpserver/command/impl/listing/LISTFileFormater;->NEWLINE:[C

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
