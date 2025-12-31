.class abstract Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;
.super Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;
.source "SourceFile"

# interfaces
.implements Lorg/reactivestreams/Subscription;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;",
        "Lorg/reactivestreams/Subscription;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private blockedIndex:J

.field private blocking:Z

.field private done:Z

.field private error:Ljava/lang/Throwable;

.field final incomingPublishService:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;

.field final manualAcknowledgement:Z

.field private missingAcknowledgements:I

.field private final newRequested:Ljava/util/concurrent/atomic/AtomicLong;

.field private referenced:I

.field private final requestState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private requested:J

.field final subscriber:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Subscriber;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ">;",
            "Lcom/hivemq/client/internal/mqtt/MqttClientConfig;",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V

    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->newRequested:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->requestState:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->subscriber:Lorg/reactivestreams/Subscriber;

    iget-object p1, p3, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;->incomingPublishService:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->incomingPublishService:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;

    iput-boolean p4, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->manualAcknowledgement:Z

    return-void
.end method


# virtual methods
.method public acknowledge(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->incomingPublishService:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->drain()V

    :cond_0
    iget p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->missingAcknowledgements:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->missingAcknowledgements:I

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->checkDone()V

    :cond_1
    return-void
.end method

.method public checkDone()V
    .locals 2

    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->done:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->setDone()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {v1, v0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    :cond_1
    :goto_0
    return-void
.end method

.method public dereference()I
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->referenced:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->referenced:I

    return v0
.end method

.method public increaseMissingAcknowledgements()V
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->missingAcknowledgements:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->missingAcknowledgements:I

    return-void
.end method

.method public onCancel()V
    .locals 2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;->eventLoop:Lio/netty/channel/EventLoop;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/a;

    invoke-direct {v1, p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/a;-><init>(Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->done:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->error:Ljava/lang/Throwable;

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->error:Ljava/lang/Throwable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->done:Z

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->setDone()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->incomingPublishService:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->drain()V

    :goto_0
    return-void
.end method

.method public onNext(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)V
    .locals 4

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->requested:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->requested:J

    :cond_0
    return-void
.end method

.method public reference()I
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->referenced:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->referenced:I

    return v0
.end method

.method public request(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->newRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->add(Ljava/util/concurrent/atomic/AtomicLong;J)J

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->requestState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;->eventLoop:Lio/netty/channel/EventLoop;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public requested(J)J
    .locals 6

    iget-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->requested:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_3

    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->blocking:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->blockedIndex:J

    cmp-long v5, v0, p1

    if-eqz v5, :cond_0

    iput-boolean v4, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->blocking:Z

    :cond_0
    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->blocking:Z

    if-eqz v0, :cond_1

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->requestState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-wide p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->blockedIndex:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->blocking:Z

    return-wide v2

    :cond_2
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->requestState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->newRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v0

    cmp-long v5, v0, v2

    if-lez v5, :cond_1

    iget-wide p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->requested:J

    invoke-static {p1, p2, v0, v1}, Lio/reactivex/internal/util/BackpressureHelper;->addCap(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->requested:J

    return-wide p1

    :cond_3
    return-wide v0
.end method

.method public run()V
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->referenced:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->incomingPublishService:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->drain()V

    :cond_0
    return-void
.end method

.method public runCancel()V
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->referenced:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->incomingPublishService:Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishService;->drain()V

    :cond_0
    return-void
.end method

.method public setDone()Z
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->referenced:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlow;->missingAcknowledgements:I

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;->setDone()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
