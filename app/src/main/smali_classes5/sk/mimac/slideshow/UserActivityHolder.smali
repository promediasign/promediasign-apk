.class public abstract Lsk/mimac/slideshow/UserActivityHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile lastActivity:J


# direct methods
.method public static getSecondsSinceLastActivity()I
    .locals 4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-wide v2, Lsk/mimac/slideshow/UserActivityHolder;->lastActivity:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x3b9aca00

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public static markLastActivity()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lsk/mimac/slideshow/UserActivityHolder;->lastActivity:J

    return-void
.end method
