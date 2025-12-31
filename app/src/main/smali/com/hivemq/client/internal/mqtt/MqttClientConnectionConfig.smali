.class public Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final channel:Lio/netty/channel/Channel;

.field private final flags:I

.field private final keepAlive:S

.field private final maximumPacketSize:I

.field private final maximumQos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

.field private final receiveMaximum:S

.field private final sendMaximum:S

.field private final sendMaximumPacketSize:I

.field private final sendTopicAliasMapping:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasMapping;

.field private volatile sessionExpiryInterval:I

.field private final topicAliasMaximum:S

.field private final transportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;IZZJZZLcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;IIIZZIIILcom/hivemq/client/mqtt/datatypes/MqttQos;ZZZZLio/netty/channel/Channel;)V
    .locals 4

    move-object v0, p0

    move/from16 v1, p17

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    iput-object v2, v0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->transportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    move v2, p2

    int-to-short v2, v2

    iput-short v2, v0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->keepAlive:S

    move-wide v2, p5

    long-to-int v3, v2

    iput v3, v0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->sessionExpiryInterval:I

    move v2, p10

    int-to-short v2, v2

    iput-short v2, v0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->receiveMaximum:S

    move v2, p11

    iput v2, v0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->maximumPacketSize:I

    move/from16 v2, p12

    int-to-short v2, v2

    iput-short v2, v0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->topicAliasMaximum:S

    move/from16 v2, p15

    int-to-short v2, v2

    iput-short v2, v0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->sendMaximum:S

    move/from16 v2, p16

    iput v2, v0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->sendMaximumPacketSize:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;

    invoke-direct {v2, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;-><init>(I)V

    move-object v1, v2

    :goto_0
    iput-object v1, v0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->sendTopicAliasMapping:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasMapping;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->maximumQos:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->channel:Lio/netty/channel/Channel;

    if-eqz p8, :cond_1

    or-int/lit8 v1, p7, 0x2

    goto :goto_1

    :cond_1
    move v1, p7

    :goto_1
    if-eqz p13, :cond_2

    or-int/lit8 v1, v1, 0x4

    :cond_2
    if-eqz p14, :cond_3

    or-int/lit8 v1, v1, 0x8

    :cond_3
    if-eqz p19, :cond_4

    or-int/lit8 v1, v1, 0x10

    :cond_4
    if-eqz p20, :cond_5

    or-int/lit8 v1, v1, 0x20

    :cond_5
    if-eqz p21, :cond_6

    or-int/lit8 v1, v1, 0x40

    :cond_6
    if-eqz p22, :cond_7

    or-int/lit16 v1, v1, 0x80

    :cond_7
    if-eqz p3, :cond_8

    or-int/lit16 v1, v1, 0x100

    :cond_8
    if-eqz p4, :cond_9

    or-int/lit16 v1, v1, 0x200

    :cond_9
    iput v1, v0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->flags:I

    return-void
.end method


# virtual methods
.method public areSubscriptionIdentifiersAvailable()Z
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getChannel()Lio/netty/channel/Channel;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->channel:Lio/netty/channel/Channel;

    return-object v0
.end method

.method public getKeepAlive()I
    .locals 2

    iget-short v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->keepAlive:S

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getMaximumPacketSize()I
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->maximumPacketSize:I

    return v0
.end method

.method public getRawEnhancedAuthMechanism()Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getReceiveMaximum()I
    .locals 2

    iget-short v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->receiveMaximum:S

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getSendMaximum()I
    .locals 2

    iget-short v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->sendMaximum:S

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getSendMaximumPacketSize()I
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->sendMaximumPacketSize:I

    return v0
.end method

.method public getSendTopicAliasMapping()Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasMapping;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->sendTopicAliasMapping:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasMapping;

    return-object v0
.end method

.method public getSendTopicAliasMaximum()I
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->sendTopicAliasMapping:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasMapping;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasMapping;->getTopicAliasMaximum()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getSessionExpiryInterval()J
    .locals 4

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->sessionExpiryInterval:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getTopicAliasMaximum()I
    .locals 2

    iget-short v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->topicAliasMaximum:S

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public isCleanStop()Z
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isProblemInformationRequested()Z
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isResponseInformationRequested()Z
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setSessionExpiryInterval(J)V
    .locals 0

    long-to-int p2, p1

    iput p2, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->sessionExpiryInterval:I

    return-void
.end method
