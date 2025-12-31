.class abstract Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder$Mqtt3MessageWithIdEncoder;
.super Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Mqtt3MessageWithIdEncoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithId;",
        ">",
        "Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder<",
        "TM;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;-><init>()V

    return-void
.end method

.method private encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithId;Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lio/netty/buffer/ByteBuf;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder$Mqtt3MessageWithIdEncoder;->encodeFixedHeader(Lio/netty/buffer/ByteBuf;)V

    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder$Mqtt3MessageWithIdEncoder;->encodeVariableHeader(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithId;Lio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method private encodeFixedHeader(Lio/netty/buffer/ByteBuf;)V
    .locals 1

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder$Mqtt3MessageWithIdEncoder;->getFixedHeader()I

    move-result v0

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method private encodeVariableHeader(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithId;Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lio/netty/buffer/ByteBuf;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithId;->getPacketIdentifier()I

    move-result p1

    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    return-void
.end method


# virtual methods
.method public encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithId;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;)Lio/netty/buffer/ByteBuf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;",
            ")",
            "Lio/netty/buffer/ByteBuf;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;->getMaximumPacketSize()I

    move-result v0

    const/4 v1, 0x4

    if-gt v1, v0, :cond_0

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p2

    invoke-interface {p2, v1, v1}, Lio/netty/buffer/ByteBufAllocator;->ioBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder$Mqtt3MessageWithIdEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithId;Lio/netty/buffer/ByteBuf;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;->getMaximumPacketSize()I

    move-result p2

    invoke-static {p1, v1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoderUtil;->maximumPacketSizeExceeded(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;II)Lcom/hivemq/client/mqtt/exceptions/MqttEncodeException;

    move-result-object p1

    throw p1
.end method

.method public bridge synthetic encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 2
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithId;

    invoke-virtual {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder$Mqtt3MessageWithIdEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithId;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public abstract getFixedHeader()I
.end method
