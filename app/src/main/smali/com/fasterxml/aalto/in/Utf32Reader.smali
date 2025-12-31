.class public final Lcom/fasterxml/aalto/in/Utf32Reader;
.super Ljava/io/Reader;
.source "SourceFile"


# instance fields
.field final mBigEndian:Z

.field protected mBuffer:[B

.field mByteCount:I

.field mCharCount:I

.field final mConfig:Lcom/fasterxml/aalto/in/ReaderConfig;

.field protected mIn:Ljava/io/InputStream;

.field protected mLength:I

.field protected mPtr:I

.field mSurrogate:C

.field mTmpBuf:[C


# direct methods
.method public constructor <init>(Lcom/fasterxml/aalto/in/ReaderConfig;Ljava/io/InputStream;[BIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 p2, 0x0

    iput-char p2, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mSurrogate:C

    iput p2, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mCharCount:I

    iput p2, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mByteCount:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mTmpBuf:[C

    iput-object p1, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mConfig:Lcom/fasterxml/aalto/in/ReaderConfig;

    iput-boolean p6, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mBigEndian:Z

    return-void
.end method

.method private loadMore(I)Z
    .locals 5

    iget v0, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mByteCount:I

    iget v1, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mLength:I

    sub-int/2addr v1, p1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mByteCount:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_2

    iget v2, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mPtr:I

    if-lez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    iget-object v3, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mBuffer:[B

    iget v4, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mPtr:I

    add-int/2addr v4, v2

    aget-byte v4, v3, v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mPtr:I

    :cond_1
    :goto_1
    iput p1, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mLength:I

    goto :goto_2

    :cond_2
    iput v1, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mPtr:I

    iget-object p1, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mIn:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mBuffer:[B

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-ge p1, v0, :cond_1

    iput v1, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mLength:I

    if-gez p1, :cond_3

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/Utf32Reader;->freeBuffers()V

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/Utf32Reader;->reportStrangeStream()V

    goto :goto_1

    :goto_2
    iget p1, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mLength:I

    const/4 v1, 0x4

    if-ge p1, v1, :cond_6

    iget-object v2, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mIn:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mBuffer:[B

    array-length v4, v3

    sub-int/2addr v4, p1

    invoke-virtual {v2, v3, p1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ge p1, v0, :cond_5

    if-gez p1, :cond_4

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/Utf32Reader;->freeBuffers()V

    iget v2, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mLength:I

    invoke-direct {p0, v2, v1}, Lcom/fasterxml/aalto/in/Utf32Reader;->reportUnexpectedEOF(II)V

    :cond_4
    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/Utf32Reader;->reportStrangeStream()V

    :cond_5
    iget v1, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mLength:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mLength:I

    goto :goto_2

    :cond_6
    return v0
.end method

.method private reportInvalid(IILjava/lang/String;)V
    .locals 4

    iget v0, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mByteCount:I

    iget v1, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mPtr:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mCharCount:I

    add-int/2addr v1, p2

    new-instance p2, Ljava/io/CharConversionException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid UTF-32 character 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at char #"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", byte #"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private reportUnexpectedEOF(II)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mByteCount:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    iget v1, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mCharCount:I

    .line 5
    .line 6
    new-instance v2, Ljava/io/CharConversionException;

    .line 7
    .line 8
    const-string v3, "Unexpected EOF in the middle of a 4-byte UTF-32 char: got "

    .line 9
    .line 10
    const-string v4, ", needed "

    .line 11
    .line 12
    const-string v5, ", at char #"

    .line 13
    .line 14
    invoke-static {v3, p1, v4, p2, v5}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p2, ", byte #"

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p2, ")"

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {v2, p1}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v2
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mIn:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mIn:Ljava/io/InputStream;

    invoke-virtual {p0}, Lcom/fasterxml/aalto/in/Utf32Reader;->freeBuffers()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method public final freeBuffers()V
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mBuffer:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mBuffer:[B

    iget-object v1, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mConfig:Lcom/fasterxml/aalto/in/ReaderConfig;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/fasterxml/aalto/in/ReaderConfig;->freeFullBBuffer([B)V

    :cond_0
    return-void
.end method

.method public read()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mTmpBuf:[C

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-array v0, v1, [C

    iput-object v0, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mTmpBuf:[C

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mTmpBuf:[C

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/fasterxml/aalto/in/Utf32Reader;->read([CII)I

    move-result v0

    if-ge v0, v1, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mTmpBuf:[C

    aget-char v0, v0, v2

    return v0
.end method

.method public read([CII)I
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mBuffer:[B

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ge p3, v0, :cond_1

    return p3

    :cond_1
    if-ltz p2, :cond_2

    add-int v0, p2, p3

    array-length v2, p1

    if-le v0, v2, :cond_3

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/aalto/in/Utf32Reader;->reportBounds([CII)V

    :cond_3
    add-int/2addr p3, p2

    iget-char v0, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mSurrogate:C

    if-eqz v0, :cond_4

    add-int/lit8 v1, p2, 0x1

    aput-char v0, p1, p2

    const/4 v0, 0x0

    iput-char v0, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mSurrogate:C

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mLength:I

    iget v2, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mPtr:I

    sub-int/2addr v0, v2

    const/4 v2, 0x4

    if-ge v0, v2, :cond_5

    invoke-direct {p0, v0}, Lcom/fasterxml/aalto/in/Utf32Reader;->loadMore(I)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    :cond_5
    move v1, p2

    :goto_0
    iget-object v0, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mBuffer:[B

    :goto_1
    if-ge v1, p3, :cond_d

    iget v2, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mPtr:I

    iget-boolean v3, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mBigEndian:Z

    if-eqz v3, :cond_6

    aget-byte v3, v0, v2

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v4, v2, 0x3

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    :goto_2
    or-int/2addr v3, v4

    goto :goto_3

    :cond_6
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    add-int/lit8 v4, v2, 0x3

    aget-byte v4, v0, v4

    shl-int/lit8 v4, v4, 0x18

    goto :goto_2

    :goto_3
    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mPtr:I

    const v2, 0xd800

    if-lt v3, v2, :cond_b

    const v4, 0x10ffff

    if-le v3, v4, :cond_7

    sub-int v5, v1, p2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(above "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v5, v4}, Lcom/fasterxml/aalto/in/Utf32Reader;->reportInvalid(IILjava/lang/String;)V

    :cond_7
    const v4, 0xffff

    if-le v3, v4, :cond_9

    const/high16 v4, 0x10000

    sub-int/2addr v3, v4

    add-int/lit8 v4, v1, 0x1

    shr-int/lit8 v5, v3, 0xa

    add-int/2addr v5, v2

    int-to-char v2, v5

    aput-char v2, p1, v1

    and-int/lit16 v1, v3, 0x3ff

    const v2, 0xdc00

    or-int v3, v1, v2

    if-lt v4, p3, :cond_8

    int-to-char p1, v3

    iput-char p1, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mSurrogate:C

    move v1, v4

    goto :goto_6

    :cond_8
    move v1, v4

    goto :goto_5

    :cond_9
    const v2, 0xe000

    if-ge v3, v2, :cond_a

    sub-int v2, v1, p2

    const-string v4, "(a surrogate char) "

    :goto_4
    invoke-direct {p0, v3, v2, v4}, Lcom/fasterxml/aalto/in/Utf32Reader;->reportInvalid(IILjava/lang/String;)V

    goto :goto_5

    :cond_a
    const v2, 0xfffe

    if-lt v3, v2, :cond_b

    sub-int v2, v1, p2

    const-string v4, ""

    goto :goto_4

    :cond_b
    :goto_5
    add-int/lit8 v2, v1, 0x1

    int-to-char v3, v3

    aput-char v3, p1, v1

    iget v1, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mPtr:I

    iget v3, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mLength:I

    if-lt v1, v3, :cond_c

    move v1, v2

    goto :goto_6

    :cond_c
    move v1, v2

    goto/16 :goto_1

    :cond_d
    :goto_6
    sub-int/2addr v1, p2

    iget p1, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mCharCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/fasterxml/aalto/in/Utf32Reader;->mCharCount:I

    return v1
.end method

.method public reportBounds([CII)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 2
    .line 3
    const-string v1, "read(buf,"

    .line 4
    .line 5
    const-string v2, ","

    .line 6
    .line 7
    const-string v3, "), cbuf["

    .line 8
    .line 9
    invoke-static {v1, p2, v2, p3, v3}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    array-length p1, p1

    .line 14
    const-string p3, "]"

    .line 15
    .line 16
    invoke-static {p3, p1, p2}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public reportStrangeStream()V
    .locals 2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Strange I/O stream, returned 0 bytes on read"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
