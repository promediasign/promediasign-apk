.class public abstract Lorg/apache/mina/core/service/AbstractIoService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/core/service/IoService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final id:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final createdExecutor:Z

.field protected final disposalLock:Ljava/lang/Object;

.field private volatile disposed:Z

.field private volatile disposing:Z

.field private final executor:Ljava/util/concurrent/Executor;

.field private filterChainBuilder:Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;

.field private handler:Lorg/apache/mina/core/service/IoHandler;

.field private final listeners:Lorg/apache/mina/core/service/IoServiceListenerSupport;

.field private final serviceActivationListener:Lorg/apache/mina/core/service/IoServiceListener;

.field private final sessionConfig:Lorg/apache/mina/core/session/IoSessionConfig;

.field private sessionDataStructureFactory:Lorg/apache/mina/core/session/IoSessionDataStructureFactory;

.field private stats:Lorg/apache/mina/core/service/IoServiceStatistics;

.field private final threadName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/mina/core/service/AbstractIoService;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/core/service/AbstractIoService;->LOGGER:Lorg/slf4j/Logger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/apache/mina/core/service/AbstractIoService;->id:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/mina/core/service/AbstractIoService$1;

    invoke-direct {v0, p0}, Lorg/apache/mina/core/service/AbstractIoService$1;-><init>(Lorg/apache/mina/core/service/AbstractIoService;)V

    iput-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->serviceActivationListener:Lorg/apache/mina/core/service/IoServiceListener;

    new-instance v1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    invoke-direct {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;-><init>()V

    iput-object v1, p0, Lorg/apache/mina/core/service/AbstractIoService;->filterChainBuilder:Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;

    new-instance v1, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory;

    invoke-direct {v1}, Lorg/apache/mina/core/session/DefaultIoSessionDataStructureFactory;-><init>()V

    iput-object v1, p0, Lorg/apache/mina/core/service/AbstractIoService;->sessionDataStructureFactory:Lorg/apache/mina/core/session/IoSessionDataStructureFactory;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/apache/mina/core/service/AbstractIoService;->disposalLock:Ljava/lang/Object;

    new-instance v1, Lorg/apache/mina/core/service/IoServiceStatistics;

    invoke-direct {v1, p0}, Lorg/apache/mina/core/service/IoServiceStatistics;-><init>(Lorg/apache/mina/core/service/AbstractIoService;)V

    iput-object v1, p0, Lorg/apache/mina/core/service/AbstractIoService;->stats:Lorg/apache/mina/core/service/IoServiceStatistics;

    if-eqz p1, :cond_3

    invoke-interface {p0}, Lorg/apache/mina/core/service/IoService;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lorg/apache/mina/core/service/IoService;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/core/service/TransportMetadata;->getSessionConfigType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/apache/mina/core/service/IoServiceListenerSupport;

    invoke-direct {v1, p0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;-><init>(Lorg/apache/mina/core/service/IoService;)V

    iput-object v1, p0, Lorg/apache/mina/core/service/AbstractIoService;->listeners:Lorg/apache/mina/core/service/IoServiceListenerSupport;

    invoke-virtual {v1, v0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->add(Lorg/apache/mina/core/service/IoServiceListener;)V

    iput-object p1, p0, Lorg/apache/mina/core/service/AbstractIoService;->sessionConfig:Lorg/apache/mina/core/session/IoSessionConfig;

    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    if-nez p2, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/core/service/AbstractIoService;->executor:Ljava/util/concurrent/Executor;

    const/4 p1, 0x1

    :goto_0
    iput-boolean p1, p0, Lorg/apache/mina/core/service/AbstractIoService;->createdExecutor:Z

    goto :goto_1

    :cond_0
    iput-object p2, p0, Lorg/apache/mina/core/service/AbstractIoService;->executor:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2d

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p2, Lorg/apache/mina/core/service/AbstractIoService;->id:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/core/service/AbstractIoService;->threadName:Ljava/lang/String;

    return-void

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sessionConfig type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " (expected: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/apache/mina/core/service/IoService;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/mina/core/service/TransportMetadata;->getSessionConfigType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "TransportMetadata"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sessionConfig"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final addListener(Lorg/apache/mina/core/service/IoServiceListener;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->listeners:Lorg/apache/mina/core/service/IoServiceListenerSupport;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->add(Lorg/apache/mina/core/service/IoServiceListener;)V

    return-void
.end method

.method public final broadcast(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "Lorg/apache/mina/core/future/WriteFuture;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->getManagedSessions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/mina/core/IoUtil;->broadcast(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lorg/apache/mina/core/service/AbstractIoService$2;

    invoke-direct {v0, p0, p1}, Lorg/apache/mina/core/service/AbstractIoService$2;-><init>(Lorg/apache/mina/core/service/AbstractIoService;Ljava/util/List;)V

    return-object v0
.end method

.method public final dispose()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/service/AbstractIoService;->dispose(Z)V

    return-void
.end method

.method public final dispose(Z)V
    .locals 5

    .line 2
    iget-boolean v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->disposed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->disposalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lorg/apache/mina/core/service/AbstractIoService;->disposing:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iput-boolean v2, p0, Lorg/apache/mina/core/service/AbstractIoService;->disposing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->dispose0()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->createdExecutor:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->executor:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    if-eqz p1, :cond_2

    :try_start_3
    sget-object p1, Lorg/apache/mina/core/service/AbstractIoService;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "awaitTermination on {} called by thread=[{}]"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, p0, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v3, 0x7fffffff

    invoke-interface {v0, v3, v4, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    const-string v0, "awaitTermination on {} finished"

    invoke-interface {p1, v0, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    sget-object p1, Lorg/apache/mina/core/service/AbstractIoService;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "awaitTermination on [{}] was interrupted"

    invoke-interface {p1, v0, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    :goto_1
    iput-boolean v2, p0, Lorg/apache/mina/core/service/AbstractIoService;->disposed:Z

    return-void

    :goto_2
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public abstract dispose0()V
.end method

.method public final executeWorker(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/service/AbstractIoService;->executeWorker(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public final executeWorker(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->threadName:Ljava/lang/String;

    if-eqz p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object p2, p0, Lorg/apache/mina/core/service/AbstractIoService;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/apache/mina/util/NamePreservingRunnable;

    invoke-direct {v1, p1, v0}, Lorg/apache/mina/util/NamePreservingRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public finishSessionInitialization0(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;)V
    .locals 0

    return-void
.end method

.method public final getActivationTime()J
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->listeners:Lorg/apache/mina/core/service/IoServiceListenerSupport;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->getActivationTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getFilterChain()Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->filterChainBuilder:Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;

    instance-of v1, v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Current filter chain builder is not a DefaultIoFilterChainBuilder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getFilterChainBuilder()Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->filterChainBuilder:Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;

    return-object v0
.end method

.method public final getHandler()Lorg/apache/mina/core/service/IoHandler;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->handler:Lorg/apache/mina/core/service/IoHandler;

    return-object v0
.end method

.method public final getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->listeners:Lorg/apache/mina/core/service/IoServiceListenerSupport;

    return-object v0
.end method

.method public final getManagedSessionCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->listeners:Lorg/apache/mina/core/service/IoServiceListenerSupport;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->getManagedSessionCount()I

    move-result v0

    return v0
.end method

.method public final getManagedSessions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->listeners:Lorg/apache/mina/core/service/IoServiceListenerSupport;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->getManagedSessions()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getScheduledWriteBytes()I
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->stats:Lorg/apache/mina/core/service/IoServiceStatistics;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceStatistics;->getScheduledWriteBytes()I

    move-result v0

    return v0
.end method

.method public getScheduledWriteMessages()I
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->stats:Lorg/apache/mina/core/service/IoServiceStatistics;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceStatistics;->getScheduledWriteMessages()I

    move-result v0

    return v0
.end method

.method public getSessionConfig()Lorg/apache/mina/core/session/IoSessionConfig;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->sessionConfig:Lorg/apache/mina/core/session/IoSessionConfig;

    return-object v0
.end method

.method public final getSessionDataStructureFactory()Lorg/apache/mina/core/session/IoSessionDataStructureFactory;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->sessionDataStructureFactory:Lorg/apache/mina/core/session/IoSessionDataStructureFactory;

    return-object v0
.end method

.method public getStatistics()Lorg/apache/mina/core/service/IoServiceStatistics;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->stats:Lorg/apache/mina/core/service/IoServiceStatistics;

    return-object v0
.end method

.method public final initSession(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;Lorg/apache/mina/core/session/IoSessionInitializer;)V
    .locals 6

    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->stats:Lorg/apache/mina/core/service/IoServiceStatistics;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceStatistics;->getLastReadTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->stats:Lorg/apache/mina/core/service/IoServiceStatistics;

    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->getActivationTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/apache/mina/core/service/IoServiceStatistics;->setLastReadTime(J)V

    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->stats:Lorg/apache/mina/core/service/IoServiceStatistics;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceStatistics;->getLastWriteTime()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->stats:Lorg/apache/mina/core/service/IoServiceStatistics;

    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->getActivationTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/mina/core/service/IoServiceStatistics;->setLastWriteTime(J)V

    :cond_1
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/core/service/IoService;->getSessionDataStructureFactory()Lorg/apache/mina/core/session/IoSessionDataStructureFactory;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/mina/core/session/IoSessionDataStructureFactory;->getAttributeMap(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/session/IoSessionAttributeMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/session/AbstractIoSession;->setAttributeMap(Lorg/apache/mina/core/session/IoSessionAttributeMap;)V
    :try_end_0
    .catch Lorg/apache/mina/core/session/IoSessionInitializationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    move-object v0, p1

    check-cast v0, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/core/service/IoService;->getSessionDataStructureFactory()Lorg/apache/mina/core/session/IoSessionDataStructureFactory;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/mina/core/session/IoSessionDataStructureFactory;->getWriteRequestQueue(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/session/AbstractIoSession;->setWriteRequestQueue(Lorg/apache/mina/core/write/WriteRequestQueue;)V
    :try_end_1
    .catch Lorg/apache/mina/core/session/IoSessionInitializationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p2, :cond_2

    instance-of v0, p2, Lorg/apache/mina/core/future/ConnectFuture;

    if-eqz v0, :cond_2

    sget-object v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->SESSION_CREATED_FUTURE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0, p2}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p3, :cond_3

    invoke-interface {p3, p1, p2}, Lorg/apache/mina/core/session/IoSessionInitializer;->initializeSession(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;)V

    :cond_3
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/core/service/AbstractIoService;->finishSessionInitialization0(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    new-instance p2, Lorg/apache/mina/core/session/IoSessionInitializationException;

    const-string p3, "Failed to initialize a writeRequestQueue."

    invoke-direct {p2, p3, p1}, Lorg/apache/mina/core/session/IoSessionInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    throw p1

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    goto :goto_3

    :goto_2
    new-instance p2, Lorg/apache/mina/core/session/IoSessionInitializationException;

    const-string p3, "Failed to initialize an attributeMap."

    invoke-direct {p2, p3, p1}, Lorg/apache/mina/core/session/IoSessionInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_3
    throw p1
.end method

.method public final isActive()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->listeners:Lorg/apache/mina/core/service/IoServiceListenerSupport;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->isActive()Z

    move-result v0

    return v0
.end method

.method public final isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->disposed:Z

    return v0
.end method

.method public final isDisposing()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->disposing:Z

    return v0
.end method

.method public final removeListener(Lorg/apache/mina/core/service/IoServiceListener;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoService;->listeners:Lorg/apache/mina/core/service/IoServiceListenerSupport;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->remove(Lorg/apache/mina/core/service/IoServiceListener;)V

    return-void
.end method

.method public final setFilterChainBuilder(Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;)V
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    invoke-direct {p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;-><init>()V

    :cond_0
    iput-object p1, p0, Lorg/apache/mina/core/service/AbstractIoService;->filterChainBuilder:Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;

    return-void
.end method

.method public final setHandler(Lorg/apache/mina/core/service/IoHandler;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/apache/mina/core/service/AbstractIoService;->handler:Lorg/apache/mina/core/service/IoHandler;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "handler cannot be set while the service is active."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "handler cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setSessionDataStructureFactory(Lorg/apache/mina/core/session/IoSessionDataStructureFactory;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/apache/mina/core/service/AbstractIoService;->sessionDataStructureFactory:Lorg/apache/mina/core/session/IoSessionDataStructureFactory;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "sessionDataStructureFactory cannot be set while the service is active."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sessionDataStructureFactory"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
