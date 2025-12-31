.class public Lsk/mimac/slideshow/utils/InterruptableThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private volatile interruptPending:Z

.field private volatile interruptsAllowed:Z

.field private final lock:Ljava/lang/Object;

.field private volatile shouldStop:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/utils/InterruptableThread;->lock:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lsk/mimac/slideshow/utils/InterruptableThread;->interruptsAllowed:Z

    iput-boolean p1, p0, Lsk/mimac/slideshow/utils/InterruptableThread;->interruptPending:Z

    iput-boolean p1, p0, Lsk/mimac/slideshow/utils/InterruptableThread;->shouldStop:Z

    return-void
.end method


# virtual methods
.method public checkInterrupt()V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/utils/InterruptableThread;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lsk/mimac/slideshow/utils/InterruptableThread;->interruptPending:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsk/mimac/slideshow/utils/InterruptableThread;->interruptPending:Z

    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public interruptEventually()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsk/mimac/slideshow/utils/InterruptableThread;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lsk/mimac/slideshow/utils/InterruptableThread;->interruptPending:Z

    iget-boolean v1, p0, Lsk/mimac/slideshow/utils/InterruptableThread;->interruptsAllowed:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsk/mimac/slideshow/utils/InterruptableThread;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public interruptEventually(Lsk/mimac/slideshow/utils/Predicate;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lsk/mimac/slideshow/utils/InterruptableThread;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    check-cast p1, Lv/h;

    invoke-virtual {p1}, Lv/h;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lsk/mimac/slideshow/utils/InterruptableThread;->interruptPending:Z

    iget-boolean p1, p0, Lsk/mimac/slideshow/utils/InterruptableThread;->interruptsAllowed:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lsk/mimac/slideshow/utils/InterruptableThread;->lock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public interruptIfAllowed()V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/utils/InterruptableThread;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lsk/mimac/slideshow/utils/InterruptableThread;->interruptsAllowed:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lsk/mimac/slideshow/utils/InterruptableThread;->interruptPending:Z

    iget-object v1, p0, Lsk/mimac/slideshow/utils/InterruptableThread;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setShouldStop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsk/mimac/slideshow/utils/InterruptableThread;->shouldStop:Z

    return-void
.end method

.method public sleepWait(J)V
    .locals 5

    iget-object v0, p0, Lsk/mimac/slideshow/utils/InterruptableThread;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v1, p0, Lsk/mimac/slideshow/utils/InterruptableThread;->interruptsAllowed:Z

    iget-boolean v1, p0, Lsk/mimac/slideshow/utils/InterruptableThread;->interruptPending:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lsk/mimac/slideshow/utils/InterruptableThread;->shouldStop:Z

    if-nez v1, :cond_2

    const-wide/16 v3, 0x5

    cmp-long v1, p1, v3

    if-lez v1, :cond_0

    iget-object v1, p0, Lsk/mimac/slideshow/utils/InterruptableThread;->lock:Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-boolean p1, p0, Lsk/mimac/slideshow/utils/InterruptableThread;->interruptPending:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lsk/mimac/slideshow/utils/InterruptableThread;->shouldStop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    :try_start_1
    iput-boolean v2, p0, Lsk/mimac/slideshow/utils/InterruptableThread;->interruptsAllowed:Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_1
    :try_start_2
    iput-boolean v2, p0, Lsk/mimac/slideshow/utils/InterruptableThread;->interruptPending:Z

    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    :cond_2
    iput-boolean v2, p0, Lsk/mimac/slideshow/utils/InterruptableThread;->interruptPending:Z

    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    iput-boolean v2, p0, Lsk/mimac/slideshow/utils/InterruptableThread;->interruptsAllowed:Z

    throw p1

    :goto_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method
