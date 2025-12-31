.class public Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ClientMessageDecoders;
.super Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3ConnAckDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PublishDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubAckDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubRecDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubRelDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PubCompDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3SubAckDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3UnsubAckDecoder;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttPingRespDecoder;)V
    .locals 2

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;-><init>()V

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;->decoders:[Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->CONNACK:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result v1

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;->decoders:[Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PUBLISH:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result v0

    aput-object p2, p1, v0

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;->decoders:[Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PUBACK:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result p2

    aput-object p3, p1, p2

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;->decoders:[Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PUBREC:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result p2

    aput-object p4, p1, p2

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;->decoders:[Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PUBREL:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result p2

    aput-object p5, p1, p2

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;->decoders:[Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PUBCOMP:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result p2

    aput-object p6, p1, p2

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;->decoders:[Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->SUBACK:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result p2

    aput-object p7, p1, p2

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;->decoders:[Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->UNSUBACK:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result p2

    aput-object p8, p1, p2

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;->decoders:[Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PINGRESP:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result p2

    aput-object p9, p1, p2

    return-void
.end method
