.class public Lorg/apache/mina/proxy/utils/IoBufferDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;
    }
.end annotation


# instance fields
.field private ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-direct {v0, p0}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;-><init>(Lorg/apache/mina/proxy/utils/IoBufferDecoder;)V

    iput-object v0, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->setContentLength(IZ)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-direct {v0, p0}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;-><init>(Lorg/apache/mina/proxy/utils/IoBufferDecoder;)V

    iput-object v0, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->setDelimiter([BZ)V

    return-void
.end method


# virtual methods
.method public decodeFully(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 8

    iget-object v0, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {v0}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->getContentLength()I

    move-result v0

    iget-object v1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {v1}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->getDecodedBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-le v0, v3, :cond_2

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v3

    if-ge v3, v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object p1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {p1, v1}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setDecodedBuffer(Lorg/apache/mina/core/buffer/IoBuffer;)V

    iget-object p1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setContentLength(I)V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object p1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {p1}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->reset()V

    return-object v1

    :cond_2
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v0

    iget-object v3, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {v3}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->getMatchCount()I

    move-result v3

    iget-object v5, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {v5}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->getDelimiter()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->get()B

    move-result v6

    invoke-virtual {v5, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v7

    if-ne v7, v6, :cond_5

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v6

    if-ne v3, v6, :cond_3

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v3

    invoke-virtual {p1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p1, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    :cond_4
    invoke-virtual {v1, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object p1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {p1}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->reset()V

    return-object v1

    :cond_5
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v6

    sub-int/2addr v6, v3

    const/4 v3, 0x0

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p1, v6}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v2

    if-lez v2, :cond_7

    invoke-virtual {p1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    :cond_7
    iget-object p1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {p1, v3}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setMatchCount(I)V

    iget-object p1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {p1, v1}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setDecodedBuffer(Lorg/apache/mina/core/buffer/IoBuffer;)V

    return-object v1
.end method

.method public setContentLength(IZ)V
    .locals 1

    .line 1
    if-lez p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setContentLength(I)V

    .line 6
    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    invoke-virtual {p1, p2}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setMatchCount(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void

    .line 17
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string v0, "contentLength: "

    .line 20
    .line 21
    invoke-static {p1, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p2
.end method

.method public setDelimiter([BZ)V
    .locals 1

    if-eqz p1, :cond_1

    array-length v0, p1

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object p1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    invoke-virtual {p1, v0}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setDelimiter(Lorg/apache/mina/core/buffer/IoBuffer;)V

    iget-object p1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setContentLength(I)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lorg/apache/mina/proxy/utils/IoBufferDecoder;->ctx:Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/apache/mina/proxy/utils/IoBufferDecoder$DecodingContext;->setMatchCount(I)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null delimiter not allowed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
