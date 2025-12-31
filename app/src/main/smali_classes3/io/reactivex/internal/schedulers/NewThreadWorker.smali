.class public abstract Lio/reactivex/internal/schedulers/NewThreadWorker;
.super Lio/reactivex/Scheduler$Worker;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# instance fields
.field volatile disposed:Z

.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Scheduler$Worker;-><init>()V

    invoke-static {p1}, Lio/reactivex/internal/schedulers/SchedulerPoolFactory;->create(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/NewThreadWorker;->disposed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/schedulers/NewThreadWorker;->disposed:Z

    iget-object v0, p0, Lio/reactivex/internal/schedulers/NewThreadWorker;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/NewThreadWorker;->disposed:Z

    return v0
.end method
