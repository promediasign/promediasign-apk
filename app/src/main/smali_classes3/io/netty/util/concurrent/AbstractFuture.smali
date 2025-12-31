.class public abstract Lio/netty/util/concurrent/AbstractFuture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/netty/util/concurrent/Future<",
        "TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract synthetic addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
.end method

.method public varargs abstract synthetic addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
.end method

.method public abstract synthetic await()Lio/netty/util/concurrent/Future;
.end method

.method public abstract synthetic await(J)Z
.end method

.method public abstract synthetic await(JLjava/util/concurrent/TimeUnit;)Z
.end method

.method public abstract synthetic awaitUninterruptibly()Lio/netty/util/concurrent/Future;
.end method

.method public abstract synthetic awaitUninterruptibly(J)Z
.end method

.method public abstract synthetic awaitUninterruptibly(JLjava/util/concurrent/TimeUnit;)Z
.end method

.method public abstract synthetic cancel(Z)Z
.end method

.method public abstract synthetic cause()Ljava/lang/Throwable;
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/util/concurrent/AbstractFuture;->await()Lio/netty/util/concurrent/Future;

    invoke-virtual {p0}, Lio/netty/util/concurrent/AbstractFuture;->cause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/netty/util/concurrent/AbstractFuture;->getNow()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/util/concurrent/CancellationException;

    throw v0

    :cond_1
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/util/concurrent/AbstractFuture;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lio/netty/util/concurrent/AbstractFuture;->cause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lio/netty/util/concurrent/AbstractFuture;->getNow()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-eqz p2, :cond_1

    check-cast p1, Ljava/util/concurrent/CancellationException;

    throw p1

    :cond_1
    new-instance p2, Ljava/util/concurrent/ExecutionException;

    invoke-direct {p2, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1
.end method

.method public abstract synthetic getNow()Ljava/lang/Object;
.end method

.method public abstract synthetic isCancellable()Z
.end method

.method public abstract synthetic isSuccess()Z
.end method

.method public abstract synthetic removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
.end method

.method public varargs abstract synthetic removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
.end method

.method public abstract synthetic sync()Lio/netty/util/concurrent/Future;
.end method

.method public abstract synthetic syncUninterruptibly()Lio/netty/util/concurrent/Future;
.end method
