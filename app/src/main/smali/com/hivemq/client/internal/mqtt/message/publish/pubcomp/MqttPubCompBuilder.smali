.class public Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final pubRel:Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;

.field private reasonCode:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubcomp/Mqtt5PubCompReasonCode;

.field private reasonString:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

.field private userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;->DEFAULT_REASON_CODE:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubcomp/Mqtt5PubCompReasonCode;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;->reasonCode:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubcomp/Mqtt5PubCompReasonCode;

    sget-object v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;->pubRel:Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;

    return-void
.end method


# virtual methods
.method public build()Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;
    .locals 5

    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;->pubRel:Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode$WithId;->getPacketIdentifier()I

    move-result v1

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;->reasonCode:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubcomp/Mqtt5PubCompReasonCode;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;->reasonString:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;->userProperties:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;-><init>(ILcom/hivemq/client/mqtt/mqtt5/message/publish/pubcomp/Mqtt5PubCompReasonCode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    return-object v0
.end method

.method public reasonCode(Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubcomp/Mqtt5PubCompReasonCode;)Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;
    .locals 0

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;->reasonCode:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubcomp/Mqtt5PubCompReasonCode;

    return-object p0
.end method
