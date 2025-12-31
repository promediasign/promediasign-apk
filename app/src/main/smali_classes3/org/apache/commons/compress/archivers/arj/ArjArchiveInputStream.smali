.class public Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveInputStream;
.source "SourceFile"


# instance fields
.field private final charsetName:Ljava/lang/String;

.field private currentInputStream:Ljava/io/InputStream;

.field private currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

.field private final in:Ljava/io/DataInputStream;

.field private final mainHeader:Lorg/apache/commons/compress/archivers/arj/MainHeader;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    const-string v0, "CP437"

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    iput-object p2, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->charsetName:Ljava/lang/String;

    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readMainHeader()Lorg/apache/commons/compress/archivers/arj/MainHeader;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->mainHeader:Lorg/apache/commons/compress/archivers/arj/MainHeader;

    iget p1, p1, Lorg/apache/commons/compress/archivers/arj/MainHeader;->arjFlags:I

    and-int/lit8 p2, p1, 0x1

    if-nez p2, :cond_1

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/apache/commons/compress/archivers/ArchiveException;

    const-string p2, "Multi-volume ARJ files are unsupported"

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/apache/commons/compress/archivers/ArchiveException;

    const-string p2, "Encrypted ARJ files are unsupported"

    invoke-direct {p1, p2}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance p2, Lorg/apache/commons/compress/archivers/ArchiveException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/apache/commons/compress/archivers/ArchiveException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public static matches([BI)Z
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    aget-byte p1, p0, v1

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0x60

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    const/16 v0, 0xea

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private read16(Ljava/io/DataInputStream;)I
    .locals 1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->count(I)V

    invoke-static {p1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p1

    ushr-int/lit8 p1, p1, 0x10

    return p1
.end method

.method private read32(Ljava/io/DataInputStream;)I
    .locals 1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->count(I)V

    invoke-static {p1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p1

    return p1
.end method

.method private read8(Ljava/io/DataInputStream;)I
    .locals 1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->count(I)V

    return p1
.end method

.method private readExtraData(ILjava/io/DataInputStream;Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;)V
    .locals 1

    const/16 v0, 0x21

    if-lt p1, v0, :cond_1

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v0

    iput v0, p3, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->extendedFilePosition:I

    const/16 v0, 0x2d

    if-lt p1, v0, :cond_0

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result p1

    iput p1, p3, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->dateTimeAccessed:I

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result p1

    iput p1, p3, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->dateTimeCreated:I

    invoke-direct {p0, p2}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result p1

    iput p1, p3, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->originalSizeEvenForVolumes:I

    const-wide/16 p1, 0xc

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->pushedBackBytes(J)V

    :cond_0
    const-wide/16 p1, 0x4

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->pushedBackBytes(J)V

    :cond_1
    return-void
.end method

.method private readFully(Ljava/io/DataInputStream;[B)V
    .locals 0

    invoke-virtual {p1, p2}, Ljava/io/DataInputStream;->readFully([B)V

    array-length p1, p2

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->count(I)V

    return-void
.end method

.method private readHeader()[B
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read8(Ljava/io/DataInputStream;)I

    move-result v3

    :goto_0
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read8(Ljava/io/DataInputStream;)I

    move-result v4

    const/16 v5, 0x60

    if-eq v3, v5, :cond_2

    const/16 v3, 0xea

    if-ne v4, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read16(Ljava/io/DataInputStream;)I

    move-result v3

    if-nez v3, :cond_3

    return-object v1

    :cond_3
    const/16 v4, 0xa28

    if-gt v3, v4, :cond_4

    new-array v2, v3, [B

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-direct {p0, v3, v2}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readFully(Ljava/io/DataInputStream;[B)V

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    new-instance v5, Ljava/util/zip/CRC32;

    invoke-direct {v5}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v5, v2}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_4

    const/4 v0, 0x1

    :cond_4
    if-eqz v0, :cond_0

    return-object v2
.end method

.method private readLocalFileHeader()Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;
    .locals 12

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readHeader()[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v3, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    invoke-direct {v2}, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;-><init>()V

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->archiverVersionNumber:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->minVersionToExtract:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->hostOS:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->arjFlags:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->method:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->fileType:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->reserved:I

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->dateTimeModified:I

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    iput-wide v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->compressedSize:J

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    iput-wide v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->originalSize:J

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    iput-wide v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->originalCrc32:J

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read16(Ljava/io/DataInputStream;)I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->fileSpecPosition:I

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read16(Ljava/io/DataInputStream;)I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->fileAccessMode:I

    const-wide/16 v4, 0x14

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->pushedBackBytes(J)V

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->firstChapter:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->lastChapter:I

    invoke-direct {p0, v0, v3, v2}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readExtraData(ILjava/io/DataInputStream;Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;)V

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->name:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->comment:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-direct {p0, v4}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read16(Ljava/io/DataInputStream;)I

    move-result v4

    if-lez v4, :cond_2

    new-array v4, v4, [B

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-direct {p0, v5, v4}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readFully(Ljava/io/DataInputStream;[B)V

    iget-object v5, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-direct {p0, v5}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v5

    int-to-long v8, v5

    and-long/2addr v8, v6

    new-instance v5, Ljava/util/zip/CRC32;

    invoke-direct {v5}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v5, v4}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v10

    cmp-long v5, v8, v10

    if-nez v5, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Extended header CRC32 verification failure"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v4, 0x0

    new-array v4, v4, [[B

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, v2, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->extendedHeaders:[[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v2

    :catchall_1
    move-exception v0

    goto :goto_3

    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v3

    :try_start_5
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_3
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v2

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v2
.end method

.method private readMainHeader()Lorg/apache/commons/compress/archivers/arj/MainHeader;
    .locals 8

    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readHeader()[B

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v3, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;

    invoke-direct {v2}, Lorg/apache/commons/compress/archivers/arj/MainHeader;-><init>()V

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->archiverVersionNumber:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->minVersionToExtract:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->hostOS:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->arjFlags:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->securityVersion:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->fileType:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->reserved:I

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->dateTimeCreated:I

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->dateTimeModified:I

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    iput-wide v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->archiveSize:J

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->securityEnvelopeFilePosition:I

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read16(Ljava/io/DataInputStream;)I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->fileSpecPosition:I

    invoke-direct {p0, v3}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read16(Ljava/io/DataInputStream;)I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->securityEnvelopeLength:I

    const-wide/16 v4, 0x14

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->pushedBackBytes(J)V

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->encryptionVersion:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v4

    iput v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->lastChapter:I

    const/16 v4, 0x21

    if-lt v0, v4, :cond_0

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    iput v0, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->arjProtectionFactor:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    iput v0, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->arjFlags2:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    :cond_0
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->name:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->comment:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read16(Ljava/io/DataInputStream;)I

    move-result v0

    if-lez v0, :cond_2

    new-array v0, v0, [B

    iput-object v0, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->extendedHeaderBytes:[B

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readFully(Ljava/io/DataInputStream;[B)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->read32(Ljava/io/DataInputStream;)I

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v6

    new-instance v3, Ljava/util/zip/CRC32;

    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    iget-object v4, v2, Lorg/apache/commons/compress/archivers/arj/MainHeader;->extendedHeaderBytes:[B

    invoke-virtual {v3, v4}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Extended header CRC32 verification failure"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-object v2

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Archive ends without any headers"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readString(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->charsetName:Ljava/lang/String;

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->charsetName:Ljava/lang/String;

    invoke-direct {p1, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p1

    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p1

    :goto_1
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public bridge synthetic getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->getNextEntry()Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;

    move-result-object v0

    return-object v0
.end method

.method public getNextEntry()Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;
    .locals 8

    .line 2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v0, v2, v3}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->readLocalFileHeader()Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    if-eqz v0, :cond_2

    new-instance v3, Lorg/apache/commons/compress/utils/BoundedInputStream;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->in:Ljava/io/DataInputStream;

    iget-wide v4, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->compressedSize:J

    invoke-direct {v3, v1, v4, v5}, Lorg/apache/commons/compress/utils/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    iput-object v3, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    iget v1, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->method:I

    if-nez v1, :cond_1

    new-instance v1, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;

    iget-wide v4, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->originalSize:J

    iget-wide v6, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->originalCrc32:J

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/compress/utils/CRC32VerifyingInputStream;-><init>(Ljava/io/InputStream;JJ)V

    iput-object v1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    :cond_1
    new-instance v0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/arj/ArjArchiveEntry;-><init>(Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;)V

    return-object v0

    :cond_2
    iput-object v1, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    return-object v1
.end method

.method public read([BII)I
    .locals 1

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    if-eqz v0, :cond_2

    iget v0, v0, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->method:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unsupported compression method "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lorg/apache/commons/compress/archivers/arj/ArjArchiveInputStream;->currentLocalFileHeader:Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;

    iget p3, p3, Lorg/apache/commons/compress/archivers/arj/LocalFileHeader;->method:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No current arj entry"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
