.class final Lio/netty/util/concurrent/DefaultEventExecutorChooserFactory$GenericEventExecutorChooser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/concurrent/EventExecutorChooserFactory$EventExecutorChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/concurrent/DefaultEventExecutorChooserFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GenericEventExecutorChooser"
.end annotation


# instance fields
.field private final executors:[Lio/netty/util/concurrent/EventExecutor;

.field private final idx:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>([Lio/netty/util/concurrent/EventExecutor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/netty/util/concurrent/DefaultEventExecutorChooserFactory$GenericEventExecutorChooser;->idx:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lio/netty/util/concurrent/DefaultEventExecutorChooserFactory$GenericEventExecutorChooser;->executors:[Lio/netty/util/concurrent/EventExecutor;

    return-void
.end method


# virtual methods
.method public next()Lio/netty/util/concurrent/EventExecutor;
    .locals 3

    iget-object v0, p0, Lio/netty/util/concurrent/DefaultEventExecutorChooserFactory$GenericEventExecutorChooser;->executors:[Lio/netty/util/concurrent/EventExecutor;

    iget-object v1, p0, Lio/netty/util/concurrent/DefaultEventExecutorChooserFactory$GenericEventExecutorChooser;->idx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    iget-object v2, p0, Lio/netty/util/concurrent/DefaultEventExecutorChooserFactory$GenericEventExecutorChooser;->executors:[Lio/netty/util/concurrent/EventExecutor;

    array-length v2, v2

    rem-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method
