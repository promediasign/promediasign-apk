.class final Lorg/apache/mina/core/write/DefaultWriteRequest$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/core/future/WriteFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/write/DefaultWriteRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/write/DefaultWriteRequest$1;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object p1

    return-object p1
.end method

.method public addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/WriteFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/future/IoFutureListener<",
            "*>;)",
            "Lorg/apache/mina/core/future/WriteFuture;"
        }
    .end annotation

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You can\'t add a listener to a dummy future."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic await()Lorg/apache/mina/core/future/IoFuture;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/core/write/DefaultWriteRequest$1;->await()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v0

    return-object v0
.end method

.method public await()Lorg/apache/mina/core/future/WriteFuture;
    .locals 0

    .line 2
    return-object p0
.end method

.method public await(J)Z
    .locals 0

    .line 3
    const/4 p1, 0x1

    return p1
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 0

    .line 4
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/core/write/DefaultWriteRequest$1;->awaitUninterruptibly()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v0

    return-object v0
.end method

.method public awaitUninterruptibly()Lorg/apache/mina/core/future/WriteFuture;
    .locals 0

    .line 2
    return-object p0
.end method

.method public awaitUninterruptibly(J)Z
    .locals 0

    .line 3
    const/4 p1, 0x1

    return p1
.end method

.method public awaitUninterruptibly(JLjava/util/concurrent/TimeUnit;)Z
    .locals 0

    .line 4
    const/4 p1, 0x1

    return p1
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSession()Lorg/apache/mina/core/session/IoSession;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isDone()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isWritten()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public join()V
    .locals 0

    .line 1
    return-void
.end method

.method public join(J)Z
    .locals 0

    .line 2
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/write/DefaultWriteRequest$1;->removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object p1

    return-object p1
.end method

.method public removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/WriteFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/future/IoFutureListener<",
            "*>;)",
            "Lorg/apache/mina/core/future/WriteFuture;"
        }
    .end annotation

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You can\'t add a listener to a dummy future."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setException(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public setWritten()V
    .locals 0

    return-void
.end method
