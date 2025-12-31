.class public Lorg/apache/mina/filter/executor/ExecutorFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "SourceFile"


# static fields
.field private static final BASE_THREAD_NUMBER:I = 0x0

.field private static DEFAULT_EVENT_SET:[Lorg/apache/mina/core/session/IoEventType; = null

.field private static final DEFAULT_KEEPALIVE_TIME:J = 0x1eL

.field private static final DEFAULT_MAX_POOL_SIZE:I = 0x10

.field private static final MANAGEABLE_EXECUTOR:Z = true

.field private static final NOT_MANAGEABLE_EXECUTOR:Z


# instance fields
.field private eventTypes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lorg/apache/mina/core/session/IoEventType;",
            ">;"
        }
    .end annotation
.end field

.field private executor:Ljava/util/concurrent/Executor;

.field private manageableExecutor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/apache/mina/core/session/IoEventType;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->EXCEPTION_CAUGHT:Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_RECEIVED:Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_SENT:Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_CLOSED:Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_IDLE:Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_OPENED:Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/mina/filter/executor/ExecutorFilter;->DEFAULT_EVENT_SET:[Lorg/apache/mina/core/session/IoEventType;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x10

    const-wide/16 v3, 0x1e

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/ExecutorFilter;->createDefaultExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-array v1, v1, [Lorg/apache/mina/core/session/IoEventType;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 8

    .line 2
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v1, 0x0

    const-wide/16 v3, 0x1e

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/ExecutorFilter;->createDefaultExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)Ljava/util/concurrent/Executor;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/mina/core/session/IoEventType;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 8

    .line 3
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    const/4 v7, 0x0

    const-wide/16 v3, 0x1e

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/ExecutorFilter;->createDefaultExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)Ljava/util/concurrent/Executor;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Lorg/apache/mina/core/session/IoEventType;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;)V
    .locals 8

    .line 4
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/ExecutorFilter;->createDefaultExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)Ljava/util/concurrent/Executor;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Lorg/apache/mina/core/session/IoEventType;

    const/4 p3, 0x1

    invoke-direct {p0, p1, p3, p2}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V
    .locals 8

    .line 5
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/ExecutorFilter;->createDefaultExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)Ljava/util/concurrent/Executor;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Lorg/apache/mina/core/session/IoEventType;

    const/4 p3, 0x1

    invoke-direct {p0, p1, p3, p2}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V
    .locals 9

    .line 6
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    new-instance v8, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    move-object v0, v8

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/mina/core/session/IoEventType;

    const/4 v1, 0x1

    move-object v2, p0

    invoke-direct {p0, v8, v1, v0}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    return-void
.end method

.method public varargs constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;[Lorg/apache/mina/core/session/IoEventType;)V
    .locals 9

    .line 7
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    new-instance v8, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    move-object v0, v8

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    const/4 v0, 0x1

    move-object v1, p0

    move-object/from16 v2, p8

    invoke-direct {p0, v8, v0, v2}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    return-void
.end method

.method public varargs constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;[Lorg/apache/mina/core/session/IoEventType;)V
    .locals 8

    .line 8
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/ExecutorFilter;->createDefaultExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)Ljava/util/concurrent/Executor;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2, p7}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V
    .locals 8

    .line 9
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/ExecutorFilter;->createDefaultExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)Ljava/util/concurrent/Executor;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Lorg/apache/mina/core/session/IoEventType;

    const/4 p3, 0x1

    invoke-direct {p0, p1, p3, p2}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    return-void
.end method

.method public varargs constructor <init>(IIJLjava/util/concurrent/TimeUnit;Lorg/apache/mina/filter/executor/IoEventQueueHandler;[Lorg/apache/mina/core/session/IoEventType;)V
    .locals 8

    .line 10
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/ExecutorFilter;->createDefaultExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)Ljava/util/concurrent/Executor;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2, p7}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    return-void
.end method

.method public varargs constructor <init>(IIJLjava/util/concurrent/TimeUnit;[Lorg/apache/mina/core/session/IoEventType;)V
    .locals 8

    .line 11
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/ExecutorFilter;->createDefaultExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)Ljava/util/concurrent/Executor;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2, p6}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    return-void
.end method

.method public varargs constructor <init>(II[Lorg/apache/mina/core/session/IoEventType;)V
    .locals 8

    .line 12
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    const/4 v7, 0x0

    const-wide/16 v3, 0x1e

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/ExecutorFilter;->createDefaultExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)Ljava/util/concurrent/Executor;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    return-void
.end method

