.class Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisconnectingState"
.end annotation


# instance fields
.field private final channel:Lio/netty/channel/Channel;

.field private final disconnectEvent:Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;

.field private final timeoutFuture:Lio/netty/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;->channel:Lio/netty/channel/Channel;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;->disconnectEvent:Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;

    invoke-interface {p1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object p1

    const-wide/16 v0, 0xa

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p0, v0, v1, p2}, Lio/netty/channel/EventLoop;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;->timeoutFuture:Lio/netty/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public static synthetic access$000(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;)Lio/netty/util/concurrent/ScheduledFuture;
    .locals 0

    iget-object p0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;->timeoutFuture:Lio/netty/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;)Lio/netty/channel/Channel;
    .locals 0

    iget-object p0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;->channel:Lio/netty/channel/Channel;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;)Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;
    .locals 0

    iget-object p0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;->disconnectEvent:Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;->channel:Lio/netty/channel/Channel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->close()Lio/netty/channel/ChannelFuture;

    return-void
.end method
