.class public Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ConnAckDecoder;
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
    invoke-virtual {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ConnAckDecoder;->decode(ILio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    move-result-object p1

    return-object p1
.end method

.method public decode(ILio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;
    .locals 1

    .line 2
    const/4 p3, 0x0

    invoke-static {p3, p1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->checkFixedHeaderFlags(II)V

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p1

    const/4 v0, 0x2

    invoke-static {v0, p1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->checkRemainingLength(II)V

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result p1

    and-int/lit16 v0, p1, 0xfe

    if-nez v0, :cond_4

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result p1

    invoke-static {p1}, Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;->fromCode(I)Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;->SUCCESS:Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;

    if-eq p1, p2, :cond_2

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    const-string p2, "session present must be 0 if return code is not SUCCESS"

    invoke-direct {p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-static {p1, p3}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/mqtt3/Mqtt3ConnAckView;->delegate(Lcom/hivemq/client/mqtt/mqtt3/message/connect/connack/Mqtt3ConnAckReturnCode;Z)Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3MessageDecoderUtil;->wrongReturnCode()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p1

    throw p1

    :cond_4
    new-instance p1, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    const-string p2, "wrong CONNACK flags, bits 7-1 must be 0"

    invoke-direct {p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
