.class public Lorg/apache/mina/core/future/DefaultIoFuture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/core/future/IoFuture;


# static fields
.field private static final DEAD_LOCK_CHECK_INTERVAL:J = 0x1388L


# instance fields
.field private firstListener:Lorg/apache/mina/core/future/IoFutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/core/future/IoFutureListener<",
            "*>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private otherListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/mina/core/future/IoFutureListener<",
            "*>;>;"
        }
    .end annotation
.end field

.field private ready:Z

.field private result:Ljava/lang/Object;

.field private final session:Lorg/apache/mina/core/session/IoSession;

.field private waiters:I


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->session:Lorg/apache/mina/core/session/IoSession;

    iput-object p0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    return-void
.end method

.method private await0(JZ)Z
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    :cond_0
    iget-object v4, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-boolean v5, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    if-eqz v5, :cond_1

    monitor-exit v4

    return v5

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    cmp-long v6, p1, v2

    if-gtz v6, :cond_2

    monitor-exit v4

    return v5

    :cond_2
    iget v2, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    const-wide/16 v5, 0x1388

    :try_start_1
    invoke-static {p1, p2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    iget-object v2, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v2

    if-nez p3, :cond_7

    :goto_0
    :try_start_2
    iget-boolean v2, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_5

    :try_start_3
    iget p1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    sub-int/2addr p1, v3

    iput p1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    if-nez v2, :cond_4

    invoke-direct {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->checkDeadLock()V

    :cond_4
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v3

    :cond_5
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v2, v0, v5

    if-gez v2, :cond_3

    iget-boolean p1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget p2, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    sub-int/2addr p2, v3

    iput p2, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    if-nez p1, :cond_6

    invoke-direct {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->checkDeadLock()V

    :cond_6
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return p1

    :cond_7
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_1
    :try_start_7
    iget p2, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    sub-int/2addr p2, v3

    iput p2, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    iget-boolean p2, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    if-nez p2, :cond_8

    invoke-direct {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->checkDeadLock()V

    :cond_8
    throw p1

    :goto_2
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1
.end method

.method private checkDeadLock()V
    .locals 6

    instance-of v0, p0, Lorg/apache/mina/core/future/CloseFuture;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/apache/mina/core/future/WriteFuture;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/apache/mina/core/future/ReadFuture;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/apache/mina/core/future/ConnectFuture;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    const-class v5, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "t"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DEAD LOCK: IoFuture.await() was invoked from an I/O processor thread.  Please use IoFutureListener or configure a proper thread model alternatively."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    :try_start_0
    const-class v4, Lorg/apache/mina/core/future/DefaultIoFuture;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lorg/apache/mina/core/service/IoProcessor;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DEAD LOCK: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "IoFuture"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".await() was invoked from an I/O processor thread.  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Please use "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "IoFutureListener"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " or configure a proper thread model alternatively."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private notifyListener(Lorg/apache/mina/core/future/IoFutureListener;)V
    .locals 1

    :try_start_0
    invoke-interface {p1, p0}, Lorg/apache/mina/core/future/IoFutureListener;->operationComplete(Lorg/apache/mina/core/future/IoFuture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private notifyListeners()V
    .locals 3

    iget-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->firstListener:Lorg/apache/mina/core/future/IoFutureListener;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lorg/apache/mina/core/future/DefaultIoFuture;->notifyListener(Lorg/apache/mina/core/future/IoFutureListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->firstListener:Lorg/apache/mina/core/future/IoFutureListener;

    iget-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->otherListeners:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/core/future/IoFutureListener;

    invoke-direct {p0, v2}, Lorg/apache/mina/core/future/DefaultIoFuture;->notifyListener(Lorg/apache/mina/core/future/IoFutureListener;)V

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->otherListeners:Ljava/util/List;

    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/future/IoFutureListener<",
            "*>;)",
            "Lorg/apache/mina/core/future/IoFuture;"
        }
    .end annotation

    if-eqz p1, :cond_4

    iget-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->firstListener:Lorg/apache/mina/core/future/IoFutureListener;

    if-nez v1, :cond_1

    iput-object p1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->firstListener:Lorg/apache/mina/core/future/IoFutureListener;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->otherListeners:Ljava/util/List;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->otherListeners:Ljava/util/List;

    :cond_2
    iget-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->otherListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 v2, 0x0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    invoke-direct {p0, p1}, Lorg/apache/mina/core/future/DefaultIoFuture;->notifyListener(Lorg/apache/mina/core/future/IoFutureListener;)V

    :cond_3
    return-object p0

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public await()Lorg/apache/mina/core/future/IoFuture;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    monitor-enter v0

    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    if-nez v1, :cond_2

    iget v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    iget-boolean v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->checkDeadLock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v1

    iget v2, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    iget-boolean v2, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    if-nez v2, :cond_1

    invoke-direct {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->checkDeadLock()V

    :cond_1
    throw v1

    :cond_2
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public await(J)Z
    .locals 1

    .line 2
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/mina/core/future/DefaultIoFuture;->await0(JZ)Z

    move-result p1

    return p1
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 0

    .line 3
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/core/future/DefaultIoFuture;->await(J)Z

    move-result p1

    return p1
.end method

.method public awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;
    .locals 3

    .line 1
    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/mina/core/future/DefaultIoFuture;->await0(JZ)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public awaitUninterruptibly(J)Z
    .locals 1

    .line 2
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/mina/core/future/DefaultIoFuture;->await0(JZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    new-instance p1, Ljava/lang/InternalError;

    invoke-direct {p1}, Ljava/lang/InternalError;-><init>()V

    throw p1
.end method

.method public awaitUninterruptibly(JLjava/util/concurrent/TimeUnit;)Z
    .locals 0

    .line 3
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/core/future/DefaultIoFuture;->awaitUninterruptibly(J)Z

    move-result p1

    return p1
.end method

.method public getSession()Lorg/apache/mina/core/session/IoSession;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->session:Lorg/apache/mina/core/session/IoSession;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->result:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isDone()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public join()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/IoFuture;

    return-void
.end method

.method public join(J)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/core/future/DefaultIoFuture;->awaitUninterruptibly(J)Z

    move-result p1

    return p1
.end method

.method public removeListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/future/IoFutureListener<",
            "*>;)",
            "Lorg/apache/mina/core/future/IoFuture;"
        }
    .end annotation

    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->firstListener:Lorg/apache/mina/core/future/IoFutureListener;

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->otherListeners:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->otherListeners:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/core/future/IoFutureListener;

    iput-object p1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->firstListener:Lorg/apache/mina/core/future/IoFutureListener;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->firstListener:Lorg/apache/mina/core/future/IoFutureListener;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->otherListeners:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->result:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->ready:Z

    iget p1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->waiters:I

    if-lez p1, :cond_1

    iget-object p1, p0, Lorg/apache/mina/core/future/DefaultIoFuture;->lock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lorg/apache/mina/core/future/DefaultIoFuture;->notifyListeners()V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
