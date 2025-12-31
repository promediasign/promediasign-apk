.class public Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;
.super Lio/reactivex/Flowable;
.source "SourceFile"

# interfaces
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Flowable<",
        "Lio/reactivex/Flowable<",
        "Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;",
        ">;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;


# instance fields
.field private requested:J

.field private subscriber:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Lio/reactivex/Flowable<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;

    invoke-static {v0}, Lcom/hivemq/client/internal/logging/InternalLoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/hivemq/client/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Flowable;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lio/reactivex/Flowable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;->requested:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v1, "thread interrupted while waiting to publish."

    invoke-interface {v0, v1, p1}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;->requested:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;->requested:J

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;->subscriber:Lorg/reactivestreams/Subscriber;

    return-void
.end method

.method public request(J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;->requested:J

    invoke-static {v0, v1, p1, p2}, Lio/reactivex/internal/util/BackpressureHelper;->addCap(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;->requested:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Lio/reactivex/Flowable<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishWithFlow;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttPublishFlowables;->subscriber:Lorg/reactivestreams/Subscriber;

    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    return-void
.end method
