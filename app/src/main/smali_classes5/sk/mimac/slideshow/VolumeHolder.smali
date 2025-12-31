.class public abstract Lsk/mimac/slideshow/VolumeHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static muted:Z


# direct methods
.method public static isMuted()Z
    .locals 1

    sget-boolean v0, Lsk/mimac/slideshow/VolumeHolder;->muted:Z

    return v0
.end method

.method public static setMuted(Z)V
    .locals 0

    sput-boolean p0, Lsk/mimac/slideshow/VolumeHolder;->muted:Z

    return-void
.end method
