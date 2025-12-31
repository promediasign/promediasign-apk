.class public Lcom/hivemq/client/internal/rx/CompletableFlow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# instance fields
.field private volatile disposed:Z

.field private final observer:Lio/reactivex/CompletableObserver;


# direct methods
.method public constructor <init>(Lio/reactivex/CompletableObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/rx/CompletableFlow;->observer:Lio/reactivex/CompletableObserver;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hivemq/client/internal/rx/CompletableFlow;->disposed:Z

    return-void
.end method

.method public isCancelled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hivemq/client/internal/rx/CompletableFlow;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hivemq/client/internal/rx/CompletableFlow;->disposed:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/rx/CompletableFlow;->observer:Lio/reactivex/CompletableObserver;

    invoke-interface {v0}, Lio/reactivex/CompletableObserver;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/rx/CompletableFlow;->observer:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
