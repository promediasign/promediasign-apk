.class public abstract Ludt/util/Util;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getCurrentTime()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method
