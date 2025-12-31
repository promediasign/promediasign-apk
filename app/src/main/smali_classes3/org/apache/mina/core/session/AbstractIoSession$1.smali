.class final Lorg/apache/mina/core/session/AbstractIoSession$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/core/future/IoFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/session/AbstractIoSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/mina/core/future/IoFutureListener<",
        "Lorg/apache/mina/core/future/CloseFuture;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lorg/apache/mina/core/future/CloseFuture;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lorg/apache/mina/core/future/IoFuture;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-static {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->access$000(Lorg/apache/mina/core/session/AbstractIoSession;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-static {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->access$100(Lorg/apache/mina/core/session/AbstractIoSession;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lorg/apache/mina/core/session/AbstractIoSession;->access$202(Lorg/apache/mina/core/session/AbstractIoSession;D)D

    invoke-static {p1, v0, v1}, Lorg/apache/mina/core/session/AbstractIoSession;->access$302(Lorg/apache/mina/core/session/AbstractIoSession;D)D

    invoke-static {p1, v0, v1}, Lorg/apache/mina/core/session/AbstractIoSession;->access$402(Lorg/apache/mina/core/session/AbstractIoSession;D)D

    invoke-static {p1, v0, v1}, Lorg/apache/mina/core/session/AbstractIoSession;->access$502(Lorg/apache/mina/core/session/AbstractIoSession;D)D

    return-void
.end method

.method public bridge synthetic operationComplete(Lorg/apache/mina/core/future/IoFuture;)V
    .locals 0

    .line 2
    check-cast p1, Lorg/apache/mina/core/future/CloseFuture;

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/session/AbstractIoSession$1;->operationComplete(Lorg/apache/mina/core/future/CloseFuture;)V

    return-void
.end method
