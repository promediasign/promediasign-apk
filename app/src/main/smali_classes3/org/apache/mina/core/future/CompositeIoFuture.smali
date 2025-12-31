.class public Lorg/apache/mina/core/future/CompositeIoFuture;
.super Lorg/apache/mina/core/future/DefaultIoFuture;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/core/future/CompositeIoFuture$NotifyingListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lorg/apache/mina/core/future/IoFuture;",
        ">",
        "Lorg/apache/mina/core/future/DefaultIoFuture;"
    }
.end annotation


# instance fields
.field private volatile constructionFinished:Z

.field private final listener:Lorg/apache/mina/core/future/CompositeIoFuture$NotifyingListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/core/future/CompositeIoFuture<",
            "TE;>.Notifying",
            "Listener;"
        }
    .end annotation
.end field

.field private final unnotified:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/mina/core/future/DefaultIoFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    new-instance v1, Lorg/apache/mina/core/future/CompositeIoFuture$NotifyingListener;

    invoke-direct {v1, p0, v0}, Lorg/apache/mina/core/future/CompositeIoFuture$NotifyingListener;-><init>(Lorg/apache/mina/core/future/CompositeIoFuture;Lorg/apache/mina/core/future/CompositeIoFuture$1;)V

    iput-object v1, p0, Lorg/apache/mina/core/future/CompositeIoFuture;->listener:Lorg/apache/mina/core/future/CompositeIoFuture$NotifyingListener;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/future/CompositeIoFuture;->unnotified:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/future/IoFuture;

    iget-object v1, p0, Lorg/apache/mina/core/future/CompositeIoFuture;->listener:Lorg/apache/mina/core/future/CompositeIoFuture$NotifyingListener;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/future/IoFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;

    iget-object v0, p0, Lorg/apache/mina/core/future/CompositeIoFuture;->unnotified:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/mina/core/future/CompositeIoFuture;->constructionFinished:Z

    iget-object p1, p0, Lorg/apache/mina/core/future/CompositeIoFuture;->unnotified:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/future/DefaultIoFuture;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static synthetic access$100(Lorg/apache/mina/core/future/CompositeIoFuture;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lorg/apache/mina/core/future/CompositeIoFuture;->unnotified:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/apache/mina/core/future/CompositeIoFuture;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/mina/core/future/CompositeIoFuture;->constructionFinished:Z

    return p0
.end method
