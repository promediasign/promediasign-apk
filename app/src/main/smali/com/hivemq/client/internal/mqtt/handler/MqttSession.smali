.class public Lcom/hivemq/client/internal/mqtt/handler/MqttSession;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private expireFuture:Lio/netty/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private hasSession:Z

.field private final incomingQosHandler:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;

.field private final outgoingQosHandler:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;

.field private final subscriptionHandler:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->subscriptionHandler:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->incomingQosHandler:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->outgoingQosHandler:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;

    return-void
.end method

.method public static synthetic a(Lcom/hivemq/client/internal/mqtt/handler/MqttSession;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->lambda$expire$0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic b(Lcom/hivemq/client/internal/mqtt/handler/MqttSession;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->lambda$expire$1(Ljava/lang/Throwable;)V

    return-void
.end method

.method private end(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->hasSession:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->hasSession:Z

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->outgoingQosHandler:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->onSessionEnd(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->incomingQosHandler:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->onSessionEnd(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->subscriptionHandler:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->onSessionEnd(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$expire$0(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Lcom/hivemq/client/mqtt/exceptions/MqttSessionExpiredException;

    const-string v1, "Session expired as connection was closed."

    invoke-direct {v0, v1, p1}, Lcom/hivemq/client/mqtt/exceptions/MqttSessionExpiredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->end(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$expire$1(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->expireFuture:Lio/netty/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->expireFuture:Lio/netty/util/concurrent/ScheduledFuture;

    new-instance v0, Lcom/hivemq/client/mqtt/exceptions/MqttSessionExpiredException;

    const-string v1, "Session expired after expiry interval"

    invoke-direct {v0, v1, p1}, Lcom/hivemq/client/mqtt/exceptions/MqttSessionExpiredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->end(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public expire(Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;Lio/netty/channel/EventLoop;)V
    .locals 4

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->getSessionExpiryInterval()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    new-instance p2, Lq0/b;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lq0/b;-><init>(Lcom/hivemq/client/internal/mqtt/handler/MqttSession;Ljava/lang/Throwable;I)V

    invoke-interface {p3, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-wide v2, 0xffffffffL

    cmp-long p2, v0, v2

    if-eqz p2, :cond_1

    new-instance p2, Lq0/b;

    const/4 v2, 0x1

    invoke-direct {p2, p0, p1, v2}, Lq0/b;-><init>(Lcom/hivemq/client/internal/mqtt/handler/MqttSession;Ljava/lang/Throwable;I)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x3ff199999999999aL    # 1.1

    mul-double v0, v0, v2

    double-to-long v0, v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p3, p2, v0, v1, p1}, Lio/netty/channel/EventLoop;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->expireFuture:Lio/netty/util/concurrent/ScheduledFuture;

    :cond_1
    :goto_0
    return-void
.end method

.method public startOrResume(Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;Lio/netty/channel/ChannelPipeline;Lio/netty/channel/EventLoop;)V
    .locals 3

    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->hasSession:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/connack/MqttConnAck;->isSessionPresent()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/hivemq/client/mqtt/exceptions/MqttSessionExpiredException;

    new-instance v1, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;

    const-string v2, "Session expired as CONNACK did not contain the session present flag."

    invoke-direct {v1, p1, v2}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5ConnAckException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;Ljava/lang/String;)V

    invoke-direct {v0, v2, v1}, Lcom/hivemq/client/mqtt/exceptions/MqttSessionExpiredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->end(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->hasSession:Z

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->expireFuture:Lio/netty/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lio/netty/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->expireFuture:Lio/netty/util/concurrent/ScheduledFuture;

    :cond_1
    const-string p1, "subscription"

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->subscriptionHandler:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;

    const-string v1, "decoder"

    invoke-interface {p3, v1, p1, v0}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    const-string p1, "qos.incoming"

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->incomingQosHandler:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;

    invoke-interface {p3, v1, p1, v0}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    const-string p1, "qos.outgoing"

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->outgoingQosHandler:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;

    invoke-interface {p3, v1, p1, v0}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->subscriptionHandler:Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;

    invoke-virtual {p1, p2, p4}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->onSessionStartOrResume(Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;Lio/netty/channel/EventLoop;)V

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->incomingQosHandler:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;

    invoke-virtual {p1, p2, p4}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->onSessionStartOrResume(Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;Lio/netty/channel/EventLoop;)V

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSession;->outgoingQosHandler:Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;

    invoke-virtual {p1, p2, p4}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;->onSessionStartOrResume(Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;Lio/netty/channel/EventLoop;)V

    return-void
.end method
