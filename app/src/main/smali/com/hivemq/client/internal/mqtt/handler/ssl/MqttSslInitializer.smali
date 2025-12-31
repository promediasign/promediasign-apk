.class public abstract Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslInitializer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static createSslContext(Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;)Lio/netty/handler/ssl/SslContext;
    .locals 3

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->getRawProtocols()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object v0

    invoke-static {}, Lio/netty/handler/ssl/SslContextBuilder;->forClient()Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->getRawTrustManagerFactory()Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/netty/handler/ssl/SslContextBuilder;->trustManager(Ljavax/net/ssl/TrustManagerFactory;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->getRawKeyManagerFactory()Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/netty/handler/ssl/SslContextBuilder;->keyManager(Ljavax/net/ssl/KeyManagerFactory;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Lio/netty/handler/ssl/SslContextBuilder;->protocols([Ljava/lang/String;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->getRawCipherSuites()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object p0

    sget-object v1, Lio/netty/handler/ssl/SupportedCipherSuiteFilter;->INSTANCE:Lio/netty/handler/ssl/SupportedCipherSuiteFilter;

    invoke-virtual {v0, p0, v1}, Lio/netty/handler/ssl/SslContextBuilder;->ciphers(Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lio/netty/handler/ssl/SslContextBuilder;->build()Lio/netty/handler/ssl/SslContext;

    move-result-object p0

    return-object p0
.end method

.method public static initChannel(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/Channel;",
            "Lcom/hivemq/client/internal/mqtt/MqttClientConfig;",
            "Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;",
            "Ljava/util/function/Consumer<",
            "Lio/netty/channel/Channel;",
            ">;",
            "Ljava/util/function/BiConsumer<",
            "Lio/netty/channel/Channel;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getCurrentTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->getServerAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getCurrentSslContext()Lio/netty/handler/ssl/SslContext;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslInitializer;->createSslContext(Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;)Lio/netty/handler/ssl/SslContext;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->setCurrentSslContext(Lio/netty/handler/ssl/SslContext;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {p0}, Lio/netty/channel/Channel;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Lio/netty/handler/ssl/SslContext;->newHandler(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/String;I)Lio/netty/handler/ssl/SslHandler;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->getHandshakeTimeoutMs()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lio/netty/handler/ssl/SslHandler;->setHandshakeTimeoutMillis(J)V

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/MqttClientSslConfigImpl;->getRawHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v7

    if-nez v7, :cond_1

    invoke-virtual {p1}, Lio/netty/handler/ssl/SslHandler;->engine()Ljavax/net/ssl/SSLEngine;

    move-result-object p2

    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object p2

    invoke-static {p2}, LA/c;->r(Ljavax/net/ssl/SSLParameters;)V

    invoke-virtual {p1}, Lio/netty/handler/ssl/SslHandler;->engine()Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljavax/net/ssl/SSLEngine;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    :cond_1
    new-instance p2, Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslAdapterHandler;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v6

    move-object v4, p2

    move-object v5, p1

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslAdapterHandler;-><init>(Lio/netty/handler/ssl/SslHandler;Ljava/lang/String;Ljavax/net/ssl/HostnameVerifier;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;)V

    invoke-interface {p0}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p0

    const-string p3, "ssl"

    invoke-interface {p0, p3, p1}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    move-result-object p0

    const-string p1, "ssl.adapter"

    invoke-interface {p0, p1, p2}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    return-void

    :goto_1
    invoke-interface {p4, p0, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
