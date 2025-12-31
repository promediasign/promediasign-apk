.class public abstract Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/core/service/IoProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lorg/apache/mina/core/session/AbstractIoSession;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/mina/core/service/IoProcessor<",
        "TS;>;"
    }
.end annotation


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field private static final SELECT_TIMEOUT:J = 0x3e8L

.field private static final WRITE_SPIN_COUNT:I = 0x100

.field private static final threadIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final disposalFuture:Lorg/apache/mina/core/future/DefaultIoFuture;

.field private final disposalLock:Ljava/lang/Object;

.field private volatile disposed:Z

.field private volatile disposing:Z

.field private final executor:Ljava/util/concurrent/Executor;

.field private final flushingSessions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TS;>;"
        }
    .end annotation
.end field

.field private lastIdleCheckTime:J

.field private final newSessions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final processorRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<",
            "TS;>.Processor;>;"
        }
    .end annotation
.end field

.field private final removingSessions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final threadName:Ljava/lang/String;

.field private final trafficControllingSessions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TS;>;"
        }
    .end annotation
.end field

.field protected wakeupCalled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/mina/core/service/IoProcessor;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->LOG:Lorg/slf4j/Logger;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->threadIds:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->newSessions:Ljava/util/Queue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->removingSessions:Ljava/util/Queue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flushingSessions:Ljava/util/Queue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->trafficControllingSessions:Ljava/util/Queue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->processorRef:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposalLock:Ljava/lang/Object;

    new-instance v0, Lorg/apache/mina/core/future/DefaultIoFuture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/mina/core/future/DefaultIoFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposalFuture:Lorg/apache/mina/core/future/DefaultIoFuture;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->wakeupCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->nextThreadName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->threadName:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->executor:Ljava/util/concurrent/Executor;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "executor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$100(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->processorRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method public static synthetic access$1000(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->newSessions:Ljava/util/Queue;

    return-object p0
.end method

