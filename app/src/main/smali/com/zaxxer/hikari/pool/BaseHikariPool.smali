.class public abstract Lcom/zaxxer/hikari/pool/BaseHikariPool;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zaxxer/hikari/pool/HikariPoolMXBean;
.implements Lcom/zaxxer/hikari/util/IBagStateListener;


# static fields
.field private static final ALIVE_BYPASS_WINDOW:J


# instance fields
.field protected final LOGGER:Lorg/slf4j/Logger;

.field protected final addConnectionExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final catalog:Ljava/lang/String;

.field protected final closeConnectionExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field protected final configuration:Lcom/zaxxer/hikari/HikariConfig;

.field protected final connectionBag:Lcom/zaxxer/hikari/util/ConcurrentBag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zaxxer/hikari/util/ConcurrentBag<",
            "Lcom/zaxxer/hikari/pool/PoolBagEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionCustomizer:Lcom/zaxxer/hikari/IConnectionCustomizer;

.field protected volatile connectionTimeout:J

.field private final dataSource:Ljavax/sql/DataSource;

.field protected final houseKeepingExecutorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public final isAutoCommit:Z

.field protected final isIsolateInternalQueries:Z

.field public final isReadOnly:Z

.field private volatile isRecordMetrics:Z

.field protected final isUseJdbc4Validation:Z

.field private final lastConnectionFailure:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final leakTask:Lcom/zaxxer/hikari/pool/LeakTask;

.field private volatile metricsTracker:Lcom/zaxxer/hikari/metrics/MetricsTracker;

.field private final password:Ljava/lang/String;

.field protected volatile poolState:I

.field protected final poolUtils:Lcom/zaxxer/hikari/pool/PoolUtilities;

.field private final suspendResumeLock:Lcom/zaxxer/hikari/pool/GlobalPoolLock;

.field protected final totalConnections:Ljava/util/concurrent/atomic/AtomicInteger;

.field public transactionIsolation:I

.field private final username:Ljava/lang/String;

.field protected volatile validationTimeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "com.zaxxer.hikari.aliveBypassWindow"

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->ALIVE_BYPASS_WINDOW:J

    return-void
.end method

