.class public final Lorg/apache/mina/transport/vmpipe/VmPipeConnector;
.super Lorg/apache/mina/core/service/AbstractIoConnector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/transport/vmpipe/VmPipeConnector$LocalAddressReclaimer;
    }
.end annotation


# static fields
.field private static final LOCAL_ADDRESS_RECLAIMER:Lorg/apache/mina/core/future/IoFutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/core/future/IoFutureListener<",
            "Lorg/apache/mina/core/future/IoFuture;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAKEN_LOCAL_ADDRESSES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/mina/transport/vmpipe/VmPipeAddress;",
            ">;"
        }
    .end annotation
.end field

.field private static nextLocalPort:I


# instance fields
.field private idleChecker:Lorg/apache/mina/core/session/IdleStatusChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->TAKEN_LOCAL_ADDRESSES:Ljava/util/Set;

    const/4 v0, -0x1

    sput v0, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->nextLocalPort:I

    new-instance v0, Lorg/apache/mina/transport/vmpipe/VmPipeConnector$LocalAddressReclaimer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/mina/transport/vmpipe/VmPipeConnector$LocalAddressReclaimer;-><init>(Lorg/apache/mina/transport/vmpipe/VmPipeConnector$1;)V

    sput-object v0, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->LOCAL_ADDRESS_RECLAIMER:Lorg/apache/mina/core/future/IoFutureListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/mina/transport/vmpipe/DefaultVmPipeSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/vmpipe/DefaultVmPipeSessionConfig;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/mina/core/service/AbstractIoConnector;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V

    new-instance p1, Lorg/apache/mina/core/session/IdleStatusChecker;

    invoke-direct {p1}, Lorg/apache/mina/core/session/IdleStatusChecker;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->idleChecker:Lorg/apache/mina/core/session/IdleStatusChecker;

    invoke-virtual {p1}, Lorg/apache/mina/core/session/IdleStatusChecker;->getNotifyingTask()Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;

    move-result-object p1

    const-string v0, "idleStatusChecker"

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/service/AbstractIoService;->executeWorker(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100()Ljava/util/Set;
    .locals 1

    sget-object v0, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->TAKEN_LOCAL_ADDRESSES:Ljava/util/Set;

    return-object v0
.end method

.method private static nextLocalAddress()Lorg/apache/mina/transport/vmpipe/VmPipeAddress;
    .locals 5

    sget-object v0, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->TAKEN_LOCAL_ADDRESSES:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    sget v1, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->nextLocalPort:I

    if-ltz v1, :cond_0

    const/4 v1, -0x1

    sput v1, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->nextLocalPort:I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v1, 0x0

    :goto_1
    const v2, 0x7fffffff

    if-ge v1, v2, :cond_2

    new-instance v2, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    sget v3, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->nextLocalPort:I

    add-int/lit8 v4, v3, -0x1

    sput v4, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->nextLocalPort:I

    invoke-direct {v2, v3}, Lorg/apache/mina/transport/vmpipe/VmPipeAddress;-><init>(I)V

    sget-object v3, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->TAKEN_LOCAL_ADDRESSES:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t assign a local VM pipe port."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public connect0(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/mina/core/session/IoSessionInitializer;)Lorg/apache/mina/core/future/ConnectFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            "Ljava/net/SocketAddress;",
            "Lorg/apache/mina/core/session/IoSessionInitializer<",
            "+",
            "Lorg/apache/mina/core/future/ConnectFuture;",
            ">;)",
            "Lorg/apache/mina/core/future/ConnectFuture;"
        }
    .end annotation

    sget-object p2, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->boundHandlers:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/mina/transport/vmpipe/VmPipe;

    if-nez p2, :cond_0

    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Endpoint unavailable: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lorg/apache/mina/core/future/DefaultConnectFuture;->newFailedFuture(Ljava/lang/Throwable;)Lorg/apache/mina/core/future/ConnectFuture;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lorg/apache/mina/core/future/DefaultConnectFuture;

    invoke-direct {p1}, Lorg/apache/mina/core/future/DefaultConnectFuture;-><init>()V

    :try_start_0
    invoke-static {}, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->nextLocalAddress()Lorg/apache/mina/transport/vmpipe/VmPipeAddress;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v6, Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->getHandler()Lorg/apache/mina/core/service/IoHandler;

    move-result-object v4

    move-object v0, v6

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;-><init>(Lorg/apache/mina/core/service/IoService;Lorg/apache/mina/core/service/IoServiceListenerSupport;Lorg/apache/mina/transport/vmpipe/VmPipeAddress;Lorg/apache/mina/core/service/IoHandler;Lorg/apache/mina/transport/vmpipe/VmPipe;)V

    invoke-virtual {p0, v6, p1, p3}, Lorg/apache/mina/core/service/AbstractIoService;->initSession(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;Lorg/apache/mina/core/session/IoSessionInitializer;)V

    invoke-virtual {v6}, Lorg/apache/mina/core/session/AbstractIoSession;->getCloseFuture()Lorg/apache/mina/core/future/CloseFuture;

    move-result-object p3

    sget-object v0, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->LOCAL_ADDRESS_RECLAIMER:Lorg/apache/mina/core/future/IoFutureListener;

    invoke-interface {p3, v0}, Lorg/apache/mina/core/future/CloseFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/CloseFuture;

    :try_start_1
    invoke-virtual {v6}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object p3

    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->getFilterChainBuilder()Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;

    move-result-object v0

    invoke-interface {v0, p3}, Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;->buildFilterChain(Lorg/apache/mina/core/filterchain/IoFilterChain;)V

    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object p3

    invoke-virtual {p3, v6}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireSessionCreated(Lorg/apache/mina/core/session/IoSession;)V

    iget-object p3, p0, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->idleChecker:Lorg/apache/mina/core/session/IdleStatusChecker;

    invoke-virtual {p3, v6}, Lorg/apache/mina/core/session/IdleStatusChecker;->addSession(Lorg/apache/mina/core/session/AbstractIoSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v6}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getRemoteSession()Lorg/apache/mina/transport/vmpipe/VmPipeSession;

    move-result-object p3

    invoke-virtual {p3}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;->doFinishSessionInitialization(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;)V

    :try_start_2
    invoke-virtual {p3}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/mina/transport/vmpipe/VmPipe;->getAcceptor()Lorg/apache/mina/transport/vmpipe/VmPipeAcceptor;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/mina/core/service/AbstractIoService;->getFilterChainBuilder()Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;->buildFilterChain(Lorg/apache/mina/core/filterchain/IoFilterChain;)V

    invoke-virtual {p2}, Lorg/apache/mina/transport/vmpipe/VmPipe;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object p2

    invoke-virtual {p2, p3}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireSessionCreated(Lorg/apache/mina/core/session/IoSession;)V

    iget-object p2, p0, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->idleChecker:Lorg/apache/mina/core/session/IdleStatusChecker;

    invoke-virtual {p2, p3}, Lorg/apache/mina/core/session/IdleStatusChecker;->addSession(Lorg/apache/mina/core/session/AbstractIoSession;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    const/4 p2, 0x1

    invoke-virtual {p3, p2}, Lorg/apache/mina/core/session/AbstractIoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    :goto_0
    invoke-virtual {v6}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object p2

    check-cast p2, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-virtual {p2}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->start()V

    invoke-virtual {p3}, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object p2

    check-cast p2, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;

    invoke-virtual {p2}, Lorg/apache/mina/transport/vmpipe/VmPipeFilterChain;->start()V

    return-object p1

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Lorg/apache/mina/core/future/DefaultConnectFuture;->setException(Ljava/lang/Throwable;)V

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/apache/mina/core/future/DefaultConnectFuture;->newFailedFuture(Ljava/lang/Throwable;)Lorg/apache/mina/core/future/ConnectFuture;

    move-result-object p1

    return-object p1
.end method

.method public dispose0()V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->idleChecker:Lorg/apache/mina/core/session/IdleStatusChecker;

    invoke-virtual {v0}, Lorg/apache/mina/core/session/IdleStatusChecker;->getNotifyingTask()Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/core/session/IdleStatusChecker$NotifyingTask;->cancel()V

    return-void
.end method

.method public bridge synthetic getSessionConfig()Lorg/apache/mina/core/session/IoSessionConfig;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/transport/vmpipe/VmPipeConnector;->getSessionConfig()Lorg/apache/mina/transport/vmpipe/VmPipeSessionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getSessionConfig()Lorg/apache/mina/transport/vmpipe/VmPipeSessionConfig;
    .locals 1

    .line 2
    invoke-super {p0}, Lorg/apache/mina/core/service/AbstractIoService;->getSessionConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/transport/vmpipe/VmPipeSessionConfig;

    return-object v0
.end method

.method public getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;
    .locals 1

    sget-object v0, Lorg/apache/mina/transport/vmpipe/VmPipeSession;->METADATA:Lorg/apache/mina/core/service/TransportMetadata;

    return-object v0
.end method
