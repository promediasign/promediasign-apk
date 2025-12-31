.class public abstract Lsk/mimac/slideshow/utils/SleepUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static sleep(J)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
