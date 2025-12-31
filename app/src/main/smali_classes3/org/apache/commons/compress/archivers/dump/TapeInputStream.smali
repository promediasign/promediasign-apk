.class Lorg/apache/commons/compress/archivers/dump/TapeInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field private blockBuffer:[B

.field private blockSize:I

.field private bytesRead:J

.field private currBlkIdx:I

.field private isCompressed:Z

.field private readOffset:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p1, 0x400

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->currBlkIdx:I

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->isCompressed:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    return-void
.end method

.method private readBlock(Z)V
    .locals 9

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->isCompressed:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->currBlkIdx:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    const/4 v3, 0x4

    invoke-direct {p0, v0, v2, v3}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readFully([BII)V

    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    invoke-static {v0, v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    move-result v0

    and-int/lit8 v4, v0, 0x1

    if-ne v4, v1, :cond_6

    shr-int/lit8 v4, v0, 0x1

    shr-int/2addr v0, v3

    const v3, 0xfffffff

    and-int/2addr v0, v3

    new-array v3, v0, [B

    invoke-direct {p0, v3, v2, v0}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readFully([BII)V

    iget-wide v5, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    int-to-long v7, v0

    add-long/2addr v5, v7

    iput-wide v5, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_3

    :cond_1
    sget-object p1, Lorg/apache/commons/compress/archivers/dump/TapeInputStream$1;->$SwitchMap$org$apache$commons$compress$archivers$dump$DumpArchiveConstants$COMPRESSION_TYPE:[I

    const/4 v5, 0x3

    and-int/2addr v4, v5

    invoke-static {v4}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;->find(I)Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$COMPRESSION_TYPE;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget p1, p1, v4

    if-eq p1, v1, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    if-eq p1, v5, :cond_2

    new-instance p1, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;

    invoke-direct {p1}, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;-><init>()V

    throw p1

    :cond_2
    new-instance p1, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;

    const-string v0, "LZO"

    invoke-direct {p1, v0}, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;

    const-string v0, "BZLIB2"

    invoke-direct {p1, v0}, Lorg/apache/commons/compress/archivers/dump/UnsupportedCompressionAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/util/zip/Inflater;

    invoke-direct {p1}, Ljava/util/zip/Inflater;-><init>()V

    :try_start_0
    invoke-virtual {p1, v3, v2, v0}, Ljava/util/zip/Inflater;->setInput([BII)V

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    invoke-virtual {p1, v0}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v0

    iget v3, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v3, :cond_5

    invoke-virtual {p1}, Ljava/util/zip/Inflater;->end()V

    goto :goto_3

    :cond_5
    :try_start_1
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/ShortFileException;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/dump/ShortFileException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveException;

    const-string v2, "Bad data"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-virtual {p1}, Ljava/util/zip/Inflater;->end()V

    throw v0

    :cond_6
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    invoke-direct {p0, p1, v2, v0}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readFully([BII)V

    :goto_1
    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    iget p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    int-to-long v5, p1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    goto :goto_3

    :cond_7
    :goto_2
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    invoke-direct {p0, p1, v2, v0}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readFully([BII)V

    goto :goto_1

    :goto_3
    iget p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->currBlkIdx:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->currBlkIdx:I

    iput v2, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    return-void

    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Input buffer is closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readFully([BII)V
    .locals 1

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0, p1, p2, p3}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[BII)I

    move-result p1

    if-lt p1, p3, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/apache/commons/compress/archivers/dump/ShortFileException;

    invoke-direct {p1}, Lorg/apache/commons/compress/archivers/dump/ShortFileException;-><init>()V

    throw p1
.end method


# virtual methods
.method public available()I
    .locals 2

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    if-ge v0, v1, :cond_0

    sub-int/2addr v1, v0

    return v1

    :cond_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method public getBytesRead()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->bytesRead:J

    return-wide v0
.end method

.method public peek()[B
    .locals 5

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readBlock(Z)V
    :try_end_0
    .catch Lorg/apache/commons/compress/archivers/dump/ShortFileException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    return-object v0

    :cond_0
    :goto_0
    const/16 v0, 0x400

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    iget v3, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public read()I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All reads must be multiple of record size (1024 bytes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 5

    .line 2
    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    rem-int/lit16 v1, p3, 0x400

    if-nez v1, :cond_4

    :goto_0
    if-ge v0, p3, :cond_3

    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readBlock(Z)V
    :try_end_0
    .catch Lorg/apache/commons/compress/archivers/dump/ShortFileException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 p1, -0x1

    return p1

    :cond_1
    :goto_1
    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    sub-int v2, p3, v0

    add-int v3, v1, v2

    iget v4, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    if-gt v3, v4, :cond_2

    goto :goto_2

    :cond_2
    sub-int v2, v4, v1

    :goto_2
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    invoke-static {v3, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    add-int/2addr v0, v2

    add-int/2addr p2, v2

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "All reads must be multiple of record size (1024 bytes."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readRecord()[B
    .locals 3

    const/16 v0, 0x400

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-eq v2, v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/ShortFileException;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/dump/ShortFileException;-><init>()V

    throw v0
.end method

.method public resetBlockSize(IZ)V
    .locals 2

    .line 1
    iput-boolean p2, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->isCompressed:Z

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    if-lt p1, p2, :cond_0

    .line 5
    .line 6
    const/16 p2, 0x400

    .line 7
    .line 8
    mul-int/lit16 p1, p1, 0x400

    .line 9
    .line 10
    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    .line 11
    .line 12
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    .line 13
    .line 14
    new-array p1, p1, [B

    .line 15
    .line 16
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {v0, v1, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockBuffer:[B

    .line 23
    .line 24
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    .line 25
    .line 26
    sub-int/2addr v0, p2

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readFully([BII)V

    .line 28
    .line 29
    .line 30
    iput v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->currBlkIdx:I

    .line 31
    .line 32
    iput p2, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    new-instance p2, Ljava/io/IOException;

    .line 36
    .line 37
    const-string v0, "Block with "

    .line 38
    .line 39
    const-string v1, " records found, must be at least 1"

    .line 40
    .line 41
    invoke-static {p1, v0, v1}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p2
.end method

.method public skip(J)J
    .locals 11

    const-wide/16 v0, 0x400

    rem-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_4

    :goto_0
    cmp-long v0, v2, p1

    if-gez v0, :cond_3

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    if-ne v0, v1, :cond_1

    sub-long v4, p1, v2

    int-to-long v0, v1

    cmp-long v6, v4, v0

    if-gez v6, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    :try_start_0
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readBlock(Z)V
    :try_end_0
    .catch Lorg/apache/commons/compress/archivers/dump/ShortFileException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-wide/16 p1, -0x1

    return-wide p1

    :cond_1
    :goto_2
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    int-to-long v4, v0

    sub-long v6, p1, v2

    add-long/2addr v4, v6

    iget v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->blockSize:I

    int-to-long v8, v1

    cmp-long v10, v4, v8

    if-gtz v10, :cond_2

    goto :goto_3

    :cond_2
    int-to-long v4, v1

    int-to-long v6, v0

    sub-long v6, v4, v6

    :goto_3
    int-to-long v0, v0

    add-long/2addr v0, v6

    long-to-int v1, v0

    iput v1, p0, Lorg/apache/commons/compress/archivers/dump/TapeInputStream;->readOffset:I

    add-long/2addr v2, v6

    goto :goto_0

    :cond_3
    return-wide v2

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "All reads must be multiple of record size (1024 bytes."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
