.class public Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ClientMessageEncoders;
.super Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ConnectEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PublishEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubAckEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubRecEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubRelEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PubCompEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3SubscribeEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3UnsubscribeEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttPingReqEncoder;Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3DisconnectEncoder;)V
    .locals 2

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;-><init>()V

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;->encoders:[Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->CONNECT:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result v1

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;->encoders:[Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PUBLISH:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result v0

    aput-object p2, p1, v0

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;->encoders:[Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PUBACK:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result p2

    aput-object p3, p1, p2

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;->encoders:[Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PUBREC:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result p2

    aput-object p4, p1, p2

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;->encoders:[Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PUBREL:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result p2

    aput-object p5, p1, p2

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;->encoders:[Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PUBCOMP:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result p2

    aput-object p6, p1, p2

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;->encoders:[Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->SUBSCRIBE:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result p2

    aput-object p7, p1, p2

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;->encoders:[Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->UNSUBSCRIBE:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result p2

    aput-object p8, p1, p2

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;->encoders:[Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PINGREQ:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result p2

    aput-object p9, p1, p2

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;->encoders:[Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->DISCONNECT:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result p2

    aput-object p10, p1, p2

    return-void
.end method
