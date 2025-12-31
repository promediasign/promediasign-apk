.class public Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

.field private reasonCode:Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckReasonCode;

.field private reasonString:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

.field private userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;->DEFAULT_REASON_CODE:Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckReasonCode;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;->reasonCode:Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckReasonCode;

    sget-object v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    return-void
.end method


# virtual methods
.method public build()Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;
    .locals 5

    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage$WithId;->getPacketIdentifier()I

    move-result v1

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;->reasonCode:Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckReasonCode;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;->reasonString:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;-><init>(ILcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckReasonCode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    return-object v0
.end method
