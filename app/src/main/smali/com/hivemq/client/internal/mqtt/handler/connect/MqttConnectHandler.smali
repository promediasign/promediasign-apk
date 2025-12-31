.class public Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;
.super Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;
.source "SourceFile"


# static fields
.field private static final LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;


# instance fields
.field private final clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

.field private final connAckFlow:Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

.field private final connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

.field private connectFlushTime:J

.field private connectWritten:Z

.field private final decoder:Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder;

.field private final session:Lcom/hivemq/client/internal/mqtt/handler/MqttSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;

    invoke-static {v0}, Lcom/hivemq/client/internal/logging/InternalLoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/hivemq/client/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/MqttSession;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder;)V
    .locals 1

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connectWritten:Z

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connAckFlow:Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->session:Lcom/hivemq/client/internal/mqtt/handler/MqttSession;

    iput-object p5, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->decoder:Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder;

    return-void
.end method

.method private addConnectionConfig(Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;Lio/netty/channel/Channel;)Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;
    .locals 27

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->getRawServerKeepAlive()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getKeepAlive()I

    move-result v1

    :cond_0
    move v4, v1

    invoke-virtual/range {p1 .. p1}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->getRawSessionExpiryInterval()J

    move-result-wide v1

    const-wide/16 v5, -0x1

    cmp-long v3, v1, v5

    if-nez v3, :cond_1

    iget-object v1, v0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getSessionExpiryInterval()J

    move-result-wide v1

    :cond_1
    move-wide v7, v1

    iget-object v1, v0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRestrictions()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->getRestrictions()Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;

    move-result-object v2

    new-instance v9, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;

    iget-object v3, v0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v3}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getCurrentTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    move-result-object v3

    iget-object v5, v0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-virtual {v5}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->isCleanStart()Z

    move-result v5

    iget-object v6, v0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-virtual {v6}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getSessionExpiryInterval()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    const/4 v6, 0x0

    const/4 v14, 0x1

    cmp-long v15, v10, v12

    if-nez v15, :cond_2

    const/16 v25, 0x1

    goto :goto_0

    :cond_2
    const/16 v25, 0x0

    :goto_0
    iget-object v10, v0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-virtual {v10}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawSimpleAuth()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    move-result-object v10

    if-eqz v10, :cond_3

    const/16 v26, 0x1

    goto :goto_1

    :cond_3
    const/16 v26, 0x0

    :goto_1
    iget-object v6, v0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-virtual {v6}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawWillPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    iget-object v6, v0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-virtual {v6}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawEnhancedAuthMechanism()Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->getReceiveMaximum()I

    move-result v12

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->getMaximumPacketSize()I

    move-result v13

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->getTopicAliasMaximum()I

    move-result v14

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->isRequestProblemInformation()Z

    move-result v15

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->isRequestResponseInformation()Z

    move-result v16

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->getSendMaximum()I

    move-result v6

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->getReceiveMaximum()I

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v17

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->getSendMaximumPacketSize()I

    move-result v6

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->getMaximumPacketSize()I

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v18

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->getSendTopicAliasMaximum()I

    move-result v1

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->getTopicAliasMaximum()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v19

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->getMaximumQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v20

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->isRetainAvailable()Z

    move-result v21

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->isWildcardSubscriptionAvailable()Z

    move-result v22

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->isSharedSubscriptionAvailable()Z

    move-result v23

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAckRestrictions;->areSubscriptionIdentifiersAvailable()Z

    move-result v24

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v9

    move/from16 v6, v25

    move-object v1, v9

    move/from16 v9, v26

    move-object/from16 v25, p2

    invoke-direct/range {v2 .. v25}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;IZZJZZLcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;IIIZZIIILcom/hivemq/client/mqtt/datatypes/MqttQos;ZZZZLio/netty/channel/Channel;)V

    iget-object v2, v0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v2, v1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->setConnectionConfig(Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;)V

    return-object v1
.end method

