.class public Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;
.super Lio/reactivex/Single;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Single<",
        "Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;


# instance fields
.field private final clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

.field private final connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;

    invoke-static {v0}, Lcom/hivemq/client/internal/logging/InternalLoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/hivemq/client/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Single;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-virtual {p2, p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->setDefaults(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    move-result-object p1

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    return-void
.end method

.method public static synthetic a(Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->lambda$reconnect$3(Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V

    return-void
.end method

.method public static synthetic b(Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->lambda$null$2(Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic c(Lio/netty/channel/EventLoop;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/util/concurrent/Future;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->lambda$connect$1(Lio/netty/channel/EventLoop;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/util/concurrent/Future;)V

    return-void
.end method

.method private static connect(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V
    .locals 3

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->getDisposable()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->releaseEventLoop()V

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getRawState()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    sget-object p1, Lcom/hivemq/client/mqtt/MqttClientState;->DISCONNECTED:Lcom/hivemq/client/mqtt/MqttClientState;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getClientComponent()Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;->connectionComponentBuilder()Lcom/hivemq/client/internal/mqtt/ioc/ConnectionComponent$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionComponent$Builder;->connect(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)Lcom/hivemq/client/internal/mqtt/ioc/ConnectionComponent$Builder;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionComponent$Builder;->connAckFlow(Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;)Lcom/hivemq/client/internal/mqtt/ioc/ConnectionComponent$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionComponent$Builder;->build()Lcom/hivemq/client/internal/mqtt/ioc/ConnectionComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionComponent;->bootstrap()Lio/netty/bootstrap/Bootstrap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getCurrentTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    move-result-object v1

    invoke-virtual {v0, p3}, Lio/netty/bootstrap/AbstractBootstrap;->group(Lio/netty/channel/EventLoopGroup;)Lio/netty/bootstrap/AbstractBootstrap;

    move-result-object v0

    check-cast v0, Lio/netty/bootstrap/Bootstrap;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->getRawLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lio/netty/bootstrap/Bootstrap;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v1, Ls0/a;

    invoke-direct {v1, p0, p1, p2, p3}, Ls0/a;-><init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    :goto_0
    return-void
.end method

.method public static synthetic d(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->lambda$null$0(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V

    return-void
.end method

.method private static synthetic lambda$connect$1(Lio/netty/channel/EventLoop;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/util/concurrent/Future;)V
    .locals 7

    invoke-interface {p4}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object p4

    if-eqz p4, :cond_1

    new-instance v2, Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;

    invoke-direct {v2, p4}, Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result p4

    if-eqz p4, :cond_0

    sget-object v1, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->CLIENT:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    move-object v0, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->reconnect(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V

    goto :goto_0

    :cond_0
    new-instance p4, Lg1/h;

    const/4 v6, 0x1

    move-object v0, p4

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lg1/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {p0, p4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$null$0(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V
    .locals 6

    sget-object v1, Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;->CLIENT:Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->reconnect(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V

    return-void
.end method

.method private static synthetic lambda$null$2(Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->isReconnect()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getRawState()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p4

    sget-object v0, Lcom/hivemq/client/mqtt/MqttClientState;->DISCONNECTED_RECONNECT:Lcom/hivemq/client/mqtt/MqttClientState;

    sget-object v1, Lcom/hivemq/client/mqtt/MqttClientState;->CONNECTING_RECONNECT:Lcom/hivemq/client/mqtt/MqttClientState;

    .line 1
    :cond_0
    invoke-virtual {p4, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->getTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->setCurrentTransportConfig(Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;)V

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->getConnect()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    move-result-object p0

    new-instance p4, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

    invoke-direct {p4, p2}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;-><init>(Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;)V

    invoke-static {p1, p0, p4, p3}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->connect(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p5

    if-eq p5, v0, :cond_0

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getRawState()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    sget-object p3, Lcom/hivemq/client/mqtt/MqttClientState;->DISCONNECTED_RECONNECT:Lcom/hivemq/client/mqtt/MqttClientState;

    sget-object p4, Lcom/hivemq/client/mqtt/MqttClientState;->DISCONNECTED:Lcom/hivemq/client/mqtt/MqttClientState;

    .line 5
    :cond_3
    invoke-virtual {p0, p3, p4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->releaseEventLoop()V

    if-eqz p2, :cond_6

    new-instance p0, Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;

    if-nez p5, :cond_4

    const-string p1, "Reconnect was cancelled."

    invoke-direct {p0, p1}, Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p2, p0}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, p5}, Lcom/hivemq/client/mqtt/exceptions/ConnectionFailedException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 7
    :cond_5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p3, :cond_3

    :cond_6
    :goto_1
    return-void
.end method

.method private static synthetic lambda$reconnect$3(Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V
    .locals 2

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->getFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v1, Ls0/b;

    invoke-direct {v1, p0, p1, p2, p3}, Ls0/b;-><init>(Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V

    invoke-static {v0, v1}, Lio/netty/handler/ssl/a;->u(Ljava/util/concurrent/CompletableFuture;Ls0/b;)V

    return-void
.end method

.method private static reconnect(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;ILcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getCurrentTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    move-result-object v0

    invoke-direct {v6, p6, p4, p3, v0}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;-><init>(Lio/netty/channel/EventLoop;ILcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;)V

    invoke-static {p0, p1, p2, v6}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientDisconnectedContextImpl;->of(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;)Lcom/hivemq/client/mqtt/lifecycle/MqttClientDisconnectedContext;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getDisconnectedListeners()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object p1

    invoke-interface {p1}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->iterator()Lcom/hivemq/client/internal/util/collections/ImmutableList$ImmutableListIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {v6}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->isReconnect()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getRawState()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    sget-object p2, Lcom/hivemq/client/mqtt/MqttClientState;->DISCONNECTED_RECONNECT:Lcom/hivemq/client/mqtt/MqttClientState;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    new-instance p1, LD/i;

    const/4 v5, 0x2

    move-object v0, p1

    move-object v1, v6

    move-object v2, p0

    move-object v3, p5

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, LD/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, p2}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide p3

    invoke-interface {p6, p1, p3, p4, p2}, Lio/netty/channel/EventLoop;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    invoke-virtual {v6}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->isResubscribeIfSessionExpired()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->setResubscribeIfSessionExpired(Z)V

    invoke-virtual {v6}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->isRepublishIfSessionExpired()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->setRepublishIfSessionExpired(Z)V

    invoke-virtual {v6}, Lcom/hivemq/client/internal/mqtt/lifecycle/MqttClientReconnector;->afterOnDisconnected()V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getRawState()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    sget-object p3, Lcom/hivemq/client/mqtt/MqttClientState;->DISCONNECTED:Lcom/hivemq/client/mqtt/MqttClientState;

    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->releaseEventLoop()V

    if-eqz p5, :cond_1

    invoke-virtual {p5, p2}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, LA/g;->x(Ljava/lang/Object;)V

    const/4 p3, 0x0

    :try_start_0
    throw p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p3

    sget-object p4, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v0, "Unexpected exception thrown by disconnected listener."

    invoke-interface {p4, v0, p3}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static reconnect(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V
    .locals 8

    .line 2
    invoke-virtual {p4}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->setDone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->getAttempts()I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->reconnect(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;ILcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V

    :cond_0
    return-void
.end method

.method public static reconnect(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lio/netty/channel/EventLoop;)V
    .locals 7

    .line 3
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->reconnect(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/lifecycle/MqttDisconnectSource;Ljava/lang/Throwable;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;ILcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/SingleObserver;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-",
            "Lcom/hivemq/client/mqtt/mqtt5/message/connect/connack/Mqtt5ConnAck;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getRawState()Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/hivemq/client/mqtt/MqttClientState;->DISCONNECTED:Lcom/hivemq/client/mqtt/MqttClientState;

    .line 8
    .line 9
    sget-object v2, Lcom/hivemq/client/mqtt/MqttClientState;->CONNECTING:Lcom/hivemq/client/mqtt/MqttClientState;

    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    new-instance v0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;-><init>(Lio/reactivex/SingleObserver;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;->getDisposable()Lio/reactivex/disposables/Disposable;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {p1, v1}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->acquireEventLoop()Lio/netty/channel/EventLoop;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {p1, v1, v0, v2}, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckSingle;->connect(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lio/netty/channel/EventLoop;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    if-eq v3, v1, :cond_0

    .line 46
    .line 47
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/exceptions/MqttClientStateExceptions;->alreadyConnected()Lcom/hivemq/client/mqtt/exceptions/MqttClientStateException;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/SingleObserver;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
