.class public final Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/io/Serializable;
.implements Lj$/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder;,
        Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$SerializationProxy;,
        Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$AbstractTask;,
        Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;,
        Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DiscardingListener;,
        Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DiscardingQueue;,
        Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$BoundedEntryWeigher;,
        Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WriteThroughEntry;,
        Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$EntryIterator;,
        Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$EntrySet;,
        Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$ValueIterator;,
        Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Values;,
        Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$KeyIterator;,
        Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$KeySet;,
        Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;,
        Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;,
        Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DrainStatus;,
        Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$UpdateTask;,
        Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$RemovalTask;,
        Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$AddTask;,
        Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$ReadTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;",
        "Lj$/util/concurrent/ConcurrentMap;"
    }
.end annotation


# static fields
.field static final AMORTIZED_DRAIN_THRESHOLD:I

.field static final BUFFER_MASK:I

.field static final DISCARDING_QUEUE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "*>;"
        }
    .end annotation
.end field

.field static final NUMBER_OF_BUFFERS:I

.field static final serialVersionUID:J = 0x1L


# instance fields
.field final bufferLengths:Ljava/util/concurrent/atomic/AtomicIntegerArray;

.field final buffers:[Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Queue<",
            "Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;",
            ">;"
        }
    .end annotation
.end field

.field volatile capacity:J

.field final concurrencyLevel:I

.field final data:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;",
            "Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap<",
            "TK;TV;>.Node;>;"
        }
    .end annotation
.end field

.field final drainStatus:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DrainStatus;",
            ">;"
        }
    .end annotation
.end field

.field drainedOrder:I

.field transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final evictionDeque:Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque<",
            "Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap<",
            "TK;TV;>.Node;>;"
        }
    .end annotation
.end field

.field final evictionLock:Ljava/util/concurrent/locks/Lock;

.field transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field final listener:Lcom/googlecode/concurrentlinkedhashmap/EvictionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/googlecode/concurrentlinkedhashmap/EvictionListener<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field volatile nextOrder:I

.field final pendingNotifications:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap<",
            "TK;TV;>.Node;>;"
        }
    .end annotation
.end field

.field final tasks:[Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;

.field transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field

.field final weigher:Lcom/googlecode/concurrentlinkedhashmap/EntryWeigher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/googlecode/concurrentlinkedhashmap/EntryWeigher<",
            "-TK;-TV;>;"
        }
    .end annotation
.end field

