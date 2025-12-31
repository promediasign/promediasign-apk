.class public Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;,
        Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_THREAD_POOL_SIZE:I = 0x0

.field private static final DEFAULT_KEEP_ALIVE:I = 0x1e

.field private static final DEFAULT_MAX_THREAD_POOL:I = 0x10

.field private static final EXIT_SIGNAL:Lorg/apache/mina/core/session/IoSession;

.field static LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final TASKS_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

.field private completedTaskCount:J

.field private final eventQueueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

.field private final idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile largestPoolSize:I

.field private volatile shutdown:Z

.field private final waitingSessions:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lorg/apache/mina/core/session/IoSession;",
            ">;"
        }
    .end annotation
.end field

.field private final workers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->LOGGER:Lorg/slf4j/Logger;

    new-instance v0, Lorg/apache/mina/core/session/DummySession;

    invoke-direct {v0}, Lorg/apache/mina/core/session/DummySession;-><init>()V

    sput-object v0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->EXIT_SIGNAL:Lorg/apache/mina/core/session/IoSession;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x10

    const-wide/16 v3, 0x1e

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 8

    .line 2
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v1, 0x0

    const-wide/16 v3, 0x1e

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 8

    .line 3
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    const/4 v7, 0x0

    const-wide/16 v3, 0x1e

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;)V
    .locals 8

    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

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

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V
    .locals 13

    move-object v9, p0

    move v10, p1

    move v11, p2

    move-object/from16 v12, p7

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v0, p0

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "tasksQueue"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, v9, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->TASKS_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, v9, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->waitingSessions:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v9, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, v9, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    if-ltz v10, :cond_2

    if-eqz v11, :cond_1

    if-lt v11, v10, :cond_1

    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    invoke-super {p0, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    if-nez v12, :cond_0

    sget-object v0, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->NOOP:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    iput-object v0, v9, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->eventQueueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    goto :goto_0

    :cond_0
    iput-object v12, v9, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->eventQueueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    :goto_0
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

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    return-void
.end method

.method public static synthetic access$1000(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    iget-object p0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->waitingSessions:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method public static synthetic access$1100(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Lorg/apache/mina/filter/executor/IoEventQueueHandler;
    .locals 0

    iget-object p0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->eventQueueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    return-object p0
.end method

.method public static synthetic access$1200(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic access$1300(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic access$1400(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic access$500(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic access$600(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic access$700()Lorg/apache/mina/core/session/IoSession;
    .locals 1

    sget-object v0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->EXIT_SIGNAL:Lorg/apache/mina/core/session/IoSession;

    return-object v0
.end method

.method public static synthetic access$800(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->getSessionTasksQueue(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$914(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;J)J
    .locals 2

    iget-wide v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->completedTaskCount:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->completedTaskCount:J

    return-wide v0
.end method

.method private addWorker()V
    .locals 4

    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v2

    if-lt v1, v2, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;-><init>(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$1;)V

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    iget-object v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->largestPoolSize:I

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iput v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->largestPoolSize:I

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

    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->addWorker()V

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

.method private getSessionTasksQueue(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->TASKS_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;-><init>(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$1;)V

    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->TASKS_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1, v0}, Lorg/apache/mina/core/session/IoSession;->setAttributeIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;

    if-eqz p1, :cond_0

    move-object v0, p1

    :cond_0
    return-object v0
.end method

.method private print(Ljava/util/Queue;Lorg/apache/mina/core/session/IoEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Lorg/apache/mina/core/session/IoEvent;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Adding event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/apache/mina/core/session/IoEvent;->getType()Lorg/apache/mina/core/session/IoEventType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/mina/core/session/IoEvent;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "\nQueue : ["

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    const-string v2, ", "

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    check-cast v1, Lorg/apache/mina/core/session/IoEvent;

    invoke-virtual {v1}, Lorg/apache/mina/core/session/IoEvent;->getType()Lorg/apache/mina/core/session/IoEventType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p1, "]\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void
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

    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v2

    if-gt v1, v2, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->waitingSessions:Ljava/util/concurrent/BlockingQueue;

    sget-object v2, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->EXIT_SIGNAL:Lorg/apache/mina/core/session/IoSession;

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

    iget-object p3, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter p3

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->isTerminated()Z

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
    iget-object v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

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

    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->isTerminated()Z

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
    .locals 6

    iget-boolean v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->shutdown:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->rejectTask(Ljava/lang/Runnable;)V

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->checkTaskType(Ljava/lang/Runnable;)V

    check-cast p1, Lorg/apache/mina/core/session/IoEvent;

    invoke-virtual {p1}, Lorg/apache/mina/core/session/IoEvent;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->getSessionTasksQueue(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->access$200(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;)Ljava/util/Queue;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->eventQueueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    invoke-interface {v3, p0, p1}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->accept(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    monitor-enter v2

    :try_start_0
    invoke-interface {v2, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-static {v1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->access$300(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-static {v1, v5}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->access$302(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;Z)Z

    const/4 v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v1, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v2, p1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->print(Ljava/util/Queue;Lorg/apache/mina/core/session/IoEvent;)V

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_3

    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->waitingSessions:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_2

    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_2
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->addWorkerIfNecessary()V

    if-eqz v3, :cond_4

    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->eventQueueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    invoke-interface {v0, p0, p1}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->offered(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V

    :cond_4
    return-void
.end method

.method public getActiveCount()I
    .locals 3

    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->idleWorkers:Ljava/util/concurrent/atomic/AtomicInteger;

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

    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->completedTaskCount:J

    iget-object v3, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;

    invoke-static {v4}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;->access$400(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$Worker;)J

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

    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v0

    return v0
.end method

.method public getLargestPoolSize()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->largestPoolSize:I

    return v0
.end method

.method public getMaximumPoolSize()I
    .locals 1

    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v0

    return v0
.end method

.method public getPoolSize()I
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

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

.method public getQueue()Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getQueueHandler()Lorg/apache/mina/filter/executor/IoEventQueueHandler;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->eventQueueHandler:Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    return-object v0
.end method

.method public getTaskCount()J
    .locals 2

    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public isShutdown()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->shutdown:Z

    return v0
.end method

.method public isTerminated()Z
    .locals 2

    iget-boolean v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->shutdown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

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

    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->isTerminated()Z

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

    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v1

    iget-object v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    :goto_0
    if-lez v1, :cond_0

    invoke-direct {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->addWorker()V

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

    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-direct {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->addWorker()V

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
    .locals 3

    invoke-direct {p0, p1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->checkTaskType(Ljava/lang/Runnable;)V

    move-object v0, p1

    check-cast v0, Lorg/apache/mina/core/session/IoEvent;

    invoke-virtual {v0}, Lorg/apache/mina/core/session/IoEvent;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->TASKS_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {v1, v2}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;

    invoke-static {v1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->access$200(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;)Ljava/util/Queue;

    move-result-object v2

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    monitor-enter v2

    :try_start_0
    invoke-interface {v2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->getQueueHandler()Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->polled(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V

    :cond_1
    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setCorePoolSize(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_2

    .line 2
    .line 3
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gt p1, v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-le v1, p1, :cond_0

    .line 17
    .line 18
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    sub-int/2addr v1, p1

    .line 23
    :goto_0
    if-lez v1, :cond_0

    .line 24
    .line 25
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->removeWorker()V

    .line 26
    .line 27
    .line 28
    add-int/lit8 v1, v1, -0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 34
    .line 35
    .line 36
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p1

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    const-string v0, "corePoolSize exceeds maximumPoolSize"

    .line 43
    .line 44
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    const-string v1, "corePoolSize: "

    .line 51
    .line 52
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v0
.end method

.method public setMaximumPoolSize(I)V
    .locals 2

    .line 1
    if-lez p1, :cond_1

    .line 2
    .line 3
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lt p1, v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    sub-int/2addr v1, p1

    .line 22
    :goto_0
    if-lez v1, :cond_0

    .line 23
    .line 24
    invoke-direct {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->removeWorker()V

    .line 25
    .line 26
    .line 27
    add-int/lit8 v1, v1, -0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p1

    .line 36
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    const-string v1, "maximumPoolSize: "

    .line 39
    .line 40
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0
.end method

.method public setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 0

    return-void
.end method

.method public shutdown()V
    .locals 4

    iget-boolean v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->shutdown:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->shutdown:Z

    iget-object v0, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->workers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    :goto_0
    if-lez v1, :cond_1

    iget-object v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->waitingSessions:Ljava/util/concurrent/BlockingQueue;

    sget-object v3, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->EXIT_SIGNAL:Lorg/apache/mina/core/session/IoSession;

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
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->shutdown()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->waitingSessions:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/session/IoSession;

    if-eqz v1, :cond_2

    sget-object v2, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->EXIT_SIGNAL:Lorg/apache/mina/core/session/IoSession;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->waitingSessions:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->TASKS_QUEUE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {v1, v2}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;

    invoke-static {v1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->access$200(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;)Ljava/util/Queue;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-static {v1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->access$200(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {p0}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;->getQueueHandler()Lorg/apache/mina/filter/executor/IoEventQueueHandler;

    move-result-object v5

    move-object v6, v4

    check-cast v6, Lorg/apache/mina/core/session/IoEvent;

    invoke-interface {v5, p0, v6}, Lorg/apache/mina/filter/executor/IoEventQueueHandler;->polled(Ljava/lang/Object;Lorg/apache/mina/core/session/IoEvent;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    invoke-static {v1}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;->access$200(Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor$SessionTasksQueue;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    monitor-exit v2

    goto :goto_0

    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    return-object v0
.end method
