.class public abstract Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;
.super Lorg/apache/mina/filter/codec/ProtocolDecoderAdapter;
.source "SourceFile"


# instance fields
.field private final BUFFER:Lorg/apache/mina/core/session/AttributeKey;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lorg/apache/mina/filter/codec/ProtocolDecoderAdapter;-><init>()V

    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "buffer"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->BUFFER:Lorg/apache/mina/core/session/AttributeKey;

    return-void
.end method

.method private removeSessionBuffer(Lorg/apache/mina/core/session/IoSession;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->BUFFER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private storeRemainingInSession(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/core/session/IoSession;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->order(Ljava/nio/ByteOrder;)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object p1, p0, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->BUFFER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, p1, v0}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public decode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    .locals 4

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/service/TransportMetadata;->hasFragmentation()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->doDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->BUFFER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->isAutoExpand()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    :try_start_0
    invoke-virtual {v0, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    move-object p2, v0

    goto :goto_0

    :catch_0
    :cond_3
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v1

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->order(Ljava/nio/ByteOrder;)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object p2, p0, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->BUFFER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, p2, v1}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, v1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_0
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->doDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v1

    if-eq v1, v0, :cond_6

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "doDecode() can\'t return true when buffer is not consumed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_1
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result p3

    if-eqz p3, :cond_9

    if-eqz v2, :cond_8

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->isAutoExpand()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->compact()Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_2

    :cond_8
    invoke-direct {p0, p2, p1}, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->storeRemainingInSession(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/core/session/IoSession;)V

    goto :goto_2

    :cond_9
    if-eqz v2, :cond_a

    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->removeSessionBuffer(Lorg/apache/mina/core/session/IoSession;)V

    :cond_a
    :goto_2
    return-void
.end method

.method public dispose(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/CumulativeProtocolDecoder;->removeSessionBuffer(Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public abstract doDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Z
.end method
