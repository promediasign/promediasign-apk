.class abstract Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static provideAuthHandler(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Ldagger/Lazy;Ldagger/Lazy;)Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;",
            "Ldagger/Lazy<",
            "Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/hivemq/client/internal/mqtt/handler/auth/MqttDisconnectOnAuthHandler;",
            ">;)",
            "Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawEnhancedAuthMechanism()Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;

    return-object p0
.end method

.method public static provideBootstrap(Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;)Lio/netty/bootstrap/Bootstrap;
    .locals 2

    new-instance v0, Lio/netty/bootstrap/Bootstrap;

    invoke-direct {v0}, Lio/netty/bootstrap/Bootstrap;-><init>()V

    sget-object v1, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->INSTANCE:Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->getChannelFactory()Lio/netty/channel/ChannelFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/bootstrap/AbstractBootstrap;->channelFactory(Lio/netty/channel/ChannelFactory;)Lio/netty/bootstrap/AbstractBootstrap;

    move-result-object v0

    check-cast v0, Lio/netty/bootstrap/Bootstrap;

    invoke-virtual {v0, p0}, Lio/netty/bootstrap/AbstractBootstrap;->handler(Lio/netty/channel/ChannelHandler;)Lio/netty/bootstrap/AbstractBootstrap;

    move-result-object p0

    check-cast p0, Lio/netty/bootstrap/Bootstrap;

    return-object p0
.end method
