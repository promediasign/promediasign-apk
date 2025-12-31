.class final Lcom/zaxxer/hikari/util/Java6ConcurrentBag$Synchronizer;
.super Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zaxxer/hikari/util/Java6ConcurrentBag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Synchronizer"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x17428c9adb6d1e2L


# instance fields
.field final synthetic this$0:Lcom/zaxxer/hikari/util/Java6ConcurrentBag;


# direct methods
.method private constructor <init>(Lcom/zaxxer/hikari/util/Java6ConcurrentBag;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zaxxer/hikari/util/Java6ConcurrentBag$Synchronizer;->this$0:Lcom/zaxxer/hikari/util/Java6ConcurrentBag;

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/zaxxer/hikari/util/Java6ConcurrentBag;Lcom/zaxxer/hikari/util/Java6ConcurrentBag$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/zaxxer/hikari/util/Java6ConcurrentBag$Synchronizer;-><init>(Lcom/zaxxer/hikari/util/Java6ConcurrentBag;)V

    return-void
.end method

.method private java67hasQueuedPredecessors()Z
    .locals 1

    sget-boolean v0, Lcom/zaxxer/hikari/util/UtilityElf;->IS_JAVA7:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->hasQueuedPredecessors()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public tryAcquireShared(J)J
    .locals 4

    invoke-direct {p0}, Lcom/zaxxer/hikari/util/Java6ConcurrentBag$Synchronizer;->java67hasQueuedPredecessors()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->getState()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr p1, v2

    sub-long p1, v0, p1

    :goto_0
    return-wide p1
.end method

.method public tryReleaseShared(J)Z
    .locals 0

    iget-object p1, p0, Lcom/zaxxer/hikari/util/Java6ConcurrentBag$Synchronizer;->this$0:Lcom/zaxxer/hikari/util/Java6ConcurrentBag;

    iget-object p1, p1, Lcom/zaxxer/hikari/util/ConcurrentBag;->sequence:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;->setState(J)V

    const/4 p1, 0x1

    return p1
.end method
