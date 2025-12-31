.class abstract Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueProducerIndexField;
.super Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueL1Pad;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueL1Pad<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final P_INDEX_OFFSET:J


# instance fields
.field private volatile producerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueProducerIndexField;

    const-string v1, "producerIndex"

    invoke-static {v0, v1}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeAccess;->fieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueProducerIndexField;->P_INDEX_OFFSET:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueL1Pad;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final casProducerIndex(JJ)Z
    .locals 8

    sget-object v0, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueProducerIndexField;->P_INDEX_OFFSET:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    return p1
.end method

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

.method public final lvProducerIndex()J
    .locals 2

    iget-wide v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueProducerIndexField;->producerIndex:J

    return-wide v0
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
