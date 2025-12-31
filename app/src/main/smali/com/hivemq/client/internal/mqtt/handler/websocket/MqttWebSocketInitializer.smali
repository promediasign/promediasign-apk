.class public Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketInitializer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mqttWebSocketCodec:Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketCodec;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketCodec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketInitializer;->mqttWebSocketCodec:Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketCodec;

    return-void
.end method


# virtual methods
.method public initChannel(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/Channel;",
            "Lcom/hivemq/client/internal/mqtt/MqttClientConfig;",
            "Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;",
            "Ljava/util/function/Consumer<",
            "Lio/netty/channel/Channel;",
            ">;",
            "Ljava/util/function/BiConsumer<",
            "Lio/netty/channel/Channel;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p5

    const-string v0, "/"

    :try_start_0
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getCurrentTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->getServerAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    new-instance v12, Ljava/net/URI;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->getRawSslConfig()Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "ws"

    :goto_0
    move-object v5, v2

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, p0

    move-object v3, p1

    goto :goto_2

    :cond_0
    const-string v2, "wss"

    goto :goto_0

    :goto_1
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->getServerPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p3 .. p3}, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->getQueryString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v6, 0x0

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v5, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->V13:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    invoke-virtual/range {p3 .. p3}, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->getSubprotocol()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const v9, 0x10000004

    move-object v4, v12

    invoke-static/range {v4 .. v11}, Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshakerFactory;->newHandshaker(Ljava/net/URI;Lio/netty/handler/codec/http/websocketx/WebSocketVersion;Ljava/lang/String;ZLio/netty/handler/codec/http/HttpHeaders;IZZ)Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v2

    new-instance v3, Lio/netty/handler/codec/http/HttpClientCodec;

    invoke-direct {v3}, Lio/netty/handler/codec/http/HttpClientCodec;-><init>()V

    const-string v4, "http.codec"

    invoke-interface {v2, v4, v3}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    move-result-object v2

    new-instance v3, Lio/netty/handler/codec/http/HttpObjectAggregator;

    const v4, 0xffff

    invoke-direct {v3, v4}, Lio/netty/handler/codec/http/HttpObjectAggregator;-><init>(I)V

    const-string v4, "http.aggregator"

    invoke-interface {v2, v4, v3}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    move-result-object v2

    new-instance v3, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;

    invoke-virtual/range {p3 .. p3}, Lcom/hivemq/client/internal/mqtt/MqttWebSocketConfigImpl;->getHandshakeTimeoutMs()I

    move-result v4

    move-object/from16 v5, p4

    invoke-direct {v3, v0, v4, v5, v1}, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebsocketHandshakeHandler;-><init>(Lio/netty/handler/codec/http/websocketx/WebSocketClientHandshaker;ILjava/util/function/Consumer;Ljava/util/function/BiConsumer;)V

    const-string v0, "ws.handshake"

    invoke-interface {v2, v0, v3}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    const-string v1, "ws.mqtt"

    move-object v2, p0

    iget-object v3, v2, Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketInitializer;->mqttWebSocketCodec:Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketCodec;

    invoke-interface {v0, v1, v3}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    return-void

    :goto_2
    invoke-interface {v1, p1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
