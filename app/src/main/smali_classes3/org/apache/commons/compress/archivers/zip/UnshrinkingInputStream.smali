.class Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;
.super Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;
.source "SourceFile"


# instance fields
.field private final isUsed:[Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->setClearCode(I)V

    const/16 p1, 0xd

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->initializeTables(I)V

    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->getPrefixesLength()I

    move-result p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->isUsed:[Z

    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x100

    const/4 v1, 0x1

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->isUsed:[Z

    aput-boolean v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->getClearCode()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->setTableSize(I)V

    return-void
.end method

.method private partialClear()V
    .locals 8

    const/16 v0, 0x2000

    new-array v1, v0, [Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->isUsed:[Z

    array-length v5, v4

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-ge v3, v5, :cond_1

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->getPrefix(I)I

    move-result v4

    if-eq v4, v6, :cond_0

    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->getPrefix(I)I

    move-result v4

    aput-boolean v7, v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->getClearCode()I

    move-result v3

    add-int/2addr v3, v7

    :goto_1
    if-ge v3, v0, :cond_3

    aget-boolean v4, v1, v3

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->isUsed:[Z

    aput-boolean v2, v4, v3

    invoke-virtual {p0, v3, v6}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->setPrefix(II)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public addEntry(IB)I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->getTableSize()I

    move-result v0

    :goto_0
    const/16 v1, 0x2000

    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->isUsed:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->setTableSize(I)V

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->addEntry(IBI)I

    move-result p1

    if-ltz p1, :cond_1

    iget-object p2, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->isUsed:[Z

    const/4 v0, 0x1

    aput-boolean v0, p2, p1

    :cond_1
    return p1
.end method

.method public decompressNextSymbol()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->readNextCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->getClearCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    if-ne v0, v1, :cond_5

    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->readNextCode()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-ltz v0, :cond_4

    .line 22
    .line 23
    if-ne v0, v3, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->getCodeSize()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/16 v1, 0xd

    .line 30
    .line 31
    if-ge v0, v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->incrementCodeSize()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 38
    .line 39
    const-string v1, "Attempt to increase code size beyond maximum"

    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :cond_2
    const/4 v1, 0x2

    .line 46
    if-ne v0, v1, :cond_3

    .line 47
    .line 48
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->partialClear()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->getClearCode()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    add-int/2addr v0, v3

    .line 56
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->setTableSize(I)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return v2

    .line 60
    :cond_3
    new-instance v1, Ljava/io/IOException;

    .line 61
    .line 62
    const-string v2, "Invalid clear code subcode "

    .line 63
    .line 64
    invoke-static {v0, v2}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v1

    .line 72
    :cond_4
    new-instance v0, Ljava/io/IOException;

    .line 73
    .line 74
    const-string v1, "Unexpected EOF;"

    .line 75
    .line 76
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v0

    .line 80
    :cond_5
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->isUsed:[Z

    .line 81
    .line 82
    aget-boolean v1, v1, v0

    .line 83
    .line 84
    if-nez v1, :cond_6

    .line 85
    .line 86
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->addRepeatOfPreviousCode()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    const/4 v2, 0x1

    .line 91
    :cond_6
    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->expandCodeToOutputStack(IZ)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    return v0
.end method
