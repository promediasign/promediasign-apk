.class public Lorg/apache/mina/core/service/IoServiceStatistics;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private largestReadBytesThroughput:D

.field private largestReadMessagesThroughput:D

.field private largestWrittenBytesThroughput:D

.field private largestWrittenMessagesThroughput:D

.field private lastReadBytes:J

.field private lastReadMessages:J

.field private lastReadTime:J

.field private lastThroughputCalculationTime:J

.field private lastWriteTime:J

.field private lastWrittenBytes:J

.field private lastWrittenMessages:J

.field private final readBytes:Ljava/util/concurrent/atomic/AtomicLong;

.field private readBytesThroughput:D

.field private final readMessages:Ljava/util/concurrent/atomic/AtomicLong;

.field private readMessagesThroughput:D

.field private final scheduledWriteBytes:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final scheduledWriteMessages:Ljava/util/concurrent/atomic/AtomicInteger;

.field private service:Lorg/apache/mina/core/service/AbstractIoService;

.field private throughputCalculationInterval:I

.field private final throughputCalculationLock:Ljava/lang/Object;

.field private final writtenBytes:Ljava/util/concurrent/atomic/AtomicLong;

.field private writtenBytesThroughput:D

.field private final writtenMessages:Ljava/util/concurrent/atomic/AtomicLong;

.field private writtenMessagesThroughput:D


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/service/AbstractIoService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readBytes:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readMessages:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenMessages:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->scheduledWriteBytes:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->scheduledWriteMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationInterval:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->service:Lorg/apache/mina/core/service/AbstractIoService;

    return-void
.end method

.method private resetThroughput()V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->service:Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoService;->getManagedSessionCount()I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readBytesThroughput:D

    iput-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenBytesThroughput:D

    iput-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readMessagesThroughput:D

    iput-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenMessagesThroughput:D

    :cond_0
    return-void
.end method


# virtual methods
.method public final decreaseScheduledWriteMessages()V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->scheduledWriteMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method public final getCumulativeManagedSessionCount()J
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->service:Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoService;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->getCumulativeManagedSessionCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLargestManagedSessionCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->service:Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoService;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->getLargestManagedSessionCount()I

    move-result v0

    return v0
.end method

.method public final getLargestReadBytesThroughput()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->largestReadBytesThroughput:D

    return-wide v0
.end method

.method public final getLargestReadMessagesThroughput()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->largestReadMessagesThroughput:D

    return-wide v0
.end method

.method public final getLargestWrittenBytesThroughput()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->largestWrittenBytesThroughput:D

    return-wide v0
.end method

.method public final getLargestWrittenMessagesThroughput()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->largestWrittenMessagesThroughput:D

    return-wide v0
.end method

.method public final getLastIoTime()J
    .locals 4

    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastReadTime:J

    iget-wide v2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastWriteTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLastReadTime()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastReadTime:J

    return-wide v0
.end method

.method public final getLastWriteTime()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastWriteTime:J

    return-wide v0
.end method

.method public final getReadBytes()J
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getReadBytesThroughput()D
    .locals 2

    invoke-direct {p0}, Lorg/apache/mina/core/service/IoServiceStatistics;->resetThroughput()V

    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readBytesThroughput:D

    return-wide v0
.end method

.method public final getReadMessages()J
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readMessages:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getReadMessagesThroughput()D
    .locals 2

    invoke-direct {p0}, Lorg/apache/mina/core/service/IoServiceStatistics;->resetThroughput()V

    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readMessagesThroughput:D

    return-wide v0
.end method

.method public final getScheduledWriteBytes()I
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->scheduledWriteBytes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final getScheduledWriteMessages()I
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->scheduledWriteMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final getThroughputCalculationInterval()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationInterval:I

    return v0
.end method

.method public final getThroughputCalculationIntervalInMillis()J
    .locals 4

    iget v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationInterval:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public final getWrittenBytes()J
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getWrittenBytesThroughput()D
    .locals 2

    invoke-direct {p0}, Lorg/apache/mina/core/service/IoServiceStatistics;->resetThroughput()V

    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenBytesThroughput:D

    return-wide v0
.end method

.method public final getWrittenMessages()J
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenMessages:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getWrittenMessagesThroughput()D
    .locals 2

    invoke-direct {p0}, Lorg/apache/mina/core/service/IoServiceStatistics;->resetThroughput()V

    iget-wide v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenMessagesThroughput:D

    return-wide v0