.field final weightedSize:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DiscardingQueue;

    invoke-direct {v0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DiscardingQueue;-><init>()V

    sput-object v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->DISCARDING_QUEUE:Ljava/util/Queue;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {v0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->ceilingNextPowerOfTwo(I)I

    move-result v0

    sput v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->NUMBER_OF_BUFFERS:I

    add-int/lit8 v1, v0, 0x1

    mul-int/lit8 v1, v1, 0x10

    sput v1, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->AMORTIZED_DRAIN_THRESHOLD:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->BUFFER_MASK:I

    return-void
.end method

.method private constructor <init>(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iget v0, p1, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder;->concurrencyLevel:I

    iput v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->concurrencyLevel:I

    iget-wide v1, p1, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder;->capacity:J

    const-wide v3, 0x7fffffff80000000L

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->capacity:J

    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    iget v2, p1, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder;->initialCapacity:I

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v1, v2, v3, v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->data:Ljava/util/concurrent/ConcurrentMap;

    iget-object v0, p1, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder;->weigher:Lcom/googlecode/concurrentlinkedhashmap/EntryWeigher;

    iput-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->weigher:Lcom/googlecode/concurrentlinkedhashmap/EntryWeigher;

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->nextOrder:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->weightedSize:Ljava/util/concurrent/atomic/AtomicLong;

    iput v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->drainedOrder:I

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->evictionLock:Ljava/util/concurrent/locks/Lock;

    new-instance v0, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;

    invoke-direct {v0}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;-><init>()V

    iput-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->evictionDeque:Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DrainStatus;->IDLE:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DrainStatus;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->drainStatus:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    sget v1, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->NUMBER_OF_BUFFERS:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>(I)V

    iput-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->bufferLengths:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    new-array v0, v1, [Ljava/util/Queue;

    check-cast v0, [Ljava/util/Queue;

    iput-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->buffers:[Ljava/util/Queue;

    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->NUMBER_OF_BUFFERS:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->buffers:[Ljava/util/Queue;

    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->AMORTIZED_DRAIN_THRESHOLD:I

    new-array v0, v0, [Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;

    iput-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->tasks:[Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;

    iget-object p1, p1, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder;->listener:Lcom/googlecode/concurrentlinkedhashmap/EvictionListener;

    iput-object p1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->listener:Lcom/googlecode/concurrentlinkedhashmap/EvictionListener;

    sget-object v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DiscardingListener;->INSTANCE:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DiscardingListener;

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->DISCARDING_QUEUE:Ljava/util/Queue;

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    :goto_1
    iput-object p1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->pendingNotifications:Ljava/util/Queue;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder;Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;-><init>(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Builder;)V

    return-void
.end method

.method public static bufferIndex()I
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    long-to-int v1, v0

    sget v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->BUFFER_MASK:I

    and-int/2addr v0, v1

    return v0
.end method

.method public static ceilingNextPowerOfTwo(I)I
    .locals 1

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x20

    shl-int p0, v0, p0

    return p0
.end method

.method public static checkArgument(Z)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static checkNotNull(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static checkState(Z)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Proxy required"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addTaskToChain([Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;I)V
    .locals 1

    aget-object v0, p1, p3

    invoke-interface {p2, v0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;->setNext(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;)V

    aput-object p2, p1, p3

    return-void
.end method

.method public afterCompletion(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->schedule(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;)Z

    move-result p1

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->drainStatus:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DrainStatus;

    invoke-virtual {v0, p1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DrainStatus;->shouldDrainBuffers(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->tryToDrainBuffers()V

    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->notifyListener()V

    return-void
.end method

.method public clear()V
    .locals 6

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->evictionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->evictionDeque:Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;

    invoke-virtual {v0}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->poll()Lcom/googlecode/concurrentlinkedhashmap/Linked;

    move-result-object v0

    check-cast v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->data:Ljava/util/concurrent/ConcurrentMap;

    iget-object v2, v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;->makeDead()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->buffers:[Ljava/util/Queue;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    aget-object v2, v2, v1

    const/4 v3, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;->isWrite()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->bufferLengths:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    neg-int v3, v3

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->addAndGet(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->evictionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_3
    iget-object v1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->evictionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final synthetic compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lj$/util/concurrent/ConcurrentMap$-CC;->$default$compute(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lj$/util/concurrent/ConcurrentMap$-CC;->$default$computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lj$/util/concurrent/ConcurrentMap$-CC;->$default$computeIfPresent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->data:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2

    invoke-static {p1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->data:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;

    invoke-virtual {v1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public drainBuffers()V
    .locals 2

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->tasks:[Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;

    invoke-virtual {p0, v0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->moveTasksFromBuffers([Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;)I

    move-result v0

    iget-object v1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->tasks:[Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;

    invoke-virtual {p0, v1, v0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->updateDrainedOrder([Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;I)V

    iget-object v1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->tasks:[Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;

    invoke-virtual {p0, v1, v0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->runTasks([Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;I)V

    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$EntrySet;

    invoke-direct {v0, p0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$EntrySet;-><init>(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;)V

    iput-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->entrySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public evict()V
    .locals 3

    :goto_0
    invoke-virtual {p0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->hasOverflowed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->evictionDeque:Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;

    invoke-virtual {v0}, Lcom/googlecode/concurrentlinkedhashmap/LinkedDeque;->poll()Lcom/googlecode/concurrentlinkedhashmap/Linked;

    move-result-object v0

    check-cast v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->data:Ljava/util/concurrent/ConcurrentMap;

    iget-object v2, v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->pendingNotifications:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;->makeDead()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final synthetic forEach(Ljava/util/function/BiConsumer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/concurrent/ConcurrentMap$-CC;->$default$forEach(Ljava/util/concurrent/ConcurrentMap;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->data:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$ReadTask;

    invoke-direct {v0, p0, p1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$ReadTask;-><init>(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;)V

    invoke-virtual {p0, v0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->afterCompletion(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;)V

    invoke-virtual {p1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lj$/util/concurrent/ConcurrentMap$-CC;->$default$getOrDefault(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hasOverflowed()Z
    .locals 5

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->weightedSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->capacity:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->data:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$KeySet;

    invoke-direct {v0, p0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$KeySet;-><init>(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;)V

    iput-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->keySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public final synthetic merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lj$/util/concurrent/ConcurrentMap$-CC;->$default$merge(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public moveTasksFromBuffer([Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;I)I
    .locals 6

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->buffers:[Ljava/util/Queue;

    aget-object v0, v0, p2

    const/4 v1, 0x0

    const/4 v2, -0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v3}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;->getOrder()I

    move-result v4

    iget v5, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->drainedOrder:I

    sub-int/2addr v4, v5

    if-gez v4, :cond_0

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    array-length v5, p1

    if-lt v4, v5, :cond_1

    array-length v0, p1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, p1, v3, v2}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->addTaskToChain([Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;I)V

    goto :goto_1

    :cond_1
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, p1, v3, v4}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->addTaskToChain([Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;I)V

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->bufferLengths:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    neg-int v0, v1

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->addAndGet(II)I

    return v2
.end method

.method public moveTasksFromBuffers([Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;)I
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->buffers:[Ljava/util/Queue;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, p1, v1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->moveTasksFromBuffer([Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;I)I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public nextOrdering()I
    .locals 2

    iget v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->nextOrder:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->nextOrder:I

    return v0
.end method

.method public notifyListener()V
    .locals 3

    :goto_0
    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->pendingNotifications:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->listener:Lcom/googlecode/concurrentlinkedhashmap/EvictionListener;

    iget-object v2, v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/googlecode/concurrentlinkedhashmap/EvictionListener;->onEviction(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;Z)TV;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->weigher:Lcom/googlecode/concurrentlinkedhashmap/EntryWeigher;

    invoke-interface {v0, p1, p2}, Lcom/googlecode/concurrentlinkedhashmap/EntryWeigher;->weightOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    new-instance v1, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;

    invoke-direct {v1, p2, v0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;

    invoke-direct {p2, p0, p1, v1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;-><init>(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;Ljava/lang/Object;Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;)V

    :goto_0
    iget-object p1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->data:Ljava/util/concurrent/ConcurrentMap;

    iget-object v2, p2, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;->key:Ljava/lang/Object;

    invoke-interface {p1, v2, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;

    if-nez p1, :cond_0

    new-instance p1, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$AddTask;

    invoke-direct {p1, p0, p2, v0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$AddTask;-><init>(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;I)V

    invoke-virtual {p0, p1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->afterCompletion(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p3, :cond_1

    new-instance p2, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$ReadTask;

    invoke-direct {p2, p0, p1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$ReadTask;-><init>(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;)V

    invoke-virtual {p0, p2}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->afterCompletion(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;)V

    invoke-virtual {p1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;

    invoke-virtual {v2}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;->isAlive()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget p2, v2, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;->weight:I

    sub-int/2addr v0, p2

    if-nez v0, :cond_3

    new-instance p2, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$ReadTask;

    invoke-direct {p2, p0, p1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$ReadTask;-><init>(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;)V

    goto :goto_1

    :cond_3
    new-instance p2, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$UpdateTask;

    invoke-direct {p2, p0, p1, v0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$UpdateTask;-><init>(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;I)V

    :goto_1
    invoke-virtual {p0, p2}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->afterCompletion(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;)V

    iget-object p1, v2, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;->value:Ljava/lang/Object;

    return-object p1
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->data:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;->makeRetired()V

    new-instance v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$RemovalTask;

    invoke-direct {v0, p0, p1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$RemovalTask;-><init>(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;)V

    invoke-virtual {p0, v0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->afterCompletion(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;)V

    invoke-virtual {p1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->data:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;

    :goto_0
    invoke-virtual {v2, p2}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;->tryToRetire(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p2, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->data:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$RemovalTask;

    invoke-direct {p1, p0, v0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$RemovalTask;-><init>(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;)V

    invoke-virtual {p0, p1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->afterCompletion(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;

    invoke-virtual {v2}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->weigher:Lcom/googlecode/concurrentlinkedhashmap/EntryWeigher;

    invoke-interface {v0, p1, p2}, Lcom/googlecode/concurrentlinkedhashmap/EntryWeigher;->weightOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    new-instance v1, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;

    invoke-direct {v1, p2, v0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;-><init>(Ljava/lang/Object;I)V

    iget-object p2, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->data:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;

    invoke-virtual {v2}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;->isAlive()Z

    move-result v3

    if-nez v3, :cond_1

    return-object p2

    :cond_1
    invoke-virtual {p1, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget p2, v2, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;->weight:I

    sub-int/2addr v0, p2

    if-nez v0, :cond_2

    new-instance p2, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$ReadTask;

    invoke-direct {p2, p0, p1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$ReadTask;-><init>(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;)V

    goto :goto_0

    :cond_2
    new-instance p2, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$UpdateTask;

    invoke-direct {p2, p0, p1, v0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$UpdateTask;-><init>(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;I)V

    :goto_0
    invoke-virtual {p0, p2}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->afterCompletion(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;)V

    iget-object p1, v2, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;->value:Ljava/lang/Object;

    return-object p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p3}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->weigher:Lcom/googlecode/concurrentlinkedhashmap/EntryWeigher;

    invoke-interface {v0, p1, p3}, Lcom/googlecode/concurrentlinkedhashmap/EntryWeigher;->weightOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    new-instance v1, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;

    invoke-direct {v1, p3, v0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;-><init>(Ljava/lang/Object;I)V

    iget-object p3, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->data:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return p3

    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;

    invoke-virtual {v2}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, p2}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget p2, v2, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$WeightedValue;->weight:I

    sub-int/2addr v0, p2

    if-nez v0, :cond_2

    new-instance p2, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$ReadTask;

    invoke-direct {p2, p0, p1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$ReadTask;-><init>(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;)V

    goto :goto_0

    :cond_2
    new-instance p2, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$UpdateTask;

    invoke-direct {p2, p0, p1, v0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$UpdateTask;-><init>(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Node;I)V

    :goto_0
    invoke-virtual {p0, p2}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->afterCompletion(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;)V

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return p3
.end method

.method public final synthetic replaceAll(Ljava/util/function/BiFunction;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/concurrent/ConcurrentMap$-CC;->$default$replaceAll(Ljava/util/concurrent/ConcurrentMap;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public runTasks([Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p2, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->runTasksInChain(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;)V

    const/4 v1, 0x0

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public runTasksInChain(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;)V
    .locals 2

    :goto_0
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;->getNext()Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;->setNext(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;)V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    move-object p1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public schedule(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;)Z
    .locals 4

    invoke-static {}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->bufferIndex()I

    move-result v0

    iget-object v1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->bufferLengths:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->incrementAndGet(I)I

    move-result v1

    invoke-interface {p1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;->isWrite()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->buffers:[Ljava/util/Queue;

    aget-object v0, v1, v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->drainStatus:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DrainStatus;->REQUIRED:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DrainStatus;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return v3

    :cond_0
    const/high16 v2, 0x100000

    if-gt v1, v2, :cond_2

    iget-object v2, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->buffers:[Ljava/util/Queue;

    aget-object v0, v2, v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    const/16 p1, 0x10

    if-gt v1, p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3

    :cond_2
    iget-object p1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->bufferLengths:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->decrementAndGet(I)I

    return v3
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->data:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public tryToDrainBuffers()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->evictionLock:Ljava/util/concurrent/locks/Lock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->drainStatus:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    sget-object v1, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DrainStatus;->PROCESSING:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DrainStatus;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->drainBuffers()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->drainStatus:Ljava/util/concurrent/atomic/AtomicReference;

    .line 20
    .line 21
    sget-object v2, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DrainStatus;->IDLE:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DrainStatus;

    .line 22
    .line 23
    :cond_0
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-eq v3, v1, :cond_0

    .line 35
    .line 36
    :goto_0
    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->evictionLock:Ljava/util/concurrent/locks/Lock;

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    iget-object v1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->drainStatus:Ljava/util/concurrent/atomic/AtomicReference;

    .line 44
    .line 45
    sget-object v2, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DrainStatus;->PROCESSING:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DrainStatus;

    .line 46
    .line 47
    sget-object v3, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DrainStatus;->IDLE:Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$DrainStatus;

    .line 48
    .line 49
    :goto_1
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-nez v4, :cond_2

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    if-ne v4, v2, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    iget-object v1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->evictionLock:Ljava/util/concurrent/locks/Lock;

    .line 63
    .line 64
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 65
    .line 66
    .line 67
    throw v0

    .line 68
    :cond_3
    :goto_2
    return-void
.end method

.method public updateDrainedOrder([Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;I)V
    .locals 0

    if-ltz p2, :cond_0

    aget-object p1, p1, p2

    invoke-interface {p1}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Task;->getOrder()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->drainedOrder:I

    :cond_0
    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->values:Ljava/util/Collection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Values;

    invoke-direct {v0, p0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$Values;-><init>(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;)V

    iput-object v0, p0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;->values:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$SerializationProxy;

    invoke-direct {v0, p0}, Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap$SerializationProxy;-><init>(Lcom/googlecode/concurrentlinkedhashmap/ConcurrentLinkedHashMap;)V

    return-object v0
.end method
