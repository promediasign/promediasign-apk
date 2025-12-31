.class public Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ClientMessageDecoders;
.super Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5ConnAckDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PublishDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubAckDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubRecDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubRelDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5PubCompDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5SubAckDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5UnsubAckDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttPingRespDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5DisconnectDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5AuthDecoder;)V
    .locals 2

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;-><init>()V

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;->decoders:[Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->CONNACK:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result v1

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;->decoders:[Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->PUBLISH:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result v0

    aput-object p2, p1, v0

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;->decoders:[Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->PUBACK:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result p2

    aput-object p3, p1, p2

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;->decoders:[Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->PUBREC:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result p2

    aput-object p4, p1, p2

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;->decoders:[Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->PUBREL:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result p2

    aput-object p5, p1, p2

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;->decoders:[Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->PUBCOMP:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result p2

    aput-object p6, p1, p2

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;->decoders:[Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->SUBACK:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result p2

    aput-object p7, p1, p2

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;->decoders:[Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->UNSUBACK:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result p2

    aput-object p8, p1, p2

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;->decoders:[Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->PINGRESP:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result p2

    aput-object p9, p1, p2

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;->decoders:[Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->DISCONNECT:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result p2

    aput-object p10, p1, p2

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;->decoders:[Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->AUTH:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result p2

    aput-object p11, p1, p2

    return-void
.end method
