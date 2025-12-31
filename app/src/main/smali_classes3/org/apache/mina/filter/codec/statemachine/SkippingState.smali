.class public abstract Lorg/apache/mina/filter/codec/statemachine/SkippingState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/filter/codec/statemachine/DecodingState;


# instance fields
.field private skippedBytes:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract canSkip(B)Z
.end method

.method public decode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .locals 2

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result p2

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v0

    :goto_0
    if-ge p2, v0, :cond_1

    invoke-virtual {p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/filter/codec/statemachine/SkippingState;->canSkip(B)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, p2}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    iget p1, p0, Lorg/apache/mina/filter/codec/statemachine/SkippingState;->skippedBytes:I

    const/4 p2, 0x0

    iput p2, p0, Lorg/apache/mina/filter/codec/statemachine/SkippingState;->skippedBytes:I

    invoke-virtual {p0, p1}, Lorg/apache/mina/filter/codec/statemachine/SkippingState;->finishDecode(I)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object p1

    return-object p1

    :cond_0
    iget v1, p0, Lorg/apache/mina/filter/codec/statemachine/SkippingState;->skippedBytes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/mina/filter/codec/statemachine/SkippingState;->skippedBytes:I

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    return-object p0
.end method

.method public abstract finishDecode(I)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
.end method

.method public finishDecode(Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .locals 0

    .line 1
    iget p1, p0, Lorg/apache/mina/filter/codec/statemachine/SkippingState;->skippedBytes:I

    invoke-virtual {p0, p1}, Lorg/apache/mina/filter/codec/statemachine/SkippingState;->finishDecode(I)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object p1

    return-object p1
.end method
