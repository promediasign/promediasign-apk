.class abstract Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueueProducerNodeRef;
.super Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueuePad0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueuePad0<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final P_NODE_OFFSET:J


# instance fields
.field private producerNode:Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueueProducerNodeRef;

    const-string v1, "producerNode"

    invoke-static {v0, v1}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeAccess;->fieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueueProducerNodeRef;->P_NODE_OFFSET:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueuePad0;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract synthetic capacity()I
.end method

.method public final casProducerNode(Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<",
            "TE;>;",
            "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<",
            "TE;>;)Z"
        }
    .end annotation

    sget-object v0, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueueProducerNodeRef;->P_NODE_OFFSET:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lio/netty/util/internal/shaded/org/jctools/queues/a;->a(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

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

.method public final lpProducerNode()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueueProducerNodeRef;->producerNode:Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    return-object v0
.end method

.method public final lvProducerNode()Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<",
            "TE;>;"
        }
    .end annotation

    sget-object v0, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueueProducerNodeRef;->P_NODE_OFFSET:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    return-object v0
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

.method public final spProducerNode(Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode<",
            "TE;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/netty/util/internal/shaded/org/jctools/queues/BaseLinkedQueueProducerNodeRef;->producerNode:Lio/netty/util/internal/shaded/org/jctools/queues/LinkedQueueNode;

    return-void
.end method