.method private readConnAck(Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;Lio/netty/channel/Channel;)V
    .locals 10

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;->getReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAckReasonCode;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, LF0/a;->a(Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CONNECT failed as CONNACK contained an Error Code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;->getReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;Ljava/lang/String;)V

    sget-object p1, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->SERVER:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    invoke-static {p2, v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->fireDisconnectEvent(Lio/netty/channel/Channel;Ljava/lang/Throwable;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;)V

    goto/16 :goto_2

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->validateClientIdentifier(Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;Lio/netty/channel/Channel;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->addConnectionConfig(Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;Lio/netty/channel/Channel;)Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;

    move-result-object v0

    invoke-interface {p2}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    invoke-interface {v1, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    invoke-interface {p2}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    const-string v2, "encoder"

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelPipeline;->get(Ljava/lang/String;)Lio/netty/channel/ChannelHandler;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;->onConnected(Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;)V

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->session:Lcom/hivemq/client/internal/mqtt/handler/MqttSession;

    invoke-interface {p2}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v2

    invoke-interface {p2}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v3

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->startOrResume(Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;Lio/netty/channel/ChannelPipeline;Lio/netty/channel/EventLoop;)V

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->getKeepAlive()I

    move-result v5

    if-lez v5, :cond_1

    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;

    iget-wide v6, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connectFlushTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;-><init>(IJJ)V

    invoke-interface {p2}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p2

    const-string v1, "decoder"

    const-string v2, "ping"

    invoke-interface {p2, v1, v2, v0}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    :cond_1
    iget-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getRawState()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p2

    sget-object v0, Lcom/hivemq/client/mqtt/MqttClientState;->CONNECTED:Lcom/hivemq/client/mqtt/MqttClientState;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getConnectedListeners()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object p2

    invoke-interface {p2}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-static {v0, v1, p1}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientConnectedContextImpl;->of(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;)Lcom/hivemq/client/mqtt/lifecycle/MqttClientConnectedContext;

    invoke-interface {p2}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->iterator()Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LA/g;->x(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v2, "Unexpected exception thrown by connected listener."

    invoke-interface {v1, v2, v0}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connAckFlow:Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

    invoke-virtual {p2, p1}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->onSuccess(Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private readOtherThanConnAck(Ljava/lang/Object;Lio/netty/channel/Channel;)V
    .locals 2

    instance-of v0, p1, Lcom/hivemq/client/internal/mqtt/message/MqttMessage;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/MqttMessage;

    invoke-interface {p1}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5Message;->getType()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " message must not be received before CONNACK"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "No data must be received before CONNECT is sent"

    invoke-static {p2, p1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->close(Lio/netty/channel/Channel;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private validateClientIdentifier(Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;Lio/netty/channel/Channel;)Z
    .locals 3

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getRawClientIdentifier()Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->getRawAssignedClientIdentifier()Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    move-result-object v1

    sget-object v2, Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;->REQUEST_CLIENT_IDENTIFIER_FROM_SERVER:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getMqttVersion()Lcom/hivemq/client/mqtt/MqttVersion;

    move-result-object v0

    sget-object v2, Lcom/hivemq/client/mqtt/MqttVersion;->MQTT_5_0:Lcom/hivemq/client/mqtt/MqttVersion;

    if-ne v0, v2, :cond_1

    if-nez v1, :cond_1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v1, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;

    const-string v2, "Server did not assign a Client Identifier"

    invoke-direct {v1, p1, v2}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;Ljava/lang/String;)V

    invoke-static {p2, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz v1, :cond_1

    sget-object p1, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string p2, "Server overwrote the Client Identifier {} with {}"

    invoke-interface {p1, p2, v0, v1}, Lcom/hivemq/client/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {p1, v1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->setClientIdentifier(Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private writeConnect(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3

    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connectWritten:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connectWritten:Z

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connectFlushTime:J

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawEnhancedAuthMechanism()Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getRawClientIdentifier()Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->createStateful(Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;)Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    invoke-interface {p1, p0}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    :cond_0
    return-void
.end method


# virtual methods
.method public channelActive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->writeConnect(Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelActive()Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;->cancelTimeout()V

    instance-of v0, p2, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->readConnAck(Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;Lio/netty/channel/Channel;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->readOtherThanConnAck(Ljava/lang/Object;Lio/netty/channel/Channel;)V

    :goto_0
    return-void
.end method

.method public getTimeoutMs()J
    .locals 2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getCurrentTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->getMqttConnectTimeoutMs()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getTimeoutReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;
    .locals 1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    return-object v0
.end method

.method public getTimeoutReasonString()Ljava/lang/String;
    .locals 1

    const-string v0, "Timeout while waiting for CONNACK"

    return-object v0
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;->handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->writeConnect(Lio/netty/channel/ChannelHandlerContext;)V

    :cond_0
    return-void
.end method

.method public onDisconnectEvent(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V
    .locals 6

    invoke-super {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;->onDisconnectEvent(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;->getSource()Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    move-result-object v1

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connAckFlow:Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->reconnect(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V

    return-void
.end method

.method public operationSuccessful(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawEnhancedAuthMechanism()Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;->scheduleTimeout(Lio/netty/channel/Channel;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    const-string v0, "decoder"

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;->decoder:Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder;

    const-string v2, "encoder"

    invoke-interface {p1, v2, v0, v1}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    return-void
.end method