.method public constructor <init>(Lcom/zaxxer/hikari/HikariConfig;Ljava/lang/String;Ljava/lang/String;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    iput-object v2, v0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->LOGGER:Lorg/slf4j/Logger;

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->username:Ljava/lang/String;

    move-object/from16 v10, p3

    iput-object v10, v0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->password:Ljava/lang/String;

    iput-object v1, v0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->configuration:Lcom/zaxxer/hikari/HikariConfig;

    new-instance v11, Lcom/zaxxer/hikari/pool/PoolUtilities;

    invoke-direct {v11, v1}, Lcom/zaxxer/hikari/pool/PoolUtilities;-><init>(Lcom/zaxxer/hikari/HikariConfig;)V

    iput-object v11, v0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->poolUtils:Lcom/zaxxer/hikari/pool/PoolUtilities;

    invoke-virtual {v0, v0}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->createConcurrentBag(Lcom/zaxxer/hikari/util/IBagStateListener;)Lcom/zaxxer/hikari/util/ConcurrentBag;

    move-result-object v3

    iput-object v3, v0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->connectionBag:Lcom/zaxxer/hikari/util/ConcurrentBag;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v3, v0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->totalConnections:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual/range {p1 .. p1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getConnectionTimeout()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->connectionTimeout:J

    invoke-virtual/range {p1 .. p1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getValidationTimeout()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->validationTimeout:J

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v3, v0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->lastConnectionFailure:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual/range {p1 .. p1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->isReadOnly()Z

    move-result v3

    iput-boolean v3, v0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->isReadOnly:Z

    invoke-virtual/range {p1 .. p1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->isAutoCommit()Z

    move-result v3

    iput-boolean v3, v0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->isAutoCommit:Z

    invoke-virtual/range {p1 .. p1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->isAllowPoolSuspension()Z

    move-result v3

    const/4 v12, 0x1

    if-eqz v3, :cond_0

    new-instance v3, Lcom/zaxxer/hikari/pool/GlobalPoolLock;

    invoke-direct {v3, v12}, Lcom/zaxxer/hikari/pool/GlobalPoolLock;-><init>(Z)V

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/zaxxer/hikari/pool/GlobalPoolLock;->FAUX_LOCK:Lcom/zaxxer/hikari/pool/GlobalPoolLock;

    :goto_0
    iput-object v3, v0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->suspendResumeLock:Lcom/zaxxer/hikari/pool/GlobalPoolLock;

    invoke-virtual/range {p1 .. p1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getCatalog()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->catalog:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->initializeCustomizer()Lcom/zaxxer/hikari/IConnectionCustomizer;

    move-result-object v3

    iput-object v3, v0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->connectionCustomizer:Lcom/zaxxer/hikari/IConnectionCustomizer;

    invoke-virtual/range {p1 .. p1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getTransactionIsolation()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zaxxer/hikari/util/UtilityElf;->getTransactionIsolation(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->transactionIsolation:I

    invoke-virtual/range {p1 .. p1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->isIsolateInternalQueries()Z

    move-result v3

    iput-boolean v3, v0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->isIsolateInternalQueries:Z

    invoke-virtual/range {p1 .. p1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getConnectionTestQuery()Ljava/lang/String;

    move-result-object v3

    const/4 v13, 0x0

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, v0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->isUseJdbc4Validation:Z

    invoke-virtual/range {p1 .. p1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getMetricRegistry()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->setMetricRegistry(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getHealthCheckRegistry()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->setHealthCheckRegistry(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getDataSourceClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getDataSource()Ljavax/sql/DataSource;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getDataSourceProperties()Ljava/util/Properties;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getDriverClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getJdbcUrl()Ljava/lang/String;

    move-result-object v8

    move-object v3, v11

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-virtual/range {v3 .. v10}, Lcom/zaxxer/hikari/pool/PoolUtilities;->initializeDataSource(Ljava/lang/String;Ljavax/sql/DataSource;Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/sql/DataSource;

    move-result-object v2

    iput-object v2, v0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->dataSource:Ljavax/sql/DataSource;

    invoke-virtual/range {p1 .. p1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getMaximumPoolSize()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HikariCP connection filler (pool "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getPoolName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v7}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    invoke-static {v3, v4, v6, v7}, Lcom/zaxxer/hikari/util/UtilityElf;->createThreadPoolExecutor(ILjava/lang/String;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    iput-object v3, v0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->addConnectionExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HikariCP connection closer (pool "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getPoolName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v4

    new-instance v6, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v6}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    const/4 v7, 0x4

    invoke-static {v7, v3, v4, v6}, Lcom/zaxxer/hikari/util/UtilityElf;->createThreadPoolExecutor(ILjava/lang/String;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v3

    iput-object v3, v0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->closeConnectionExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1e

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    const-string v6, "com.zaxxer.hikari.housekeeping.periodMs"

    invoke-static {v6, v3, v4}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-virtual/range {p1 .. p1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v3

    goto :goto_2

    :cond_2
    new-instance v3, Lcom/zaxxer/hikari/util/DefaultThreadFactory;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Hikari Housekeeping Timer (pool "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getPoolName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v12}, Lcom/zaxxer/hikari/util/DefaultThreadFactory;-><init>(Ljava/lang/String;Z)V

    :goto_2
    new-instance v4, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v5, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v5}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    invoke-direct {v4, v12, v3, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v4, v0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->houseKeepingExecutorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual/range {p0 .. p0}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->getHouseKeeper()Ljava/lang/Runnable;

    move-result-object v15

    sget-object v20, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v14, v4

    move-wide/from16 v16, v18

    invoke-virtual/range {v14 .. v20}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    invoke-virtual {v4, v13}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setExecuteExistingDelayedTasksAfterShutdownPolicy(Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getLeakDetectionThreshold()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_3

    sget-object v3, Lcom/zaxxer/hikari/pool/LeakTask;->NO_LEAK:Lcom/zaxxer/hikari/pool/LeakTask;

    goto :goto_3

    :cond_3
    new-instance v3, Lcom/zaxxer/hikari/pool/LeakTask;

    invoke-virtual/range {p1 .. p1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getLeakDetectionThreshold()J

    move-result-wide v5

    invoke-direct {v3, v5, v6, v4}, Lcom/zaxxer/hikari/pool/LeakTask;-><init>(JLjava/util/concurrent/ScheduledExecutorService;)V

    :goto_3
    iput-object v3, v0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->leakTask:Lcom/zaxxer/hikari/pool/LeakTask;

    invoke-static {v4}, Lcom/zaxxer/hikari/util/UtilityElf;->setRemoveOnCancelPolicy(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V

    iget-wide v3, v0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->connectionTimeout:J

    invoke-virtual {v11, v2, v3, v4}, Lcom/zaxxer/hikari/pool/PoolUtilities;->setLoginTimeout(Ljavax/sql/DataSource;J)V

    invoke-static {v1, v0}, Lcom/zaxxer/hikari/pool/HikariMBeanElf;->registerMBeans(Lcom/zaxxer/hikari/HikariConfig;Lcom/zaxxer/hikari/pool/BaseHikariPool;)V

    invoke-direct/range {p0 .. p0}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->initializeConnections()V

    return-void
.end method

.method private initializeConnections()V
    .locals 3

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->configuration:Lcom/zaxxer/hikari/HikariConfig;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/AbstractHikariConfig;->isInitializationFailFast()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->addConnection()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    check-cast v0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->getPoolBagEntry()Lcom/zaxxer/hikari/pool/PoolBagEntry;

    move-result-object v1

    iget-object v2, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->configuration:Lcom/zaxxer/hikari/HikariConfig;

    invoke-virtual {v2}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getMinimumIdle()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v1, Lcom/zaxxer/hikari/pool/PoolBagEntry;->evicted:Z

    invoke-virtual {v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->close()V

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->shutdown()V

    new-instance v0, Lcom/zaxxer/hikari/pool/PoolInitializationException;

    iget-object v1, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->lastConnectionFailure:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Lcom/zaxxer/hikari/pool/PoolInitializationException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->shutdown()V

    new-instance v1, Lcom/zaxxer/hikari/pool/PoolInitializationException;

    invoke-direct {v1, v0}, Lcom/zaxxer/hikari/pool/PoolInitializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    new-instance v1, Lcom/zaxxer/hikari/pool/PoolInitializationException;

    invoke-direct {v1, v0}, Lcom/zaxxer/hikari/pool/PoolInitializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->fillPool()V

    return-void
.end method

.method private initializeCustomizer()Lcom/zaxxer/hikari/IConnectionCustomizer;
    .locals 3

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->configuration:Lcom/zaxxer/hikari/HikariConfig;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getConnectionCustomizerClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->configuration:Lcom/zaxxer/hikari/HikariConfig;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getConnectionCustomizerClassName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Lcom/zaxxer/hikari/IConnectionCustomizer;

    invoke-static {v0, v2, v1}, Lcom/zaxxer/hikari/util/UtilityElf;->createInstance(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zaxxer/hikari/IConnectionCustomizer;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->configuration:Lcom/zaxxer/hikari/HikariConfig;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getConnectionCustomizer()Lcom/zaxxer/hikari/IConnectionCustomizer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract abortActiveConnections(Ljava/util/concurrent/ExecutorService;)V
.end method

.method public addBagItem()Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/zaxxer/hikari/pool/BaseHikariPool$1;

    invoke-direct {v1, p0}, Lcom/zaxxer/hikari/pool/BaseHikariPool$1;-><init>(Lcom/zaxxer/hikari/pool/BaseHikariPool;)V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->addConnectionExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public final addConnection()Z
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->totalConnections:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    iget-object v3, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->configuration:Lcom/zaxxer/hikari/HikariConfig;

    invoke-virtual {v3}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getMaximumPoolSize()I

    move-result v3

    if-gt v2, v3, :cond_5

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->username:Ljava/lang/String;

    if-nez v3, :cond_0

    iget-object v4, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->password:Ljava/lang/String;

    if-nez v4, :cond_0

    iget-object v3, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->dataSource:Ljavax/sql/DataSource;

    invoke-interface {v3}, Ljavax/sql/DataSource;->getConnection()Ljava/sql/Connection;

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_2

    :cond_0
    iget-object v4, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->dataSource:Ljavax/sql/DataSource;

    iget-object v5, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->password:Ljava/lang/String;

    invoke-interface {v4, v3, v5}, Ljavax/sql/DataSource;->getConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-boolean v4, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->isUseJdbc4Validation:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->poolUtils:Lcom/zaxxer/hikari/pool/PoolUtilities;

    invoke-virtual {v4, v3}, Lcom/zaxxer/hikari/pool/PoolUtilities;->isJdbc4ValidationSupported(Ljava/sql/Connection;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/sql/SQLException;

    const-string v4, "JDBC4 Connection.isValid() method not supported, connection test query must be configured"

    invoke-direct {v2, v4}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v2

    move-object v11, v3

    move-object v3, v2

    move-object v2, v11

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->poolUtils:Lcom/zaxxer/hikari/pool/PoolUtilities;

    iget-wide v5, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->connectionTimeout:J

    invoke-virtual {v4, v3, v5, v6}, Lcom/zaxxer/hikari/pool/PoolUtilities;->getAndSetNetworkTimeout(Ljava/sql/Connection;J)I

    move-result v10

    iget v4, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->transactionIsolation:I

    if-gez v4, :cond_3

    invoke-interface {v3}, Ljava/sql/Connection;->getTransactionIsolation()I

    move-result v4

    :cond_3
    move v8, v4

    iput v8, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->transactionIsolation:I

    iget-object v4, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->poolUtils:Lcom/zaxxer/hikari/pool/PoolUtilities;

    iget-boolean v6, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->isAutoCommit:Z

    iget-boolean v7, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->isReadOnly:Z

    iget-object v9, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->catalog:Ljava/lang/String;

    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Lcom/zaxxer/hikari/pool/PoolUtilities;->setupConnection(Ljava/sql/Connection;ZZILjava/lang/String;)V

    iget-object v4, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->connectionCustomizer:Lcom/zaxxer/hikari/IConnectionCustomizer;

    invoke-interface {v4, v3}, Lcom/zaxxer/hikari/IConnectionCustomizer;->customize(Ljava/sql/Connection;)V

    iget-object v4, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->poolUtils:Lcom/zaxxer/hikari/pool/PoolUtilities;

    iget-object v5, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->configuration:Lcom/zaxxer/hikari/HikariConfig;

    invoke-virtual {v5}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getConnectionInitSql()Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->isAutoCommit:Z

    invoke-virtual {v4, v3, v5, v6}, Lcom/zaxxer/hikari/pool/PoolUtilities;->executeSql(Ljava/sql/Connection;Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->poolUtils:Lcom/zaxxer/hikari/pool/PoolUtilities;

    int-to-long v5, v10

    invoke-virtual {v4, v3, v5, v6}, Lcom/zaxxer/hikari/pool/PoolUtilities;->setNetworkTimeout(Ljava/sql/Connection;J)V

    iget-object v4, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->connectionBag:Lcom/zaxxer/hikari/util/ConcurrentBag;

    new-instance v5, Lcom/zaxxer/hikari/pool/PoolBagEntry;

    invoke-direct {v5, v3, p0}, Lcom/zaxxer/hikari/pool/PoolBagEntry;-><init>(Ljava/sql/Connection;Lcom/zaxxer/hikari/pool/BaseHikariPool;)V

    invoke-virtual {v4, v5}, Lcom/zaxxer/hikari/util/ConcurrentBag;->add(Lcom/zaxxer/hikari/util/IConcurrentBagEntry;)V

    iget-object v4, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->lastConnectionFailure:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    :goto_2
    iget-object v4, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->lastConnectionFailure:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget v4, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->poolState:I

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->LOGGER:Lorg/slf4j/Logger;

    iget-object v5, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->configuration:Lcom/zaxxer/hikari/HikariConfig;

    invoke-virtual {v5}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getPoolName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v0

    aput-object v6, v7, v1

    const/4 v1, 0x2

    aput-object v3, v7, v1

    const-string v1, "Connection attempt to database {} failed: {}"

    invoke-interface {v4, v1, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iget-object v1, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->poolUtils:Lcom/zaxxer/hikari/pool/PoolUtilities;

    const-string v3, "(exception during connection creation)"

    invoke-virtual {v1, v2, v3}, Lcom/zaxxer/hikari/pool/PoolUtilities;->quietlyCloseConnection(Ljava/sql/Connection;Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->totalConnections:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return v0
.end method

.method public abstract closeConnection(Lcom/zaxxer/hikari/pool/PoolBagEntry;Ljava/lang/String;)V
.end method

.method public abstract createConcurrentBag(Lcom/zaxxer/hikari/util/IBagStateListener;)Lcom/zaxxer/hikari/util/ConcurrentBag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zaxxer/hikari/util/IBagStateListener;",
            ")",
            "Lcom/zaxxer/hikari/util/ConcurrentBag<",
            "Lcom/zaxxer/hikari/pool/PoolBagEntry;",
            ">;"
        }
    .end annotation
.end method

.method public fillPool()V
    .locals 2

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->configuration:Lcom/zaxxer/hikari/HikariConfig;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getMinimumIdle()I

    move-result v0

    invoke-virtual {p0}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->getIdleConnections()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->addBagItem()Ljava/util/concurrent/Future;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->addConnectionExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/zaxxer/hikari/pool/BaseHikariPool$2;

    invoke-direct {v1, p0}, Lcom/zaxxer/hikari/pool/BaseHikariPool$2;-><init>(Lcom/zaxxer/hikari/pool/BaseHikariPool;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final getActiveConnections()I
    .locals 2

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->connectionBag:Lcom/zaxxer/hikari/util/ConcurrentBag;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zaxxer/hikari/util/ConcurrentBag;->getCount(I)I

    move-result v0

    return v0
.end method

.method public final getConfiguration()Lcom/zaxxer/hikari/HikariConfig;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->configuration:Lcom/zaxxer/hikari/HikariConfig;

    return-object v0
.end method

.method public final getConnection()Ljava/sql/Connection;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->connectionTimeout:J

    invoke-virtual {p0, v0, v1}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->getConnection(J)Ljava/sql/Connection;

    move-result-object v0

    return-object v0
.end method

.method public final getConnection(J)Ljava/sql/Connection;
    .locals 11

    .line 2
    iget-object v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->suspendResumeLock:Lcom/zaxxer/hikari/pool/GlobalPoolLock;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/pool/GlobalPoolLock;->acquire()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->isRecordMetrics:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->metricsTracker:Lcom/zaxxer/hikari/metrics/MetricsTracker;

    invoke-virtual {v2, v0, v1}, Lcom/zaxxer/hikari/metrics/MetricsTracker;->recordConnectionRequest(J)Lcom/zaxxer/hikari/metrics/MetricsTracker$MetricsContext;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/zaxxer/hikari/metrics/MetricsTracker;->NO_CONTEXT:Lcom/zaxxer/hikari/metrics/MetricsTracker$MetricsContext;

    :goto_0
    move-wide v3, p1

    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->connectionBag:Lcom/zaxxer/hikari/util/ConcurrentBag;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v3, v4, v6}, Lcom/zaxxer/hikari/util/ConcurrentBag;->borrow(JLjava/util/concurrent/TimeUnit;)Lcom/zaxxer/hikari/util/IConcurrentBagEntry;

    move-result-object v3

    check-cast v3, Lcom/zaxxer/hikari/pool/PoolBagEntry;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-boolean v6, v3, Lcom/zaxxer/hikari/pool/PoolBagEntry;->evicted:Z

    if-nez v6, :cond_4

    iget-wide v6, v3, Lcom/zaxxer/hikari/pool/PoolBagEntry;->lastAccess:J

    sub-long v6, v4, v6

    sget-wide v8, Lcom/zaxxer/hikari/pool/BaseHikariPool;->ALIVE_BYPASS_WINDOW:J

    cmp-long v10, v6, v8

    if-lez v10, :cond_3

    iget-object v6, v3, Lcom/zaxxer/hikari/pool/PoolBagEntry;->connection:Ljava/sql/Connection;

    invoke-virtual {p0, v6}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->isConnectionAlive(Ljava/sql/Connection;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_3
    invoke-virtual {v2, v3, v4, v5}, Lcom/zaxxer/hikari/metrics/MetricsTracker$MetricsContext;->setConnectionLastOpen(Lcom/zaxxer/hikari/pool/PoolBagEntry;J)V

    invoke-virtual {v2}, Lcom/zaxxer/hikari/metrics/MetricsTracker$MetricsContext;->stop()V

    move-object p1, p0

    check-cast p1, Lcom/zaxxer/hikari/pool/HikariPool;

    iget-object p2, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->leakTask:Lcom/zaxxer/hikari/pool/LeakTask;

    invoke-virtual {p2, v3}, Lcom/zaxxer/hikari/pool/LeakTask;->start(Lcom/zaxxer/hikari/pool/PoolBagEntry;)Lcom/zaxxer/hikari/pool/LeakTask;

    move-result-object p2

    iget-boolean v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->isAutoCommit:Z

    invoke-static {p1, v3, p2, v0}, Lcom/zaxxer/hikari/proxy/ProxyFactory;->getProxyConnection(Lcom/zaxxer/hikari/pool/HikariPool;Lcom/zaxxer/hikari/pool/PoolBagEntry;Lcom/zaxxer/hikari/pool/LeakTask;Z)Lcom/zaxxer/hikari/proxy/IHikariConnectionProxy;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->suspendResumeLock:Lcom/zaxxer/hikari/pool/GlobalPoolLock;

    invoke-virtual {p2}, Lcom/zaxxer/hikari/pool/GlobalPoolLock;->release()V

    return-object p1

    :cond_4
    :goto_1
    :try_start_1
    const-string v4, "(connection evicted or dead)"

    invoke-virtual {p0, v3, v4}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->closeConnection(Lcom/zaxxer/hikari/pool/PoolBagEntry;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/zaxxer/hikari/util/UtilityElf;->elapsedTimeMs(J)J

    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long v3, p1, v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gtz v7, :cond_1

    :goto_2
    iget-object p1, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->suspendResumeLock:Lcom/zaxxer/hikari/pool/GlobalPoolLock;

    invoke-virtual {p1}, Lcom/zaxxer/hikari/pool/GlobalPoolLock;->release()V

    const-string p1, "Timeout failure "

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->logPoolState([Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->lastConnectionFailure:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    instance-of v2, p1, Ljava/sql/SQLException;

    if-eqz v2, :cond_5

    move-object p2, p1

    check-cast p2, Ljava/sql/SQLException;

    invoke-virtual {p2}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object p2

    :cond_5
    new-instance v2, Ljava/sql/SQLTimeoutException;

    invoke-static {v0, v1}, Lcom/zaxxer/hikari/util/UtilityElf;->elapsedTimeMs(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    const-string v0, "Timeout after %dms of waiting for a connection."

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p2, p1}, Ljava/sql/SQLTimeoutException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :goto_3
    :try_start_2
    new-instance p2, Ljava/sql/SQLException;

    const-string v0, "Interrupted during connection acquisition"

    invoke-direct {p2, v0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    iget-object p2, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->suspendResumeLock:Lcom/zaxxer/hikari/pool/GlobalPoolLock;

    invoke-virtual {p2}, Lcom/zaxxer/hikari/pool/GlobalPoolLock;->release()V

    throw p1
.end method

.method public final getDataSource()Ljavax/sql/DataSource;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->dataSource:Ljavax/sql/DataSource;

    return-object v0
.end method

.method public abstract getHouseKeeper()Ljava/lang/Runnable;
.end method

.method public final getIdleConnections()I
    .locals 2

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->connectionBag:Lcom/zaxxer/hikari/util/ConcurrentBag;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zaxxer/hikari/util/ConcurrentBag;->getCount(I)I

    move-result v0

    return v0
.end method

.method public final getThreadsAwaitingConnection()I
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->connectionBag:Lcom/zaxxer/hikari/util/ConcurrentBag;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/util/ConcurrentBag;->getPendingQueue()I

    move-result v0

    return v0
.end method

.method public final getTotalConnections()I
    .locals 3

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->connectionBag:Lcom/zaxxer/hikari/util/ConcurrentBag;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/util/ConcurrentBag;->size()I

    move-result v0

    iget-object v1, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->connectionBag:Lcom/zaxxer/hikari/util/ConcurrentBag;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/zaxxer/hikari/util/ConcurrentBag;->getCount(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public abstract isConnectionAlive(Ljava/sql/Connection;)Z
.end method

.method public final varargs logPoolState([Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->LOGGER:Lorg/slf4j/Logger;

    array-length v2, p1

    if-lez v2, :cond_0

    aget-object p1, p1, v0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iget-object v2, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->configuration:Lcom/zaxxer/hikari/HikariConfig;

    invoke-virtual {v2}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getPoolName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->getTotalConnections()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->getActiveConnections()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->getIdleConnections()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->getThreadsAwaitingConnection()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v0

    const/4 p1, 0x1

    aput-object v2, v7, p1

    const/4 p1, 0x2

    aput-object v3, v7, p1

    const/4 p1, 0x3

    aput-object v4, v7, p1

    const/4 p1, 0x4

    aput-object v5, v7, p1

    const/4 p1, 0x5

    aput-object v6, v7, p1

    const-string p1, "{}pool stats {} (total={}, inUse={}, avail={}, waiting={})"

    invoke-interface {v1, p1, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final releaseConnection(Lcom/zaxxer/hikari/pool/PoolBagEntry;)V
    .locals 3

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->metricsTracker:Lcom/zaxxer/hikari/metrics/MetricsTracker;

    invoke-virtual {v0, p1}, Lcom/zaxxer/hikari/metrics/MetricsTracker;->recordConnectionUsage(Lcom/zaxxer/hikari/pool/PoolBagEntry;)V

    iget-boolean v0, p1, Lcom/zaxxer/hikari/pool/PoolBagEntry;->evicted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->LOGGER:Lorg/slf4j/Logger;

    iget-object v1, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->configuration:Lcom/zaxxer/hikari/HikariConfig;

    invoke-virtual {v1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getPoolName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Connection returned to pool {} is broken or evicted.  Closing connection."

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "(connection broken or evicted)"

    invoke-virtual {p0, p1, v0}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->closeConnection(Lcom/zaxxer/hikari/pool/PoolBagEntry;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->connectionBag:Lcom/zaxxer/hikari/util/ConcurrentBag;

    invoke-virtual {v0, p1}, Lcom/zaxxer/hikari/util/ConcurrentBag;->requite(Lcom/zaxxer/hikari/util/IConcurrentBagEntry;)V

    :goto_0
    return-void
.end method

.method public setHealthCheckRegistry(Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    check-cast p1, Lcom/codahale/metrics/health/HealthCheckRegistry;

    invoke-static {p0, p1}, Lcom/zaxxer/hikari/metrics/CodahaleHealthChecker;->registerHealthChecks(Lcom/zaxxer/hikari/pool/BaseHikariPool;Lcom/codahale/metrics/health/HealthCheckRegistry;)V

    :cond_0
    return-void
.end method

.method public setMetricRegistry(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->isRecordMetrics:Z

    iget-boolean v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->isRecordMetrics:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker;

    check-cast p1, Lcom/codahale/metrics/MetricRegistry;

    invoke-direct {v0, p0, p1}, Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker;-><init>(Lcom/zaxxer/hikari/pool/BaseHikariPool;Lcom/codahale/metrics/MetricRegistry;)V

    iput-object v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->metricsTracker:Lcom/zaxxer/hikari/metrics/MetricsTracker;

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/zaxxer/hikari/metrics/MetricsTracker;

    invoke-direct {p1, p0}, Lcom/zaxxer/hikari/metrics/MetricsTracker;-><init>(Lcom/zaxxer/hikari/pool/BaseHikariPool;)V

    iput-object p1, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->metricsTracker:Lcom/zaxxer/hikari/metrics/MetricsTracker;

    :goto_1
    return-void
.end method

.method public final shutdown()V
    .locals 10

    iget v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->poolState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iput v1, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->poolState:I

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->LOGGER:Lorg/slf4j/Logger;

    iget-object v1, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->configuration:Lcom/zaxxer/hikari/HikariConfig;

    invoke-virtual {v1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getPoolName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HikariCP pool {} is shutting down."

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "Before shutdown "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->logPoolState([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->connectionBag:Lcom/zaxxer/hikari/util/ConcurrentBag;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/util/ConcurrentBag;->close()V

    invoke-interface {p0}, Lcom/zaxxer/hikari/pool/HikariPoolMXBean;->softEvictConnections()V

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->houseKeepingExecutorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->addConnectionExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->houseKeepingExecutorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->addConnectionExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->configuration:Lcom/zaxxer/hikari/HikariConfig;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getMaximumPoolSize()I

    move-result v0

    iget-object v1, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->configuration:Lcom/zaxxer/hikari/HikariConfig;

    invoke-virtual {v1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    new-instance v4, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v4}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    const-string v5, "HikariCP connection assassin"

    invoke-static {v0, v5, v1, v4}, Lcom/zaxxer/hikari/util/UtilityElf;->createThreadPoolExecutor(ILjava/lang/String;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :cond_0
    invoke-interface {p0}, Lcom/zaxxer/hikari/pool/HikariPoolMXBean;->softEvictConnections()V

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->abortActiveConnections(Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {p0}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->getTotalConnections()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {v4, v5}, Lcom/zaxxer/hikari/util/UtilityElf;->elapsedTimeMs(J)J

    move-result-wide v6

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-ltz v1, :cond_0

    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->closeConnectionExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->closeConnectionExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    const-string v0, "After shutdown "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->logPoolState([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->configuration:Lcom/zaxxer/hikari/HikariConfig;

    invoke-static {v0, p0}, Lcom/zaxxer/hikari/pool/HikariMBeanElf;->unregisterMBeans(Lcom/zaxxer/hikari/HikariConfig;Lcom/zaxxer/hikari/pool/BaseHikariPool;)V

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->metricsTracker:Lcom/zaxxer/hikari/metrics/MetricsTracker;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/metrics/MetricsTracker;->close()V

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->configuration:Lcom/zaxxer/hikari/HikariConfig;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getPoolName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
