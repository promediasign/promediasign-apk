.class public Lio/netty/util/concurrent/DefaultProgressivePromise;
.super Lio/netty/util/concurrent/DefaultPromise;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/concurrent/ProgressivePromise;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/concurrent/DefaultPromise<",
        "TV;>;",
        "Lio/netty/util/concurrent/ProgressivePromise<",
        "TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;-><init>()V

    return-void
.end method

.method public constructor <init>(Lio/netty/util/concurrent/EventExecutor;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/DefaultProgressivePromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/ProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/ProgressiveFuture;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/DefaultProgressivePromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/ProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/ProgressivePromise;
    .locals 0
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

    .line 3
    invoke-super {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    return-object p0
.end method

.method public bridge synthetic addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/DefaultProgressivePromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/ProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/DefaultProgressivePromise;->addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/ProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/ProgressiveFuture;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/DefaultProgressivePromise;->addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/ProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public varargs addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/ProgressivePromise;
    .locals 0
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

    .line 3
    invoke-super {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    return-object p0
.end method

.method public bridge synthetic addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/DefaultProgressivePromise;->addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/ProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic await()Lio/netty/util/concurrent/Future;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultProgressivePromise;->await()Lio/netty/util/concurrent/ProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic await()Lio/netty/util/concurrent/ProgressiveFuture;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultProgressivePromise;->await()Lio/netty/util/concurrent/ProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public await()Lio/netty/util/concurrent/ProgressivePromise;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/ProgressivePromise<",
            "TV;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0}, Lio/netty/util/concurrent/DefaultPromise;->await()Lio/netty/util/concurrent/Promise;

    return-object p0
.end method

.method public bridge synthetic await()Lio/netty/util/concurrent/Promise;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultProgressivePromise;->await()Lio/netty/util/concurrent/ProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic awaitUninterruptibly()Lio/netty/util/concurrent/Future;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultProgressivePromise;->awaitUninterruptibly()Lio/netty/util/concurrent/ProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic awaitUninterruptibly()Lio/netty/util/concurrent/ProgressiveFuture;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultProgressivePromise;->awaitUninterruptibly()Lio/netty/util/concurrent/ProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public awaitUninterruptibly()Lio/netty/util/concurrent/ProgressivePromise;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/ProgressivePromise<",
            "TV;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0}, Lio/netty/util/concurrent/DefaultPromise;->awaitUninterruptibly()Lio/netty/util/concurrent/Promise;

    return-object p0
.end method

.method public bridge synthetic awaitUninterruptibly()Lio/netty/util/concurrent/Promise;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultProgressivePromise;->awaitUninterruptibly()Lio/netty/util/concurrent/ProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/DefaultProgressivePromise;->removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/ProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/ProgressiveFuture;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/DefaultProgressivePromise;->removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/ProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/ProgressivePromise;
    .locals 0
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

    .line 3
    invoke-super {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    return-object p0
.end method

.method public bridge synthetic removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/DefaultProgressivePromise;->removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/ProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/DefaultProgressivePromise;->removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/ProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/ProgressiveFuture;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/DefaultProgressivePromise;->removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/ProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public varargs removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/ProgressivePromise;
    .locals 0
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

    .line 3
    invoke-super {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    return-object p0
.end method

.method public bridge synthetic removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/DefaultProgressivePromise;->removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/ProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/ProgressivePromise;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lio/netty/util/concurrent/ProgressivePromise<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    return-object p0
.end method

.method public bridge synthetic setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/DefaultProgressivePromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/ProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public setProgress(JJ)Lio/netty/util/concurrent/ProgressivePromise;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lio/netty/util/concurrent/ProgressivePromise<",
            "TV;>;"
        }
    .end annotation

    .line 1
    const-string v0, "progress: "

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    cmp-long v3, p3, v1

    .line 6
    .line 7
    if-gez v3, :cond_1

    .line 8
    .line 9
    cmp-long p3, p1, v1

    .line 10
    .line 11
    if-ltz p3, :cond_0

    .line 12
    .line 13
    const-wide/16 p3, -0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    new-instance p4, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, " (expected: >= 0)"

    .line 27
    .line 28
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p3

    .line 39
    :cond_1
    cmp-long v3, p1, v1

    .line 40
    .line 41
    if-ltz v3, :cond_3

    .line 42
    .line 43
    cmp-long v1, p1, p3

    .line 44
    .line 45
    if-gtz v1, :cond_3

    .line 46
    .line 47
    :goto_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/netty/util/concurrent/DefaultPromise;->notifyProgressiveListeners(JJ)V

    .line 54
    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string p2, "complete already"

    .line 60
    .line 61
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 66
    .line 67
    const-string v2, " (expected: 0 <= progress <= total ("

    .line 68
    .line 69
    invoke-static {v0, p1, p2, v2}, Ls/a;->e(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string p2, "))"

    .line 74
    .line 75
    invoke-static {p1, p3, p4, p2}, LA/g;->l(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v1
.end method

.method public setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/ProgressivePromise;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lio/netty/util/concurrent/ProgressivePromise<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    return-object p0
.end method

.method public bridge synthetic setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/DefaultProgressivePromise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/ProgressivePromise;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic sync()Lio/netty/util/concurrent/Future;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultProgressivePromise;->sync()Lio/netty/util/concurrent/ProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sync()Lio/netty/util/concurrent/ProgressiveFuture;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultProgressivePromise;->sync()Lio/netty/util/concurrent/ProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public sync()Lio/netty/util/concurrent/ProgressivePromise;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/ProgressivePromise<",
            "TV;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0}, Lio/netty/util/concurrent/DefaultPromise;->sync()Lio/netty/util/concurrent/Promise;

    return-object p0
.end method

.method public bridge synthetic sync()Lio/netty/util/concurrent/Promise;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultProgressivePromise;->sync()Lio/netty/util/concurrent/ProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic syncUninterruptibly()Lio/netty/util/concurrent/Future;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultProgressivePromise;->syncUninterruptibly()Lio/netty/util/concurrent/ProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic syncUninterruptibly()Lio/netty/util/concurrent/ProgressiveFuture;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultProgressivePromise;->syncUninterruptibly()Lio/netty/util/concurrent/ProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public syncUninterruptibly()Lio/netty/util/concurrent/ProgressivePromise;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/ProgressivePromise<",
            "TV;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0}, Lio/netty/util/concurrent/DefaultPromise;->syncUninterruptibly()Lio/netty/util/concurrent/Promise;

    return-object p0
.end method

.method public bridge synthetic syncUninterruptibly()Lio/netty/util/concurrent/Promise;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultProgressivePromise;->syncUninterruptibly()Lio/netty/util/concurrent/ProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public tryProgress(JJ)Z
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p3, v1

    if-gez v3, :cond_2

    cmp-long p3, p1, v1

    if-ltz p3, :cond_1

    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p3, -0x1

    goto :goto_1

    :cond_1
    :goto_0
    return v0

    :cond_2
    cmp-long v3, p1, v1

    if-ltz v3, :cond_4

    cmp-long v1, p1, p3

    if-gtz v1, :cond_4

    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/netty/util/concurrent/DefaultPromise;->notifyProgressiveListeners(JJ)V

    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_2
    return v0
.end method
