.class public abstract Lio/reactivex/internal/schedulers/SchedulerPoolFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/schedulers/SchedulerPoolFactory$ScheduledTask;,
        Lio/reactivex/internal/schedulers/SchedulerPoolFactory$SystemPropertyAccessor;
    }
.end annotation


# static fields
.field static final POOLS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/concurrent/ScheduledThreadPoolExecutor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final PURGE_ENABLED:Z

.field public static final PURGE_PERIOD_SECONDS:I

.field static final PURGE_THREAD:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->PURGE_THREAD:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->POOLS:Ljava/util/Map;

    new-instance v0, Lio/reactivex/internal/schedulers/SchedulerPoolFactory$SystemPropertyAccessor;

    invoke-direct {v0}, Lio/reactivex/internal/schedulers/SchedulerPoolFactory$SystemPropertyAccessor;-><init>()V

    const-string v1, "rx2.purge-enabled"

    const/4 v2, 0x1

    invoke-static {v2, v1, v2, v2, v0}, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->getBooleanProperty(ZLjava/lang/String;ZZLio/reactivex/functions/Function;)Z

    move-result v1

    sput-boolean v1, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->PURGE_ENABLED:Z

    const-string v3, "rx2.purge-period-seconds"

    invoke-static {v1, v3, v2, v2, v0}, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->getIntProperty(ZLjava/lang/String;IILio/reactivex/functions/Function;)I

    move-result v0

    sput v0, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->PURGE_PERIOD_SECONDS:I

    invoke-static {}, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->start()V

    return-void
.end method

.method public static create(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    sget-boolean v0, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->PURGE_ENABLED:Z

    invoke-static {v0, p0}, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->tryPutIntoPool(ZLjava/util/concurrent/ScheduledExecutorService;)V

    return-object p0
.end method

.method public static getBooleanProperty(ZLjava/lang/String;ZZLio/reactivex/functions/Function;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "ZZ",
            "Lio/reactivex/functions/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    :try_start_0
    invoke-interface {p4, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    return p2

    :cond_0
    const-string p1, "true"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    return p2

    :cond_1
    return p3
.end method

.method public static getIntProperty(ZLjava/lang/String;IILio/reactivex/functions/Function;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "II",
            "Lio/reactivex/functions/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    if-eqz p0, :cond_1

    :try_start_0
    invoke-interface {p4, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    return p2

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    return p2

    :cond_1
    return p3
.end method

.method public static start()V
    .locals 1

    sget-boolean v0, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->PURGE_ENABLED:Z

    invoke-static {v0}, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->tryStart(Z)V

    return-void
.end method

.method public static tryPutIntoPool(ZLjava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    if-eqz p0, :cond_0

    instance-of p0, p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz p0, :cond_0

    move-object p0, p1

    check-cast p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v0, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->POOLS:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static tryStart(Z)V
    .locals 10

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    :goto_0
    sget-object p0, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->PURGE_THREAD:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v1, Lio/reactivex/internal/schedulers/RxThreadFactory;

    .line 15
    .line 16
    const-string v2, "RxSchedulerPurge"

    .line 17
    .line 18
    invoke-direct {v1, v2}, Lio/reactivex/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-static {v2, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    :cond_1
    invoke-virtual {p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    new-instance v4, Lio/reactivex/internal/schedulers/SchedulerPoolFactory$ScheduledTask;

    .line 33
    .line 34
    invoke-direct {v4}, Lio/reactivex/internal/schedulers/SchedulerPoolFactory$ScheduledTask;-><init>()V

    .line 35
    .line 36
    .line 37
    sget p0, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->PURGE_PERIOD_SECONDS:I

    .line 38
    .line 39
    int-to-long v5, p0

    .line 40
    int-to-long v7, p0

    .line 41
    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 42
    .line 43
    invoke-interface/range {v3 .. v9}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eq v1, v0, :cond_1

    .line 52
    .line 53
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    return-void
.end method
