.class public abstract Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "SourceFile"


# instance fields
.field private characters:[B

.field private clearCode:I

.field private codeSize:I

.field protected final in:Lorg/apache/commons/compress/utils/BitInputStream;

.field private final oneByte:[B

.field private outputStack:[B

.field private outputStackLocation:I

.field private prefixes:[I

.field private previousCode:I

.field private previousCodeFirstChar:B

.field private tableSize:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->oneByte:[B

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->clearCode:I

    const/16 v1, 0x9

    iput v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->codeSize:I

    iput v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->previousCode:I

    new-instance v0, Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/utils/BitInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->in:Lorg/apache/commons/compress/utils/BitInputStream;

    return-void
.end method

.method private readFromStack([BII)I
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStack:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStackLocation:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStack:[B

    iget v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStackLocation:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStackLocation:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStackLocation:I

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public abstract addEntry(IB)I
.end method

.method public addEntry(IBI)I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->tableSize:I

    if-ge v0, p3, :cond_0

    iget-object p3, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->prefixes:[I

    aput p1, p3, v0

    iget-object p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->characters:[B

    aput-byte p2, p1, v0

    add-int/lit8 p1, v0, 0x1

    iput p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->tableSize:I

    return v0

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public addRepeatOfPreviousCode()I
    .locals 2

    iget v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->previousCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-byte v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->previousCodeFirstChar:B

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->addEntry(IB)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The first code can\'t be a reference to its preceding code"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->in:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/compress/utils/BitInputStream;->close()V

    return-void
.end method

.method public abstract decompressNextSymbol()I
.end method

.method public expandCodeToOutputStack(IZ)I
    .locals 4

    move v0, p1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStack:[B

    iget v2, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStackLocation:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStackLocation:I

    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->characters:[B

    aget-byte v3, v3, v0

    aput-byte v3, v1, v2

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->prefixes:[I

    aget v0, v1, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->previousCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStack:[B

    iget v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStackLocation:I

    aget-byte p2, p2, v1

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->addEntry(IB)I

    :cond_1
    iput p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->previousCode:I

    iget-object p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStack:[B

    iget p2, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStackLocation:I

    aget-byte p1, p1, p2

    iput-byte p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->previousCodeFirstChar:B

    return p2
.end method

.method public getClearCode()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->clearCode:I

    return v0
.end method

.method public getCodeSize()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->codeSize:I

    return v0
.end method

.method public getPrefix(I)I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->prefixes:[I

    aget p1, v0, p1

    return p1
.end method

.method public getPrefixesLength()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->prefixes:[I

    array-length v0, v0

    return v0
.end method

.method public getTableSize()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->tableSize:I

    return v0
.end method

.method public incrementCodeSize()V
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->codeSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->codeSize:I

    return-void
.end method

.method public initializeTables(I)V
    .locals 3

    .line 1
    if-lez p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    shl-int p1, v0, p1

    .line 5
    .line 6
    new-array v0, p1, [I

    .line 7
    .line 8
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->prefixes:[I

    .line 9
    .line 10
    new-array v0, p1, [B

    .line 11
    .line 12
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->characters:[B

    .line 13
    .line 14
    new-array v0, p1, [B

    .line 15
    .line 16
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStack:[B

    .line 17
    .line 18
    iput p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStackLocation:I

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    :goto_0
    const/16 v0, 0x100

    .line 22
    .line 23
    if-ge p1, v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->prefixes:[I

    .line 26
    .line 27
    const/4 v1, -0x1

    .line 28
    aput v1, v0, p1

    .line 29
    .line 30
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->characters:[B

    .line 31
    .line 32
    int-to-byte v1, p1

    .line 33
    aput-byte v1, v0, p1

    .line 34
    .line 35
    add-int/lit8 p1, p1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-void

    .line 39
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    const-string v1, "maxCodeSize is "

    .line 42
    .line 43
    const-string v2, ", must be bigger than 0"

    .line 44
    .line 45
    invoke-static {p1, v1, v2}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0
.end method

.method public read()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->oneByte:[B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-gez v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->oneByte:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 3

    .line 2
    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->readFromStack([BII)I

    move-result v0

    :goto_0
    sub-int v1, p3, v0

    if-lez v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->decompressNextSymbol()I

    move-result v2

    if-gez v2, :cond_2

    if-lez v0, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(I)V

    return v0

    :cond_1
    return v2

    :cond_2
    add-int v2, p2, v0

    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->readFromStack([BII)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(I)V

    return v0
.end method

.method public readNextCode()I
    .locals 2

    iget v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->codeSize:I

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->in:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/utils/BitInputStream;->readBits(I)J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Code size must not be bigger than 31"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setClearCode(I)V
    .locals 1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    shl-int p1, v0, p1

    iput p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->clearCode:I

    return-void
.end method

.method public setPrefix(II)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->prefixes:[I

    aput p2, v0, p1

    return-void
.end method

.method public setTableSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->tableSize:I

    return-void
.end method
