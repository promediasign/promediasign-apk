.class public interface abstract Lio/netty/util/concurrent/ProgressivePromise;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/concurrent/Promise;
.implements Lio/netty/util/concurrent/ProgressiveFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/netty/util/concurrent/Promise<",
        "TV;>;",
        "Lio/netty/util/concurrent/ProgressiveFuture<",
        "TV;>;"
    }
.end annotation


# virtual methods
.method public abstract synthetic addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
.end method

.method public abstract synthetic addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/ProgressiveFuture;
.end method

.method public abstract addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/ProgressivePromise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-TV;>;>;)",
            "Lio/netty/util/concurrent/ProgressivePromise<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract synthetic addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
.end method

.method public varargs abstract synthetic addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
.end method

.method public varargs abstract synthetic addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/ProgressiveFuture;
.end method

.method public varargs abstract addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/ProgressivePromise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-TV;>;>;)",
            "Lio/netty/util/concurrent/ProgressivePromise<",
            "TV;>;"
        }
    .end annotation
.end method

.method public varargs abstract synthetic addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
.end method

.method public abstract synthetic await()Lio/netty/util/concurrent/Future;
.end method

.method public abstract synthetic await()Lio/netty/util/concurrent/ProgressiveFuture;
.end method

.method public abstract await()Lio/netty/util/concurrent/ProgressivePromise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/ProgressivePromise<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract synthetic await()Lio/netty/util/concurrent/Promise;
.end method

.method public abstract synthetic await(J)Z
.end method

.method public abstract synthetic await(JLjava/util/concurrent/TimeUnit;)Z
.end method

.method public abstract synthetic awaitUninterruptibly()Lio/netty/util/concurrent/Future;
.end method

.method public abstract synthetic awaitUninterruptibly()Lio/netty/util/concurrent/ProgressiveFuture;
.end method

.method public abstract awaitUninterruptibly()Lio/netty/util/concurrent/ProgressivePromise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/ProgressivePromise<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract synthetic awaitUninterruptibly()Lio/netty/util/concurrent/Promise;
.end method

.method public abstract synthetic awaitUninterruptibly(J)Z
.end method

.method public abstract synthetic awaitUninterruptibly(JLjava/util/concurrent/TimeUnit;)Z
.end method

.method public abstract synthetic cancel(Z)Z
.end method

.method public abstract synthetic cause()Ljava/lang/Throwable;
.end method

.method public abstract synthetic getNow()Ljava/lang/Object;
.end method

.method public abstract synthetic isCancellable()Z
.end method

.method public abstract synthetic isSuccess()Z
.end method

.method public abstract synthetic removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
.end method

.method public abstract synthetic removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/ProgressiveFuture;
.end method

.method public abstract removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/ProgressivePromise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-TV;>;>;)",
            "Lio/netty/util/concurrent/ProgressivePromise<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract synthetic removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
.end method

.method public varargs abstract synthetic removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
.end method

.method public varargs abstract synthetic removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/ProgressiveFuture;
.end method

.method public varargs abstract removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/ProgressivePromise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-TV;>;>;)",
            "Lio/netty/util/concurrent/ProgressivePromise<",
            "TV;>;"
        }
    .end annotation
.end method

.method public varargs abstract synthetic removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
.end method

.method public abstract setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/ProgressivePromise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lio/netty/util/concurrent/ProgressivePromise<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract synthetic setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;
.end method

.method public abstract setProgress(JJ)Lio/netty/util/concurrent/ProgressivePromise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lio/netty/util/concurrent/ProgressivePromise<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/ProgressivePromise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lio/netty/util/concurrent/ProgressivePromise<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract synthetic setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;
.end method

.method public abstract synthetic setUncancellable()Z
.end method

.method public abstract synthetic sync()Lio/netty/util/concurrent/Future;
.end method

.method public abstract synthetic sync()Lio/netty/util/concurrent/ProgressiveFuture;
.end method

.method public abstract sync()Lio/netty/util/concurrent/ProgressivePromise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/ProgressivePromise<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract synthetic sync()Lio/netty/util/concurrent/Promise;
.end method

.method public abstract synthetic syncUninterruptibly()Lio/netty/util/concurrent/Future;
.end method

.method public abstract synthetic syncUninterruptibly()Lio/netty/util/concurrent/ProgressiveFuture;
.end method

.method public abstract syncUninterruptibly()Lio/netty/util/concurrent/ProgressivePromise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/ProgressivePromise<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract synthetic syncUninterruptibly()Lio/netty/util/concurrent/Promise;
.end method

.method public abstract synthetic tryFailure(Ljava/lang/Throwable;)Z
.end method

.method public abstract tryProgress(JJ)Z
.end method

.method public abstract synthetic trySuccess(Ljava/lang/Object;)Z
.end method
