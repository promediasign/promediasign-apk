.class public Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;
    }
.end annotation


# static fields
.field private static final EXIT_SIGNAL:Ljava/lang/Runnable;


# instance fields
.field private completedTaskCount:J

.field private volatile corePoolSize:I

.field private final idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile largestPoolSize:I

.field private volatile maximumPoolSize:I

.field private final queueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

.field private volatile shutdown:Z

.field private final workers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$1;

    invoke-direct {v0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$1;-><init>()V

    sput-object v0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->EXIT_SIGNAL:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 6

    .line 3
    const-wide/16 v3, 0x1e

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;)V
    .locals 7

    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V
    .locals 8

    .line 5
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V
    .locals 12

    move-object v9, p0

    move v10, p1

    move v11, p2

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v0, p0

    move-wide v3, p3

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v9, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, v9, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    if-ltz v10, :cond_2

    if-eqz v11, :cond_1

    if-lt v11, v10, :cond_1

    if-nez p7, :cond_0

    sget-object v0, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->NOOP:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    goto :goto_0

    :cond_0
    move-object/from16 v0, p7

    :goto_0
    iput v10, v9, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->corePoolSize:I

    iput v11, v9, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->maximumPoolSize:I

    iput-object v0, v9, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->queueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maximumPoolSize: "

    .line 6
    invoke-static {p2, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "corePoolSize: "

    .line 8
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V
    .locals 8

    .line 14
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    return-void
.end method

.method public static synthetic access$1000(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic access$200(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic access$400(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)I
    .locals 0

    iget p0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->corePoolSize:I

    return p0
.end method

.method public static synthetic access$500()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->EXIT_SIGNAL:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static synthetic access$600(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;)Lorg/apache/mina/filter/executor/IoEventQueueHandler;
    .locals 0

    iget-object p0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->queueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    return-object p0
.end method

.method public static synthetic access$714(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;J)J
    .locals 2

    iget-wide v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->completedTaskCount:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->completedTaskCount:J

    return-wide v0
.end method

.method public static synthetic access$800(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic access$900(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    return-void
.end method

.method private addWorker()V
    .locals 4

    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->maximumPoolSize:I

    if-lt v1, v2, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;-><init>(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$1;)V

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->largestPoolSize:I

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iput v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->largestPoolSize:I

    :cond_1
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private addWorkerIfNecessary()V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->addWorker()V

    :cond_1
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_2
    return-void
.end method

.method private checkTaskType(Ljava/lang/Runnable;)V
    .locals 1

    instance-of p1, p1, Lorg/apache/mina/core/session/IoEvent;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "task must be an IoEvent or its subclass."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private rejectTask(Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getRejectedExecutionHandler()Ljava/util/concurrent/RejectedExecutionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Ljava/util/concurrent/RejectedExecutionHandler;->rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method

.method private removeWorker()V
    .locals 3

    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->corePoolSize:I

    if-gt v1, v2, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    sget-object v2, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->EXIT_SIGNAL:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    add-long/2addr p1, v0

    iget-object p3, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter p3

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->isTerminated()Z

    move-result p1

    return p1

    :goto_2
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->shutdown:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->rejectTask(Ljava/lang/Runnable;)V

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->checkTaskType(Ljava/lang/Runnable;)V

    check-cast p1, Lorg/apache/mina/core/session/IoEvent;

    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->queueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    invoke-interface {v0, p0, p1}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->accept(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->addWorkerIfNecessary()V

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->queueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    invoke-interface {v0, p0, p1}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->offered(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V

    :cond_2
    return-void
.end method

.method public getActiveCount()I
    .locals 3

    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    sub-int/2addr v1, v2

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCompletedTaskCount()J
    .locals 6

    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->completedTaskCount:J

    iget-object v3, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;

    invoke-static {v4}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;->access$100(Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor$Worker;)J

    move-result-wide v4

    add-long/2addr v1, v4

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-wide v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCorePoolSize()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->corePoolSize:I

    return v0
.end method

.method public getLargestPoolSize()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->largestPoolSize:I

    return v0
.end method

.method public getMaximumPoolSize()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->maximumPoolSize:I

    return v0
.end method

.method public getPoolSize()I
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getQueueHandler()Lorg/apache/mina/filter/executor/IoEventQueueHandler;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->queueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    return-object v0
.end method

.method public getTaskCount()J
    .locals 2

    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public isShutdown()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->shutdown:Z

    return v0
.end method

.method public isTerminated()Z
    .locals 2

    iget-boolean v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->shutdown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isTerminating()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public prestartAllCoreThreads()I
    .locals 3

    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->corePoolSize:I

    iget-object v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    :goto_0
    if-lez v1, :cond_0

    invoke-direct {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->addWorker()V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    monitor-exit v0

    return v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public prestartCoreThread()Z
    .locals 3

    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget v2, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->corePoolSize:I

    if-ge v1, v2, :cond_0

    invoke-direct {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->addWorker()V

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public purge()V
    .locals 0

    return-void
.end method

.method public remove(Ljava/lang/Runnable;)Z
    .locals 2

    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->getQueueHandler()Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    move-result-object v1

    check-cast p1, Lorg/apache/mina/core/session/IoEvent;

    invoke-interface {v1, p0, p1}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->polled(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V

    :cond_0
    return v0
.end method

.method public setCorePoolSize(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_2

    .line 2
    .line 3
    iget v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->maximumPoolSize:I

    .line 4
    .line 5
    if-gt p1, v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->corePoolSize:I

    .line 11
    .line 12
    if-le v1, p1, :cond_0

    .line 13
    .line 14
    iget v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->corePoolSize:I

    .line 15
    .line 16
    sub-int/2addr v1, p1

    .line 17
    :goto_0
    if-lez v1, :cond_0

    .line 18
    .line 19
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->removeWorker()V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v1, v1, -0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iput p1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->corePoolSize:I

    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p1

    .line 33
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    const-string v0, "corePoolSize exceeds maximumPoolSize"

    .line 36
    .line 37
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    const-string v1, "corePoolSize: "

    .line 44
    .line 45
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0
.end method

.method public setMaximumPoolSize(I)V
    .locals 2

    .line 1
    if-lez p1, :cond_1

    .line 2
    .line 3
    iget v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->corePoolSize:I

    .line 4
    .line 5
    if-lt p1, v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iput p1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->maximumPoolSize:I

    .line 11
    .line 12
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    sub-int/2addr v1, p1

    .line 19
    :goto_0
    if-lez v1, :cond_0

    .line 20
    .line 21
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->removeWorker()V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, -0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p1

    .line 33
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    const-string v1, "maximumPoolSize: "

    .line 36
    .line 37
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0
.end method

.method public setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 0

    return-void
.end method

.method public shutdown()V
    .locals 4

    iget-boolean v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->shutdown:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->shutdown:Z

    iget-object v0, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    :goto_0
    if-lez v1, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    sget-object v3, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->EXIT_SIGNAL:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->shutdown()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    sget-object v2, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->EXIT_SIGNAL:Ljava/lang/Runnable;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/UnorderedThreadPoolExecutor;->getQueueHandler()Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lorg/apache/mina/core/session/IoEvent;

    invoke-interface {v2, p0, v3}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->polled(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
