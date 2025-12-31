.class Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "SourceFile"


# instance fields
.field private handshakeDone:Z

.field private handshakeStarted:Z

.field private final handshakeTimeoutMs:I

.field private final handshaker:Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;

.field private final onError:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Lio/netty/channel/Channel;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final onSuccess:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private timeoutFuture:Lio/netty/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;ILjava/util/function/Consumer;Ljava/util/function/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;",
            "I",
            "Ljava/util/function/Consumer<",
            "Lio/netty/channel/Channel;",
            ">;",
            "Ljava/util/function/BiConsumer<",
            "Lio/netty/channel/Channel;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->handshakeStarted:Z

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->handshakeDone:Z

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->handshaker:Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;

    iput p2, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->handshakeTimeoutMs:I

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->onSuccess:Ljava/util/function/Consumer;

    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->onError:Ljava/util/function/BiConsumer;

    return-void
.end method

.method public static synthetic a(Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->lambda$startHandshake$0(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method private finishHandshake(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/FullHttpResponse;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->setHandshakeDone(Lio/netty/channel/ChannelHandlerContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->handshaker:Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->finishHandshake(Lio/netty/channel/Channel;Lio/netty/handler/codec/http/FullHttpResponse;)V

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->onSuccess:Ljava/util/function/Consumer;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->onError:Ljava/util/function/BiConsumer;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-interface {p2}, Lio/netty/handler/codec/http/FullHttpResponse;->release()Z

    return-void
.end method

.method private synthetic lambda$startHandshake$0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->setHandshakeDone(Lio/netty/channel/ChannelHandlerContext;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->onError:Ljava/util/function/BiConsumer;

    .line 8
    .line 9
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v1, Lio/netty/handler/codec/http/websocketx/WebSocketHandshakeException;

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v3, "handshake timed out after "

    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget v3, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->handshakeTimeoutMs:I

    .line 23
    .line 24
    const-string v4, "ms"

    .line 25
    .line 26
    invoke-static {v4, v3, v2}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-direct {v1, v2}, Lio/netty/handler/codec/http/websocketx/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, p1, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method private setHandshakeDone(Lio/netty/channel/ChannelHandlerContext;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->handshakeDone:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->handshakeDone:Z

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    invoke-interface {p1, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->timeoutFuture:Lio/netty/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_0

    invoke-interface {p1, v1}, Lio/netty/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->timeoutFuture:Lio/netty/util/concurrent/ScheduledFuture;

    :cond_0
    return v0

    :cond_1
    return v1
.end method

.method private startHandshake(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 5

    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->handshakeStarted:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->handshakeStarted:Z

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->handshakeTimeoutMs:I

    if-lez v0, :cond_0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/websocket/a;

    invoke-direct {v1, p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/websocket/a;-><init>(Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;Lio/netty/channel/ChannelHandlerContext;)V

    iget v2, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->handshakeTimeoutMs:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Lio/netty/channel/EventLoop;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->timeoutFuture:Lio/netty/util/concurrent/ScheduledFuture;

    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->handshaker:Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;->handshake(Lio/netty/channel/Channel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    :cond_1
    return-void
.end method


# virtual methods
.method public channelActive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->startHandshake(Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelActive()Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->setHandshakeDone(Lio/netty/channel/ChannelHandlerContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->onError:Ljava/util/function/BiConsumer;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    new-instance v2, Lio/netty/handler/codec/http/websocketx/WebSocketHandshakeException;

    const-string v3, "connection was closed during handshake"

    invoke-direct {v2, v3}, Lio/netty/handler/codec/http/websocketx/WebSocketHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelInactive()Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Lio/netty/handler/codec/http/FullHttpResponse;

    if-eqz v0, :cond_0

    check-cast p2, Lio/netty/handler/codec/http/FullHttpResponse;

    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->finishHandshake(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/FullHttpResponse;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    :goto_0
    return-void
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->setHandshakeDone(Lio/netty/channel/ChannelHandlerContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->onError:Ljava/util/function/BiConsumer;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    :goto_0
    return-void
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;->startHandshake(Lio/netty/channel/ChannelHandlerContext;)V

    :cond_0
    return-void
.end method

.method public isSharable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
