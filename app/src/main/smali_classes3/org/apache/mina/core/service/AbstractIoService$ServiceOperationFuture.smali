.class public Lorg/apache/mina/core/service/AbstractIoService$ServiceOperationFuture;
.super Lorg/apache/mina/core/future/DefaultIoFuture;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/service/AbstractIoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceOperationFuture"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/mina/core/future/DefaultIoFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method


# virtual methods
.method public final getException()Ljava/lang/Exception;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Exception;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isDone()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setDone()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/future/DefaultIoFuture;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setException(Ljava/lang/Exception;)V
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
