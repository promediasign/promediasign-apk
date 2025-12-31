.class public Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;
.super Lcom/hivemq/client/internal/mqtt/handler/MqttSessionAwareHandler;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final INDEX_SPEC:Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/IntIndex$Spec<",
            "Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;


# instance fields
.field private final clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

.field private currentPending:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

.field private final incomingPublishFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;

.field private nextSubscriptionIdentifier:I

.field private final packetIdentifiers:Lcom/hivemq/client/internal/util/Ranges;

.field private final pending:Lcom/hivemq/client/internal/util/collections/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/NodeList<",
            "Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/IntIndex<",
            "Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;",
            ">;"
        }
    .end annotation
.end field

.field private sendPending:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

.field private subscriptionIdentifiersAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;

    invoke-static {v0}, Lcom/hivemq/client/internal/logging/InternalLoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/hivemq/client/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    new-instance v0, Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/subscribe/a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;-><init>(Ljava/util/function/ToIntFunction;I)V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->INDEX_SPEC:Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;

    return-void
.end method

.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;)V
    .locals 2

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/handler/MqttSessionAwareHandler;-><init>()V

    new-instance v0, Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-direct {v0}, Lcom/hivemq/client/internal/util/collections/NodeList;-><init>()V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->pending:Lcom/hivemq/client/internal/util/collections/NodeList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->nextSubscriptionIdentifier:I

    new-instance v0, Lcom/hivemq/client/internal/util/collections/IntIndex;

    sget-object v1, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->INDEX_SPEC:Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/util/collections/IntIndex;-><init>(Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->incomingPublishFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;

    new-instance p1, Lcom/hivemq/client/internal/util/Ranges;

    const p2, 0xfff6

    const v0, 0xffff

    invoke-direct {p1, p2, v0}, Lcom/hivemq/client/internal/util/Ranges;-><init>(II)V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->packetIdentifiers:Lcom/hivemq/client/internal/util/Ranges;

    return-void
.end method

.method public static synthetic a(Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->lambda$subscribe$2(Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;)V

    return-void
.end method

.method public static synthetic b(Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->lambda$onSessionStartOrResume$1(Ljava/lang/Integer;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic c(Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->lambda$subscribeGlobal$4(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;)V

    return-void
.end method

.method private completePending(Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;)V
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->pending:Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/util/collections/NodeList;->remove(Lcom/hivemq/client/internal/util/collections/NodeList$Node;)V

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->packetIdentifiers:Lcom/hivemq/client/internal/util/Ranges;

    iget p1, p1, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;->packetIdentifier:I

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/util/Ranges;->returnId(I)V

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->run()V

    return-void
.end method

.method public static synthetic d(Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->lambda$static$0(Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$onSessionStartOrResume$1(Ljava/lang/Integer;Ljava/util/List;)V
    .locals 3

    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    invoke-static {p2}, Lcom/hivemq/client/internal/util/collections/b;->x(Ljava/util/Collection;)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object p2

    sget-object v1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->NO_USER_PROPERTIES:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    invoke-direct {v0, p2, v1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;-><init>(Lcom/hivemq/client/internal/util/collections/ImmutableList;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    iget-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->pending:Lcom/hivemq/client/internal/util/collections/NodeList;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;-><init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;ILcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;)V

    invoke-virtual {p2, v1}, Lcom/hivemq/client/internal/util/collections/NodeList;->addFirst(Lcom/hivemq/client/internal/util/collections/NodeList$Node;)V

    return-void
.end method

.method private static synthetic lambda$static$0(Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;)I
    .locals 0

    iget p0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;->packetIdentifier:I

    return p0
.end method

.method private synthetic lambda$subscribe$2(Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;)V
    .locals 3

    invoke-interface {p1}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;->init()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->nextSubscriptionIdentifier:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->nextSubscriptionIdentifier:I

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->incomingPublishFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v0, v2}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->subscribe(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;ILcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttSubscribedPublishFlow;)V

    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;

    invoke-direct {v1, p2, v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;-><init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;ILcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;)V

    invoke-direct {p0, v1}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->queue(Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$subscribeGlobal$4(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;)V
    .locals 1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;->init()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->incomingPublishFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->subscribeGlobal(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;)V

    :cond_0
    return-void
.end method

.method private queue(Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;)V
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->pending:Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/util/collections/NodeList;->add(Lcom/hivemq/client/internal/util/collections/NodeList$Node;)V

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->sendPending:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->sendPending:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->run()V

    :cond_0
    return-void
.end method

.method private readSubAck(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;)V
    .locals 7

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCodesAndId;->getPacketIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/util/collections/IntIndex;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    if-nez v0, :cond_0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v0, "Unknown packet identifier for SUBACK"

    :goto_0
    invoke-static {p1, p2, v0}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    return-void

    :cond_0
    instance-of v1, v0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;

    if-nez v1, :cond_1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v0, "SUBACK received for an UNSUBSCRIBE"

    goto :goto_0

    :cond_1
    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;->getFlow()Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;

    move-result-object p1

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCodesAndId;->getReasonCodes()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v1

    iget-object v2, v0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;->subscribe:Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;->getSubscriptions()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCodesAndId;->getReasonCodes()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v3

    invoke-static {v3}, Lcom/hivemq/client/internal/mqtt/message/MqttCommonReasonCode;->allErrors(Lcom/hivemq/client/internal/util/collections/ImmutableList;)Z

    move-result v3

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->incomingPublishFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;

    iget-object v5, v0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;->subscribe:Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    iget v6, v0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;->subscriptionIdentifier:I

    invoke-virtual {v4, v5, v6, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->subAck(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;ILcom/hivemq/client/internal/util/collections/ImmutableList;)V

    if-eqz p1, :cond_7

    if-nez v2, :cond_4

    if-nez v3, :cond_4

    invoke-interface {p1}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;->onSuccess(Ljava/lang/Object;)V

    goto :goto_4

    :cond_3
    sget-object p1, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string p2, "Subscribe was successful but the SubAck flow has been cancelled"

    :goto_2
    invoke-interface {p1, p2}, Lcom/hivemq/client/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    if-eqz v2, :cond_5

    const-string v1, "Count of Reason Codes in SUBACK does not match count of subscriptions in SUBSCRIBE"

    goto :goto_3

    :cond_5
    const-string v1, "SUBACK contains only Error Codes"

    :goto_3
    invoke-interface {p1}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5SubAckException;

    invoke-direct {v2, p2, v1}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5SubAckException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;->onError(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_6
    sget-object p1, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string p2, " but the SubAck flow has been cancelled"

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_7
    :goto_4
    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->completePending(Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;)V

    return-void
.end method

.method private readUnsubAck(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/MqttUnsubAck;)V
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCodesAndId;->getPacketIdentifier()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/hivemq/client/internal/util/collections/IntIndex;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    if-nez p2, :cond_0

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v0, "Unknown packet identifier for UNSUBACK"

    :goto_0
    invoke-static {p1, p2, v0}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v0, "UNSUBACK received for a SUBSCRIBE"

    goto :goto_0
.end method

.method private writeSubscribe(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;)V
    .locals 3

    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->subscriptionIdentifiersAvailable:Z

    if-eqz v0, :cond_0

    iget v0, p2, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;->subscriptionIdentifier:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iget-object v1, p2, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;->subscribe:Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    iget v2, p2, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;->packetIdentifier:I

    invoke-virtual {v1, v2, v0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;->createStateful(II)Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;

    move-result-object v0

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->currentPending:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->currentPending:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    return-void
.end method

.method private writeUnsubscribe(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttUnsubscribeWithFlow;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;

    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->readSubAck(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/MqttUnsubAck;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/MqttUnsubAck;

    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->readUnsubAck(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/MqttUnsubAck;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    :goto_0
    return-void
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 2

    instance-of v0, p2, Ljava/io/IOException;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->currentPending:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->pending:Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-virtual {p1, v0}, Lcom/hivemq/client/internal/util/collections/NodeList;->remove(Lcom/hivemq/client/internal/util/collections/NodeList$Node;)V

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->packetIdentifiers:Lcom/hivemq/client/internal/util/Ranges;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->currentPending:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    iget v0, v0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;->packetIdentifier:I

    invoke-virtual {p1, v0}, Lcom/hivemq/client/internal/util/Ranges;->returnId(I)V

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->currentPending:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    iget v0, v0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;->packetIdentifier:I

    invoke-virtual {p1, v0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->currentPending:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;->getFlow()Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;->onError(Ljava/lang/Throwable;)V

    :cond_0
    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->currentPending:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    instance-of p2, p1, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;

    iget-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->incomingPublishFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;

    iget-object v0, p1, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;->subscribe:Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    iget p1, p1, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;->subscriptionIdentifier:I

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;->UNSPECIFIED_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAckReasonCode;

    invoke-static {v1}, Lcom/hivemq/client/internal/util/collections/b;->A(Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->subAck(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;ILcom/hivemq/client/internal/util/collections/ImmutableList;)V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->currentPending:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    goto :goto_0

    :cond_2
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    :goto_0
    return-void
.end method

.method public onSessionEnd(Ljava/lang/Throwable;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/MqttSessionAwareHandler;->onSessionEnd(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->sendPending:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->pending:Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/NodeList;->getFirst()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;->packetIdentifier:I

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->packetIdentifiers:Lcom/hivemq/client/internal/util/Ranges;

    invoke-virtual {v2, v1}, Lcom/hivemq/client/internal/util/Ranges;->returnId(I)V

    const/4 v1, 0x0

    iput v1, v0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;->packetIdentifier:I

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->getNext()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->isResubscribeIfSessionExpired()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getState()Lcom/hivemq/client/mqtt/MqttClientState;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/mqtt/MqttClientState;->DISCONNECTED:Lcom/hivemq/client/mqtt/MqttClientState;

    if-eq v0, v1, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->incomingPublishFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->clear(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->pending:Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/NodeList;->getFirst()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v0

    :goto_2
    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;->getFlow()Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1, p1}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;->onError(Ljava/lang/Throwable;)V

    :cond_3
    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->getNext()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v0

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->pending:Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/util/collections/NodeList;->clear()V

    const/4 p1, 0x1

    iput p1, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->nextSubscriptionIdentifier:I

    return-void
.end method

.method public onSessionStartOrResume(Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;Lio/netty/channel/EventLoop;)V
    .locals 3

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->areSubscriptionIdentifiersAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->subscriptionIdentifiersAvailable:Z

    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSessionAwareHandler;->hasSession:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->incomingPublishFlows:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;->getSubscriptions()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lg1/e;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lg1/e;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v1}, Lj$/util/Map$-EL;->forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V

    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->clear()V

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->pending:Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/NodeList;->getFirst()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->sendPending:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    if-eqz v0, :cond_1

    invoke-interface {p2, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/MqttSessionAwareHandler;->onSessionStartOrResume(Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;Lio/netty/channel/EventLoop;)V

    return-void
.end method

.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->sendPending:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v3}, Lcom/hivemq/client/internal/util/collections/IntIndex;->size()I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_4

    iget v3, v1, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;->packetIdentifier:I

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->packetIdentifiers:Lcom/hivemq/client/internal/util/Ranges;

    invoke-virtual {v3}, Lcom/hivemq/client/internal/util/Ranges;->getId()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v1, "No Packet Identifier available for (UN)SUBSCRIBE. This must not happen and is a bug."

    invoke-interface {v0, v1}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_1
    iput v3, v1, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;->packetIdentifier:I

    :cond_2
    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v3, v1}, Lcom/hivemq/client/internal/util/collections/IntIndex;->put(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->sendPending:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    instance-of v3, v3, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;

    if-eqz v3, :cond_3

    move-object v3, v1

    check-cast v3, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;

    invoke-direct {p0, v0, v3}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->writeSubscribe(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscribeWithFlow;)V

    goto :goto_1

    :cond_3
    invoke-static {v1}, Ls/a;->g(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->writeUnsubscribe(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttUnsubscribeWithFlow;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->getNext()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->sendPending:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    goto :goto_0

    :cond_4
    if-lez v2, :cond_5

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    :cond_5
    return-void
.end method

.method public subscribe(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;",
            "Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow<",
            "Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionFlow;->getEventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    new-instance v1, LD/f;

    const/4 v2, 0x7

    invoke-direct {v1, p0, p2, p1, v2}, LD/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public subscribeGlobal(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttGlobalIncomingPublishFlow;)V
    .locals 3

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;->getEventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    new-instance v1, LG/c;

    const/16 v2, 0x1a

    invoke-direct {v1, p0, p1, v2}, LG/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
