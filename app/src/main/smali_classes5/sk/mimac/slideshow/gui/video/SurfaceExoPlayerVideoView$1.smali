.class Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->createMediaPlayer()Landroidx/media3/exoplayer/ExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$1;->this$0:Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$1;->this$0:Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;

    new-instance v1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    const/4 v2, 0x0

    new-array v2, v2, [Landroidx/media3/exoplayer/source/MediaSource;

    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;-><init>([Landroidx/media3/exoplayer/source/MediaSource;)V

    invoke-static {v0, v1}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->access$102(Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;)Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$1;->this$0:Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->access$100(Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;)Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    move-result-object v0

    iget-object v1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$1;->this$0:Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;

    invoke-virtual {v1, p1}, Lsk/mimac/slideshow/gui/video/ExoPlayerVideoView;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->addMediaSource(Landroidx/media3/exoplayer/source/MediaSource;)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$1;->this$0:Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;

    invoke-static {p1}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->access$100(Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;)Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic experimentalParseSubtitlesDuringExtraction(Z)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    .line 1
    invoke-static {p0, p1}, LD/e;->a(Landroidx/media3/exoplayer/source/MediaSource$Factory;Z)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public setDrmSessionManagerProvider(Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    return-object p0
.end method

.method public setLoadErrorHandlingPolicy(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    return-object p0
.end method

.method public final synthetic setSubtitleParserFactory(Landroidx/media3/extractor/text/SubtitleParser$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    .line 1
    invoke-static {p0, p1}, LD/e;->b(Landroidx/media3/exoplayer/source/MediaSource$Factory;Landroidx/media3/extractor/text/SubtitleParser$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    move-result-object p1

    return-object p1
.end method
