.class public Ludt/util/ReceiveBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final buffer:[Ludt/UDTInputStream$AppData;

.field private highestReadSequenceNumber:J

.field private final initialSequenceNumber:J

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final notEmpty:Ljava/util/concurrent/locks/Condition;

.field private final numValidChunks:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile readPosition:I

.field private final size:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ludt/util/ReceiveBuffer;->readPosition:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Ludt/util/ReceiveBuffer;->numValidChunks:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p1, p0, Ludt/util/ReceiveBuffer;->size:I

    new-array p1, p1, [Ludt/UDTInputStream$AppData;

    iput-object p1, p0, Ludt/util/ReceiveBuffer;->buffer:[Ludt/UDTInputStream$AppData;

    iput-wide p2, p0, Ludt/util/ReceiveBuffer;->initialSequenceNumber:J

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1, v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object p1, p0, Ludt/util/ReceiveBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Ludt/util/ReceiveBuffer;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-static {p2, p3}, Ludt/util/SequenceNumber;->decrement(J)J

    move-result-wide p1

    iput-wide p1, p0, Ludt/util/ReceiveBuffer;->highestReadSequenceNumber:J

    return-void
.end method


# virtual methods
.method public increment()V
    .locals 3

    iget-object v0, p0, Ludt/util/ReceiveBuffer;->buffer:[Ludt/UDTInputStream$AppData;

    iget v1, p0, Ludt/util/ReceiveBuffer;->readPosition:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget v0, p0, Ludt/util/ReceiveBuffer;->readPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ludt/util/ReceiveBuffer;->readPosition:I

    iget v0, p0, Ludt/util/ReceiveBuffer;->readPosition:I

    iget v1, p0, Ludt/util/ReceiveBuffer;->size:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Ludt/util/ReceiveBuffer;->readPosition:I

    :cond_0
    iget-object v0, p0, Ludt/util/ReceiveBuffer;->numValidChunks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Ludt/util/ReceiveBuffer;->numValidChunks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public offer(Ludt/UDTInputStream$AppData;)Z
    .locals 8

    iget-object v0, p0, Ludt/util/ReceiveBuffer;->numValidChunks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Ludt/util/ReceiveBuffer;->size:I

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Ludt/util/ReceiveBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {p1}, Ludt/UDTInputStream$AppData;->getSequenceNumber()J

    move-result-wide v0

    iget-wide v2, p0, Ludt/util/ReceiveBuffer;->highestReadSequenceNumber:J

    invoke-static {v0, v1, v2, v3}, Ludt/util/SequenceNumber;->compare(JJ)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    cmp-long v7, v2, v4

    if-gtz v7, :cond_1

    :goto_0
    iget-object p1, p0, Ludt/util/ReceiveBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v6

    :cond_1
    :try_start_1
    iget-wide v2, p0, Ludt/util/ReceiveBuffer;->initialSequenceNumber:J

    invoke-static {v2, v3, v0, v1}, Ludt/util/SequenceNumber;->seqOffset(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    iget v0, p0, Ludt/util/ReceiveBuffer;->size:I

    rem-int/2addr v1, v0

    iget-object v0, p0, Ludt/util/ReceiveBuffer;->buffer:[Ludt/UDTInputStream$AppData;

    aput-object p1, v0, v1

    iget-object p1, p0, Ludt/util/ReceiveBuffer;->numValidChunks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object p1, p0, Ludt/util/ReceiveBuffer;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Ludt/util/ReceiveBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public poll()Ludt/UDTInputStream$AppData;
    .locals 9

    .line 1
    iget-object v0, p0, Ludt/util/ReceiveBuffer;->numValidChunks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Ludt/util/ReceiveBuffer;->buffer:[Ludt/UDTInputStream$AppData;

    iget v2, p0, Ludt/util/ReceiveBuffer;->readPosition:I

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ludt/UDTInputStream$AppData;->getSequenceNumber()J

    move-result-wide v2

    iget-wide v4, p0, Ludt/util/ReceiveBuffer;->highestReadSequenceNumber:J

    invoke-static {v4, v5, v2, v3}, Ludt/util/SequenceNumber;->seqOffset(JJ)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v8, v6, v4

    if-nez v8, :cond_1

    invoke-virtual {p0}, Ludt/util/ReceiveBuffer;->increment()V

    iput-wide v2, p0, Ludt/util/ReceiveBuffer;->highestReadSequenceNumber:J

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public poll(ILjava/util/concurrent/TimeUnit;)Ludt/UDTInputStream$AppData;
    .locals 3

    .line 2
    iget-object v0, p0, Ludt/util/ReceiveBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    :goto_0
    :try_start_0
    iget-object v0, p0, Ludt/util/ReceiveBuffer;->numValidChunks:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ludt/util/ReceiveBuffer;->poll()Ludt/UDTInputStream$AppData;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Ludt/util/ReceiveBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    iget-object p1, p0, Ludt/util/ReceiveBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    :try_start_1
    iget-object v0, p0, Ludt/util/ReceiveBuffer;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    iget-object p2, p0, Ludt/util/ReceiveBuffer;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Condition;->signal()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    iget-object p2, p0, Ludt/util/ReceiveBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method
