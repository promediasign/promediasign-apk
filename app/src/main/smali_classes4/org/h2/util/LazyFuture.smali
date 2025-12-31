.class public abstract Lorg/h2/util/LazyFuture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final S_CANCELED:I = 0x3

.field private static final S_DONE:I = 0x1

.field private static final S_ERROR:I = 0x2

.field private static final S_READY:I


# instance fields
.field private error:Ljava/lang/Exception;

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/h2/util/LazyFuture;->state:I

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 0

    iget p1, p0, Lorg/h2/util/LazyFuture;->state:I

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x3

    iput p1, p0, Lorg/h2/util/LazyFuture;->state:I

    const/4 p1, 0x1

    return p1
.end method

.method public get()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/h2/util/LazyFuture;->state:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/h2/util/LazyFuture;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lorg/h2/util/LazyFuture;->error:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/h2/util/LazyFuture;->result:Ljava/lang/Object;

    return-object v0

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/util/LazyFuture;->run()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/util/LazyFuture;->result:Ljava/lang/Object;

    iput v2, p0, Lorg/h2/util/LazyFuture;->state:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iput-object v0, p0, Lorg/h2/util/LazyFuture;->error:Ljava/lang/Exception;

    instance-of v3, v0, Ljava/lang/InterruptedException;

    if-eqz v3, :cond_4

    check-cast v0, Ljava/lang/InterruptedException;

    throw v0

    :cond_4
    new-instance v3, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v3, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget v3, p0, Lorg/h2/util/LazyFuture;->state:I

    if-eq v3, v2, :cond_5

    iput v1, p0, Lorg/h2/util/LazyFuture;->state:I

    :cond_5
    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lorg/h2/util/LazyFuture;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isCancelled()Z
    .locals 2

    iget v0, p0, Lorg/h2/util/LazyFuture;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDone()Z
    .locals 1

    iget v0, p0, Lorg/h2/util/LazyFuture;->state:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()Z
    .locals 2

    iget v0, p0, Lorg/h2/util/LazyFuture;->state:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput v1, p0, Lorg/h2/util/LazyFuture;->state:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/util/LazyFuture;->result:Ljava/lang/Object;

    iput-object v0, p0, Lorg/h2/util/LazyFuture;->error:Ljava/lang/Exception;

    const/4 v0, 0x1

    return v0
.end method

.method public abstract run()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
