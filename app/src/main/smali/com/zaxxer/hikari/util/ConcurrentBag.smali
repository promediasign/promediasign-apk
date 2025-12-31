.class public abstract Lcom/zaxxer/hikari/util/ConcurrentBag;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/zaxxer/hikari/util/IConcurrentBagEntry;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private volatile closed:Z

.field private final listener:Lcom/zaxxer/hikari/util/IBagStateListener;

.field protected final sequence:Ljava/util/concurrent/atomic/AtomicLong;

.field protected final sharedList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final synchronizer:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

.field private final threadList:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/zaxxer/hikari/util/IConcurrentBagEntry;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/zaxxer/hikari/util/ConcurrentBag;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/zaxxer/hikari/util/ConcurrentBag;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/zaxxer/hikari/util/IBagStateListener;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/zaxxer/hikari/util/ConcurrentBag;->sharedList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Lcom/zaxxer/hikari/util/ConcurrentBag;->createQueuedSynchronizer()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    move-result-object v0

    iput-object v0, p0, Lcom/zaxxer/hikari/util/ConcurrentBag;->synchronizer:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/zaxxer/hikari/util/ConcurrentBag;->sequence:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, Lcom/zaxxer/hikari/util/ConcurrentBag;->listener:Lcom/zaxxer/hikari/util/IBagStateListener;

    new-instance p1, Ljava/lang/ThreadLocal;

    invoke-direct {p1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object p1, p0, Lcom/zaxxer/hikari/util/ConcurrentBag;->threadList:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method public add(Lcom/zaxxer/hikari/util/IConcurrentBagEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/zaxxer/hikari/util/ConcurrentBag;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zaxxer/hikari/util/ConcurrentBag;->sharedList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/zaxxer/hikari/util/ConcurrentBag;->synchronizer:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    iget-object v0, p0, Lcom/zaxxer/hikari/util/ConcurrentBag;->sequence:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->releaseShared(J)Z

    return-void

    :cond_0
    sget-object p1, Lcom/zaxxer/hikari/util/ConcurrentBag;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "ConcurrentBag has been closed, ignoring add()"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public borrow(JLjava/util/concurrent/TimeUnit;)Lcom/zaxxer/hikari/util/IConcurrentBagEntry;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zaxxer/hikari/util/ConcurrentBag;->synchronizer:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->hasQueuedThreads()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zaxxer/hikari/util/ConcurrentBag;->threadList:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zaxxer/hikari/util/ConcurrentBag;->threadList:Ljava/lang/ThreadLocal;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_0
    if-ltz v3, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zaxxer/hikari/util/IConcurrentBagEntry;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/zaxxer/hikari/util/IConcurrentBagEntry;->state()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    const/4 p3, 0x0

    move-wide v5, p1

    move-object v0, p3

    :cond_3
    iget-object v7, p0, Lcom/zaxxer/hikari/util/ConcurrentBag;->sequence:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    iget-object v9, p0, Lcom/zaxxer/hikari/util/ConcurrentBag;->sharedList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/zaxxer/hikari/util/IConcurrentBagEntry;

    invoke-interface {v10}, Lcom/zaxxer/hikari/util/IConcurrentBagEntry;->state()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    invoke-virtual {v11, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v11

    if-eqz v11, :cond_4

    return-object v10

    :cond_5
    iget-object v9, p0, Lcom/zaxxer/hikari/util/ConcurrentBag;->sequence:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-ltz v11, :cond_3

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/zaxxer/hikari/util/ConcurrentBag;->listener:Lcom/zaxxer/hikari/util/IBagStateListener;

    invoke-interface {v0}, Lcom/zaxxer/hikari/util/IBagStateListener;->addBagItem()Ljava/util/concurrent/Future;

    move-result-object v0

    :cond_7
    iget-object v9, p0, Lcom/zaxxer/hikari/util/ConcurrentBag;->synchronizer:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v9, v7, v8, v5, v6}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->tryAcquireSharedNanos(JJ)Z

    move-result v5

    if-nez v5, :cond_8

    return-object p3

    :cond_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/16 v7, 0x64

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    sub-long v5, p1, v5

    const-wide/16 v7, 0x3e8

    cmp-long v9, v5, v7

    if-gtz v9, :cond_3

    return-object p3
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zaxxer/hikari/util/ConcurrentBag;->closed:Z

    return-void
.end method

.method public abstract createQueuedSynchronizer()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;
.end method

.method public abstract getCount(I)I
.end method

.method public getPendingQueue()I
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/util/ConcurrentBag;->synchronizer:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->getQueueLength()I

    move-result v0

    return v0
.end method

.method public remove(Lcom/zaxxer/hikari/util/IConcurrentBagEntry;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-interface {p1}, Lcom/zaxxer/hikari/util/IConcurrentBagEntry;->state()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/zaxxer/hikari/util/IConcurrentBagEntry;->state()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/zaxxer/hikari/util/ConcurrentBag;->closed:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/zaxxer/hikari/util/ConcurrentBag;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Attempt to remove an object from the bag that was not borrowed or reserved: {}"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/zaxxer/hikari/util/ConcurrentBag;->sharedList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/zaxxer/hikari/util/ConcurrentBag;->closed:Z

    if-nez v1, :cond_1

    sget-object v1, Lcom/zaxxer/hikari/util/ConcurrentBag;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "Attempt to remove an object from the bag that does not exist: {}"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return v0
.end method

.method public requite(Lcom/zaxxer/hikari/util/IConcurrentBagEntry;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/zaxxer/hikari/util/IConcurrentBagEntry;->state()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zaxxer/hikari/util/ConcurrentBag;->threadList:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, Lcom/zaxxer/hikari/util/ConcurrentBag;->synchronizer:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    iget-object v0, p0, Lcom/zaxxer/hikari/util/ConcurrentBag;->sequence:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->releaseShared(J)Z

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/zaxxer/hikari/util/ConcurrentBag;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Attempt to remove an object from the bag that does not exist: {}"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public reserve(Lcom/zaxxer/hikari/util/IConcurrentBagEntry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-interface {p1}, Lcom/zaxxer/hikari/util/IConcurrentBagEntry;->state()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, -0x2

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/util/ConcurrentBag;->sharedList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public unreserve(Lcom/zaxxer/hikari/util/IConcurrentBagEntry;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zaxxer/hikari/util/ConcurrentBag;->sequence:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/zaxxer/hikari/util/IConcurrentBagEntry;->state()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/zaxxer/hikari/util/ConcurrentBag;->synchronizer:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->releaseShared(J)Z

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/zaxxer/hikari/util/ConcurrentBag;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Attempt to relinquish an object to the bag that was not reserved: {}"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public abstract values(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method
