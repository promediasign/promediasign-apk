.class public Lio/netty/util/internal/shaded/org/jctools/queues/MpscChunkedArrayQueue;
.super Lio/netty/util/internal/shaded/org/jctools/queues/MpscChunkedArrayQueueColdProducerFields;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/shaded/org/jctools/queues/MpscChunkedArrayQueueColdProducerFields<",
        "TE;>;"
    }
.end annotation


# instance fields
.field p0:J

.field p1:J

.field p10:J

.field p11:J

.field p12:J

.field p13:J

.field p14:J

.field p15:J

.field p16:J

.field p17:J

.field p2:J

.field p3:J

.field p4:J

.field p5:J

.field p6:J

.field p7:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    div-int/lit8 v0, p1, 0x8

    invoke-static {v0}, Lio/netty/util/internal/shaded/org/jctools/util/Pow2;->roundToPowerOfTwo(I)I

    move-result v0

    const/16 v1, 0x400

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscChunkedArrayQueueColdProducerFields;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscChunkedArrayQueueColdProducerFields;-><init>(II)V

    return-void
.end method


# virtual methods
.method public availableInQueue(JJ)J
    .locals 2

    iget-wide v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscChunkedArrayQueueColdProducerFields;->maxQueueCapacity:J

    sub-long/2addr p1, p3

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method public capacity()I
    .locals 4

    iget-wide v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscChunkedArrayQueueColdProducerFields;->maxQueueCapacity:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public bridge synthetic currentConsumerIndex()J
    .locals 2

    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->currentConsumerIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic currentProducerIndex()J
    .locals 2

    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->currentProducerIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;I)I
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V

    return-void
.end method

.method public bridge synthetic fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;I)I
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V

    return-void
.end method

.method public getCurrentBufferCapacity(J)J
    .locals 0

    return-wide p1
.end method

.method public getNextBufferSize([Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)I"
        }
    .end annotation

    invoke-static {p1}, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedArrayQueueUtil;->length([Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic relaxedOffer(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->relaxedOffer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic relaxedPeek()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->relaxedPeek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic relaxedPoll()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic size()I
    .locals 1

    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseMpscLinkedArrayQueue;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
