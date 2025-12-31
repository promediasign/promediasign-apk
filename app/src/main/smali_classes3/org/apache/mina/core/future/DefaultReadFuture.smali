.class public Lorg/apache/mina/core/future/DefaultReadFuture;
.super Lorg/apache/mina/core/future/DefaultIoFuture;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/core/future/ReadFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/future/DefaultReadFuture$ExceptionHolder;
    }
.end annotation


# static fields
.field private static final CLOSED:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/mina/core/future/DefaultReadFuture;->CLOSED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/mina/core/future/DefaultIoFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/future/DefaultReadFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/ReadFuture;

    move-result-object p1

    return-object p1
.end method

.method public addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/ReadFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/future/IoFutureListener<",
            "*>;)",
            "Lorg/apache/mina/core/future/ReadFuture;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lorg/apache/mina/core/future/DefaultIoFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/core/future/ReadFuture;

    return-object p1
.end method

.method public bridge synthetic await()Lorg/apache/mina/core/future/IoFuture;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultReadFuture;->await()Lorg/apache/mina/core/future/ReadFuture;

    move-result-object v0

    return-object v0
.end method

.method public await()Lorg/apache/mina/core/future/ReadFuture;
    .locals 1

    .line 2
    invoke-super {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->await()Lorg/apache/mina/core/future/IoFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/ReadFuture;

    return-object v0
.end method

.method public bridge synthetic awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultReadFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/ReadFuture;

    move-result-object v0

    return-object v0
.end method

.method public awaitUninterruptibly()Lorg/apache/mina/core/future/ReadFuture;
    .locals 1

    .line 2
    invoke-super {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/ReadFuture;

    return-object v0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/mina/core/future/DefaultReadFuture$ExceptionHolder;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/mina/core/future/DefaultReadFuture$ExceptionHolder;

    invoke-static {v0}, Lorg/apache/mina/core/future/DefaultReadFuture$ExceptionHolder;->access$000(Lorg/apache/mina/core/future/DefaultReadFuture$ExceptionHolder;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessage()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->isDone()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lorg/apache/mina/core/future/DefaultReadFuture;->CLOSED:Ljava/lang/Object;

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    instance-of v1, v0, Lorg/apache/mina/core/future/DefaultReadFuture$ExceptionHolder;

    if-eqz v1, :cond_4

    check-cast v0, Lorg/apache/mina/core/future/DefaultReadFuture$ExceptionHolder;

    invoke-static {v0}, Lorg/apache/mina/core/future/DefaultReadFuture$ExceptionHolder;->access$000(Lorg/apache/mina/core/future/DefaultReadFuture$ExceptionHolder;)Ljava/lang/Throwable;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_3

    instance-of v1, v0, Ljava/lang/Error;

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_1

    instance-of v1, v0, Ljava/lang/Exception;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    check-cast v0, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_3
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_4
    :goto_0
    return-object v0

    :cond_5
    return-object v1
.end method

.method public isClosed()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->isDone()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lorg/apache/mina/core/future/DefaultReadFuture;->CLOSED:Ljava/lang/Object;

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isRead()Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->isDone()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lorg/apache/mina/core/future/DefaultReadFuture;->CLOSED:Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    instance-of v0, v0, Lorg/apache/mina/core/future/DefaultReadFuture$ExceptionHolder;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public bridge synthetic removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/mina/core/future/DefaultReadFuture;->removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/ReadFuture;

    move-result-object p1

    return-object p1
.end method

.method public removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/ReadFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/future/IoFutureListener<",
            "*>;)",
            "Lorg/apache/mina/core/future/ReadFuture;"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lorg/apache/mina/core/future/DefaultIoFuture;->removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/core/future/ReadFuture;

    return-object p1
.end method

.method public setClosed()V
    .locals 1

    sget-object v0, Lorg/apache/mina/core/future/DefaultReadFuture;->CLOSED:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/future/DefaultIoFuture;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setException(Ljava/lang/Throwable;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lorg/apache/mina/core/future/DefaultReadFuture$ExceptionHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/mina/core/future/DefaultReadFuture$ExceptionHolder;-><init>(Ljava/lang/Throwable;Lorg/apache/mina/core/future/DefaultReadFuture$1;)V

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/future/DefaultIoFuture;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "exception"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRead(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/future/DefaultIoFuture;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "message"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
