.class public interface abstract Lio/netty/util/concurrent/EventExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/concurrent/EventExecutorGroup;


# virtual methods
.method public abstract inEventLoop()Z
.end method

.method public abstract inEventLoop(Ljava/lang/Thread;)Z
.end method

.method public abstract synthetic isShuttingDown()Z
.end method

.method public abstract synthetic iterator()Ljava/util/Iterator;
.end method

.method public abstract newFailedFuture(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lio/netty/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract newProgressivePromise()Lio/netty/util/concurrent/ProgressivePromise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/netty/util/concurrent/ProgressivePromise<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract newPromise()Lio/netty/util/concurrent/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/netty/util/concurrent/Promise<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract newSucceededFuture(Ljava/lang/Object;)Lio/netty/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "Lio/netty/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract next()Lio/netty/util/concurrent/EventExecutor;
.end method

.method public abstract parent()Lio/netty/util/concurrent/EventExecutorGroup;
.end method

.method public abstract synthetic schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;
.end method

.method public abstract synthetic schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;
.end method

.method public abstract synthetic scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;
.end method

.method public abstract synthetic scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;
.end method

.method public abstract synthetic shutdown()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract synthetic shutdownGracefully()Lio/netty/util/concurrent/Future;
.end method

.method public abstract synthetic shutdownGracefully(JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/Future;
.end method

.method public abstract synthetic shutdownNow()Ljava/util/List;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract synthetic submit(Ljava/lang/Runnable;)Lio/netty/util/concurrent/Future;
.end method

.method public abstract synthetic submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lio/netty/util/concurrent/Future;
.end method

.method public abstract synthetic submit(Ljava/util/concurrent/Callable;)Lio/netty/util/concurrent/Future;
.end method

.method public abstract synthetic terminationFuture()Lio/netty/util/concurrent/Future;
.end method
