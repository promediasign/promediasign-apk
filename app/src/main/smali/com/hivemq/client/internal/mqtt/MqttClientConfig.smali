.class public Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/MqttClientConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;
    }
.end annotation


# instance fields
.field private final advancedConfig:Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

.field private final clientComponent:Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;

.field private volatile clientIdentifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

.field private final connectDefaults:Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;

.field private final connectedListeners:Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile connectionConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;

.field private currentSslContext:Lio/netty/handler/ssl/SslContext;

.field private currentTransportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

.field private final disconnectedListeners:Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile eventLoop:Lio/netty/channel/EventLoop;

.field private eventLoopAcquireCount:J

.field private eventLoopAcquires:I

.field private final executorConfig:Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

.field private final mqttVersion:Lcom/hivemq/client/mqtt/MqttVersion;

.field private republishIfSessionExpired:Z

.field private resubscribeIfSessionExpired:Z

.field private final state:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/hivemq/client/mqtt/MqttClientState;",
            ">;"
        }
    .end annotation
.end field

.field private final transportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/mqtt/MqttVersion;Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;Lcom/hivemq/client/internal/util/collections/ImmutableList;Lcom/hivemq/client/internal/util/collections/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/MqttVersion;",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;",
            "Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;",
            "Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;",
            "Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;",
            "Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->mqttVersion:Lcom/hivemq/client/mqtt/MqttVersion;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->clientIdentifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->transportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->executorConfig:Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    iput-object p5, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->advancedConfig:Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    iput-object p6, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->connectDefaults:Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;

    iput-object p7, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->connectedListeners:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    iput-object p8, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->disconnectedListeners:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    sget-object p1, Lcom/hivemq/client/internal/mqtt/ioc/SingletonComponent;->INSTANCE:Lcom/hivemq/client/internal/mqtt/ioc/SingletonComponent;

    invoke-interface {p1}, Lcom/hivemq/client/internal/mqtt/ioc/SingletonComponent;->clientComponentBuilder()Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent$Builder;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent$Builder;->clientConfig(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent$Builder;

    move-result-object p1

    invoke-interface {p1}, Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent$Builder;->build()Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;

    move-result-object p1

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->clientComponent:Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object p2, Lcom/hivemq/client/mqtt/MqttClientState;->DISCONNECTED:Lcom/hivemq/client/mqtt/MqttClientState;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->state:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->currentTransportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    return-void
.end method

.method public static synthetic a(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->lambda$releaseEventLoop$0(J)V

    return-void
.end method

.method private synthetic lambda$releaseEventLoop$0(J)V
    .locals 4

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->state:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->eventLoopAcquireCount:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->eventLoop:Lio/netty/channel/EventLoop;

    sget-object p1, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->INSTANCE:Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;

    iget-object p2, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->executorConfig:Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->getRawNettyExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->releaseEventLoop(Ljava/util/concurrent/Executor;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public acquireEventLoop()Lio/netty/channel/EventLoop;
    .locals 5

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->state:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->eventLoopAcquires:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->eventLoopAcquires:I

    iget-wide v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->eventLoopAcquireCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->eventLoopAcquireCount:J

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->eventLoop:Lio/netty/channel/EventLoop;

    if-nez v1, :cond_0

    sget-object v1, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->INSTANCE:Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->executorConfig:Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->getRawNettyExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->executorConfig:Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;

    invoke-virtual {v3}, Lcom/hivemq/client/internal/mqtt/MqttClientExecutorConfigImpl;->getRawNettyThreads()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;->acquireEventLoop(Ljava/util/concurrent/Executor;I)Lio/netty/channel/EventLoop;

    move-result-object v1

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->eventLoop:Lio/netty/channel/EventLoop;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public executeInEventLoop(Ljava/lang/Runnable;)Z
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->eventLoop:Lio/netty/channel/EventLoop;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {v0, p1}, Lcom/hivemq/client/internal/util/ExecutorUtil;->execute(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public getAdvancedConfig()Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->advancedConfig:Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    return-object v0
.end method

.method public getClientComponent()Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->clientComponent:Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;

    return-object v0
.end method

.method public getConnectDefaults()Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->connectDefaults:Lcom/hivemq/client/internal/mqtt/MqttClientConfig$ConnectDefaults;

    return-object v0
.end method

.method public getConnectedListeners()Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->connectedListeners:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    return-object v0
.end method

.method public getCurrentSslContext()Lio/netty/handler/ssl/SslContext;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->currentSslContext:Lio/netty/handler/ssl/SslContext;

    return-object v0
.end method

.method public getCurrentTransportConfig()Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->currentTransportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    return-object v0
.end method

.method public getDisconnectedListeners()Lcom/hivemq/client/internal/util/collections/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->disconnectedListeners:Lcom/hivemq/client/internal/util/collections/ImmutableList;

    return-object v0
.end method

.method public getMqttVersion()Lcom/hivemq/client/mqtt/MqttVersion;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->mqttVersion:Lcom/hivemq/client/mqtt/MqttVersion;

    return-object v0
.end method

.method public getRawClientIdentifier()Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->clientIdentifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    return-object v0
.end method

.method public getRawConnectionConfig()Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->connectionConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;

    return-object v0
.end method

.method public getRawState()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/hivemq/client/mqtt/MqttClientState;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->state:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method public getState()Lcom/hivemq/client/mqtt/MqttClientState;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/MqttClientState;

    return-object v0
.end method

.method public isRepublishIfSessionExpired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->republishIfSessionExpired:Z

    return v0
.end method

.method public isResubscribeIfSessionExpired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->resubscribeIfSessionExpired:Z

    return v0
.end method

.method public releaseEventLoop()V
    .locals 6

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->state:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->eventLoopAcquires:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->eventLoopAcquires:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->eventLoop:Lio/netty/channel/EventLoop;

    iget-wide v2, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->eventLoopAcquireCount:J

    new-instance v4, Lo0/b;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v2, v3, v5}, Lo0/b;-><init>(Ljava/lang/Object;JI)V

    invoke-interface {v1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setClientIdentifier(Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->clientIdentifier:Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    return-void
.end method

.method public setConnectionConfig(Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->connectionConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;

    return-void
.end method

.method public setCurrentSslContext(Lio/netty/handler/ssl/SslContext;)V
    .locals 0

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->currentSslContext:Lio/netty/handler/ssl/SslContext;

    return-void
.end method

.method public setCurrentTransportConfig(Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->currentTransportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->currentTransportConfig:Lcom/hivemq/client/internal/mqtt/MqttClientTransportConfigImpl;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->currentSslContext:Lio/netty/handler/ssl/SslContext;

    :cond_0
    return-void
.end method

.method public setRepublishIfSessionExpired(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->republishIfSessionExpired:Z

    return-void
.end method

.method public setResubscribeIfSessionExpired(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->resubscribeIfSessionExpired:Z

    return-void
.end method
