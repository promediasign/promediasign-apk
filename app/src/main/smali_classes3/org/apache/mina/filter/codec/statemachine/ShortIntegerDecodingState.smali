.class public abstract Lorg/apache/mina/filter/codec/statemachine/ShortIntegerDecodingState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/filter/codec/statemachine/DecodingState;


# instance fields
.field private counter:I

.field private highByte:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .locals 2

    :goto_0
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/apache/mina/filter/codec/statemachine/ShortIntegerDecodingState;->counter:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/mina/filter/codec/statemachine/ShortIntegerDecodingState;->counter:I

    iget v0, p0, Lorg/apache/mina/filter/codec/statemachine/ShortIntegerDecodingState;->highByte:I

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getUnsigned()S

    move-result p1

    or-int/2addr p1, v0

    int-to-short p1, p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/filter/codec/statemachine/ShortIntegerDecodingState;->finishDecode(SLorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/InternalError;

    invoke-direct {p1}, Ljava/lang/InternalError;-><init>()V

    throw p1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->getUnsigned()S

    move-result v0

    iput v0, p0, Lorg/apache/mina/filter/codec/statemachine/ShortIntegerDecodingState;->highByte:I

    iget v0, p0, Lorg/apache/mina/filter/codec/statemachine/ShortIntegerDecodingState;->counter:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/mina/filter/codec/statemachine/ShortIntegerDecodingState;->counter:I

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public finishDecode(Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .locals 1

    .line 1
    new-instance p1, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    const-string v0, "Unexpected end of session while waiting for a short integer."

    invoke-direct {p1, v0}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract finishDecode(SLorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
.end method
