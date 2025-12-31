.class public Lorg/apache/mina/core/future/DefaultCloseFuture;
.super Lorg/apache/mina/core/future/DefaultIoFuture;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/core/future/CloseFuture;


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/mina/core/future/DefaultIoFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method


# virtual methods
.method public addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/CloseFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/future/IoFutureListener<",
            "*>;)",
            "Lorg/apache/mina/core/future/CloseFuture;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lorg/apache/mina/core/future/DefaultIoFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/core/future/CloseFuture;

    return-object p1
.end method

.method public bridge synthetic addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/future/DefaultCloseFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/CloseFuture;

    move-result-object p1

    return-object p1
.end method

.method public await()Lorg/apache/mina/core/future/CloseFuture;
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->await()Lorg/apache/mina/core/future/IoFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/CloseFuture;

    return-object v0
.end method

.method public bridge synthetic await()Lorg/apache/mina/core/future/IoFuture;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultCloseFuture;->await()Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v0

    return-object v0
.end method

.method public awaitUninterruptibly()Lorg/apache/mina/core/future/CloseFuture;
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/CloseFuture;

    return-object v0
.end method

.method public bridge synthetic awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultCloseFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v0

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/CloseFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/future/IoFutureListener<",
            "*>;)",
            "Lorg/apache/mina/core/future/CloseFuture;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lorg/apache/mina/core/future/DefaultIoFuture;->removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/core/future/CloseFuture;

    return-object p1
.end method

.method public bridge synthetic removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/future/DefaultCloseFuture;->removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/CloseFuture;

    move-result-object p1

    return-object p1
.end method

.method public setClosed()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/future/DefaultIoFuture;->setValue(Ljava/lang/Object;)V

    return-void
.end method
