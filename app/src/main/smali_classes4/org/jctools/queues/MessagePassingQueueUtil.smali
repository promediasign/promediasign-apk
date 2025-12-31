.class public final Lorg/jctools/queues/MessagePassingQueueUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drain(Lorg/jctools/queues/MessagePassingQueue;Lorg/jctools/queues/MessagePassingQueue$Consumer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jctools/queues/MessagePassingQueue<",
            "+TE;>;",
            "Lorg/jctools/queues/MessagePassingQueue$Consumer<",
            "-TE;>;)I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Lorg/jctools/queues/MessagePassingQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v1}, Lorg/jctools/queues/MessagePassingQueue$Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static drain(Lorg/jctools/queues/MessagePassingQueue;Lorg/jctools/queues/MessagePassingQueue$Consumer;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jctools/queues/MessagePassingQueue<",
            "+TE;>;",
            "Lorg/jctools/queues/MessagePassingQueue$Consumer<",
            "-TE;>;I)I"
        }
    .end annotation

    .line 2
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-interface {p0}, Lorg/jctools/queues/MessagePassingQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v1}, Lorg/jctools/queues/MessagePassingQueue$Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static drain(Lorg/jctools/queues/MessagePassingQueue;Lorg/jctools/queues/MessagePassingQueue$Consumer;Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;Lorg/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jctools/queues/MessagePassingQueue<",
            "+TE;>;",
            "Lorg/jctools/queues/MessagePassingQueue$Consumer<",
            "-TE;>;",
            "Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;",
            "Lorg/jctools/queues/MessagePassingQueue$ExitCondition;",
            ")V"
        }
    .end annotation

    .line 3
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-interface {p3}, Lorg/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Lorg/jctools/queues/MessagePassingQueue;->relaxedPoll()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-interface {p2, v1}, Lorg/jctools/queues/MessagePassingQueue$WaitStrategy;->idle(I)I

    move-result v1

    goto :goto_1

    :cond_0
    invoke-interface {p1, v2}, Lorg/jctools/queues/MessagePassingQueue$Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method
