.class public Lorg/h2/store/CountingReaderInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private final charBuffer:Ljava/nio/CharBuffer;

.field private final encoder:Ljava/nio/charset/CharsetEncoder;

.field private length:J

.field private final reader:Ljava/io/Reader;

.field private remaining:J


# direct methods
.method public constructor <init>(Ljava/io/Reader;J)V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/CountingReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    sget-object v0, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/CountingReaderInputStream;->encoder:Ljava/nio/charset/CharsetEncoder;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/CountingReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lorg/h2/store/CountingReaderInputStream;->reader:Ljava/io/Reader;

    iput-wide p2, p0, Lorg/h2/store/CountingReaderInputStream;->remaining:J

    return-void
.end method

.method private fetch()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/store/CountingReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/h2/store/CountingReaderInputStream;->fillBuffer()V

    :cond_0
    iget-object v0, p0, Lorg/h2/store/CountingReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private fillBuffer()V
    .locals 8

    iget-object v0, p0, Lorg/h2/store/CountingReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lorg/h2/store/CountingReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lorg/h2/store/CountingReaderInputStream;->remaining:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    if-lez v1, :cond_0

    iget-object v0, p0, Lorg/h2/store/CountingReaderInputStream;->reader:Ljava/io/Reader;

    iget-object v2, p0, Lorg/h2/store/CountingReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v2

    iget-object v3, p0, Lorg/h2/store/CountingReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v3

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/Reader;->read([CII)I

    move-result v1

    :cond_0
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    if-lez v1, :cond_1

    iget-wide v4, p0, Lorg/h2/store/CountingReaderInputStream;->remaining:J

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lorg/h2/store/CountingReaderInputStream;->remaining:J

    goto :goto_0

    :cond_1
    iput-wide v2, p0, Lorg/h2/store/CountingReaderInputStream;->remaining:J

    const/4 v1, 0x0

    :goto_0
    iget-wide v4, p0, Lorg/h2/store/CountingReaderInputStream;->length:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/h2/store/CountingReaderInputStream;->length:J

    iget-object v4, p0, Lorg/h2/store/CountingReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v4, v5}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lorg/h2/store/CountingReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->rewind()Ljava/nio/Buffer;

    const/16 v1, 0x1000

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/store/CountingReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-wide v4, p0, Lorg/h2/store/CountingReaderInputStream;->remaining:J

    cmp-long v6, v4, v2

    if-nez v6, :cond_2

    const/4 v0, 0x1

    :cond_2
    iget-object v2, p0, Lorg/h2/store/CountingReaderInputStream;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v3, p0, Lorg/h2/store/CountingReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v2, v3, v1, v0}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/h2/store/CountingReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/store/CountingReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    return-void

    :cond_3
    iget-object v0, p0, Lorg/h2/store/CountingReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/h2/store/CountingReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    iget-object v0, p0, Lorg/h2/store/CountingReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/h2/store/CountingReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/h2/store/CountingReaderInputStream;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public getLength()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/store/CountingReaderInputStream;->length:J

    return-wide v0
.end method

.method public read()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/h2/store/CountingReaderInputStream;->fetch()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/h2/store/CountingReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/h2/store/CountingReaderInputStream;->fetch()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/h2/store/CountingReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lorg/h2/store/CountingReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return p3
.end method