.end method

.method public final increaseReadBytes(JJ)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    iput-wide p3, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastReadTime:J

    return-void
.end method

.method public final increaseReadMessages(J)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->readMessages:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    iput-wide p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastReadTime:J

    return-void
.end method

.method public final increaseScheduledWriteBytes(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->scheduledWriteBytes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    return-void
.end method

.method public final increaseScheduledWriteMessages()V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->scheduledWriteMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public final increaseWrittenBytes(IJ)V
    .locals 3

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    iput-wide p2, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastWriteTime:J

    return-void
.end method

.method public final increaseWrittenMessages(J)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenMessages:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    iput-wide p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastWriteTime:J

    return-void
.end method

.method public final setLastReadTime(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastReadTime:J

    return-void
.end method

.method public setLastThroughputCalculationTime(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastThroughputCalculationTime:J

    return-void
.end method

.method public final setLastWriteTime(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->lastWriteTime:J

    return-void
.end method

.method public final setThroughputCalculationInterval(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationInterval:I

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    const-string v1, "throughputCalculationInterval: "

    .line 9
    .line 10
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public updateThroughput(J)V
    .locals 23

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    iget-object v4, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->throughputCalculationLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-wide v5, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->lastThroughputCalculationTime:J

    sub-long v5, v2, v5

    long-to-int v0, v5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/core/service/IoServiceStatistics;->getThroughputCalculationIntervalInMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_5

    int-to-long v7, v0

    cmp-long v9, v7, v5

    if-gez v9, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v5, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->readBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    iget-object v7, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenBytes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    iget-object v9, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->readMessages:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    iget-object v11, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenMessages:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v11

    iget-wide v13, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->lastReadBytes:J

    sub-long v13, v5, v13

    long-to-double v13, v13

    const-wide v15, 0x408f400000000000L    # 1000.0

    mul-double v13, v13, v15

    int-to-double v2, v0

    div-double/2addr v13, v2

    iput-wide v13, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->readBytesThroughput:D

    move-wide/from16 v17, v5

    iget-wide v5, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->lastWrittenBytes:J

    sub-long v5, v7, v5

    long-to-double v5, v5

    mul-double v5, v5, v15

    div-double/2addr v5, v2

    iput-wide v5, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenBytesThroughput:D

    move-wide/from16 v19, v7

    iget-wide v7, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->lastReadMessages:J

    sub-long v7, v9, v7

    long-to-double v7, v7

    mul-double v7, v7, v15

    div-double/2addr v7, v2

    iput-wide v7, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->readMessagesThroughput:D

    move-wide/from16 v21, v9

    iget-wide v9, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->lastWrittenMessages:J

    sub-long v9, v11, v9

    long-to-double v9, v9

    mul-double v9, v9, v15

    div-double/2addr v9, v2

    iput-wide v9, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->writtenMessagesThroughput:D

    iget-wide v2, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->largestReadBytesThroughput:D

    cmpl-double v0, v13, v2

    if-lez v0, :cond_1

    iput-wide v13, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->largestReadBytesThroughput:D

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    iget-wide v2, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->largestWrittenBytesThroughput:D

    cmpl-double v0, v5, v2

    if-lez v0, :cond_2

    iput-wide v5, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->largestWrittenBytesThroughput:D

    :cond_2
    iget-wide v2, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->largestReadMessagesThroughput:D

    cmpl-double v0, v7, v2

    if-lez v0, :cond_3

    iput-wide v7, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->largestReadMessagesThroughput:D

    :cond_3
    iget-wide v2, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->largestWrittenMessagesThroughput:D

    cmpl-double v0, v9, v2

    if-lez v0, :cond_4

    iput-wide v9, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->largestWrittenMessagesThroughput:D

    :cond_4
    move-wide/from16 v2, v17

    iput-wide v2, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->lastReadBytes:J

    move-wide/from16 v2, v19

    iput-wide v2, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->lastWrittenBytes:J

    move-wide/from16 v2, v21

    iput-wide v2, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->lastReadMessages:J

    iput-wide v11, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->lastWrittenMessages:J

    move-wide/from16 v2, p1

    iput-wide v2, v1, Lorg/apache/mina/core/service/IoServiceStatistics;->lastThroughputCalculationTime:J

    monitor-exit v4

    return-void

    :cond_5
    :goto_1
    monitor-exit v4

    return-void

    :goto_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
