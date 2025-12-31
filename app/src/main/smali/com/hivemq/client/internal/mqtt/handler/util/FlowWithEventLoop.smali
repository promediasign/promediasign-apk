.class public abstract Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

.field private final doneState:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected final eventLoop:Lio/netty/channel/EventLoop;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;->doneState:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->acquireEventLoop()Lio/netty/channel/EventLoop;

    move-result-object p1

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;->eventLoop:Lio/netty/channel/EventLoop;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;->doneState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;->onCancel()V

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->releaseEventLoop()V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;->cancel()V

    return-void
.end method

.method public getEventLoop()Lio/netty/channel/EventLoop;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;->eventLoop:Lio/netty/channel/EventLoop;

    return-object v0
.end method

.method public init()Z
    .locals 3

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;->doneState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->releaseEventLoop()V

    return v1
.end method

.method public isCancelled()Z
    .locals 2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;->doneState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDisposed()Z
    .locals 2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;->doneState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method

.method public setDone()Z
    .locals 3

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;->doneState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/util/FlowWithEventLoop;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->releaseEventLoop()V

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
