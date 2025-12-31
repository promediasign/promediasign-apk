.class public final Lio/netty/channel/nio/NioEventLoop;
.super Lio/netty/channel/SingleThreadEventLoop;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/nio/NioEventLoop$SelectorTuple;
    }
.end annotation


# static fields
.field private static final AWAKE:J = -0x1L

.field private static final CLEANUP_INTERVAL:I = 0x100

.field private static final DISABLE_KEY_SET_OPTIMIZATION:Z

.field private static final MIN_PREMATURE_SELECTOR_RETURNS:I = 0x3

.field private static final NONE:J = 0x7fffffffffffffffL

.field private static final SELECTOR_AUTO_REBUILD_THRESHOLD:I

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private cancelledKeys:I

.field private volatile ioRatio:I

.field private needsToSelectAgain:Z

.field private final nextWakeupNanos:Ljava/util/concurrent/atomic/AtomicLong;

.field private final provider:Ljava/nio/channels/spi/SelectorProvider;

.field private final selectNowSupplier:Lio/netty/util/IntSupplier;

.field private final selectStrategy:Lio/netty/channel/SelectStrategy;

.field private selectedKeys:Lio/netty/channel/nio/SelectedSelectionKeySet;

.field private selector:Ljava/nio/channels/Selector;

.field private unwrappedSelector:Ljava/nio/channels/Selector;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lio/netty/channel/nio/NioEventLoop;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v0, "io.netty.noKeySetOptimization"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lio/netty/channel/nio/NioEventLoop;->DISABLE_KEY_SET_OPTIMIZATION:Z

    const-string v0, "sun.nio.ch.bugLevel"

    invoke-static {v0}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lio/netty/channel/nio/NioEventLoop$2;

    invoke-direct {v0}, Lio/netty/channel/nio/NioEventLoop$2;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "Unable to get/set System Property: sun.nio.ch.bugLevel"

    invoke-interface {v2, v3, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const-string v0, "io.netty.selectorAutoRebuildThreshold"

    const/16 v2, 0x200

    invoke-static {v0, v2}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    sput v1, Lio/netty/channel/nio/NioEventLoop;->SELECTOR_AUTO_REBUILD_THRESHOLD:I

    sget-object v0, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, Lio/netty/channel/nio/NioEventLoop;->DISABLE_KEY_SET_OPTIMIZATION:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "-Dio.netty.noKeySetOptimization: {}"

    invoke-interface {v0, v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "-Dio.netty.selectorAutoRebuildThreshold: {}"

    invoke-interface {v0, v2, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public constructor <init>(Lio/netty/channel/nio/NioEventLoopGroup;Ljava/util/concurrent/Executor;Ljava/nio/channels/spi/SelectorProvider;Lio/netty/channel/SelectStrategy;Lio/netty/util/concurrent/RejectedExecutionHandler;Lio/netty/channel/EventLoopTaskQueueFactory;)V
    .locals 7

    invoke-static {p6}, Lio/netty/channel/nio/NioEventLoop;->newTaskQueue(Lio/netty/channel/EventLoopTaskQueueFactory;)Ljava/util/Queue;

    move-result-object v4

    invoke-static {p6}, Lio/netty/channel/nio/NioEventLoop;->newTaskQueue(Lio/netty/channel/EventLoopTaskQueueFactory;)Ljava/util/Queue;

    move-result-object v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lio/netty/channel/SingleThreadEventLoop;-><init>(Lio/netty/channel/EventLoopGroup;Ljava/util/concurrent/Executor;ZLjava/util/Queue;Ljava/util/Queue;Lio/netty/util/concurrent/RejectedExecutionHandler;)V

    new-instance p1, Lio/netty/channel/nio/NioEventLoop$1;

    invoke-direct {p1, p0}, Lio/netty/channel/nio/NioEventLoop$1;-><init>(Lio/netty/channel/nio/NioEventLoop;)V

    iput-object p1, p0, Lio/netty/channel/nio/NioEventLoop;->selectNowSupplier:Lio/netty/util/IntSupplier;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 p5, -0x1

    invoke-direct {p1, p5, p6}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lio/netty/channel/nio/NioEventLoop;->nextWakeupNanos:Ljava/util/concurrent/atomic/AtomicLong;

    const/16 p1, 0x32

    iput p1, p0, Lio/netty/channel/nio/NioEventLoop;->ioRatio:I

    const-string p1, "selectorProvider"

    invoke-static {p3, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/channels/spi/SelectorProvider;

    iput-object p1, p0, Lio/netty/channel/nio/NioEventLoop;->provider:Ljava/nio/channels/spi/SelectorProvider;

    const-string p1, "selectStrategy"

    invoke-static {p4, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/channel/SelectStrategy;

    iput-object p1, p0, Lio/netty/channel/nio/NioEventLoop;->selectStrategy:Lio/netty/channel/SelectStrategy;

    invoke-direct {p0}, Lio/netty/channel/nio/NioEventLoop;->openSelector()Lio/netty/channel/nio/NioEventLoop$SelectorTuple;

    move-result-object p1

    iget-object p2, p1, Lio/netty/channel/nio/NioEventLoop$SelectorTuple;->selector:Ljava/nio/channels/Selector;

    iput-object p2, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    iget-object p1, p1, Lio/netty/channel/nio/NioEventLoop$SelectorTuple;->unwrappedSelector:Ljava/nio/channels/Selector;

    iput-object p1, p0, Lio/netty/channel/nio/NioEventLoop;->unwrappedSelector:Ljava/nio/channels/Selector;

    return-void
.end method

.method public static synthetic access$000(Lio/netty/channel/nio/NioEventLoop;Ljava/nio/channels/SelectableChannel;ILio/netty/channel/nio/NioTask;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/netty/channel/nio/NioEventLoop;->register0(Ljava/nio/channels/SelectableChannel;ILio/netty/channel/nio/NioTask;)V

    return-void
.end method

.method public static synthetic access$100(Lio/netty/channel/nio/NioEventLoop;)V
    .locals 0

    invoke-direct {p0}, Lio/netty/channel/nio/NioEventLoop;->rebuildSelector0()V

    return-void
.end method

.method private closeAll()V
    .locals 5

    invoke-direct {p0}, Lio/netty/channel/nio/NioEventLoop;->selectAgain()V

    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lio/netty/channel/nio/AbstractNioChannel;

    if-eqz v4, :cond_0

    check-cast v3, Lio/netty/channel/nio/AbstractNioChannel;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    invoke-static {v3}, LA/g;->x(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-static {v3, v2, v3}, Lio/netty/channel/nio/NioEventLoop;->invokeChannelUnregistered(Lio/netty/channel/nio/NioTask;Ljava/nio/channels/SelectionKey;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/channel/nio/AbstractNioChannel;

    invoke-virtual {v1}, Lio/netty/channel/nio/AbstractNioChannel;->unsafe()Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;

    move-result-object v2

    invoke-virtual {v1}, Lio/netty/channel/nio/AbstractNioChannel;->unsafe()Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v1

    invoke-interface {v2, v1}, Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;->close(Lio/netty/channel/ChannelPromise;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static handleLoopException(Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "Unexpected exception in the selector loop."

    invoke-interface {v0, v1, p0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static invokeChannelUnregistered(Lio/netty/channel/nio/NioTask;Ljava/nio/channels/SelectionKey;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/nio/NioTask<",
            "Ljava/nio/channels/SelectableChannel;",
            ">;",
            "Ljava/nio/channels/SelectionKey;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lio/netty/channel/nio/NioTask;->channelUnregistered(Ljava/nio/channels/SelectableChannel;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string p2, "Unexpected exception while running NioTask.channelUnregistered()"

    invoke-interface {p1, p2, p0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static newTaskQueue(Lio/netty/channel/EventLoopTaskQueueFactory;)Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/EventLoopTaskQueueFactory;",
            ")",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 2
    if-nez p0, :cond_0

    sget p0, Lio/netty/channel/SingleThreadEventLoop;->DEFAULT_MAX_PENDING_TASKS:I

    invoke-static {p0}, Lio/netty/channel/nio/NioEventLoop;->newTaskQueue0(I)Ljava/util/Queue;

    move-result-object p0

    return-object p0

    :cond_0
    sget v0, Lio/netty/channel/SingleThreadEventLoop;->DEFAULT_MAX_PENDING_TASKS:I

    invoke-interface {p0, v0}, Lio/netty/channel/EventLoopTaskQueueFactory;->newTaskQueue(I)Ljava/util/Queue;

    move-result-object p0

    return-object p0
.end method

.method private static newTaskQueue0(I)Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    const v0, 0x7fffffff

    if-ne p0, v0, :cond_0

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newMpscQueue()Ljava/util/Queue;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent;->newMpscQueue(I)Ljava/util/Queue;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private openSelector()Lio/netty/channel/nio/NioEventLoop$SelectorTuple;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->provider:Ljava/nio/channels/spi/SelectorProvider;

    invoke-virtual {v0}, Ljava/nio/channels/spi/SelectorProvider;->openSelector()Ljava/nio/channels/spi/AbstractSelector;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    sget-boolean v1, Lio/netty/channel/nio/NioEventLoop;->DISABLE_KEY_SET_OPTIMIZATION:Z

    if-eqz v1, :cond_0

    new-instance v1, Lio/netty/channel/nio/NioEventLoop$SelectorTuple;

    invoke-direct {v1, v0}, Lio/netty/channel/nio/NioEventLoop$SelectorTuple;-><init>(Ljava/nio/channels/Selector;)V

    return-object v1

    :cond_0
    new-instance v1, Lio/netty/channel/nio/NioEventLoop$3;

    invoke-direct {v1, p0}, Lio/netty/channel/nio/NioEventLoop$3;-><init>(Lio/netty/channel/nio/NioEventLoop;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Class;

    const-string v3, "failed to instrument a special java.util.Set into: {}"

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lio/netty/channel/nio/SelectedSelectionKeySet;

    invoke-direct {v1}, Lio/netty/channel/nio/SelectedSelectionKeySet;-><init>()V

    new-instance v4, Lio/netty/channel/nio/NioEventLoop$4;

    invoke-direct {v4, p0, v2, v0, v1}, Lio/netty/channel/nio/NioEventLoop$4;-><init>(Lio/netty/channel/nio/NioEventLoop;Ljava/lang/Class;Ljava/nio/channels/Selector;Lio/netty/channel/nio/SelectedSelectionKeySet;)V

    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Ljava/lang/Exception;

    if-eqz v4, :cond_2

    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/channel/nio/NioEventLoop;->selectedKeys:Lio/netty/channel/nio/SelectedSelectionKeySet;

    check-cast v2, Ljava/lang/Exception;

    sget-object v1, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v1, v3, v0, v2}, Lio/netty/util/internal/logging/InternalLogger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lio/netty/channel/nio/NioEventLoop$SelectorTuple;

    invoke-direct {v1, v0}, Lio/netty/channel/nio/NioEventLoop$SelectorTuple;-><init>(Ljava/nio/channels/Selector;)V

    return-object v1

    :cond_2
    iput-object v1, p0, Lio/netty/channel/nio/NioEventLoop;->selectedKeys:Lio/netty/channel/nio/SelectedSelectionKeySet;

    sget-object v2, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "instrumented a special java.util.Set into: {}"

    invoke-interface {v2, v3, v0}, Lio/netty/util/internal/logging/InternalLogger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Lio/netty/channel/nio/NioEventLoop$SelectorTuple;

    new-instance v3, Lio/netty/channel/nio/SelectedSelectionKeySetSelector;

    invoke-direct {v3, v0, v1}, Lio/netty/channel/nio/SelectedSelectionKeySetSelector;-><init>(Ljava/nio/channels/Selector;Lio/netty/channel/nio/SelectedSelectionKeySet;)V

    invoke-direct {v2, v0, v3}, Lio/netty/channel/nio/NioEventLoop$SelectorTuple;-><init>(Ljava/nio/channels/Selector;Ljava/nio/channels/Selector;)V

    return-object v2

    :cond_3
    :goto_0
    instance-of v2, v1, Ljava/lang/Throwable;

    if-eqz v2, :cond_4

    check-cast v1, Ljava/lang/Throwable;

    sget-object v2, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v2, v3, v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    new-instance v1, Lio/netty/channel/nio/NioEventLoop$SelectorTuple;

    invoke-direct {v1, v0}, Lio/netty/channel/nio/NioEventLoop$SelectorTuple;-><init>(Ljava/nio/channels/Selector;)V

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lio/netty/channel/ChannelException;

    const-string v2, "failed to open a new selector"

    invoke-direct {v1, v2, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private processSelectedKey(Ljava/nio/channels/SelectionKey;Lio/netty/channel/nio/AbstractNioChannel;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lio/netty/channel/nio/AbstractNioChannel;->unsafe()Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    invoke-virtual {p2}, Lio/netty/channel/nio/AbstractNioChannel;->eventLoop()Lio/netty/channel/nio/NioEventLoop;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p0, :cond_0

    invoke-interface {v0}, Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;->close(Lio/netty/channel/ChannelPromise;)V

    :catchall_0
    :cond_0
    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v1

    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v2

    and-int/lit8 v2, v2, -0x9

    invoke-virtual {p1, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    invoke-interface {v0}, Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;->finishConnect()V

    :cond_2
    and-int/lit8 p1, v1, 0x4

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lio/netty/channel/nio/AbstractNioChannel;->unsafe()Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;

    move-result-object p1

    invoke-interface {p1}, Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;->forceFlush()V

    :cond_3
    and-int/lit8 p1, v1, 0x11

    if-nez p1, :cond_4

    if-nez v1, :cond_5

    :cond_4
    invoke-interface {v0}, Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;->read()V
    :try_end_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    invoke-interface {v0}, Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;->close(Lio/netty/channel/ChannelPromise;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private static processSelectedKey(Ljava/nio/channels/SelectionKey;Lio/netty/channel/nio/NioTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/SelectionKey;",
            "Lio/netty/channel/nio/NioTask<",
            "Ljava/nio/channels/SelectableChannel;",
            ">;)V"
        }
    .end annotation

    .line 2
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    invoke-interface {p1, v1, p0}, Lio/netty/channel/nio/NioTask;->channelReady(Ljava/nio/channels/SelectableChannel;Ljava/nio/channels/SelectionKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1, p0, v0}, Lio/netty/channel/nio/NioEventLoop;->invokeChannelUnregistered(Lio/netty/channel/nio/NioTask;Ljava/nio/channels/SelectionKey;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->cancel()V

    invoke-static {p1, p0, v1}, Lio/netty/channel/nio/NioEventLoop;->invokeChannelUnregistered(Lio/netty/channel/nio/NioTask;Ljava/nio/channels/SelectionKey;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    return-void

    :goto_1
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->cancel()V

    invoke-static {p1, p0, v0}, Lio/netty/channel/nio/NioEventLoop;->invokeChannelUnregistered(Lio/netty/channel/nio/NioTask;Ljava/nio/channels/SelectionKey;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private processSelectedKeys()V
    .locals 1

    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->selectedKeys:Lio/netty/channel/nio/SelectedSelectionKeySet;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/netty/channel/nio/NioEventLoop;->processSelectedKeysOptimized()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/channel/nio/NioEventLoop;->processSelectedKeysPlain(Ljava/util/Set;)V

    :goto_0
    return-void
.end method

.method private processSelectedKeysOptimized()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lio/netty/channel/nio/NioEventLoop;->selectedKeys:Lio/netty/channel/nio/SelectedSelectionKeySet;

    iget v2, v1, Lio/netty/channel/nio/SelectedSelectionKeySet;->size:I

    if-ge v0, v2, :cond_2

    iget-object v1, v1, Lio/netty/channel/nio/SelectedSelectionKeySet;->keys:[Ljava/nio/channels/SelectionKey;

    aget-object v2, v1, v0

    const/4 v3, 0x0

    aput-object v3, v1, v0

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Lio/netty/channel/nio/AbstractNioChannel;

    if-eqz v4, :cond_0

    check-cast v1, Lio/netty/channel/nio/AbstractNioChannel;

    invoke-direct {p0, v2, v1}, Lio/netty/channel/nio/NioEventLoop;->processSelectedKey(Ljava/nio/channels/SelectionKey;Lio/netty/channel/nio/AbstractNioChannel;)V

    goto :goto_1

    :cond_0
    invoke-static {v1}, LA/g;->x(Ljava/lang/Object;)V

    invoke-static {v2, v3}, Lio/netty/channel/nio/NioEventLoop;->processSelectedKey(Ljava/nio/channels/SelectionKey;Lio/netty/channel/nio/NioTask;)V

    :goto_1
    iget-boolean v1, p0, Lio/netty/channel/nio/NioEventLoop;->needsToSelectAgain:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/netty/channel/nio/NioEventLoop;->selectedKeys:Lio/netty/channel/nio/SelectedSelectionKeySet;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lio/netty/channel/nio/SelectedSelectionKeySet;->reset(I)V

    invoke-direct {p0}, Lio/netty/channel/nio/NioEventLoop;->selectAgain()V

    const/4 v0, -0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private processSelectedKeysPlain(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/nio/channels/SelectionKey;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    instance-of v2, v1, Lio/netty/channel/nio/AbstractNioChannel;

    if-eqz v2, :cond_2

    check-cast v1, Lio/netty/channel/nio/AbstractNioChannel;

    invoke-direct {p0, v0, v1}, Lio/netty/channel/nio/NioEventLoop;->processSelectedKey(Ljava/nio/channels/SelectionKey;Lio/netty/channel/nio/AbstractNioChannel;)V

    goto :goto_0

    :cond_2
    invoke-static {v1}, LA/g;->x(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/netty/channel/nio/NioEventLoop;->processSelectedKey(Ljava/nio/channels/SelectionKey;Lio/netty/channel/nio/NioTask;)V

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lio/netty/channel/nio/NioEventLoop;->needsToSelectAgain:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lio/netty/channel/nio/NioEventLoop;->selectAgain()V

    iget-object p1, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    return-void
.end method

.method private rebuildSelector0()V
    .locals 9

    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lio/netty/channel/nio/NioEventLoop;->openSelector()Lio/netty/channel/nio/NioEventLoop$SelectorTuple;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/channels/SelectionKey;

    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v5

    :try_start_1
    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v6

    iget-object v7, v1, Lio/netty/channel/nio/NioEventLoop$SelectorTuple;->unwrappedSelector:Ljava/nio/channels/Selector;

    invoke-virtual {v6, v7}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v6

    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->cancel()V

    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v7

    iget-object v8, v1, Lio/netty/channel/nio/NioEventLoop$SelectorTuple;->unwrappedSelector:Ljava/nio/channels/Selector;

    invoke-virtual {v7, v8, v6, v5}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v6

    instance-of v7, v5, Lio/netty/channel/nio/AbstractNioChannel;

    if-eqz v7, :cond_3

    move-object v7, v5

    check-cast v7, Lio/netty/channel/nio/AbstractNioChannel;

    iput-object v6, v7, Lio/netty/channel/nio/AbstractNioChannel;->selectionKey:Ljava/nio/channels/SelectionKey;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :goto_2
    sget-object v7, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v8, "Failed to re-register a Channel to the new Selector."

    invoke-interface {v7, v8, v6}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    instance-of v7, v5, Lio/netty/channel/nio/AbstractNioChannel;

    if-eqz v7, :cond_4

    check-cast v5, Lio/netty/channel/nio/AbstractNioChannel;

    invoke-virtual {v5}, Lio/netty/channel/nio/AbstractNioChannel;->unsafe()Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;

    move-result-object v4

    invoke-virtual {v5}, Lio/netty/channel/nio/AbstractNioChannel;->unsafe()Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;

    move-result-object v5

    invoke-interface {v5}, Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v5

    invoke-interface {v4, v5}, Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;->close(Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    :cond_4
    invoke-static {v5}, LA/g;->x(Ljava/lang/Object;)V

    const/4 v5, 0x0

    invoke-static {v5, v4, v6}, Lio/netty/channel/nio/NioEventLoop;->invokeChannelUnregistered(Lio/netty/channel/nio/NioTask;Ljava/nio/channels/SelectionKey;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_5
    iget-object v2, v1, Lio/netty/channel/nio/NioEventLoop$SelectorTuple;->selector:Ljava/nio/channels/Selector;

    iput-object v2, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    iget-object v1, v1, Lio/netty/channel/nio/NioEventLoop$SelectorTuple;->unwrappedSelector:Ljava/nio/channels/Selector;

    iput-object v1, p0, Lio/netty/channel/nio/NioEventLoop;->unwrappedSelector:Ljava/nio/channels/Selector;

    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    sget-object v1, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v1}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Failed to close the old Selector."

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    sget-object v0, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Migrated "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " channel(s) to the new Selector."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->info(Ljava/lang/String;)V

    :cond_7
    return-void

    :catch_1
    move-exception v0

    sget-object v1, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Failed to create a new Selector."

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private register0(Ljava/nio/channels/SelectableChannel;ILio/netty/channel/nio/NioTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/SelectableChannel;",
            "I",
            "Lio/netty/channel/nio/NioTask<",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->unwrappedSelector:Ljava/nio/channels/Selector;

    invoke-virtual {p1, v0, p2, p3}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lio/netty/channel/EventLoopException;

    const-string p3, "failed to register a channel"

    invoke-direct {p2, p3, p1}, Lio/netty/channel/EventLoopException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private select(J)I
    .locals 3

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    iget-object p1, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->select()I

    move-result p1

    return p1

    :cond_0
    const-wide/32 v0, 0xf2eb8

    add-long/2addr p1, v0

    invoke-static {p1, p2}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->deadlineToDelayNanos(J)J

    move-result-wide p1

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    iget-object p1, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->selectNow()I

    move-result p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/Selector;->select(J)I

    move-result p1

    :goto_0
    return p1
.end method

.method private selectAgain()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/channel/nio/NioEventLoop;->needsToSelectAgain:Z

    :try_start_0
    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectNow()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Failed to update SelectionKeys."

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private unexpectedSelectorWakeup(I)Z
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-object p1, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {p1}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Selector.select() returned prematurely because Thread.currentThread().interrupt() was called. Use NioEventLoop.shutdownGracefully() to shutdown the NioEventLoop."

    invoke-interface {p1, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    :cond_0
    return v1

    :cond_1
    sget v0, Lio/netty/channel/nio/NioEventLoop;->SELECTOR_AUTO_REBUILD_THRESHOLD:I

    if-lez v0, :cond_2

    if-lt p1, v0, :cond_2

    sget-object v0, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v2, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    const-string v3, "Selector.select() returned prematurely {} times in a row; rebuilding Selector {}."

    invoke-interface {v0, v3, p1, v2}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lio/netty/channel/nio/NioEventLoop;->rebuildSelector()V

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public afterScheduledTaskSubmitted(J)Z
    .locals 3

    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->nextWakeupNanos:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public beforeScheduledTaskSubmitted(J)Z
    .locals 3

    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->nextWakeupNanos:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public cancel(Ljava/nio/channels/SelectionKey;)V
    .locals 2

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    iget p1, p0, Lio/netty/channel/nio/NioEventLoop;->cancelledKeys:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lio/netty/channel/nio/NioEventLoop;->cancelledKeys:I

    const/16 v1, 0x100

    if-lt p1, v1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lio/netty/channel/nio/NioEventLoop;->cancelledKeys:I

    iput-boolean v0, p0, Lio/netty/channel/nio/NioEventLoop;->needsToSelectAgain:Z

    :cond_0
    return-void
.end method

.method public cleanup()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Failed to close a selector."

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getIoRatio()I
    .locals 1

    iget v0, p0, Lio/netty/channel/nio/NioEventLoop;->ioRatio:I

    return v0
.end method

.method public newTaskQueue(I)Ljava/util/Queue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/netty/channel/nio/NioEventLoop;->newTaskQueue0(I)Ljava/util/Queue;

    move-result-object p1

    return-object p1
.end method

.method public rebuildSelector()V
    .locals 1

    invoke-virtual {p0}, Lio/netty/util/concurrent/AbstractEventExecutor;->inEventLoop()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lio/netty/channel/nio/NioEventLoop$6;

    invoke-direct {v0, p0}, Lio/netty/channel/nio/NioEventLoop$6;-><init>(Lio/netty/channel/nio/NioEventLoop;)V

    invoke-virtual {p0, v0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lio/netty/channel/nio/NioEventLoop;->rebuildSelector0()V

    return-void
.end method

.method public register(Ljava/nio/channels/SelectableChannel;ILio/netty/channel/nio/NioTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/SelectableChannel;",
            "I",
            "Lio/netty/channel/nio/NioTask<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "ch"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_3

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/nio/channels/SelectableChannel;->validOps()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    not-int v0, v0

    .line 13
    and-int/2addr v0, p2

    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    const-string v0, "task"

    .line 17
    .line 18
    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->isShutdown()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lio/netty/util/concurrent/AbstractEventExecutor;->inEventLoop()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lio/netty/channel/nio/NioEventLoop;->register0(Ljava/nio/channels/SelectableChannel;ILio/netty/channel/nio/NioTask;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    :try_start_0
    new-instance v0, Lio/netty/channel/nio/NioEventLoop$5;

    .line 38
    .line 39
    invoke-direct {v0, p0, p1, p2, p3}, Lio/netty/channel/nio/NioEventLoop$5;-><init>(Lio/netty/channel/nio/NioEventLoop;Ljava/nio/channels/SelectableChannel;ILio/netty/channel/nio/NioTask;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lio/netty/util/concurrent/AbstractEventExecutor;->submit(Ljava/lang/Runnable;)Lio/netty/util/concurrent/Future;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->sync()Lio/netty/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void

    .line 58
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    const-string p2, "event loop shut down"

    .line 61
    .line 62
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1

    .line 66
    :cond_2
    new-instance p3, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    const-string v0, "invalid interestOps: "

    .line 69
    .line 70
    const-string v1, "(validOps: "

    .line 71
    .line 72
    invoke-static {p2, v0, v1}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-virtual {p1}, Ljava/nio/channels/SelectableChannel;->validOps()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const/16 p1, 0x29

    .line 84
    .line 85
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p3

    .line 96
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 97
    .line 98
    const-string p2, "interestOps must be non-zero."

    .line 99
    .line 100
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p1
.end method

.method public registeredChannels()I
    .locals 2

    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget v1, p0, Lio/netty/channel/nio/NioEventLoop;->cancelledKeys:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public run()V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    :cond_0
    :goto_1
    :try_start_0
    iget-object v2, p0, Lio/netty/channel/nio/NioEventLoop;->selectStrategy:Lio/netty/channel/SelectStrategy;

    iget-object v3, p0, Lio/netty/channel/nio/NioEventLoop;->selectNowSupplier:Lio/netty/util/IntSupplier;

    invoke-virtual {p0}, Lio/netty/channel/SingleThreadEventLoop;->hasTasks()Z

    move-result v4

    invoke-interface {v2, v3, v4}, Lio/netty/channel/SelectStrategy;->calculateStrategy(Lio/netty/util/IntSupplier;Z)I

    move-result v2

    const/4 v3, -0x3

    if-eq v2, v3, :cond_1

    const/4 v3, -0x2

    if-eq v2, v3, :cond_0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {p0}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->nextScheduledTaskDeadlineNanos()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    const-wide v3, 0x7fffffffffffffffL

    :cond_2
    iget-object v7, p0, Lio/netty/channel/nio/NioEventLoop;->nextWakeupNanos:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    invoke-virtual {p0}, Lio/netty/channel/SingleThreadEventLoop;->hasTasks()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-direct {p0, v3, v4}, Lio/netty/channel/nio/NioEventLoop;->select(J)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    goto/16 :goto_9

    :cond_3
    :goto_2
    :try_start_2
    iget-object v3, p0, Lio/netty/channel/nio/NioEventLoop;->nextWakeupNanos:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :goto_3
    add-int/lit8 v3, v1, 0x1

    :try_start_3
    iput v0, p0, Lio/netty/channel/nio/NioEventLoop;->cancelledKeys:I

    iput-boolean v0, p0, Lio/netty/channel/nio/NioEventLoop;->needsToSelectAgain:Z

    iget v4, p0, Lio/netty/channel/nio/NioEventLoop;->ioRatio:I
    :try_end_3
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/16 v5, 0x64

    if-ne v4, v5, :cond_5

    if-lez v2, :cond_4

    :try_start_4
    invoke-direct {p0}, Lio/netty/channel/nio/NioEventLoop;->processSelectedKeys()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->runAllTasks()Z

    throw v1

    :catchall_2
    move-exception v1

    goto/16 :goto_b

    :catch_0
    move-exception v1

    goto/16 :goto_c

    :cond_4
    :goto_4
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->runAllTasks()Z

    move-result v4

    goto :goto_5

    :cond_5
    if-lez v2, :cond_6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5
    :try_end_5
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-direct {p0}, Lio/netty/channel/nio/NioEventLoop;->processSelectedKeys()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v5

    rsub-int/lit8 v5, v4, 0x64

    int-to-long v5, v5

    mul-long v7, v7, v5

    int-to-long v4, v4

    div-long/2addr v7, v4

    invoke-virtual {p0, v7, v8}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->runAllTasks(J)Z

    move-result v4

    goto :goto_5

    :catchall_3
    move-exception v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v5

    rsub-int/lit8 v2, v4, 0x64

    int-to-long v5, v2

    mul-long v7, v7, v5

    int-to-long v4, v4

    div-long/2addr v7, v4

    invoke-virtual {p0, v7, v8}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->runAllTasks(J)Z

    throw v1

    :cond_6
    const-wide/16 v4, 0x0

    invoke-virtual {p0, v4, v5}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->runAllTasks(J)Z

    move-result v4

    :goto_5
    if-nez v4, :cond_9

    if-lez v2, :cond_7

    goto :goto_7

    :cond_7
    invoke-direct {p0, v3}, Lio/netty/channel/nio/NioEventLoop;->unexpectedSelectorWakeup(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_8
    :goto_6
    const/4 v3, 0x0

    goto :goto_8

    :cond_9
    :goto_7
    const/4 v2, 0x3

    if-le v3, v2, :cond_8

    sget-object v2, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v2}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "Selector.select() returned prematurely {} times in a row for Selector {}."

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v5, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    invoke-interface {v2, v4, v1, v5}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_6

    :cond_a
    :goto_8
    move v1, v3

    goto :goto_d

    :catchall_4
    move-exception v2

    move v3, v1

    move-object v1, v2

    goto :goto_b

    :catch_1
    move-exception v2

    move v3, v1

    move-object v1, v2

    goto :goto_c

    :catch_2
    move-exception v2

    goto :goto_a

    :goto_9
    :try_start_8
    iget-object v3, p0, Lio/netty/channel/nio/NioEventLoop;->nextWakeupNanos:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    throw v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :goto_a
    :try_start_9
    invoke-direct {p0}, Lio/netty/channel/nio/NioEventLoop;->rebuildSelector0()V
    :try_end_9
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    invoke-static {v2}, Lio/netty/channel/nio/NioEventLoop;->handleLoopException(Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto/16 :goto_0

    :catchall_5
    move-exception v1

    const/4 v3, 0x0

    goto :goto_b

    :catch_3
    move-exception v1

    const/4 v3, 0x0

    goto :goto_c

    :goto_b
    invoke-static {v1}, Lio/netty/channel/nio/NioEventLoop;->handleLoopException(Ljava/lang/Throwable;)V

    goto :goto_8

    :goto_c
    sget-object v2, Lio/netty/channel/nio/NioEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v2}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "CancelledKeyException raised by a Selector {} - JDK bug?"

    iget-object v5, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    invoke-interface {v2, v4, v5, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :goto_d
    :try_start_b
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->isShuttingDown()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lio/netty/channel/nio/NioEventLoop;->closeAll()V

    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->confirmShutdown()Z

    move-result v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    if-eqz v2, :cond_0

    return-void

    :catchall_6
    move-exception v2

    invoke-static {v2}, Lio/netty/channel/nio/NioEventLoop;->handleLoopException(Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method public selectNow()I
    .locals 1

    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectNow()I

    move-result v0

    return v0
.end method

.method public selectorProvider()Ljava/nio/channels/spi/SelectorProvider;
    .locals 1

    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->provider:Ljava/nio/channels/spi/SelectorProvider;

    return-object v0
.end method

.method public setIoRatio(I)V
    .locals 3

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    const/16 v0, 0x64

    .line 4
    .line 5
    if-gt p1, v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lio/netty/channel/nio/NioEventLoop;->ioRatio:I

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v1, "ioRatio: "

    .line 13
    .line 14
    const-string v2, " (expected: 0 < ioRatio <= 100)"

    .line 15
    .line 16
    invoke-static {p1, v1, v2}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public unwrappedSelector()Ljava/nio/channels/Selector;
    .locals 1

    iget-object v0, p0, Lio/netty/channel/nio/NioEventLoop;->unwrappedSelector:Ljava/nio/channels/Selector;

    return-object v0
.end method

.method public wakeup(Z)V
    .locals 4

    if-nez p1, :cond_0

    iget-object p1, p0, Lio/netty/channel/nio/NioEventLoop;->nextWakeupNanos:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/netty/channel/nio/NioEventLoop;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    :cond_0
    return-void
.end method
