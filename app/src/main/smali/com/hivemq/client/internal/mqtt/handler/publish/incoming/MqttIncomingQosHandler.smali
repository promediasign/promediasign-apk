.class public Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;
.super Lcom/hivemq/client/internal/mqtt/handler/MqttSessionAwareHandler;
.source "SourceFile"


# static fields
.field private static final INDEX_SPEC:Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/IntIndex$Spec<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;


# instance fields
.field private final clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

.field private connectionIndex:J

.field final incomingPublishService:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;

.field private final messages:Lcom/hivemq/client/internal/util/collections/IntIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/IntIndex<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private receiveMaximum:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;

    invoke-static {v0}, Lcom/hivemq/client/internal/logging/InternalLoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/hivemq/client/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    new-instance v0, Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;

    new-instance v1, Lu0/a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;-><init>(Ljava/util/function/ToIntFunction;)V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->INDEX_SPEC:Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;

    return-void
.end method

.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;)V
    .locals 2

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/handler/MqttSessionAwareHandler;-><init>()V

    new-instance v0, Lcom/hivemq/client/internal/util/collections/IntIndex;

    sget-object v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->INDEX_SPEC:Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/util/collections/IntIndex;-><init>(Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->messages:Lcom/hivemq/client/internal/util/collections/IntIndex;

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    new-instance p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;

    invoke-direct {p1, p0, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;-><init>(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;)V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->incomingPublishService:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->lambda$static$0(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private ack(Ljava/lang/Object;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)Z
    .locals 4

    .line 2
    const/4 v0, 0x0

    if-eq p1, p2, :cond_1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->messages:Lcom/hivemq/client/internal/util/collections/IntIndex;

    iget-object p2, p2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage$WithId;->getPacketIdentifier()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/hivemq/client/internal/util/collections/IntIndex;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->messages:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {p2, p1}, Lcom/hivemq/client/internal/util/collections/IntIndex;->put(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return v0

    :cond_1
    iget-wide p1, p2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->connectionIndex:J

    iget-wide v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->connectionIndex:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private buildPubAck(Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;)Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getAdvancedConfig()Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->getInterceptors()Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;->build()Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;

    move-result-object p1

    return-object p1
.end method

.method private buildPubComp(Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;)Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getAdvancedConfig()Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->getInterceptors()Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;->build()Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;

    move-result-object p1

    return-object p1
.end method

.method private buildPubRec(Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRecBuilder;)Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getAdvancedConfig()Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->getInterceptors()Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRecBuilder;->build()Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;

    move-result-object p1

    return-object p1
.end method

.method private checkDupFlagSet(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)Z
    .locals 3

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->isDup()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v1, "DUP flag must be set for a resent PUBLISH ({})"

    invoke-interface {v0, v1, p2}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DUP flag must be set for a resent QoS "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object p2

    check-cast p2, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->getCode()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " PUBLISH"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private static synthetic lambda$static$0(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;

    iget-object p0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage$WithId;->getPacketIdentifier()I

    move-result p0

    return p0

    :cond_0
    check-cast p0, Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode$WithId;->getPacketIdentifier()I

    move-result p0

    return p0
.end method

.method private readNewPublishQos1Or2(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)Z
    .locals 3

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->incomingPublishService:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->receiveMaximum:I

    invoke-virtual {v0, p2, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->onPublishQos1Or2(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    iget-object p2, p2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->receiveMaximum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Received more QoS 1 and/or 2 PUBLISH messages ({}) than allowed by receive maximum ({})"

    invoke-interface {v0, v2, p2, v1}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->RECEIVE_MAXIMUM_EXCEEDED:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v0, "Received more QoS 1 and/or 2 PUBLISH messages than allowed by receive maximum"

    invoke-static {p1, p2, v0}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private readPubRel(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;)V
    .locals 3

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->messages:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode$WithId;->getPacketIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/util/collections/IntIndex;->remove(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;

    invoke-direct {v0, p2}, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;)V

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->buildPubComp(Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;)Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->writePubComp(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;)V

    goto :goto_2

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;

    invoke-direct {v0, p2}, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;)V

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubcomp/Mqtt5PubCompReasonCode;->PACKET_IDENTIFIER_NOT_FOUND:Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubcomp/Mqtt5PubCompReasonCode;

    invoke-virtual {v0, p2}, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;->reasonCode(Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubcomp/Mqtt5PubCompReasonCode;)Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->buildPubComp(Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubCompBuilder;)Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object v1, v0

    check-cast v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->messages:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v2, v0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->put(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v0

    sget-object v2, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->EXACTLY_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v2, "PUBREL ({}) must not carry the same packet identifier as an unacknowledged QoS 2 PUBLISH ({})"

    iget-object v1, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-interface {v0, v2, p2, v1}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v0, "PUBREL must not carry the same packet identifier as an unacknowledged QoS 2 PUBLISH"

    :goto_1
    invoke-static {p1, p2, v0}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v2, "PUBREL ({}) must not carry the same packet identifier as a QoS 1 PUBLISH ({})"

    iget-object v1, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-interface {v0, v2, p2, v1}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v0, "PUBREL must not carry the same packet identifier as a QoS 1 PUBLISH"

    goto :goto_1

    :goto_2
    return-void
.end method

.method private readPublish(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)V
    .locals 2

    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler$1;->$SwitchMap$com$hivemq$client$mqtt$datatypes$MqttQos:[I

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->readPublishQos2(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->readPublishQos1(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->readPublishQos0(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)V

    :goto_0
    return-void
.end method

.method private readPublishQos0(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)V
    .locals 2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->incomingPublishService:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;

    invoke-direct {v1, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)V

    iget p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->receiveMaximum:I

    invoke-virtual {v0, v1, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->onPublishQos0(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;I)V

    return-void
.end method

.method private readPublishQos1(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)V
    .locals 8

    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;

    invoke-direct {v0, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)V

    iget-wide v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->connectionIndex:J

    iput-wide v1, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->connectionIndex:J

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->messages:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->putIfAbsent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->readNewPublishQos1Or2(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->messages:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage$WithId;->getPacketIdentifier()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/hivemq/client/internal/util/collections/IntIndex;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    instance-of v2, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;

    const-string v3, "QoS 1 PUBLISH must not carry the same packet identifier as a QoS 2 PUBLISH"

    const-string v4, "QoS 1 PUBLISH ({}) must not carry the same packet identifier as a QoS 2 PUBLISH ({})"

    if-eqz v2, :cond_4

    move-object v2, v1

    check-cast v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;

    iget-object v5, v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-virtual {v5}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v5

    check-cast v5, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {v5}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v5

    sget-object v6, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->AT_LEAST_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-ne v5, v6, :cond_3

    iget-wide v3, v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->connectionIndex:J

    iget-wide v5, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->connectionIndex:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getMqttVersion()Lcom/hivemq/client/mqtt/MqttVersion;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/mqtt/MqttVersion;->MQTT_5_0:Lcom/hivemq/client/mqtt/MqttVersion;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v1, "QoS 1 PUBLISH ({}) must not be resent ({}) during the same connection"

    iget-object v2, v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-interface {v0, v1, v2, p2}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v0, "QoS 1 PUBLISH must not be resent during the same connection"

    invoke-static {p1, p2, v0}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->checkDupFlagSet(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)Z

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->messages:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {p2, v0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->put(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->readNewPublishQos1Or2(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->messages:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {p1, v1}, Lcom/hivemq/client/internal/util/collections/IntIndex;->put(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    iget-object v1, v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    :goto_0
    invoke-interface {v0, v4, p2, v1}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    invoke-static {p1, p2, v3}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private readPublishQos2(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)V
    .locals 8

    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;

    invoke-direct {v0, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)V

    iget-wide v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->connectionIndex:J

    iput-wide v1, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->connectionIndex:J

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->messages:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->putIfAbsent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->readNewPublishQos1Or2(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->messages:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage$WithId;->getPacketIdentifier()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/hivemq/client/internal/util/collections/IntIndex;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_0
    instance-of v2, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;

    if-eqz v2, :cond_5

    move-object v2, v1

    check-cast v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;

    iget-object v3, v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-virtual {v3}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v3

    check-cast v3, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {v3}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v3

    sget-object v4, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->EXACTLY_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-ne v3, v4, :cond_3

    iget-wide v0, v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->connectionIndex:J

    iget-wide v3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->connectionIndex:J

    cmp-long v5, v0, v3

    if-nez v5, :cond_2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getMqttVersion()Lcom/hivemq/client/mqtt/MqttVersion;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/mqtt/MqttVersion;->MQTT_5_0:Lcom/hivemq/client/mqtt/MqttVersion;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v1, "QoS 2 PUBLISH ({}) must not be resent ({}) during the same connection"

    iget-object v2, v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-interface {v0, v1, v2, p2}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v0, "QoS 2 PUBLISH must not be resent during the same connection"

    :goto_0
    invoke-static {p1, p2, v0}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->checkDupFlagSet(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)Z

    goto :goto_2

    :cond_2
    iput-wide v3, v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->connectionIndex:J

    goto :goto_1

    :cond_3
    iget-wide v3, v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->connectionIndex:J

    iget-wide v5, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->connectionIndex:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_4

    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v1, "QoS 2 PUBLISH ({}) must not carry the same packet identifier as a QoS 1 PUBLISH ({})"

    iget-object v2, v2, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-interface {v0, v1, p2, v2}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v0, "QoS 2 PUBLISH must not carry the same packet identifier as a QoS 1 PUBLISH"

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->messages:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {p2, v0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->put(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->readNewPublishQos1Or2(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->messages:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {p1, v1}, Lcom/hivemq/client/internal/util/collections/IntIndex;->put(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->checkDupFlagSet(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)Z

    move-result p2

    if-eqz p2, :cond_6

    check-cast v1, Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;

    invoke-direct {p0, p1, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->writePubRec(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private writePubAck(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;)V
    .locals 1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method private writePubComp(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;)V
    .locals 1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method private writePubRec(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;)V
    .locals 1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-void
.end method


# virtual methods
.method public ack(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler$1;->$SwitchMap$com$hivemq$client$mqtt$datatypes$MqttQos:[I

    iget-object v1, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRecBuilder;

    iget-object v1, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRecBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)V

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->buildPubRec(Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRecBuilder;)Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;->getReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, LF0/a;->a(Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->messages:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->put(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->messages:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode$WithId;->getPacketIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hivemq/client/internal/util/collections/IntIndex;->remove(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    invoke-direct {p0, v1, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->ack(Ljava/lang/Object;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-eqz p1, :cond_3

    invoke-direct {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->writePubRec(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;

    iget-object v1, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;->publish:Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)V

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->buildPubAck(Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAckBuilder;)Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->messages:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode$WithId;->getPacketIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hivemq/client/internal/util/collections/IntIndex;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->ack(Ljava/lang/Object;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttStatefulPublishWithFlows;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-eqz p1, :cond_3

    invoke-direct {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->writePubAck(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->readPublish(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;

    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->readPubRel(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    :goto_0
    return-void
.end method

.method public onSessionEnd(Ljava/lang/Throwable;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/MqttSessionAwareHandler;->onSessionEnd(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->messages:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/util/collections/IntIndex;->clear()V

    return-void
.end method

.method public onSessionStartOrResume(Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;Lio/netty/channel/EventLoop;)V
    .locals 4

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->getReceiveMaximum()I

    move-result v0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->receiveMaximum:I

    iget-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->connectionIndex:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->connectionIndex:J

    invoke-super {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/MqttSessionAwareHandler;->onSessionStartOrResume(Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;Lio/netty/channel/EventLoop;)V

    return-void
.end method
