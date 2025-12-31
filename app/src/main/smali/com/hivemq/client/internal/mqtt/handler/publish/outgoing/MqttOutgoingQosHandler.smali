.class public Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;
.super Lcom/hivemq/client/internal/mqtt/handler/MqttSessionAwareHandler;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Ljava/lang/Runnable;
.implements Lio/netty/util/concurrent/GenericFutureListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/handler/MqttSessionAwareHandler;",
        "Lio/reactivex/FlowableSubscriber<",
        "Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;",
        ">;",
        "Ljava/lang/Runnable;",
        "Lio/netty/util/concurrent/GenericFutureListener;"
    }
.end annotation


# static fields
.field private static final INDEX_SPEC:Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/IntIndex$Spec<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;


# instance fields
.field private final clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

.field private currentPending:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

.field private final packetIdentifiers:Lcom/hivemq/client/internal/util/Ranges;

.field private final pending:Lcom/hivemq/client/internal/util/collections/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/NodeList<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/IntIndex<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;",
            ">;"
        }
    .end annotation
.end field

.field private final publishFlowables:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;

.field private final queue:Lorg/jctools/queues/SpscUnboundedArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jctools/queues/SpscUnboundedArrayQueue<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;",
            ">;"
        }
    .end annotation
.end field

.field private final queuedCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private resendPending:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;

.field private sendMaximum:I

.field private shrinkRequests:I

.field private subscription:Lorg/reactivestreams/Subscription;

.field private topicAliasMapping:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasMapping;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;

    invoke-static {v0}, Lcom/hivemq/client/internal/logging/InternalLoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/hivemq/client/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    new-instance v0, Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;-><init>(Ljava/util/function/ToIntFunction;)V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->INDEX_SPEC:Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;

    return-void
.end method

