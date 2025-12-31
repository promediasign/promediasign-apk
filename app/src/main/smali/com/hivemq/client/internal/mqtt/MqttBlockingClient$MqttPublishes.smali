.class Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient$Mqtt5Publishes;
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/MqttBlockingClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MqttPublishes"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient$Mqtt5Publishes;",
        "Lio/reactivex/FlowableSubscriber<",
        "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
        ">;"
    }
.end annotation


# instance fields
.field private final entries:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private error:Ljava/lang/Throwable;

.field private queuedPublish:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;

.field private final subscription:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/Flowable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->subscription:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->entries:Ljava/util/LinkedList;

    invoke-virtual {p1, p0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    return-void
.end method

.method private handleError(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1

    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/RuntimeException;

    invoke-static {p1}, Lcom/hivemq/client/internal/util/AsyncRuntimeException;->fillInStackTrace(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private receiveNowUnsafe()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;
    .locals 2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->queuedPublish:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->queuedPublish:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->request()V

    return-object v0

    :cond_0
    return-object v1
.end method

.method private request()V
    .locals 3

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->subscription:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Subscription;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->subscription:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Subscription;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->entries:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->error:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->error:Ljava/lang/Throwable;

    :goto_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->entries:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;->result:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->error:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onComplete()V
    .locals 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-virtual {p0, v0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->entries:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->error:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->error:Ljava/lang/Throwable;

    :goto_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->entries:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;->result:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onNext(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)V
    .locals 4

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->entries:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->error:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->entries:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;

    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;->result:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_1
    const/4 v3, 0x0

    .line 1
    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v1, v1, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->request()V

    monitor-exit v0

    return-void

    :cond_3
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->queuedPublish:Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 3
    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->onNext(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->subscription:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    :cond_0
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    const-wide/16 v0, 0x1

    .line 11
    .line 12
    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public receive()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;
    .locals 4

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->entries:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->error:Ljava/lang/Throwable;

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->receiveNowUnsafe()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;

    move-result-object v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;-><init>(Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$1;)V

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->entries:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, v1, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    :goto_0
    iget-object v0, v1, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;->result:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes$Entry;->CANCELLED:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;

    return-object v0

    :cond_1
    instance-of v1, v0, Ljava/lang/Throwable;

    if-nez v1, :cond_3

    if-eqz v2, :cond_2

    throw v2

    :cond_2
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_3
    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->handleError(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_4
    :try_start_2
    invoke-direct {p0, v1}, Lcom/hivemq/client/internal/mqtt/MqttBlockingClient$MqttPublishes;->handleError(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
