.class public abstract Lorg/apache/mina/filter/codec/statemachine/ConsumeToDynamicTerminatorDecodingState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/filter/codec/statemachine/DecodingState;


# instance fields
.field private buffer:Lorg/apache/mina/core/buffer/IoBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .locals 5

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/mina/filter/codec/statemachine/ConsumeToDynamicTerminatorDecodingState;->isTerminator(B)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    const/4 v3, 0x1

    if-ltz v2, :cond_5

    const/4 v4, 0x0

    if-ge v0, v2, :cond_3

    invoke-virtual {p1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToDynamicTerminatorDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->slice()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToDynamicTerminatorDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    iput-object v4, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToDynamicTerminatorDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    :goto_2
    invoke-virtual {p1, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToDynamicTerminatorDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    iput-object v4, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToDynamicTerminatorDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    :goto_3
    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0, v0, p2}, Lorg/apache/mina/filter/codec/statemachine/ConsumeToDynamicTerminatorDecodingState;->finishDecode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object p1

    return-object p1

    :cond_5
    iget-object p2, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToDynamicTerminatorDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result p2

    invoke-static {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToDynamicTerminatorDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p2, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    :cond_6
    iget-object p2, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToDynamicTerminatorDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p2, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    return-object p0
.end method

.method public abstract finishDecode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
.end method

.method public finishDecode(Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToDynamicTerminatorDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToDynamicTerminatorDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    :goto_0
    invoke-virtual {p0, v0, p1}, Lorg/apache/mina/filter/codec/statemachine/ConsumeToDynamicTerminatorDecodingState;->finishDecode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object p1

    return-object p1
.end method

.method public abstract isTerminator(B)Z
.end method