.method public static synthetic access$1100(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->scheduleRemove(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method

.method public static synthetic access$1200(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposalLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1300(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposing:Z

    return p0
.end method

.method public static synthetic access$1400(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Lorg/apache/mina/core/future/DefaultIoFuture;
    .locals 0

    iget-object p0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposalFuture:Lorg/apache/mina/core/future/DefaultIoFuture;

    return-object p0
.end method

.method public static synthetic access$202(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;J)J
    .locals 0

    iput-wide p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->lastIdleCheckTime:J

    return-wide p1
.end method

.method public static synthetic access$300()Lorg/slf4j/Logger;
    .locals 1

    sget-object v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->LOG:Lorg/slf4j/Logger;

    return-object v0
.end method

.method public static synthetic access$400(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)I
    .locals 0

    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->handleNewSessions()I

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->updateTrafficMask()V

    return-void
.end method

.method public static synthetic access$600(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->process()V

    return-void
.end method

.method public static synthetic access$700(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flush(J)V

    return-void
.end method

.method public static synthetic access$800(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)I
    .locals 0

    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->removeSessions()I

    move-result p0

    return p0
.end method

.method public static synthetic access$900(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->notifyIdleSessions(J)V

    return-void
.end method

.method private addNow(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->init(Lorg/apache/mina/core/session/AbstractIoSession;)V

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/service/IoService;->getFilterChainBuilder()Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;->buildFilterChain(Lorg/apache/mina/core/filterchain/IoFilterChain;)V

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoService;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireSessionCreated(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->destroy(Lorg/apache/mina/core/session/AbstractIoSession;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    :catchall_1
    move-exception p1

    throw p1

    :catch_0
    move-exception p1

    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0

    :goto_1
    return p1
.end method

.method private static byteArrayToHex([B)Ljava/lang/String;
    .locals 8

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-byte v4, p0, v2

    and-int/lit16 v5, v4, 0xff

    shr-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v3, 0x1

    const/16 v7, 0x9

    if-le v5, v7, :cond_0

    add-int/lit8 v5, v5, 0x37

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x30

    :goto_1
    int-to-char v5, v5

    aput-char v5, v0, v3

    and-int/lit8 v4, v4, 0xf

    add-int/lit8 v3, v3, 0x2

    if-le v4, v7, :cond_1

    add-int/lit8 v4, v4, 0x37

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x30

    :goto_2
    int-to-char v4, v4

    aput-char v4, v0, v6

    const/16 v4, 0x3c

    if-le v3, v4, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private clearWriteRequestQueue(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->poll(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v4, :cond_1

    check-cast v3, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lorg/apache/mina/core/buffer/IoBuffer;->reset()Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageSent(Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-interface {v0, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->poll(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lorg/apache/mina/core/write/WriteToClosedSessionException;

    invoke-direct {v0, v1}, Lorg/apache/mina/core/write/WriteToClosedSessionException;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/core/write/WriteRequest;

    invoke-virtual {p1, v2}, Lorg/apache/mina/core/session/AbstractIoSession;->decreaseScheduledBytesAndMessages(Lorg/apache/mina/core/write/WriteRequest;)V

    invoke-interface {v2}, Lorg/apache/mina/core/write/WriteRequest;->getFuture()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/apache/mina/core/future/WriteFuture;->setException(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method private fireMessageSent(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageSent(Lorg/apache/mina/core/write/WriteRequest;)V

    return-void
.end method

.method private flush(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/session/AbstractIoSession;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->unscheduledForFlush()V

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->getState(Lorg/apache/mina/core/session/AbstractIoSession;)Lorg/apache/mina/core/session/SessionState;

    move-result-object v1

    sget-object v2, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$1;->$SwitchMap$org$apache$mina$core$session$SessionState:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 p1, 0x3

    if-ne v2, p1, :cond_2

    invoke-direct {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->scheduleFlush(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :try_start_0
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flushNow(Lorg/apache/mina/core/session/AbstractIoSession;J)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/mina/core/write/WriteRequestQueue;->isEmpty(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->isScheduledForFlush()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->scheduleFlush(Lorg/apache/mina/core/session/AbstractIoSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-direct {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->scheduleRemove(Lorg/apache/mina/core/session/AbstractIoSession;)V

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    return-void
.end method

.method private flushNow(Lorg/apache/mina/core/session/AbstractIoSession;J)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;J)Z"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/mina/core/session/AbstractIoSession;->isConnected()Z

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_0

    invoke-direct/range {p0 .. p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->scheduleRemove(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return v10

    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/mina/core/session/IoSession;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/service/TransportMetadata;->hasFragmentation()Z

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/core/session/IoSessionConfig;->getMaxReadBufferSize()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/session/IoSessionConfig;->getMaxReadBufferSize()I

    move-result v2

    const/4 v12, 0x1

    ushr-int/2addr v2, v12

    add-int v13, v1, v2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v8, v9, v10}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->setInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;Z)V

    const/4 v14, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getCurrentWriteRequest()Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-interface {v11, v9}, Lorg/apache/mina/core/write/WriteRequestQueue;->poll(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v9, v1}, Lorg/apache/mina/core/session/AbstractIoSession;->setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v15, v1

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :goto_1
    :try_start_1
    invoke-interface {v15}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v6

    instance-of v1, v6, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v1, :cond_3

    sub-int v5, v13, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v15

    move v4, v0

    move-object v10, v6

    move-wide/from16 v6, p2

    invoke-direct/range {v1 .. v7}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->writeBuffer(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;ZIJ)I

    move-result v1

    if-lez v1, :cond_4

    move-object v6, v10

    check-cast v6, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v6}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v8, v9, v12}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->setInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;Z)V

    const/4 v1, 0x0

    return v1

    :catch_1
    move-exception v0

    :goto_2
    move-object v1, v15

    goto :goto_4

    :cond_3
    move-object v10, v6

    instance-of v1, v10, Lorg/apache/mina/core/file/FileRegion;

    if-eqz v1, :cond_8

    sub-int v5, v13, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v15

    move v4, v0

    move-wide/from16 v6, p2

    invoke-direct/range {v1 .. v7}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->writeFile(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;ZIJ)I

    move-result v1

    if-lez v1, :cond_4

    move-object v6, v10

    check-cast v6, Lorg/apache/mina/core/file/FileRegion;

    invoke-interface {v6}, Lorg/apache/mina/core/file/FileRegion;->getRemainingBytes()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_4

    invoke-virtual {v8, v9, v12}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->setInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v1, 0x0

    return v1

    :cond_4
    if-nez v1, :cond_5

    :try_start_2
    invoke-virtual {v8, v9, v12}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->setInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v2, 0x0

    return v2

    :catch_2
    move-exception v0

    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    add-int/2addr v14, v1

    if-lt v14, v13, :cond_6

    :try_start_3
    invoke-direct/range {p0 .. p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->scheduleFlush(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return v2

    :cond_6
    if-lt v14, v13, :cond_7

    :goto_3
    return v12

    :cond_7
    move-object v1, v15

    const/4 v10, 0x0

    goto :goto_0

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t know how to handle message of type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'.  Are you missing a protocol encoder?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    if-eqz v1, :cond_9

    invoke-interface {v1}, Lorg/apache/mina/core/write/WriteRequest;->getFuture()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/mina/core/future/WriteFuture;->setException(Ljava/lang/Throwable;)V

    :cond_9
    invoke-interface/range {p1 .. p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    return v1
.end method

.method private handleNewSessions()I
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->newSessions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/session/AbstractIoSession;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->addNow(Lorg/apache/mina/core/session/AbstractIoSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->newSessions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/session/AbstractIoSession;

    goto :goto_0

    :cond_1
    return v1
.end method

.method private nextThreadName()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->threadIds:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private notifyIdleSessions(J)V
    .locals 5

    iget-wide v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->lastIdleCheckTime:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iput-wide p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->lastIdleCheckTime:J

    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->allSessions()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/mina/core/session/AbstractIoSession;->notifyIdleness(Ljava/util/Iterator;J)V

    :cond_0
    return-void
.end method

.method private process()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->selectedSessions()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-direct {p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->process(Lorg/apache/mina/core/session/AbstractIoSession;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private process(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->isReadable(Lorg/apache/mina/core/session/AbstractIoSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->isReadSuspended()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->read(Lorg/apache/mina/core/session/AbstractIoSession;)V

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->isWritable(Lorg/apache/mina/core/session/AbstractIoSession;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->isWriteSuspended()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->setScheduledForFlush(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private read(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSessionConfig;->getReadBufferSize()I

    move-result v1

    invoke-static {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/mina/core/service/TransportMetadata;->hasFragmentation()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->read(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/buffer/IoBuffer;)I

    move-result v4

    if-lez v4, :cond_2

    add-int/2addr v3, v4

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_1
    invoke-virtual {p0, p1, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->read(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/buffer/IoBuffer;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v4, :cond_2

    move v3, v4

    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    if-lez v3, :cond_4

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v5

    invoke-interface {v5, v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageReceived(Ljava/lang/Object;)V

    if-eqz v2, :cond_4

    shl-int/lit8 v1, v3, 0x1

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSessionConfig;->getReadBufferSize()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->decreaseReadBufferSize()V

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_3

    :cond_3
    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSessionConfig;->getReadBufferSize()I

    move-result v1

    if-ne v3, v1, :cond_4

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseReadBufferSize()V

    :cond_4
    :goto_1
    if-gez v4, :cond_7

    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->scheduleRemove(Lorg/apache/mina/core/session/AbstractIoSession;)V

    goto :goto_4

    :goto_2
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_3
    instance-of v2, v1, Ljava/io/IOException;

    if-eqz v2, :cond_6

    instance-of v2, v1, Ljava/net/PortUnreachableException;

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    check-cast v0, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;

    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->isCloseOnPortUnreachable()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->scheduleRemove(Lorg/apache/mina/core/session/AbstractIoSession;)V

    :cond_6
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object p1

    invoke-interface {p1, v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :cond_7
    :goto_4
    return-void
.end method

.method private removeNow(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->clearWriteRequestQueue(Lorg/apache/mina/core/session/AbstractIoSession;)V

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->destroy(Lorg/apache/mina/core/session/AbstractIoSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->clearWriteRequestQueue(Lorg/apache/mina/core/session/AbstractIoSession;)V

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoService;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireSessionDestroyed(Lorg/apache/mina/core/session/IoSession;)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->clearWriteRequestQueue(Lorg/apache/mina/core/session/AbstractIoSession;)V

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoService;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireSessionDestroyed(Lorg/apache/mina/core/session/IoSession;)V

    const/4 p1, 0x0

    return p1

    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->clearWriteRequestQueue(Lorg/apache/mina/core/session/AbstractIoSession;)V

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v1}, Lorg/apache/mina/core/service/AbstractIoService;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireSessionDestroyed(Lorg/apache/mina/core/session/IoSession;)V

    throw v0
.end method

.method private removeSessions()I
    .locals 5

    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->removingSessions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/session/AbstractIoSession;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->getState(Lorg/apache/mina/core/session/AbstractIoSession;)Lorg/apache/mina/core/session/SessionState;

    move-result-object v2

    sget-object v3, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$1;->$SwitchMap$org$apache$mina$core$session$SessionState:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->newSessions:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->removeNow(Lorg/apache/mina/core/session/AbstractIoSession;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->removeNow(Lorg/apache/mina/core/session/AbstractIoSession;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->removingSessions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/session/AbstractIoSession;

    goto :goto_0

    :cond_3
    return v1
.end method

.method private scheduleFlush(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->setScheduledForFlush(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private scheduleRemove(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->removingSessions:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private startupProcessor()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->processorRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;

    .line 8
    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    new-instance v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;-><init>(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$1;)V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->processorRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 18
    .line 19
    :cond_0
    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->executor:Ljava/util/concurrent/Executor;

    .line 26
    .line 27
    new-instance v2, Lorg/apache/mina/util/NamePreservingRunnable;

    .line 28
    .line 29
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->threadName:Ljava/lang/String;

    .line 30
    .line 31
    invoke-direct {v2, v0, v3}, Lorg/apache/mina/util/NamePreservingRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->wakeup()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private updateTrafficMask()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->trafficControllingSessions:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_4

    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->trafficControllingSessions:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/session/AbstractIoSession;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->getState(Lorg/apache/mina/core/session/AbstractIoSession;)Lorg/apache/mina/core/session/SessionState;

    move-result-object v2

    sget-object v3, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$1;->$SwitchMap$org$apache$mina$core$session$SessionState:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->trafficControllingSessions:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->updateTrafficControl(Lorg/apache/mina/core/session/AbstractIoSession;)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private writeBuffer(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;ZIJ)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/apache/mina/core/write/WriteRequest;",
            "ZIJ)I"
        }
    .end annotation

    invoke-interface {p2}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v1

    invoke-static {v1, p4}, Ljava/lang/Math;->min(II)I

    move-result p4

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result p4

    :goto_0
    invoke-virtual {p0, p1, v0, p4}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->write(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/buffer/IoBuffer;I)I

    move-result p4

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    :goto_1
    invoke-virtual {p1, p4, p5, p6}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseWrittenBytes(IJ)V

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result p5

    if-eqz p5, :cond_2

    if-nez p3, :cond_3

    if-eqz p4, :cond_3

    :cond_2
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result p3

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->reset()Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->fireMessageSent(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    invoke-virtual {v0, p3}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    :cond_3
    return p4
.end method

.method private writeFile(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;ZIJ)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/apache/mina/core/write/WriteRequest;",
            "ZIJ)I"
        }
    .end annotation

    invoke-interface {p2}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/file/FileRegion;

    invoke-interface {v0}, Lorg/apache/mina/core/file/FileRegion;->getRemainingBytes()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    if-eqz p3, :cond_0

    invoke-interface {v0}, Lorg/apache/mina/core/file/FileRegion;->getRemainingBytes()J

    move-result-wide v1

    int-to-long v5, p4

    :goto_0
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int p4, v1

    goto :goto_1

    :cond_0
    const-wide/32 v1, 0x7fffffff

    invoke-interface {v0}, Lorg/apache/mina/core/file/FileRegion;->getRemainingBytes()J

    move-result-wide v5

    goto :goto_0

    :goto_1
    invoke-virtual {p0, p1, v0, p4}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->transferFile(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/file/FileRegion;I)I

    move-result p4

    int-to-long v1, p4

    invoke-interface {v0, v1, v2}, Lorg/apache/mina/core/file/FileRegion;->update(J)V

    goto :goto_2

    :cond_1
    const/4 p4, 0x0

    :goto_2
    invoke-virtual {p1, p4, p5, p6}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseWrittenBytes(IJ)V

    invoke-interface {v0}, Lorg/apache/mina/core/file/FileRegion;->getRemainingBytes()J

    move-result-wide p5

    cmp-long v0, p5, v3

    if-lez v0, :cond_2

    if-nez p3, :cond_3

    if-eqz p4, :cond_3

    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->fireMessageSent(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    :cond_3
    return p4
.end method


# virtual methods
.method public final add(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->newSessions:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->startupProcessor()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already disposed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic add(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 2
    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->add(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method

.method public abstract allSessions()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TS;>;"
        }
    .end annotation
.end method

.method public abstract destroy(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation
.end method

.method public final dispose()V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposalLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposing:Z

    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->startupProcessor()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposalFuture:Lorg/apache/mina/core/future/DefaultIoFuture;

    invoke-virtual {v0}, Lorg/apache/mina/core/future/DefaultIoFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;

    iput-boolean v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposed:Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract doDispose()V
.end method

.method public final flush(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 2
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->setScheduledForFlush(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flushingSessions:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->wakeup()V

    :cond_0
    return-void
.end method

.method public bridge synthetic flush(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 3
    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->flush(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method

.method public abstract getState(Lorg/apache/mina/core/session/AbstractIoSession;)Lorg/apache/mina/core/session/SessionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lorg/apache/mina/core/session/SessionState;"
        }
    .end annotation
.end method

.method public abstract init(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation
.end method

.method public abstract isBrokenConnection()Z
.end method

.method public final isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposed:Z

    return v0
.end method

.method public final isDisposing()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->disposing:Z

    return v0
.end method

.method public abstract isInterestedInRead(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation
.end method

.method public abstract isInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation
.end method

.method public abstract isReadable(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation
.end method

.method public abstract isSelectorEmpty()Z
.end method

.method public abstract isWritable(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation
.end method

.method public abstract read(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/buffer/IoBuffer;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/apache/mina/core/buffer/IoBuffer;",
            ")I"
        }
    .end annotation
.end method

.method public abstract registerNewSelector()V
.end method

.method public final remove(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->scheduleRemove(Lorg/apache/mina/core/session/AbstractIoSession;)V

    invoke-direct {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->startupProcessor()V

    return-void
.end method

.method public bridge synthetic remove(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 2
    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->remove(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method

.method public abstract select()I
.end method

.method public abstract select(J)I
.end method

.method public abstract selectedSessions()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TS;>;"
        }
    .end annotation
.end method

.method public abstract setInterestedInRead(Lorg/apache/mina/core/session/AbstractIoSession;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;Z)V"
        }
    .end annotation
.end method

.method public abstract setInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;Z)V"
        }
    .end annotation
.end method

.method public abstract transferFile(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/file/FileRegion;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/apache/mina/core/file/FileRegion;",
            "I)I"
        }
    .end annotation
.end method

.method public updateTrafficControl(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->isReadSuspended()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-virtual {p0, p1, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->setInterestedInRead(Lorg/apache/mina/core/session/AbstractIoSession;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->isEmpty(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->isWriteSuspended()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->setInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :goto_2
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method public bridge synthetic updateTrafficControl(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 2
    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->updateTrafficControl(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method

.method public final updateTrafficMask(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->trafficControllingSessions:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->wakeup()V

    return-void
.end method

.method public abstract wakeup()V
.end method

.method public abstract write(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/buffer/IoBuffer;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/apache/mina/core/buffer/IoBuffer;",
            "I)I"
        }
    .end annotation
.end method
