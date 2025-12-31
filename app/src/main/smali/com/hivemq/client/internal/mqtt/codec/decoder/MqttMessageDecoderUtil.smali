.class public abstract Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static checkFixedHeaderFlags(II)V
    .locals 3

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    .line 5
    .line 6
    const-string v1, "fixed header flags must be "

    .line 7
    .line 8
    const-string v2, " but were "

    .line 9
    .line 10
    invoke-static {v1, p0, v2, p1}, LA/g;->f(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public static checkRemainingLength(II)V
    .locals 3

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    .line 5
    .line 6
    const-string v1, "remaining length must be "

    .line 7
    .line 8
    const-string v2, " but was "

    .line 9
    .line 10
    invoke-static {v1, p0, v2, p1}, LA/g;->f(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public static decodePublishPacketIdentifier(Lcom/hivemq/client/mqtt/datatypes/MqttQos;Lio/netty/buffer/ByteBuf;)I
    .locals 1

    sget-object v0, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->AT_MOST_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-ne p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_1

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result p0

    return p0

    :cond_1
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->remainingLengthTooShort()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p0

    throw p0
.end method

.method public static decodePublishQos(IZ)Lcom/hivemq/client/mqtt/datatypes/MqttQos;
    .locals 1

    and-int/lit8 p0, p0, 0x6

    shr-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->fromCode(I)Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object v0, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->AT_MOST_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-ne p0, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object p1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v0, "DUP flag must be 0 if QoS is 0"

    invoke-direct {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    const-string p1, "wrong QoS"

    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static malformedTopic()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;
    .locals 3

    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->TOPIC_NAME_INVALID:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v2, "malformed topic"

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static malformedUTF8String(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;
    .locals 2

    .line 1
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    .line 2
    .line 3
    const-string v1, "malformed UTF-8 string for "

    .line 4
    .line 5
    invoke-static {v1, p0}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static remainingLengthTooShort()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;
    .locals 2

    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    const-string v1, "remaining length too short"

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
