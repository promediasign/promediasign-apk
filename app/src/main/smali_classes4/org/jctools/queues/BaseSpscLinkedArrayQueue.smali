.class abstract Lorg/jctools/queues/BaseSpscLinkedArrayQueue;
.super Lorg/jctools/queues/BaseSpscLinkedArrayQueueProducerColdFields;
.source "SourceFile"

# interfaces
.implements Lorg/jctools/queues/MessagePassingQueue;
.implements Lorg/jctools/queues/QueueProgressIndicators;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/BaseSpscLinkedArrayQueueProducerColdFields<",
        "TE;>;",
        "Lorg/jctools/queues/MessagePassingQueue<",
        "TE;>;",
        "Lorg/jctools/queues/QueueProgressIndicators;"
    }
.end annotation


# static fields
.field private static final JUMP:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->JUMP:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueueProducerColdFields;-><init>()V

    return-void
.end method

.method private newBufferPeek([Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;J)TE;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->lvNextArrayAndUnlink([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueueConsumerColdFields;->consumerBuffer:[Ljava/lang/Object;

    invoke-static {p1}, Lorg/jctools/queues/LinkedArrayQueueUtil;->length([Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueueConsumerColdFields;->consumerMask:J

    invoke-static {p2, p3, v0, v1}, Lorg/jctools/queues/CircularArrayOffsetCalculator;->calcElementOffset(JJ)J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private newBufferPoll([Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;J)TE;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->lvNextArrayAndUnlink([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueueConsumerColdFields;->consumerBuffer:[Ljava/lang/Object;

    invoke-static {p1}, Lorg/jctools/queues/LinkedArrayQueueUtil;->length([Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueueConsumerColdFields;->consumerMask:J

    invoke-static {p2, p3, v0, v1}, Lorg/jctools/queues/CircularArrayOffsetCalculator;->calcElementOffset(JJ)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const-wide/16 v3, 0x1

    add-long/2addr p2, v3

    invoke-virtual {p0, p2, p3}, Lorg/jctools/queues/BaseSpscLinkedArrayQueueConsumerField;->soConsumerIndex(J)V

    const/4 p2, 0x0

    invoke-static {p1, v0, v1, p2}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    return-object v2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "new buffer must have at least one element"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public abstract synthetic capacity()I
.end method

.method public currentConsumerIndex()J
    .locals 2

    invoke-virtual {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueueConsumerField;->lvConsumerIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public currentProducerIndex()J
    .locals 2

    invoke-virtual {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueueProducerFields;->lvProducerIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;)I"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lorg/jctools/queues/MessagePassingQueueUtil;->drain(Lorg/jctools/queues/MessagePassingQueue;Lorg/jctools/queues/MessagePassingQueue$Consumer;)I

    move-result p1

    return p1
.end method

.method public drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;I)I"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1, p2}, Lorg/jctools/queues/MessagePassingQueueUtil;->drain(Lorg/jctools/queues/MessagePassingQueue;Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I

    move-result p1

    return p1
.end method

.method public drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;",
            "Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;",
            "Lorg/jctools/queues/MessagePassingQueue$ExitCondition;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-static {p0, p1, p2, p3}, Lorg/jctools/queues/MessagePassingQueueUtil;->drain(Lorg/jctools/queues/MessagePassingQueue;Lorg/jctools/queues/MessagePassingQueue$Consumer;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V

    return-void
.end method

.method public fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->capacity()I

    move-result v0

    const-wide/16 v1, 0x0

    :cond_0
    sget v3, Lorg/jctools/util/PortableJvmInfo;->RECOMENDED_OFFER_BATCH:I

    invoke-virtual {p0, p1, v3}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result v3

    if-nez v3, :cond_1

    long-to-int p1, v1

    return p1

    :cond_1
    int-to-long v3, v3

    add-long/2addr v1, v3

    int-to-long v3, v0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    long-to-int p1, v1

    return p1
.end method

.method public fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;I)I"
        }
    .end annotation

    .line 2
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    iget-object v2, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueueProducerColdFields;->producerBuffer:[Ljava/lang/Object;

    iget-wide v5, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueueProducerFields;->producerIndex:J

    iget-wide v3, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueueProducerColdFields;->producerMask:J

    invoke-static {v5, v6, v3, v4}, Lorg/jctools/queues/CircularArrayOffsetCalculator;->calcElementOffset(JJ)J

    move-result-wide v7

    iget-wide v9, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueueProducerColdFields;->producerBufferLimit:J

    cmp-long v1, v5, v9

    if-gez v1, :cond_0

    invoke-interface {p1}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v1, p0

    move-wide v4, v5

    move-wide v6, v7

    invoke-virtual/range {v1 .. v7}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->writeToQueue([Ljava/lang/Object;Ljava/lang/Object;JJ)V

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    move-object v1, p0

    move-object v10, p1

    invoke-virtual/range {v1 .. v10}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->offerColdPath([Ljava/lang/Object;JJJLjava/lang/Object;Lorg/jctools/queues/MessagePassingQueue$Supplier;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p2
.end method

.method public fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;",
            "Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;",
            "Lorg/jctools/queues/MessagePassingQueue$ExitCondition;",
            ")V"
        }
    .end annotation

    .line 3
    :cond_0
    invoke-interface {p3}, Lorg/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    sget v0, Lorg/jctools/util/PortableJvmInfo;->RECOMENDED_OFFER_BATCH:I

    invoke-virtual {p0, p1, v0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Lorg/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p3}, Lorg/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lorg/jctools/util/PortableJvmInfo;->RECOMENDED_OFFER_BATCH:I

    invoke-virtual {p0, p1, v1}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p2, v0}, Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;->idle(I)I

    move-result v0

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final isEmpty()Z
    .locals 1

    invoke-static {p0}, Lorg/jctools/queues/IndexedQueueSizeUtil;->isEmpty(Lorg/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final linkOldToNew(J[Ljava/lang/Object;J[Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[TE;J[TE;JTE;)V"
        }
    .end annotation

    invoke-static {p6, p7, p8, p9}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p3, p6}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->soNext([Ljava/lang/Object;[Ljava/lang/Object;)V

    sget-object p6, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->JUMP:Ljava/lang/Object;

    invoke-static {p3, p4, p5, p6}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    const-wide/16 p3, 0x1

    add-long/2addr p1, p3

    invoke-virtual {p0, p1, p2}, Lorg/jctools/queues/BaseSpscLinkedArrayQueueProducerFields;->soProducerIndex(J)V

    return-void
.end method

.method public final lvNextArrayAndUnlink([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)[TE;"
        }
    .end annotation

    invoke-static {p1}, Lorg/jctools/queues/LinkedArrayQueueUtil;->nextArrayOffset([Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v3}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    return-object v2
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v1, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueueProducerColdFields;->producerBuffer:[Ljava/lang/Object;

    iget-wide v4, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueueProducerFields;->producerIndex:J

    iget-wide v2, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueueProducerColdFields;->producerMask:J

    invoke-static {v4, v5, v2, v3}, Lorg/jctools/queues/CircularArrayOffsetCalculator;->calcElementOffset(JJ)J

    move-result-wide v6

    iget-wide v8, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueueProducerColdFields;->producerBufferLimit:J

    cmp-long v0, v4, v8

    if-gez v0, :cond_0

    move-object v0, p0

    move-object v2, p1

    move-wide v3, v4

    move-wide v5, v6

    invoke-virtual/range {v0 .. v6}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->writeToQueue([Ljava/lang/Object;Ljava/lang/Object;JJ)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v9, 0x0

    move-object v0, p0

    move-object v8, p1

    invoke-virtual/range {v0 .. v9}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->offerColdPath([Ljava/lang/Object;JJJLjava/lang/Object;Lorg/jctools/queues/MessagePassingQueue$Supplier;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    throw p1
.end method

.method public abstract offerColdPath([Ljava/lang/Object;JJJLjava/lang/Object;Lorg/jctools/queues/MessagePassingQueue$Supplier;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;JJJTE;",
            "Lorg/jctools/queues/MessagePassingQueue$Supplier<",
            "+TE;>;)Z"
        }
    .end annotation
.end method

.method public peek()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueueConsumerColdFields;->consumerBuffer:[Ljava/lang/Object;

    iget-wide v1, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueueConsumerField;->consumerIndex:J

    iget-wide v3, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueueConsumerColdFields;->consumerMask:J

    invoke-static {v1, v2, v3, v4}, Lorg/jctools/queues/CircularArrayOffsetCalculator;->calcElementOffset(JJ)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->JUMP:Ljava/lang/Object;

    if-ne v3, v4, :cond_0

    invoke-direct {p0, v0, v1, v2}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->newBufferPeek([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v3
.end method

.method public poll()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueueConsumerColdFields;->consumerBuffer:[Ljava/lang/Object;

    iget-wide v1, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueueConsumerField;->consumerIndex:J

    iget-wide v3, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueueConsumerColdFields;->consumerMask:J

    invoke-static {v1, v2, v3, v4}, Lorg/jctools/queues/CircularArrayOffsetCalculator;->calcElementOffset(JJ)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->JUMP:Ljava/lang/Object;

    if-ne v5, v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x0

    if-eqz v5, :cond_1

    if-nez v6, :cond_1

    const-wide/16 v8, 0x1

    add-long/2addr v1, v8

    invoke-virtual {p0, v1, v2}, Lorg/jctools/queues/BaseSpscLinkedArrayQueueConsumerField;->soConsumerIndex(J)V

    invoke-static {v0, v3, v4, v7}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    return-object v5

    :cond_1
    if-eqz v6, :cond_2

    invoke-direct {p0, v0, v1, v2}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->newBufferPoll([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v7
.end method

.method public relaxedOffer(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public relaxedPeek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public relaxedPoll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    invoke-static {p0}, Lorg/jctools/queues/IndexedQueueSizeUtil;->size(Lorg/jctools/queues/IndexedQueueSizeUtil$IndexedQueue;)I

    move-result v0

    return v0
.end method

.method public final soNext([Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;[TE;)V"
        }
    .end annotation

    invoke-static {p1}, Lorg/jctools/queues/LinkedArrayQueueUtil;->nextArrayOffset([Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {p1, v0, v1, p2}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToQueue([Ljava/lang/Object;Ljava/lang/Object;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;TE;JJ)V"
        }
    .end annotation

    invoke-static {p1, p5, p6, p2}, Lorg/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    const-wide/16 p1, 0x1

    add-long/2addr p3, p1

    invoke-virtual {p0, p3, p4}, Lorg/jctools/queues/BaseSpscLinkedArrayQueueProducerFields;->soProducerIndex(J)V

    return-void
.end method
