.class public Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;
.super Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/internal/netty/DefaultChannelOutboundHandler;
.implements Ljava/lang/Runnable;
.implements Lio/netty/channel/ChannelFutureListener;


# instance fields
.field private final keepAliveNanos:J

.field private lastFlushTimeNanos:J

.field private lastReadTimeNanos:J

.field private messageRead:Z

.field private pingReqFlushed:Z

.field private pingReqWritten:Z

.field private timeoutFuture:Lio/netty/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IJJ)V
    .locals 4

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;-><init>()V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->keepAliveNanos:J

    iput-wide p2, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->lastFlushTimeNanos:J

    iput-wide p4, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->lastReadTimeNanos:J

    return-void
.end method

.method private nextDelay(J)J
    .locals 6

    iget-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->keepAliveNanos:J

    iget-wide v2, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->lastReadTimeNanos:J

    iget-wide v4, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->lastFlushTimeNanos:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    sub-long/2addr p1, v2

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method private schedule(Lio/netty/channel/ChannelHandlerContext;J)V
    .locals 1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p0, p2, p3, v0}, Lio/netty/util/concurrent/EventExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->timeoutFuture:Lio/netty/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public final synthetic bind(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, LB0/a;->a(Lcom/hivemq/client/internal/netty/DefaultChannelOutboundHandler;Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->lastReadTimeNanos:J

    instance-of v0, p2, Lcom/hivemq/client/internal/mqtt/message/ping/MqttPingResp;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->messageRead:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    :goto_0
    return-void
.end method

.method public final synthetic close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, LB0/a;->b(Lcom/hivemq/client/internal/netty/DefaultChannelOutboundHandler;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method public final synthetic connect(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, LB0/a;->c(Lcom/hivemq/client/internal/netty/DefaultChannelOutboundHandler;Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method public final synthetic deregister(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, LB0/a;->d(Lcom/hivemq/client/internal/netty/DefaultChannelOutboundHandler;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method public final synthetic disconnect(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, LB0/a;->e(Lcom/hivemq/client/internal/netty/DefaultChannelOutboundHandler;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method public flush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->lastFlushTimeNanos:J

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;->handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->nextDelay(J)J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->schedule(Lio/netty/channel/ChannelHandlerContext;J)V

    return-void
.end method

.method public onDisconnectEvent(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V
    .locals 0

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->timeoutFuture:Lio/netty/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lio/netty/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->timeoutFuture:Lio/netty/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->pingReqFlushed:Z

    :cond_0
    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0

    .line 2
    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method

.method public final synthetic read(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, LB0/a;->g(Lcom/hivemq/client/internal/netty/DefaultChannelOutboundHandler;Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->pingReqWritten:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->pingReqFlushed:Z

    if-nez v1, :cond_1

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    const-string v1, "Timeout while writing PINGREQ"

    :goto_0
    invoke-static {v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->close(Lio/netty/channel/Channel;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->messageRead:Z

    if-nez v1, :cond_2

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    const-string v1, "Timeout while waiting for PINGRESP"

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->pingReqFlushed:Z

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->messageRead:Z

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->nextDelay(J)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    cmp-long v7, v3, v5

    if-lez v7, :cond_3

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->pingReqWritten:Z

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-direct {p0, v0, v3, v4}, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->schedule(Lio/netty/channel/ChannelHandlerContext;J)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->pingReqWritten:Z

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    iget-wide v3, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->keepAliveNanos:J

    invoke-direct {p0, v0, v3, v4}, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->schedule(Lio/netty/channel/ChannelHandlerContext;J)V

    iput-wide v1, p0, Lcom/hivemq/client/internal/mqtt/handler/ping/MqttPingHandler;->lastFlushTimeNanos:J

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    sget-object v1, Lcom/hivemq/client/internal/mqtt/message/ping/MqttPingReq;->INSTANCE:Lcom/hivemq/client/internal/mqtt/message/ping/MqttPingReq;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    :goto_1
    return-void
.end method

.method public final synthetic write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, LB0/a;->h(Lcom/hivemq/client/internal/netty/DefaultChannelOutboundHandler;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method
