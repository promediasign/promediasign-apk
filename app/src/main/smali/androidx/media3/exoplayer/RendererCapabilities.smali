.class public interface abstract Landroidx/media3/exoplayer/RendererCapabilities;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/RendererCapabilities$Listener;
    }
.end annotation


# virtual methods
.method public abstract clearListener()V
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getTrackType()I
.end method

.method public abstract setListener(Landroidx/media3/exoplayer/RendererCapabilities$Listener;)V
.end method

.method public abstract supportsFormat(Landroidx/media3/common/Format;)I
.end method

.method public abstract supportsMixedMimeTypeAdaptation()I
.end method
