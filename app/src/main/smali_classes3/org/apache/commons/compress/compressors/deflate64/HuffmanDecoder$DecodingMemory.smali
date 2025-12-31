.class Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecodingMemory"
.end annotation


# instance fields
.field private final mask:I

.field private final memory:[B

.field private wHead:I

.field private wrappedAround:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    shl-int p1, v0, p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->memory:[B

    array-length p1, p1

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->mask:I

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;-><init>()V

    return-void
.end method

.method private incCounter(I)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->mask:I

    and-int/2addr v0, v1

    iget-boolean v1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->wrappedAround:Z

    if-nez v1, :cond_0

    if-ge v0, p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->wrappedAround:Z

    :cond_0
    return v0
.end method


# virtual methods
.method public add(B)B
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->memory:[B

    iget v1, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->wHead:I

    aput-byte p1, v0, v1

    invoke-direct {p0, v1}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->incCounter(I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->wHead:I

    return p1
.end method

.method public add([BII)V
    .locals 2

    .line 2
    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->add(B)B

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public recordToBuffer(II[B)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->memory:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    if-gt p1, v0, :cond_3

    .line 5
    .line 6
    iget v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->wHead:I

    .line 7
    .line 8
    sub-int v1, v0, p1

    .line 9
    .line 10
    iget v2, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->mask:I

    .line 11
    .line 12
    and-int/2addr v1, v2

    .line 13
    iget-boolean v2, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->wrappedAround:Z

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    if-ge v1, v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string p3, "Attempt to read beyond memory: dist="

    .line 23
    .line 24
    invoke-static {p1, p3}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p2

    .line 32
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 33
    :goto_1
    if-ge p1, p2, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->memory:[B

    .line 36
    .line 37
    aget-byte v0, v0, v1

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->add(B)B

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    aput-byte v0, p3, p1

    .line 44
    .line 45
    add-int/lit8 p1, p1, 0x1

    .line 46
    .line 47
    invoke-direct {p0, v1}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecodingMemory;->incCounter(I)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    return-void

    .line 53
    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string p3, "Illegal distance parameter: "

    .line 56
    .line 57
    invoke-static {p1, p3}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p2
.end method
