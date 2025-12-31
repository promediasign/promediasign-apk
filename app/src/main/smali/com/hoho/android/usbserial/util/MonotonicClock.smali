.class public abstract Lcom/hoho/android/usbserial/util/MonotonicClock;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static millis()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method
