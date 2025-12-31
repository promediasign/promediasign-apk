.class public abstract Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/filter/codec/statemachine/DecodingState;


# instance fields
.field private buffer:Lorg/apache/mina/core/buffer/IoBuffer;

.field private final maxLength:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;->maxLength:I

    return-void
.end method


# virtual methods
.method public decode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .locals 2

    .line 1
    iget-object p2, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    const/16 p2, 0x100

    .line 6
    .line 7
    invoke-static {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p2, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    iput-object p2, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 17
    .line 18
    :cond_0
    iget-object p2, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 19
    .line 20
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    add-int/2addr v0, p2

    .line 29
    iget p2, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;->maxLength:I

    .line 30
    .line 31
    if-gt v0, p2, :cond_1

    .line 32
    .line 33
    iget-object p2, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    .line 34
    .line 35
    invoke-virtual {p2, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    .line 36
    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_1
    new-instance p1, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    .line 40
    .line 41
    new-instance p2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v0, "Received data exceeds "

    .line 44
    .line 45
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget v0, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;->maxLength:I

    .line 49
    .line 50
    const-string v1, " byte(s)."

    .line 51
    .line 52
    invoke-static {v1, v0, p2}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-direct {p1, p2}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1
.end method

.method public abstract finishDecode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
.end method

.method public finishDecode(Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .locals 2

    .line 1
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object v1, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0, v1, p1}, Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;->finishDecode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    return-object p1

    :goto_1
    iput-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/ConsumeToEndOfSessionDecodingState;->buffer:Lorg/apache/mina/core/buffer/IoBuffer;

    throw p1
.end method
