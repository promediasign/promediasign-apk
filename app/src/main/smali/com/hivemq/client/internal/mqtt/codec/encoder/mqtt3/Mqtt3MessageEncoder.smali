.class abstract Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder;
.super Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder$Mqtt3MessageWithIdEncoder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lcom/hivemq/client/internal/mqtt/message/MqttMessage;",
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


# virtual methods
.method public encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;)Lio/netty/buffer/ByteBuf;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;",
            ")",
            "Lio/netty/buffer/ByteBuf;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder;->remainingLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;)I

    move-result v0

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoderUtil;->encodedPacketLength(I)I

    move-result v1

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;->getMaximumPacketSize()I

    move-result v2

    if-gt v1, v2, :cond_0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;II)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;->getMaximumPacketSize()I

    move-result p2

    invoke-static {p1, v1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoderUtil;->maximumPacketSizeExceeded(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;II)Lcom/hivemq/client/mqtt/exceptions/MqttEncodeException;

    move-result-object p1

    throw p1
.end method

.method public encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;II)Lio/netty/buffer/ByteBuf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;",
            "II)",
            "Lio/netty/buffer/ByteBuf;"
        }
    .end annotation

    .line 2
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p2

    invoke-interface {p2, p3, p3}, Lio/netty/buffer/ByteBufAllocator;->ioBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p4}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;Lio/netty/buffer/ByteBuf;I)V

    return-object p2
.end method

.method public abstract encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;Lio/netty/buffer/ByteBuf;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lio/netty/buffer/ByteBuf;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract remainingLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)I"
        }
    .end annotation
.end method
