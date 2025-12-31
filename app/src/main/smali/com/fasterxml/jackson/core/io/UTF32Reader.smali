.class public Lcom/fasterxml/jackson/core/io/UTF32Reader;
.super Ljava/io/Reader;
.source "SourceFile"


# instance fields
.field protected final _bigEndian:Z

.field protected _buffer:[B

.field protected _byteCount:I

.field protected _charCount:I

.field protected final _context:Lcom/fasterxml/jackson/core/io/IOContext;

.field protected _in:Ljava/io/InputStream;

.field protected _length:I

.field protected final _managedBuffers:Z

.field protected _ptr:I

.field protected _surrogate:C

.field protected _tmpBuf:[C


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/InputStream;[BIIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 v0, 0x0

    iput-char v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_surrogate:C

    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    iput-object p2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_in:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    iput p4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    iput p5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    iput-boolean p6, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_bigEndian:Z

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_managedBuffers:Z

    return-void
.end method

.method private freeBuffers()V
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseReadIOBuffer([B)V

    :cond_0
    return-void
.end method

.method private loadMore(I)Z
    .locals 6

    iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_byteCount:I

    iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    sub-int/2addr v1, p1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_byteCount:I

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez p1, :cond_1

    iget v3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    if-lez v3, :cond_0

    iget-object v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    invoke-static {v4, v3, v4, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    :cond_0
    :goto_0
    iput p1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    goto :goto_2

    :cond_1
    iput v2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    iget-object p1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_in:Ljava/io/InputStream;

    if-nez p1, :cond_2

    const/4 p1, -0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result p1

    :goto_1
    if-ge p1, v1, :cond_0

    iput v2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    if-gez p1, :cond_4

    iget-boolean p1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_managedBuffers:Z

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->freeBuffers()V

    :cond_3
    return v2

    :cond_4
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->reportStrangeStream()V

    goto :goto_0

    :goto_2
    iget p1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    const/4 v2, 0x4

    if-ge p1, v2, :cond_9

    iget-object v3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_in:Ljava/io/InputStream;

    if-nez v3, :cond_5

    const/4 p1, -0x1

    goto :goto_3

    :cond_5
    iget-object v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    array-length v5, v4

    sub-int/2addr v5, p1

    invoke-virtual {v3, v4, p1, v5}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    :goto_3
    if-ge p1, v1, :cond_8

    if-gez p1, :cond_7

    iget-boolean v3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_managedBuffers:Z

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->freeBuffers()V

    :cond_6
    iget v3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    invoke-direct {p0, v3, v2}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->reportUnexpectedEOF(II)V

    :cond_7
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->reportStrangeStream()V

    :cond_8
    iget v2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    goto :goto_2

    :cond_9
    return v1
.end method

.method private reportBounds([CII)V
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

.method private reportInvalid(IILjava/lang/String;)V
    .locals 4

    iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_byteCount:I

    iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_charCount:I

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

.method private reportStrangeStream()V
    .locals 2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Strange I/O stream, returned 0 bytes on read"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private reportUnexpectedEOF(II)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_byteCount:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    iget v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_charCount:I

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

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_in:Ljava/io/InputStream;

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->freeBuffers()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method public read()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_tmpBuf:[C

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-array v0, v1, [C

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_tmpBuf:[C

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_tmpBuf:[C

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->read([CII)I

    move-result v0

    if-ge v0, v1, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_tmpBuf:[C

    aget-char v0, v0, v2

    return v0
.end method

.method public read([CII)I
    .locals 11

    .line 2
    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    const/4 v4, -0x1

    if-nez v3, :cond_0

    return v4

    :cond_0
    if-ge p3, v2, :cond_1

    return p3

    :cond_1
    if-ltz p2, :cond_2

    add-int v3, p2, p3

    array-length v5, p1

    if-le v3, v5, :cond_3

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->reportBounds([CII)V

    :cond_3
    add-int/2addr p3, p2

    iget-char v3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_surrogate:C

    if-eqz v3, :cond_4

    add-int/lit8 v4, p2, 0x1

    aput-char v3, p1, p2

    iput-char v0, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_surrogate:C

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    iget v5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    sub-int/2addr v3, v5

    if-ge v3, v1, :cond_6

    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->loadMore(I)Z

    move-result v5

    if-nez v5, :cond_6

    if-nez v3, :cond_5

    return v4

    :cond_5
    iget v3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    iget v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    sub-int/2addr v3, v4

    invoke-direct {p0, v3, v1}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->reportUnexpectedEOF(II)V

    :cond_6
    move v4, p2

    :goto_0
    iget v3, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_length:I

    sub-int/2addr v3, v1

    :goto_1
    if-ge v4, p3, :cond_c

    iget v5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    iget-boolean v6, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_bigEndian:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    aget-byte v7, v6, v5

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v8, v5, 0x1

    aget-byte v8, v6, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    add-int/lit8 v8, v5, 0x2

    aget-byte v8, v6, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    add-int/lit8 v9, v5, 0x3

    aget-byte v6, v6, v9

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v6, v8

    goto :goto_2

    :cond_7
    iget-object v6, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_buffer:[B

    aget-byte v7, v6, v5

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v5, 0x1

    aget-byte v8, v6, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    add-int/lit8 v8, v5, 0x2

    aget-byte v8, v6, v8

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, v5, 0x3

    aget-byte v6, v6, v9

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v6, v8

    move v10, v7

    move v7, v6

    move v6, v10

    :goto_2
    add-int/2addr v5, v1

    iput v5, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    if-eqz v7, :cond_a

    const v5, 0xffff

    and-int/2addr v5, v7

    add-int/lit8 v7, v5, -0x1

    const/16 v8, 0x10

    shl-int/2addr v7, v8

    or-int/2addr v6, v7

    if-le v5, v8, :cond_8

    sub-int v5, v4, p2

    const v7, 0x10ffff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v7, v8, v0

    const-string v7, " (above 0x%08x)"

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v5, v7}, Lcom/fasterxml/jackson/core/io/UTF32Reader;->reportInvalid(IILjava/lang/String;)V

    :cond_8
    add-int/lit8 v5, v4, 0x1

    shr-int/lit8 v7, v6, 0xa

    const v8, 0xd800

    add-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, p1, v4

    and-int/lit16 v4, v6, 0x3ff

    const v7, 0xdc00

    or-int/2addr v4, v7

    if-lt v5, p3, :cond_9

    int-to-char p1, v6

    iput-char p1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_surrogate:C

    :goto_3
    move v4, v5

    goto :goto_4

    :cond_9
    move v6, v4

    move v4, v5

    :cond_a
    add-int/lit8 v5, v4, 0x1

    int-to-char v6, v6

    aput-char v6, p1, v4

    iget v4, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_ptr:I

    if-le v4, v3, :cond_b

    goto :goto_3

    :cond_b
    move v4, v5

    goto/16 :goto_1

    :cond_c
    :goto_4
    sub-int/2addr v4, p2

    iget p1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_charCount:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/fasterxml/jackson/core/io/UTF32Reader;->_charCount:I

    return v4
.end method
