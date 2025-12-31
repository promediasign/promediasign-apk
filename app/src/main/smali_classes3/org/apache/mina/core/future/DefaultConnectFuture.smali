.class public Lorg/apache/mina/core/future/DefaultConnectFuture;
.super Lorg/apache/mina/core/future/DefaultIoFuture;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/core/future/ConnectFuture;


# static fields
.field private static final CANCELED:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/mina/core/future/DefaultConnectFuture;->CANCELED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/mina/core/future/DefaultIoFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public static newFailedFuture(Ljava/lang/Throwable;)Lorg/apache/mina/core/future/ConnectFuture;
    .locals 1

    new-instance v0, Lorg/apache/mina/core/future/DefaultConnectFuture;

    invoke-direct {v0}, Lorg/apache/mina/core/future/DefaultConnectFuture;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/mina/core/future/DefaultConnectFuture;->setException(Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/ConnectFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/future/IoFutureListener<",
            "*>;)",
            "Lorg/apache/mina/core/future/ConnectFuture;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lorg/apache/mina/core/future/DefaultIoFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/core/future/ConnectFuture;

    return-object p1
.end method

.method public bridge synthetic addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/future/DefaultConnectFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/ConnectFuture;

    move-result-object p1

    return-object p1
.end method

.method public await()Lorg/apache/mina/core/future/ConnectFuture;
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->await()Lorg/apache/mina/core/future/IoFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/ConnectFuture;

    return-object v0
.end method

.method public bridge synthetic await()Lorg/apache/mina/core/future/IoFuture;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultConnectFuture;->await()Lorg/apache/mina/core/future/ConnectFuture;

    move-result-object v0

    return-object v0
.end method

.method public awaitUninterruptibly()Lorg/apache/mina/core/future/ConnectFuture;
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/ConnectFuture;

    return-object v0
.end method

.method public bridge synthetic awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultConnectFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/ConnectFuture;

    move-result-object v0

    return-object v0
.end method

.method public cancel()V
    .locals 1

    sget-object v0, Lorg/apache/mina/core/future/DefaultConnectFuture;->CANCELED:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/future/DefaultIoFuture;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSession()Lorg/apache/mina/core/session/IoSession;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_3

    instance-of v1, v0, Ljava/lang/Error;

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/lang/Throwable;

    if-nez v1, :cond_1

    instance-of v1, v0, Lorg/apache/mina/core/session/IoSession;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/mina/core/session/IoSession;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    const-string v2, "Failed to get the session."

    invoke-direct {v1, v2}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/RuntimeIoException;

    throw v0

    :cond_2
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_3
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
.end method

.method public isCanceled()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/core/future/DefaultConnectFuture;->CANCELED:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConnected()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/mina/core/session/IoSession;

    return v0
.end method

.method public removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/ConnectFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/future/IoFutureListener<",
            "*>;)",
            "Lorg/apache/mina/core/future/ConnectFuture;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lorg/apache/mina/core/future/DefaultIoFuture;->removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/core/future/ConnectFuture;

    return-object p1
.end method

.method public bridge synthetic removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/future/DefaultConnectFuture;->removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/ConnectFuture;

    move-result-object p1

    return-object p1
.end method

.method public setException(Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/future/DefaultIoFuture;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "exception"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSession(Lorg/apache/mina/core/session/IoSession;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/future/DefaultIoFuture;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "session"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
