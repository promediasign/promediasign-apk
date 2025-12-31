.class public abstract Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static close(Lio/netty/channel/Channel;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;

    invoke-direct {v0, p1}, Lcom/hivemq/client/mqtt/exceptions/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->CLIENT:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    invoke-static {p0, v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->fireDisconnectEvent(Lio/netty/channel/Channel;Ljava/lang/Throwable;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;)V

    return-void
.end method

.method public static close(Lio/netty/channel/Channel;Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->CLIENT:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    invoke-static {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->fireDisconnectEvent(Lio/netty/channel/Channel;Ljava/lang/Throwable;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;)V

    return-void
.end method

.method public static disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;-><init>()V

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->reasonCode(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;)Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;

    invoke-virtual {p1, p2}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->reasonString(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->build()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    move-result-object p1

    new-instance v0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;

    invoke-direct {v0, p1, p2}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;Ljava/lang/String;)V

    sget-object p1, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->CLIENT:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    invoke-static {p0, v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->fireDisconnectEvent(Lio/netty/channel/Channel;Ljava/lang/Throwable;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;)V

    return-void
.end method

.method public static disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;-><init>()V

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->reasonCode(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;)Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->reasonString(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder$Default;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnectBuilder;->build()Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    move-result-object p1

    new-instance v0, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;

    invoke-direct {v0, p1, p2}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5DisconnectException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;Ljava/lang/Throwable;)V

    sget-object p1, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->CLIENT:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    invoke-static {p0, v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->fireDisconnectEvent(Lio/netty/channel/Channel;Ljava/lang/Throwable;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;)V

    return-void
.end method

.method public static fireDisconnectEvent(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/netty/channel/ChannelPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    return-void
.end method

.method public static fireDisconnectEvent(Lio/netty/channel/Channel;Ljava/lang/Throwable;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;

    invoke-direct {v0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;-><init>(Ljava/lang/Throwable;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;)V

    invoke-static {p0, v0}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->fireDisconnectEvent(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V

    return-void
.end method
