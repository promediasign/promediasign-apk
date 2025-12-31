.class public final synthetic Landroidx/media3/exoplayer/video/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Supplier;


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/media3/exoplayer/video/CompositingVideoSinkProvider$ReflectiveDefaultVideoFrameProcessorFactory;->a()Landroidx/media3/common/VideoFrameProcessor$Factory;

    move-result-object v0

    return-object v0
.end method
