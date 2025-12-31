.class public Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRelBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final packetIdentifier:I

.field private reasonCode:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrel/Mqtt5PubRelReasonCode;

.field private reasonString:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

.field private userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;->DEFAULT_REASON_CODE:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrel/Mqtt5PubRelReasonCode;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRelBuilder;->reasonCode:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrel/Mqtt5PubRelReasonCode;

    sget-object v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRelBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode$WithId;->getPacketIdentifier()I

    move-result p1

    iput p1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRelBuilder;->packetIdentifier:I

    return-void
.end method


# virtual methods
.method public build()Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;
    .locals 5

    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRelBuilder;->packetIdentifier:I

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRelBuilder;->reasonCode:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrel/Mqtt5PubRelReasonCode;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRelBuilder;->reasonString:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRelBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;-><init>(ILcom/hivemq/client/mqtt/mqtt5/message/publish/pubrel/Mqtt5PubRelReasonCode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    return-object v0
.end method