.method public varargs constructor <init>(I[Lorg/apache/mina/core/session/IoEventType;)V
    .locals 8

    .line 13
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v1, 0x0

    const-wide/16 v3, 0x1e

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/ExecutorFilter;->createDefaultExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)Ljava/util/concurrent/Executor;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/apache/mina/core/session/IoEventType;

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/util/concurrent/Executor;[Lorg/apache/mina/core/session/IoEventType;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    return-void
.end method

.method public varargs constructor <init>([Lorg/apache/mina/core/session/IoEventType;)V
    .locals 8

    .line 16
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x10

    const-wide/16 v3, 0x1e

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/ExecutorFilter;->createDefaultExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/mina/filter/executor/ExecutorFilter;->init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V

    return-void
.end method

.method private createDefaultExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)Ljava/util/concurrent/Executor;
    .locals 9

    new-instance v8, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;

    move-object v0, v8

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/filter/executor/OrderedThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;Lorg/apache/mina/filter/executor/IoEventQueueHandler;)V

    return-object v8
.end method

.method private varargs init(Ljava/util/concurrent/Executor;Z[Lorg/apache/mina/core/session/IoEventType;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0, p3}, Lorg/apache/mina/filter/executor/ExecutorFilter;->initEventTypes([Lorg/apache/mina/core/session/IoEventType;)V

    iput-object p1, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->executor:Ljava/util/concurrent/Executor;

    iput-boolean p2, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->manageableExecutor:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "executor"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private varargs initEventTypes([Lorg/apache/mina/core/session/IoEventType;)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    sget-object p1, Lorg/apache/mina/filter/executor/ExecutorFilter;->DEFAULT_EVENT_SET:[Lorg/apache/mina/core/session/IoEventType;

    :cond_1
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0, p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->eventTypes:Ljava/util/EnumSet;

    sget-object v0, Lorg/apache/mina/core/session/IoEventType;->SESSION_CREATED:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->eventTypes:Ljava/util/EnumSet;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is not allowed."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->manageableExecutor:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->executor:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_0
    return-void
.end method

.method public final exceptionCaught(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->eventTypes:Ljava/util/EnumSet;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->EXCEPTION_CAUGHT:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/executor/ExecutorFilter;->fireEvent(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final filterClose(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->eventTypes:Ljava/util/EnumSet;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->CLOSE:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/executor/ExecutorFilter;->fireEvent(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterClose(Lorg/apache/mina/core/session/IoSession;)V

    :goto_0
    return-void
.end method

.method public final filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->eventTypes:Ljava/util/EnumSet;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->WRITE:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/executor/ExecutorFilter;->fireEvent(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    :goto_0
    return-void
.end method

.method public fireEvent(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->eventTypes:Ljava/util/EnumSet;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_RECEIVED:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/executor/ExecutorFilter;->fireEvent(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->eventTypes:Ljava/util/EnumSet;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->MESSAGE_SENT:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/executor/ExecutorFilter;->fireEvent(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    :goto_0
    return-void
.end method

.method public onPreAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 0

    invoke-interface {p1, p0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->contains(Lorg/apache/mina/core/filterchain/IoFilter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You can\'t add the same filter instance more than once.  Create another instance and add it."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final sessionClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->eventTypes:Ljava/util/EnumSet;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_CLOSED:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/executor/ExecutorFilter;->fireEvent(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V

    :goto_0
    return-void
.end method

.method public final sessionIdle(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->eventTypes:Ljava/util/EnumSet;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_IDLE:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/executor/ExecutorFilter;->fireEvent(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionIdle(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    :goto_0
    return-void
.end method

.method public final sessionOpened(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/mina/filter/executor/ExecutorFilter;->eventTypes:Ljava/util/EnumSet;

    sget-object v1, Lorg/apache/mina/core/session/IoEventType;->SESSION_OPENED:Lorg/apache/mina/core/session/IoEventType;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/mina/core/filterchain/IoFilterEvent;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Lorg/apache/mina/core/filterchain/IoFilterEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoEventType;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/executor/ExecutorFilter;->fireEvent(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionOpened(Lorg/apache/mina/core/session/IoSession;)V

    :goto_0
    return-void
.end method
