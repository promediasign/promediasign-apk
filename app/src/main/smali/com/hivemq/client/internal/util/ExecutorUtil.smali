.class public abstract Lcom/hivemq/client/internal/util/ExecutorUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static execute(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Z
    .locals 0

    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method
