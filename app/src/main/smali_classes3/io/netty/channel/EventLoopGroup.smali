.class public interface abstract Lio/netty/channel/EventLoopGroup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/concurrent/EventExecutorGroup;


# virtual methods
.method public abstract synthetic isShuttingDown()Z
.end method

.method public abstract synthetic iterator()Ljava/util/Iterator;
.end method

.method public abstract next()Lio/netty/channel/EventLoop;
.end method

.method public abstract synthetic next()Lio/netty/util/concurrent/EventExecutor;
.end method

.method public abstract register(Lio/netty/channel/Channel;)Lio/netty/channel/ChannelFuture;
.end method

.method public abstract register(Lio/netty/channel/Channel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract register(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
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
