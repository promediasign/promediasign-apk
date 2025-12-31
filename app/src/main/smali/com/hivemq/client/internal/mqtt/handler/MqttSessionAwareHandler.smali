.class public abstract Lcom/hivemq/client/internal/mqtt/handler/MqttSessionAwareHandler;
.super Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;
.source "SourceFile"


# instance fields
.field protected hasSession:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public isSharable()Z
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttConnectionAwareHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDisconnectEvent(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent;)V
    .locals 0

    return-void
.end method

.method public onSessionEnd(Ljava/lang/Throwable;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSessionAwareHandler;->hasSession:Z

    return-void
.end method

.method public onSessionStartOrResume(Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;Lio/netty/channel/EventLoop;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttSessionAwareHandler;->hasSession:Z

    return-void
.end method
