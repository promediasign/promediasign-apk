.class public Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3UnsubAckDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(ILio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/mqtt/message/MqttMessage;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3UnsubAckDecoder;->decode(ILio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/MqttUnsubAck;

    move-result-object p1

    return-object p1
.end method

.method public decode(ILio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/MqttUnsubAck;
    .locals 0

    .line 2
    const/4 p3, 0x0

    invoke-static {p3, p1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->checkFixedHeaderFlags(II)V

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p1

    const/4 p3, 0x2

    invoke-static {p3, p1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->checkRemainingLength(II)V

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result p1

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/mqtt3/Mqtt3UnsubAckView;->delegate(I)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/MqttUnsubAck;

    move-result-object p1

    return-object p1
.end method
