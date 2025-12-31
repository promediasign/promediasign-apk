.class Lorg/apache/mina/core/service/IoServiceListenerSupport$LockNotifyingListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/core/future/IoFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/service/IoServiceListenerSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LockNotifyingListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/mina/core/future/IoFutureListener<",
        "Lorg/apache/mina/core/future/IoFuture;",
        ">;"
    }
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport$LockNotifyingListener;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public operationComplete(Lorg/apache/mina/core/future/IoFuture;)V
    .locals 1

    iget-object p1, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport$LockNotifyingListener;->lock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/service/IoServiceListenerSupport$LockNotifyingListener;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
