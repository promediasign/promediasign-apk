.class abstract Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueueL2Pad;
.super Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueueProducerLimitField;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueueProducerLimitField<",
        "TE;>;"
    }
.end annotation


# instance fields
.field p00:J

.field p01:J

.field p02:J

.field p03:J

.field p04:J

.field p05:J

.field p06:J

.field p07:J

.field p10:J

.field p11:J

.field p12:J

.field p13:J

.field p14:J

.field p15:J

.field p16:J


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/atomic/MpscAtomicArrayQueueProducerLimitField;-><init>(I)V

    return-void
.end method


# virtual methods
.method public abstract synthetic drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;)I
.end method

.method public abstract synthetic drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;I)I
.end method

.method public abstract synthetic drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V
.end method

.method public abstract synthetic fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;)I
.end method

.method public abstract synthetic fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;I)I
.end method

.method public abstract synthetic fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V
.end method

.method public abstract synthetic lvConsumerIndex()J
.end method

.method public abstract synthetic offer(Ljava/lang/Object;)Z
.end method

.method public abstract synthetic peek()Ljava/lang/Object;
.end method

.method public abstract synthetic poll()Ljava/lang/Object;
.end method

.method public abstract synthetic relaxedOffer(Ljava/lang/Object;)Z
.end method

.method public abstract synthetic relaxedPeek()Ljava/lang/Object;
.end method

.method public abstract synthetic relaxedPoll()Ljava/lang/Object;
.end method
