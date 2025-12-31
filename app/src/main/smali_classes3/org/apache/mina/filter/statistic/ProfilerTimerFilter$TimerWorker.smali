.class Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimerWorker"
.end annotation


# instance fields
.field private final callsNumber:Ljava/util/concurrent/atomic/AtomicLong;

.field private final lock:Ljava/lang/Object;

.field private final maximum:Ljava/util/concurrent/atomic/AtomicLong;

.field private final minimum:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic this$0:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;

.field private final total:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->this$0:Lorg/apache/mina/filter/statistic/ProfilerTimerFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->lock:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->total:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->callsNumber:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->minimum:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->maximum:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public addNewDuration(J)V
    .locals 4

    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->callsNumber:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->minimum:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v1

    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    iget-object v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->minimum:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->maximum:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v1

    cmp-long v3, p1, v1

    if-lez v3, :cond_1

    iget-object v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->maximum:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getAverage()D
    .locals 5

    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->callsNumber:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v3

    div-long/2addr v1, v3

    long-to-double v1, v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCallsNumber()J
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->callsNumber:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaximum()J
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->maximum:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinimum()J
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->minimum:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotal()J
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/filter/statistic/ProfilerTimerFilter$TimerWorker;->total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
