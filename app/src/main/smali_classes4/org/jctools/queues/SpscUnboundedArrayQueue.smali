.class public Lorg/jctools/queues/SpscUnboundedArrayQueue;
.super Lorg/jctools/queues/BaseSpscLinkedArrayQueue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jctools/queues/BaseSpscLinkedArrayQueue<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;-><init>()V

    invoke-static {p1}, Lorg/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result p1

    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 v0, p1, -0x1

    int-to-long v0, v0

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lorg/jctools/queues/CircularArrayOffsetCalculator;->allocate(I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueueProducerColdFields;->producerBuffer:[Ljava/lang/Object;

    iput-wide v0, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueueProducerColdFields;->producerMask:J

    iput-object p1, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueueConsumerColdFields;->consumerBuffer:[Ljava/lang/Object;

    iput-wide v0, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueueConsumerColdFields;->consumerMask:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/jctools/queues/BaseSpscLinkedArrayQueueProducerColdFields;->producerBufferLimit:J

    return-void
.end method


# virtual methods
.method public capacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public bridge synthetic currentConsumerIndex()J
    .locals 2

    invoke-super {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->currentConsumerIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic currentProducerIndex()J
    .locals 2

    invoke-super {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->currentProducerIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->drain(Lorg/jctools/queues/MessagePassingQueue$Consumer;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V

    return-void
.end method

.method public bridge synthetic fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->fill(Lorg/jctools/queues/MessagePassingQueue$Supplier;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V

    return-void
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final offerColdPath([Ljava/lang/Object;JJJLjava/lang/Object;Lorg/jctools/queues/MessagePassingQueue$Supplier;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;JJJTE;",
            "Lorg/jctools/queues/MessagePassingQueue$Supplier<",
            "+TE;>;)Z"
        }
    .end annotation

    move-object v10, p0

    move-object v3, p1

    move-wide v0, p2

    const-wide/16 v4, 0x1

    add-long v6, v0, v4

    const-wide/16 v8, 0x4

    div-long/2addr v6, v8

    add-long/2addr v6, p4

    invoke-static {v6, v7, p2, p3}, Lorg/jctools/queues/CircularArrayOffsetCalculator;->calcElementOffset(JJ)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    sub-long/2addr v6, v4

    iput-wide v6, v10, Lorg/jctools/queues/BaseSpscLinkedArrayQueueProducerColdFields;->producerBufferLimit:J

    if-nez p8, :cond_0

    invoke-interface/range {p9 .. p9}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object/from16 v2, p8

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-wide v3, p4

    move-wide/from16 v5, p6

    invoke-virtual/range {v0 .. v6}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->writeToQueue([Ljava/lang/Object;Ljava/lang/Object;JJ)V

    goto :goto_3

    :cond_1
    add-long v6, p4, v4

    invoke-static {v6, v7, p2, p3}, Lorg/jctools/queues/CircularArrayOffsetCalculator;->calcElementOffset(JJ)J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lorg/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    if-nez p8, :cond_2

    invoke-interface/range {p9 .. p9}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    :cond_2
    move-object/from16 v2, p8

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-wide v3, p4

    move-wide/from16 v5, p6

    invoke-virtual/range {v0 .. v6}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->writeToQueue([Ljava/lang/Object;Ljava/lang/Object;JJ)V

    goto :goto_3

    :cond_3
    const-wide/16 v6, 0x2

    add-long/2addr v6, v0

    long-to-int v2, v6

    invoke-static {v2}, Lorg/jctools/queues/CircularArrayOffsetCalculator;->allocate(I)[Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v10, Lorg/jctools/queues/BaseSpscLinkedArrayQueueProducerColdFields;->producerBuffer:[Ljava/lang/Object;

    add-long/2addr v0, p4

    sub-long/2addr v0, v4

    iput-wide v0, v10, Lorg/jctools/queues/BaseSpscLinkedArrayQueueProducerColdFields;->producerBufferLimit:J

    if-nez p8, :cond_4

    invoke-interface/range {p9 .. p9}, Lorg/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    goto :goto_2

    :cond_4
    move-object/from16 v9, p8

    :goto_2
    move-object v0, p0

    move-wide v1, p4

    move-object v3, p1

    move-wide/from16 v4, p6

    move-wide/from16 v7, p6

    invoke-virtual/range {v0 .. v9}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->linkOldToNew(J[Ljava/lang/Object;J[Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_3
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic relaxedOffer(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->relaxedOffer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic relaxedPeek()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->relaxedPeek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic relaxedPoll()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lorg/jctools/queues/BaseSpscLinkedArrayQueue;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
