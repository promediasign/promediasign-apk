.class Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/cache/CacheLongKeyLIRS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final entries:[Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry<",
            "TV;>;"
        }
    .end annotation
.end field

.field hits:J

.field mapSize:I

.field private final mask:I

.field private maxMemory:J

.field misses:J

.field private final nonResidentQueueSize:I

.field private final queue:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final queue2:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry<",
            "TV;>;"
        }
    .end annotation
.end field

.field queue2Size:I

.field queueSize:I

.field private final stack:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry<",
            "TV;>;"
        }
    .end annotation
.end field

.field private stackMoveCounter:I

.field private final stackMoveDistance:I

.field private stackSize:I

.field usedMemory:J


# direct methods
.method public constructor <init>(JIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->setMaxMemory(J)V

    iput p3, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stackMoveDistance:I

    iput p5, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->nonResidentQueueSize:I

    add-int/lit8 p1, p4, -0x1

    iput p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->mask:I

    new-instance p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    invoke-direct {p1}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;-><init>()V

    iput-object p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stack:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object p1, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object p1, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackPrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    new-instance p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    invoke-direct {p1}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;-><init>()V

    iput-object p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object p1, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queueNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object p1, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queuePrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    new-instance p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    invoke-direct {p1}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;-><init>()V

    iput-object p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue2:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object p1, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queueNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object p1, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queuePrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    new-array p1, p4, [Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->entries:[Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    return-void
.end method

.method public constructor <init>(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment<",
            "TV;>;I)V"
        }
    .end annotation

    .line 2
    iget-wide v1, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->maxMemory:J

    iget v3, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stackMoveDistance:I

    iget v5, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->nonResidentQueueSize:I

    move-object v0, p0

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;-><init>(JIII)V

    iget-wide v0, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->hits:J

    iput-wide v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->hits:J

    iget-wide v0, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->misses:J

    iput-wide v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->misses:J

    iget-object p2, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stack:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    :goto_0
    iget-object p2, p2, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackPrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object v0, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stack:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    if-eq p2, v0, :cond_0

    invoke-static {p2}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->copy(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->addToMap(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V

    invoke-direct {p0, v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->addToStack(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V

    goto :goto_0

    :cond_0
    iget-object p2, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    :goto_1
    iget-object p2, p2, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queuePrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object v0, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    if-eq p2, v0, :cond_2

    iget-wide v0, p2, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->key:J

    invoke-static {v0, v1}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->getHash(J)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->find(JI)Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->copy(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->addToMap(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V

    :cond_1
    iget-object v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    invoke-direct {p0, v1, v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->addToQueue(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V

    goto :goto_1

    :cond_2
    iget-object p2, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue2:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    :goto_2
    iget-object p2, p2, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queuePrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object v0, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue2:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    if-eq p2, v0, :cond_4

    iget-wide v0, p2, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->key:J

    invoke-static {v0, v1}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->getHash(J)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->find(JI)Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {p2}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->copy(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->addToMap(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V

    :cond_3
    iget-object v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue2:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    invoke-direct {p0, v1, v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->addToQueue(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method private declared-synchronized access(JI)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->find(JI)Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p2, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->value:Ljava/lang/Object;

    if-nez p2, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {p1}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->isHot()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stack:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object p3, p2, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    if-eq p1, p3, :cond_6

    iget p3, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stackMoveDistance:I

    if-eqz p3, :cond_1

    iget v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stackMoveCounter:I

    iget v1, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->topMove:I

    sub-int/2addr v0, v1

    if-le v0, p3, :cond_6

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_1
    :goto_0
    iget-object p2, p2, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackPrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    if-ne p1, p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    invoke-direct {p0, p1}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->removeFromStack(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V

    if-eqz p2, :cond_3

    invoke-direct {p0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->pruneStack()V

    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->addToStack(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V

    goto :goto_3

    :cond_4
    invoke-direct {p0, p1}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->removeFromQueue(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V

    iget-object p2, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    if-eqz p2, :cond_5

    invoke-direct {p0, p1}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->removeFromStack(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V

    invoke-direct {p0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->convertOldestHotToCold()V

    goto :goto_2

    :cond_5
    iget-object p2, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    invoke-direct {p0, p2, p1}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->addToQueue(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_6
    :goto_3
    monitor-exit p0

    return-void

    :cond_7
    :goto_4
    monitor-exit p0

    return-void

    :goto_5
    monitor-exit p0

    throw p1
.end method

.method private addToMap(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry<",
            "TV;>;)V"
        }
    .end annotation

    iget-wide v0, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->key:J

    invoke-static {v0, v1}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->getHash(J)I

    move-result v0

    iget v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->mask:I

    and-int/2addr v0, v1

    iget-object v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->entries:[Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    aget-object v2, v1, v0

    iput-object v2, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->mapNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    aput-object p1, v1, v0

    iget-wide v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->usedMemory:J

    iget p1, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->memory:I

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->usedMemory:J

    iget p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->mapSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->mapSize:I

    return-void
.end method

.method private addToQueue(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry<",
            "TV;>;",
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry<",
            "TV;>;)V"
        }
    .end annotation

    iput-object p1, p2, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queuePrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object v0, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queueNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object v0, p2, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queueNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object p2, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queuePrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object p2, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queueNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object p1, p2, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->value:Ljava/lang/Object;

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queueSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queueSize:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue2Size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue2Size:I

    :goto_0
    return-void
.end method

.method private addToStack(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry<",
            "TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stack:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object v0, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackPrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object v1, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object v1, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object p1, v1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackPrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object p1, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stackSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stackSize:I

    iget v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stackMoveCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stackMoveCounter:I

    iput v0, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->topMove:I

    return-void
.end method

.method private addToStackBottom(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry<",
            "TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stack:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object v0, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object v1, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackPrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object v1, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackPrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object p1, v1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object p1, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackPrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stackSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stackSize:I

    return-void
.end method

.method private convertOldestHotToCold()V
    .locals 2

    iget-object v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stack:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object v1, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackPrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    if-eq v1, v0, :cond_0

    invoke-direct {p0, v1}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->removeFromStack(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V

    iget-object v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    invoke-direct {p0, v0, v1}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->addToQueue(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V

    invoke-direct {p0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->pruneStack()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private static copy(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry<",
            "TV;>;)",
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    invoke-direct {v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;-><init>()V

    iget-wide v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->key:J

    iput-wide v1, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->key:J

    iget-object v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->value:Ljava/lang/Object;

    iput-object v1, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->value:Ljava/lang/Object;

    iget v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->memory:I

    iput v1, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->memory:I

    iget p0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->topMove:I

    iput p0, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->topMove:I

    return-object v0
.end method

.method private evict()V
    .locals 5

    :cond_0
    invoke-direct {p0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->evictBlock()V

    iget-wide v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->usedMemory:J

    iget-wide v2, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->maxMemory:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void
.end method

.method private evictBlock()V
    .locals 5

    :goto_0
    iget v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queueSize:I

    iget v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->mapSize:I

    ushr-int/lit8 v1, v1, 0x5

    if-gt v0, v1, :cond_0

    iget v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stackSize:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->convertOldestHotToCold()V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->usedMemory:J

    iget-wide v2, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->maxMemory:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget v2, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queueSize:I

    if-lez v2, :cond_1

    iget-object v2, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object v2, v2, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queuePrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget v3, v2, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->memory:I

    int-to-long v3, v3

    sub-long/2addr v0, v3

    iput-wide v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->usedMemory:J

    invoke-direct {p0, v2}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->removeFromQueue(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V

    const/4 v0, 0x0

    iput-object v0, v2, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->value:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, v2, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->memory:I

    iget-object v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue2:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    invoke-direct {p0, v0, v2}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->addToQueue(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V

    iget v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->nonResidentQueueSize:I

    iget v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->mapSize:I

    iget v2, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue2Size:I

    sub-int/2addr v1, v2

    mul-int v1, v1, v0

    if-ltz v1, :cond_0

    :goto_1
    iget v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue2Size:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue2:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object v0, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queuePrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-wide v2, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->key:J

    invoke-static {v2, v3}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->getHash(J)I

    move-result v2

    iget-wide v3, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->key:J

    invoke-virtual {p0, v3, v4, v2}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->remove(JI)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method

.method private pruneStack()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stack:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object v0, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackPrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    invoke-virtual {v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->isHot()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->removeFromStack(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V

    goto :goto_0
.end method

.method private removeFromQueue(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry<",
            "TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queuePrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object v1, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queueNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object v1, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queueNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object v1, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queueNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object v0, v1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queuePrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queueNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object v0, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queuePrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object p1, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->value:Ljava/lang/Object;

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queueSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queueSize:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue2Size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue2Size:I

    :goto_0
    return-void
.end method

.method private removeFromStack(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry<",
            "TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackPrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object v1, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object v1, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object v1, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object v0, v1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackPrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object v0, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackPrev:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stackSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stackSize:I

    return-void
.end method


# virtual methods
.method public containsKey(JI)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->find(JI)Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->value:Ljava/lang/Object;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public find(JI)Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry<",
            "TV;>;"
        }
    .end annotation

    iget v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->mask:I

    and-int/2addr p3, v0

    iget-object v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->entries:[Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    aget-object p3, v0, p3

    :goto_0
    if-eqz p3, :cond_0

    iget-wide v0, p3, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->key:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    iget-object p3, p3, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->mapNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    goto :goto_0

    :cond_0
    return-object p3
.end method

.method public get(JI)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->find(JI)Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    if-nez v0, :cond_0

    :goto_0
    iget-wide p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->misses:J

    add-long/2addr p1, v2

    iput-wide p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->misses:J

    return-object v1

    :cond_0
    iget-object v4, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->value:Ljava/lang/Object;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->isHot()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stack:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object v1, v1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    if-eq v0, v1, :cond_3

    iget v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stackMoveDistance:I

    if-eqz v1, :cond_2

    iget v5, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stackMoveCounter:I

    iget v0, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->topMove:I

    sub-int/2addr v5, v0

    if-le v5, v1, :cond_3

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->access(JI)V

    :cond_3
    iget-wide p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->hits:J

    add-long/2addr p1, v2

    iput-wide p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->hits:J

    return-object v4
.end method

.method public getMemory(JI)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->find(JI)Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget p1, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->memory:I

    :goto_0
    return p1
.end method

.method public getNewMapLen()I
    .locals 4

    iget v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->mask:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v1, v0, 0x3

    iget v2, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->mapSize:I

    mul-int/lit8 v3, v2, 0x4

    if-ge v1, v3, :cond_0

    const/high16 v1, 0x10000000

    if-ge v0, v1, :cond_0

    mul-int/lit8 v0, v0, 0x2

    return v0

    :cond_0
    const/16 v1, 0x20

    if-le v0, v1, :cond_1

    div-int/lit8 v1, v0, 0x8

    if-le v1, v2, :cond_1

    div-int/lit8 v0, v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized keySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stack:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    :goto_0
    iget-object v1, v1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object v2, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stack:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    if-eq v1, v2, :cond_0

    iget-wide v2, v1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->key:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    iget-object v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    goto :goto_2

    :goto_1
    iget-object v2, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    if-eq v1, v2, :cond_1

    iget-wide v2, v1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->key:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-object v1, v1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queueNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-object v0

    :goto_3
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized keys(ZZ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue2:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_0
    iget-object p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    :goto_0
    iget-object p2, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queueNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    :goto_1
    if-eq p2, p1, :cond_2

    iget-wide v1, p2, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->key:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p2, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queueNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stack:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    goto :goto_3

    :goto_2
    iget-object p2, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stack:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    if-eq p1, p2, :cond_2

    iget-wide v1, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->key:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    iget-object p1, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_2
    monitor-exit p0

    return-object v0

    :goto_4
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized put(JILjava/lang/Object;I)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JITV;I)TV;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p4, :cond_4

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->find(JI)Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->remove(JI)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_0
    int-to-long v3, p5

    iget-wide v5, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->maxMemory:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    new-instance v5, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    invoke-direct {v5}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;-><init>()V

    iput-wide p1, v5, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->key:J

    iput-object p4, v5, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->value:Ljava/lang/Object;

    iput p5, v5, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->memory:I

    iget p4, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->mask:I

    and-int/2addr p4, p3

    iget-object p5, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->entries:[Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    aget-object v6, p5, p4

    iput-object v6, v5, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->mapNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    aput-object v5, p5, p4

    iget-wide p4, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->usedMemory:J

    add-long/2addr p4, v3

    iput-wide p4, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->usedMemory:J

    iget-wide v3, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->maxMemory:J

    cmp-long v6, p4, v3

    if-lez v6, :cond_2

    invoke-direct {p0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->evict()V

    iget p4, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->stackSize:I

    if-lez p4, :cond_2

    iget-object p4, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    invoke-direct {p0, p4, v5}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->addToQueue(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    iget p4, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->mapSize:I

    add-int/2addr p4, v2

    iput p4, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->mapSize:I

    invoke-direct {p0, v5}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->addToStack(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->access(JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-object v1

    :cond_4
    :try_start_2
    const-string p1, "The value may not be null"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/h2/mvstore/DataUtils;->newIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(JI)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)TV;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->mask:I

    and-int/2addr p3, v0

    iget-object v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->entries:[Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    aget-object v1, v0, p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    iget-wide v3, v1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->key:J

    cmp-long v5, v3, p1

    if-nez v5, :cond_1

    iget-object p1, v1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->value:Ljava/lang/Object;

    iget-object p2, v1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->mapNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    aput-object p2, v0, p3

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_0
    iget-object p3, v1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->mapNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p3, :cond_2

    monitor-exit p0

    return-object v2

    :cond_2
    :try_start_2
    iget-wide v3, p3, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->key:J

    cmp-long v0, v3, p1

    if-nez v0, :cond_6

    iget-object p1, p3, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->value:Ljava/lang/Object;

    iget-object p2, p3, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->mapNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iput-object p2, v1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->mapNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    move-object v1, p3

    :goto_1
    iget p2, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->mapSize:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->mapSize:I

    iget-wide p2, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->usedMemory:J

    iget v0, v1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->memory:I

    int-to-long v2, v0

    sub-long/2addr p2, v2

    iput-wide p2, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->usedMemory:J

    iget-object p2, v1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    if-eqz p2, :cond_3

    invoke-direct {p0, v1}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->removeFromStack(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V

    :cond_3
    invoke-virtual {v1}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->isHot()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    iget-object p3, p2, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->queueNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    if-eq p3, p2, :cond_5

    invoke-direct {p0, p3}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->removeFromQueue(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V

    iget-object p2, p3, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->stackNext:Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    if-nez p2, :cond_5

    invoke-direct {p0, p3}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->addToStackBottom(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V

    goto :goto_2

    :cond_4
    invoke-direct {p0, v1}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->removeFromQueue(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;)V

    :cond_5
    :goto_2
    invoke-direct {p0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->pruneStack()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_6
    move-object v1, p3

    goto :goto_0

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public setMaxMemory(J)V
    .locals 0

    iput-wide p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->maxMemory:J

    return-void
.end method
