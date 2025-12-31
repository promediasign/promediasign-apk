.class public abstract Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;
.super Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lio/netty/channel/ChannelFutureListener;


# instance fields
.field private timeoutFuture:Lio/netty/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelTimeout()V
    .locals 2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;->timeoutFuture:Lio/netty/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;->timeoutFuture:Lio/netty/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method public abstract getTimeoutMs()J
.end method

.method public abstract getTimeoutReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;
.end method

.method public abstract getTimeoutReasonString()Ljava/lang/String;
.end method

.method public onDisconnectEvent(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;->cancelTimeout()V

    return-void
.end method

.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;->operationSuccessful(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/io/IOException;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-virtual {p0, v0, p1}, Lio/netty/channel/ChannelInboundHandlerAdapter;->exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0

    .line 2
    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method

.method public operationSuccessful(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;->scheduleTimeout(Lio/netty/channel/Channel;)V

    return-void
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;->getTimeoutReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;->getTimeoutReasonString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;->getTimeoutReasonString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->close(Lio/netty/channel/Channel;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public scheduleTimeout(Lio/netty/channel/Channel;)V
    .locals 5

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;->getTimeoutMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-interface {p1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object p1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p0, v0, v1, v2}, Lio/netty/channel/EventLoop;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;->timeoutFuture:Lio/netty/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method
