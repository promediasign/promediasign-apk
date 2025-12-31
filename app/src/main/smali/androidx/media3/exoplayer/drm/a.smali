.class public final synthetic Landroidx/media3/exoplayer/drm/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    check-cast p1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->b(ILandroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    return-void
.end method