.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V
    .locals 3

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/handler/MqttSessionAwareHandler;-><init>()V

    new-instance v0, Lorg/jctools/queues/SpscUnboundedArrayQueue;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lorg/jctools/queues/SpscUnboundedArrayQueue;-><init>(I)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->queue:Lorg/jctools/queues/SpscUnboundedArrayQueue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->queuedCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-direct {v0}, Lcom/hivemq/client/internal/util/collections/NodeList;-><init>()V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pending:Lcom/hivemq/client/internal/util/collections/NodeList;

    new-instance v0, Lcom/hivemq/client/internal/util/Ranges;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/util/Ranges;-><init>(II)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->packetIdentifiers:Lcom/hivemq/client/internal/util/Ranges;

    new-instance v0, Lcom/hivemq/client/internal/util/collections/IntIndex;

    sget-object v1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->INDEX_SPEC:Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/util/collections/IntIndex;-><init>(Lcom/hivemq/client/internal/util/collections/IntIndex$Spec;)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    new-instance p1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;

    invoke-direct {p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->publishFlowables:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;

    return-void
.end method

.method public static synthetic a(Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->lambda$static$0(Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lio/reactivex/Flowable;)Lorg/reactivestreams/Publisher;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->lambda$onSessionStartOrResume$1(Lio/reactivex/Flowable;)Lorg/reactivestreams/Publisher;

    move-result-object p0

    return-object p0
.end method

.method private buildPubRel(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;)Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;
    .locals 0

    new-instance p1, Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRelBuilder;

    invoke-direct {p1, p2}, Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRelBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;)V

    iget-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getAdvancedConfig()Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->getInterceptors()Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRelBuilder;->build()Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;

    move-result-object p1

    return-object p1
.end method

.method private clearQueued(Ljava/lang/Throwable;)V
    .locals 5

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->queue:Lorg/jctools/queues/SpscUnboundedArrayQueue;

    invoke-virtual {v2}, Lorg/jctools/queues/SpscUnboundedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->queuedCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v1, v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;->getAckFlow()Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;

    move-result-object v3

    new-instance v4, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;->getPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object v2

    invoke-direct {v4, v2, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;->onNext(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private completePending(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;)V
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pending:Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-virtual {v0, p2}, Lcom/hivemq/client/internal/util/collections/NodeList;->remove(Lcom/hivemq/client/internal/util/collections/NodeList$Node;)V

    iget p2, p2, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;->packetIdentifier:I

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->packetIdentifiers:Lcom/hivemq/client/internal/util/Ranges;

    invoke-virtual {v0, p2}, Lcom/hivemq/client/internal/util/Ranges;->returnId(I)V

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->sendMaximum:I

    if-le p2, v0, :cond_0

    iget-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->packetIdentifiers:Lcom/hivemq/client/internal/util/Ranges;

    invoke-virtual {p2, v0}, Lcom/hivemq/client/internal/util/Ranges;->resize(I)I

    :cond_0
    iget-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->resendPending:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;

    if-eqz p2, :cond_1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private static error(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V
    .locals 1

    invoke-interface {p0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p0

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    invoke-static {p0, v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    return-void
.end method

.method private isRepublishIfSessionExpired()Z
    .locals 2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->isRepublishIfSessionExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getState()Lcom/hivemq/client/mqtt/MqttClientState;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/mqtt/MqttClientState;->DISCONNECTED:Lcom/hivemq/client/mqtt/MqttClientState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$onSessionStartOrResume$1(Lio/reactivex/Flowable;)Lorg/reactivestreams/Publisher;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$static$0(Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;)I
    .locals 0

    iget p0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;->packetIdentifier:I

    return p0
.end method

.method private onPubAck(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;)V
    .locals 0

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getAdvancedConfig()Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->getInterceptors()Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;

    return-void
.end method

.method private onPubComp(Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;)V
    .locals 0

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getAdvancedConfig()Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->getInterceptors()Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;

    return-void
.end method

.method private onPubRecError(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;)V
    .locals 0

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getAdvancedConfig()Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->getInterceptors()Lcom/hivemq/client/internal/mqtt/advanced/interceptor/MqttClientInterceptors;

    return-void
.end method

.method private readPubAck(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;)V
    .locals 5

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode$WithId;->getPacketIdentifier()I

    move-result v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;

    if-nez v0, :cond_0

    const-string p2, "PUBACK contained unknown packet identifier"

    invoke-static {p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->error(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V

    return-void

    :cond_0
    instance-of v1, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    if-nez v1, :cond_1

    iget-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {p2, v0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->put(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "PUBACK must not be received for a PUBREL"

    invoke-static {p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->error(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V

    return-void

    :cond_1
    move-object v1, v0

    check-cast v1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;->getPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v3

    sget-object v4, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->AT_LEAST_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-eq v3, v4, :cond_2

    iget-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {p2, v0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->put(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "PUBACK must not be received for a QoS 2 PUBLISH"

    invoke-static {p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->error(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->completePending(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;)V

    invoke-direct {p0, v2, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->onPubAck(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;)V

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;->getReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAckReasonCode;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, LF0/a;->a(Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubAckException;

    const-string v0, "PUBACK contained an Error Code"

    invoke-direct {p1, p2, v0}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubAckException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/publish/puback/Mqtt5PubAck;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;->getAckFlow()Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;

    move-result-object v0

    new-instance v1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos1Result;

    invoke-direct {v1, v2, p1, p2}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos1Result;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;)V

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;->onNext(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;)V

    return-void
.end method

.method private readPubComp(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;)V
    .locals 3

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode$WithId;->getPacketIdentifier()I

    move-result v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;

    if-nez v0, :cond_0

    const-string p2, "PUBCOMP contained unknown packet identifier"

    invoke-static {p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->error(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V

    return-void

    :cond_0
    instance-of v1, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow;

    if-nez v1, :cond_2

    iget-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {p2, v0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->put(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;->getPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object p2

    sget-object v0, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->AT_LEAST_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-ne p2, v0, :cond_1

    const-string p2, "PUBCOMP must not be received for a QoS 1 PUBLISH"

    :goto_0
    invoke-static {p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->error(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p2, "PUBCOMP must not be received when the PUBREL has not been sent yet"

    goto :goto_0

    :goto_1
    return-void

    :cond_2
    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow;->getPubRel()Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;

    move-result-object v1

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;->getAckFlow()Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;

    move-result-object v2

    invoke-direct {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->completePending(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;)V

    invoke-direct {p0, v1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->onPubComp(Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;)V

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow$MqttQos2IntermediateWithFlow;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow$MqttQos2IntermediateWithFlow;->getAsBoolean()Z

    move-result p1

    if-eqz p1, :cond_3

    const-wide/16 p1, 0x1

    invoke-virtual {v2, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;->acknowledged(J)V

    :cond_3
    return-void
.end method

.method private readPubRec(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;)V
    .locals 5

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode$WithId;->getPacketIdentifier()I

    move-result v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;

    if-nez v1, :cond_0

    const-string p2, "PUBREC contained unknown packet identifier"

    :goto_0
    invoke-static {p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->error(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/String;)V

    return-void

    :cond_0
    instance-of v2, v1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    if-nez v2, :cond_1

    const-string p2, "PUBREC must not be received when the PUBREL has already been sent"

    goto :goto_0

    :cond_1
    check-cast v1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;->getPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v3

    sget-object v4, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->EXACTLY_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-eq v3, v4, :cond_2

    const-string p2, "PUBREC must not be received for a QoS 1 PUBLISH"

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;->getAckFlow()Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;

    move-result-object v3

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;->getReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

    move-result-object v4

    check-cast v4, Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRecReasonCode;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, LF0/a;->a(Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v4, v0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->remove(I)Ljava/lang/Object;

    invoke-direct {p0, p1, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->completePending(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;)V

    invoke-direct {p0, v2, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->onPubRecError(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;)V

    new-instance p1, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubRecException;

    const-string v0, "PUBREC contained an Error Code"

    invoke-direct {p1, p2, v0}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5PubRecException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrec/Mqtt5PubRec;Ljava/lang/String;)V

    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2Result;

    invoke-direct {v0, v2, p1, p2}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2Result;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;)V

    invoke-virtual {v3, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;->onNext(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v2, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->buildPubRel(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;)Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;

    move-result-object v0

    new-instance v4, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow$MqttQos2IntermediateWithFlow;

    invoke-direct {v4, v0, v3}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow$MqttQos2IntermediateWithFlow;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;)V

    invoke-direct {p0, v1, v4}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->replacePending(Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow;)V

    new-instance v1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2IntermediateResult;

    invoke-direct {v1, v2, p2, v4}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult$MqttQos2IntermediateResult;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;Ljava/util/function/BooleanSupplier;)V

    invoke-virtual {v3, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;->onNext(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;)V

    invoke-direct {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->writePubRel(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    :goto_1
    return-void
.end method

.method private replacePending(Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow;)V
    .locals 1

    iget v0, p1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;->packetIdentifier:I

    iput v0, p2, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;->packetIdentifier:I

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v0, p2}, Lcom/hivemq/client/internal/util/collections/IntIndex;->put(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pending:Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-virtual {v0, p1, p2}, Lcom/hivemq/client/internal/util/collections/NodeList;->replace(Lcom/hivemq/client/internal/util/collections/NodeList$Node;Lcom/hivemq/client/internal/util/collections/NodeList$Node;)V

    return-void
.end method

.method private resend(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;)V
    .locals 4

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v0, p2}, Lcom/hivemq/client/internal/util/collections/IntIndex;->put(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p2, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;->getPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object v0

    iget v1, p2, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;->packetIdentifier:I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->topicAliasMapping:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasMapping;

    invoke-virtual {v0, v1, v2, v3}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->createStateful(IZLcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasMapping;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->writeQos1Or2Publish(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;)V

    goto :goto_0

    :cond_0
    check-cast p2, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow;

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow;->getPubRel()Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->writePubRel(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;)V

    :goto_0
    return-void
.end method

.method private writePubRel(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/pubrel/MqttPubRel;)V
    .locals 1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method private writePublish(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;)V
    .locals 2

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;->getPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->AT_MOST_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->writeQos0Publish(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->writeQos1Or2Publish(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;)V

    :goto_0
    return-void
.end method

.method private writeQos0Publish(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;)V
    .locals 4

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;->getPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->topicAliasMapping:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasMapping;

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->createStateful(IZLcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasMapping;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    move-result-object v0

    new-instance v1, Lcom/hivemq/client/internal/netty/DefaultContextPromise;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/hivemq/client/internal/netty/DefaultContextPromise;-><init>(Lio/netty/channel/Channel;Ljava/lang/Object;)V

    invoke-interface {p1, v0, v1}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object p1

    invoke-interface {p1, p0}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    return-void
.end method

.method private writeQos1Or2Publish(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->packetIdentifiers:Lcom/hivemq/client/internal/util/Ranges;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/Ranges;->getId()I

    move-result v0

    if-gez v0, :cond_0

    sget-object p1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string p2, "No Packet Identifier available for QoS 1 or 2 PUBLISH. This must not happen and is a bug."

    invoke-interface {p1, p2}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_0
    iput v0, p2, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;->packetIdentifier:I

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v1, p2}, Lcom/hivemq/client/internal/util/collections/IntIndex;->put(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pending:Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-virtual {v1, p2}, Lcom/hivemq/client/internal/util/collections/NodeList;->add(Lcom/hivemq/client/internal/util/collections/NodeList$Node;)V

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;->getPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->topicAliasMapping:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasMapping;

    invoke-virtual {v1, v0, v2, v3}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->createStateful(IZLcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasMapping;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->writeQos1Or2Publish(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;)V

    return-void
.end method

.method private writeQos1Or2Publish(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;)V
    .locals 0

    .line 2
    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->currentPending:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->currentPending:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    return-void
.end method


# virtual methods
.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;

    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->readPubAck(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/puback/MqttPubAck;)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;

    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->readPubRec(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/pubrec/MqttPubRec;)V

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;

    if-eqz v0, :cond_2

    check-cast p2, Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;

    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->readPubComp(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/publish/pubcomp/MqttPubComp;)V

    goto :goto_0

    :cond_2
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    :goto_0
    return-void
.end method

.method public channelWritabilityChanged(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isWritable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelWritabilityChanged()Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 3

    instance-of v0, p2, Ljava/io/IOException;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->currentPending:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    iget v0, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;->packetIdentifier:I

    invoke-virtual {v1, v0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->currentPending:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;->getAckFlow()Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;

    move-result-object v0

    new-instance v1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->currentPending:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;->getPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;->onNext(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;)V

    iget-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->currentPending:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->completePending(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->currentPending:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    :goto_0
    return-void
.end method

.method public getPublishFlowables()Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->publishFlowables:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;

    return-object v0
.end method

.method public onComplete()V
    .locals 2

    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v1, "MqttPublishFlowables is global and must never complete. This must not happen and is a bug."

    invoke-interface {v0, v1}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v1, "MqttPublishFlowables is global and must never error. This must not happen and is a bug."

    invoke-interface {v0, v1, p1}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->queue:Lorg/jctools/queues/SpscUnboundedArrayQueue;

    invoke-virtual {v0, p1}, Lorg/jctools/queues/SpscUnboundedArrayQueue;->offer(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->queuedCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;->getAckFlow()Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;->getEventLoop()Lio/netty/channel/EventLoop;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->onNext(Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;)V

    return-void
.end method

.method public onSessionEnd(Ljava/lang/Throwable;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/MqttSessionAwareHandler;->onSessionEnd(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->resendPending:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->isRepublishIfSessionExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pending:Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/NodeList;->getFirst()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->packetIdentifiers:Lcom/hivemq/client/internal/util/Ranges;

    iget v2, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;->packetIdentifier:I

    invoke-virtual {v1, v2}, Lcom/hivemq/client/internal/util/Ranges;->returnId(I)V

    instance-of v1, v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;->getAckFlow()Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;

    move-result-object v2

    new-instance v3, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;->getPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object v1

    invoke-direct {v3, v1, p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;->onNext(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;)V

    goto :goto_1

    :cond_1
    move-object v1, v0

    check-cast v1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow$MqttQos2IntermediateWithFlow;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubRelWithFlow$MqttQos2IntermediateWithFlow;->getAsBoolean()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;->getAckFlow()Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;

    move-result-object v1

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;->acknowledged(J)V

    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->getNext()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pending:Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/NodeList;->clear()V

    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->clearQueued(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSessionStartOrResume(Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;Lio/netty/channel/EventLoop;)V
    .locals 6

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->sendMaximum:I

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->getSendMaximum()I

    move-result v1

    const v2, 0xfff5

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->sendMaximum:I

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->packetIdentifiers:Lcom/hivemq/client/internal/util/Ranges;

    invoke-virtual {v2, v1}, Lcom/hivemq/client/internal/util/Ranges;->resize(I)I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->publishFlowables:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;

    new-instance v2, Lk1/p;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lk1/p;-><init>(I)V

    invoke-static {}, Lio/reactivex/Flowable;->bufferSize()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x1

    const/16 v5, 0x40

    invoke-virtual {v0, v2, v4, v5, v3}, Lio/reactivex/Flowable;->flatMap(Lio/reactivex/functions/Function;ZII)Lio/reactivex/Flowable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    :goto_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->subscription:Lorg/reactivestreams/Subscription;

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_1

    :cond_0
    sub-int/2addr v1, v0

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->shrinkRequests:I

    sub-int/2addr v1, v0

    if-lez v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->shrinkRequests:I

    goto :goto_0

    :cond_1
    neg-int v0, v1

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->shrinkRequests:I

    :goto_1
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->getSendTopicAliasMapping()Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasMapping;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->topicAliasMapping:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasMapping;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/IntIndex;->clear()V

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pending:Lcom/hivemq/client/internal/util/collections/NodeList;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/util/collections/NodeList;->getFirst()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->resendPending:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->queuedCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_3

    :cond_2
    invoke-interface {p2, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/MqttSessionAwareHandler;->onSessionStartOrResume(Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;Lio/netty/channel/EventLoop;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 0

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->subscription:Lorg/reactivestreams/Subscription;

    return-void
.end method

.method public operationComplete(Lcom/hivemq/client/internal/netty/ContextFuture;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/netty/ContextFuture<",
            "+",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/hivemq/client/internal/netty/ContextFuture;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;->getPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object v1

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;->getAckFlow()Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v3, v2, Ljava/io/IOException;

    if-nez v3, :cond_0

    new-instance p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;

    invoke-direct {p1, v1, v2}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;->onNext(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;)V

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;

    new-instance v4, Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;

    invoke-direct {v4, v2}, Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {v3, v1, v4}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;-><init>(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v3}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttAckFlow;->onNext(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishResult;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    invoke-interface {p1, v2}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;

    :goto_0
    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/hivemq/client/internal/netty/ContextFuture;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->operationComplete(Lcom/hivemq/client/internal/netty/ContextFuture;)V

    return-void
.end method

.method public request(J)V
    .locals 4

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->shrinkRequests:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->subscription:Lorg/reactivestreams/Subscription;

    :goto_0
    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_1

    :cond_0
    int-to-long v1, v0

    cmp-long v3, p1, v1

    if-lez v3, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->shrinkRequests:I

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->subscription:Lorg/reactivestreams/Subscription;

    sub-long/2addr p1, v1

    goto :goto_0

    :cond_1
    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int p1, v0

    iput p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->shrinkRequests:I

    :goto_1
    return-void
.end method

.method public run()V
    .locals 7

    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSessionAwareHandler;->hasSession:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->isRepublishIfSessionExpired()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/exceptions/MqttClientStateExceptions;->notConnected()Lcom/hivemq/client/mqtt/exceptions/MqttClientStateException;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->clearQueued(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    iget v2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->sendMaximum:I

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->pendingIndex:Lcom/hivemq/client/internal/util/collections/IntIndex;

    invoke-virtual {v3}, Lcom/hivemq/client/internal/util/collections/IntIndex;->size()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->resendPending:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-eqz v3, :cond_3

    if-ge v5, v2, :cond_3

    invoke-interface {v1}, Lio/netty/channel/Channel;->isWritable()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-direct {p0, v0, v3}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->resend(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;)V

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3}, Lcom/hivemq/client/internal/util/collections/NodeList$Node;->getNext()Lcom/hivemq/client/internal/util/collections/NodeList$Node;

    move-result-object v3

    check-cast v3, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;

    iput-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->resendPending:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPubOrRelWithFlow;

    goto :goto_0

    :cond_3
    :goto_1
    if-ge v5, v2, :cond_5

    invoke-interface {v1}, Lio/netty/channel/Channel;->isWritable()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->queue:Lorg/jctools/queues/SpscUnboundedArrayQueue;

    invoke-virtual {v3}, Lorg/jctools/queues/SpscUnboundedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-direct {p0, v0, v3}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->writePublish(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;)V

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-lez v5, :cond_6

    invoke-interface {v1}, Lio/netty/channel/Channel;->isWritable()Z

    move-result v2

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    if-lez v4, :cond_6

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->queuedCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v3, v4

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    if-lez v0, :cond_6

    if-eqz v2, :cond_6

    invoke-interface {v1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_6
    return-void
.end method
