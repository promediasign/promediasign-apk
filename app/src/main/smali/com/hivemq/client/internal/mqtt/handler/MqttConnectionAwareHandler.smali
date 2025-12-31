.class public abstract Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "SourceFile"


# instance fields
.field protected ctx:Lio/netty/channel/ChannelHandlerContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public isSharable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract onDisconnectEvent(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V
.end method

.method public userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    move-object v0, p2

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;

    invoke-virtual {p0, p1, v0}, Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;->onDisconnectEvent(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V

    :cond_0
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method
