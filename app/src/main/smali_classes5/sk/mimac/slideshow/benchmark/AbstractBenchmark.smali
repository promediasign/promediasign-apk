.class public abstract Lsk/mimac/slideshow/benchmark/AbstractBenchmark;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract doCalculations()V
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public run()J
    .locals 6

    invoke-static {}, Ljava/lang/System;->gc()V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lsk/mimac/slideshow/benchmark/AbstractBenchmark;->doCalculations()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x1e

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    const-wide v4, 0x4a817c800L

    sub-long/2addr v2, v0

    div-long/2addr v4, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v4

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t run benchmark"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
