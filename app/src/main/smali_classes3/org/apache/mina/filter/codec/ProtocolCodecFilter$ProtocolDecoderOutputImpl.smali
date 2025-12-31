.class Lorg/apache/mina/filter/codec/ProtocolCodecFilter$ProtocolDecoderOutputImpl;
.super Lorg/apache/mina/filter/codec/AbstractProtocolDecoderOutput;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/codec/ProtocolCodecFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProtocolDecoderOutputImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/mina/filter/codec/AbstractProtocolDecoderOutput;-><init>()V

    return-void
.end method


# virtual methods
.method public flush(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/mina/filter/codec/AbstractProtocolDecoderOutput;->getMessageQueue()Ljava/util/Queue;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
