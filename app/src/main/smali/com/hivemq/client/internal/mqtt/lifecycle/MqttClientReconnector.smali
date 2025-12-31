.class public Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private afterOnDisconnected:Z

.field private final attempts:I

.field private connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

.field private delayNanos:J

.field private final eventLoop:Lio/netty/channel/EventLoop;

.field private future:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private reconnect:Z

.field private republishIfSessionExpired:Z

.field private resubscribeIfSessionExpired:Z

.field private transportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;


# direct methods
.method public constructor <init>(Lio/netty/channel/EventLoop;ILcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->reconnect:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->resubscribeIfSessionExpired:Z

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->republishIfSessionExpired:Z

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->delayNanos:J

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->eventLoop:Lio/netty/channel/EventLoop;

    iput p2, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->attempts:I

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->transportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    return-void
.end method

.method private checkInEventLoop()V
    .locals 2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->eventLoop:Lio/netty/channel/EventLoop;

    invoke-interface {v0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v0

    const-string v1, "MqttClientReconnector must be called from the eventLoop."

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/util/Checks;->state(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public afterOnDisconnected()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->afterOnDisconnected:Z

    return-void
.end method

.method public getConnect()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    .locals 1

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->checkInEventLoop()V

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    return-object v0
.end method

.method public getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->checkInEventLoop()V

    const-string v0, "Time unit"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-wide v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->delayNanos:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFuture()Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->checkInEventLoop()V

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->future:Ljava/util/concurrent/CompletableFuture;

    if-nez v0, :cond_0

    invoke-static {}, Lu/a;->d()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;
    .locals 1

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->checkInEventLoop()V

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->transportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    return-object v0
.end method

.method public isReconnect()Z
    .locals 1

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->checkInEventLoop()V

    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->reconnect:Z

    return v0
.end method

.method public isRepublishIfSessionExpired()Z
    .locals 1

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->checkInEventLoop()V

    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->republishIfSessionExpired:Z

    return v0
.end method

.method public isResubscribeIfSessionExpired()Z
    .locals 1

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->checkInEventLoop()V

    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->resubscribeIfSessionExpired:Z

    return v0
.end method
