.class public Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "SourceFile"


# instance fields
.field private final authHandler:Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;

.field private final clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

.field private final connAckFlow:Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

.field private final connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

.field private final connectHandler:Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;

.field private final disconnectHandler:Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;

.field private final encoder:Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;

.field private final webSocketInitializer:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketInitializer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/MqttClientConfig;",
            "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;",
            "Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;",
            "Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;",
            "Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;",
            "Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;",
            "Ldagger/Lazy<",
            "Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketInitializer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->connAckFlow:Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->encoder:Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;

    iput-object p5, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->connectHandler:Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;

    iput-object p6, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->disconnectHandler:Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;

    iput-object p7, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->authHandler:Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;

    iput-object p8, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->webSocketInitializer:Ldagger/Lazy;

    return-void
.end method

.method public static synthetic a(Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;Lio/netty/channel/Channel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->initMqtt(Lio/netty/channel/Channel;)V

    return-void
.end method

.method public static synthetic b(Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;Lio/netty/channel/Channel;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->initWebsocket(Lio/netty/channel/Channel;)V

    return-void
.end method

.method public static synthetic c(Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;Lio/netty/channel/Channel;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->onError(Lio/netty/channel/Channel;Ljava/lang/Throwable;)V

    return-void
.end method

.method private initMqtt(Lio/netty/channel/Channel;)V
    .locals 2

    invoke-interface {p1}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    const-string v0, "encoder"

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->encoder:Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;

    invoke-interface {p1, v0, v1}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    const-string v0, "auth"

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->authHandler:Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;

    invoke-interface {p1, v0, v1}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    const-string v0, "connect"

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->connectHandler:Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnectHandler;

    invoke-interface {p1, v0, v1}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    move-result-object p1

    const-string v0, "disconnect"

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->disconnectHandler:Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;

    invoke-interface {p1, v0, v1}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    return-void
.end method

.method private initProxy(Lio/netty/channel/Channel;)V
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getCurrentTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->getRawProxyConfig()Lcom/hivemq/client/internal/mqtt/MqttProxyConfigImpl;

    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->initSsl(Lio/netty/channel/Channel;)V

    return-void
.end method

.method private initSsl(Lio/netty/channel/Channel;)V
    .locals 5

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getCurrentTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->getRawSslConfig()Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->initWebsocket(Lio/netty/channel/Channel;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    new-instance v2, Lq0/a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lq0/a;-><init>(Lio/netty/channel/ChannelInboundHandlerAdapter;I)V

    new-instance v3, Lg1/e;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lg1/e;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, v1, v0, v2, v3}, Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslInitializer;->initChannel(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;)V

    :goto_0
    return-void
.end method

.method private initWebsocket(Lio/netty/channel/Channel;)V
    .locals 7

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getCurrentTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->getRawWebSocketConfig()Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->initMqtt(Lio/netty/channel/Channel;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->webSocketInitializer:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketInitializer;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    new-instance v5, Lq0/a;

    const/4 v0, 0x1

    invoke-direct {v5, p0, v0}, Lq0/a;-><init>(Lio/netty/channel/ChannelInboundHandlerAdapter;I)V

    new-instance v6, Lg1/e;

    invoke-direct {v6, p0, v0}, Lg1/e;-><init>(Ljava/lang/Object;I)V

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketInitializer;->initChannel(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;)V

    :goto_0
    return-void
.end method

.method private onError(Lio/netty/channel/Channel;Ljava/lang/Throwable;)V
    .locals 6

    invoke-interface {p1}, Lio/netty/channel/Channel;->close()Lio/netty/channel/ChannelFuture;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    sget-object v1, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->CLIENT:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    new-instance v2, Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;

    invoke-direct {v2, p2}, Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;-><init>(Ljava/lang/Throwable;)V

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->connAckFlow:Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

    invoke-interface {p1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->reconnect(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V

    return-void
.end method


# virtual methods
.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lio/netty/channel/socket/SocketChannel;

    invoke-interface {v0}, Lio/netty/channel/socket/SocketChannel;->config()Lio/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/netty/channel/socket/SocketChannelConfig;->setAutoClose(Z)Lio/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lio/netty/channel/socket/SocketChannelConfig;->setKeepAlive(Z)Lio/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    invoke-interface {v0, v1}, Lio/netty/channel/socket/SocketChannelConfig;->setTcpNoDelay(Z)Lio/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getCurrentTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->getSocketConnectTimeoutMs()I

    move-result v1

    invoke-interface {v0, v1}, Lio/netty/channel/socket/SocketChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/socket/SocketChannelConfig;

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->initProxy(Lio/netty/channel/Channel;)V

    return-void
.end method

.method public isSharable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
