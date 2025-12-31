.class Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$PlayerEventListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlayerEventListener"
.end annotation


# instance fields
.field private errorHappened:Z

.field private final playId:I

.field private final player:Landroidx/media3/exoplayer/ExoPlayer;

.field private previousState:I

.field private readyHappened:Z

.field final synthetic this$0:Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;Landroidx/media3/exoplayer/ExoPlayer;I)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$PlayerEventListener;->previousState:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$PlayerEventListener;->readyHappened:Z

    iput-boolean p1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$PlayerEventListener;->errorHappened:Z

    iput-object p2, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$PlayerEventListener;->player:Landroidx/media3/exoplayer/ExoPlayer;

    iput p3, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$PlayerEventListener;->playId:I

    return-void
.end method


# virtual methods
.method public final synthetic onAvailableCommandsChanged(Landroidx/media3/common/Player$Commands;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lq/b;->a(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Player$Commands;)V

    return-void
.end method

.method public final synthetic onCues(Landroidx/media3/common/text/CueGroup;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lq/b;->b(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/text/CueGroup;)V

    return-void
.end method

.method public final synthetic onCues(Ljava/util/List;)V
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lq/b;->c(Landroidx/media3/common/Player$Listener;Ljava/util/List;)V

    return-void
.end method

.method public final synthetic onDeviceInfoChanged(Landroidx/media3/common/DeviceInfo;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lq/b;->d(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/DeviceInfo;)V

    return-void
.end method

.method public final synthetic onDeviceVolumeChanged(IZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lq/b;->e(Landroidx/media3/common/Player$Listener;IZ)V

    return-void
.end method

.method public final synthetic onEvents(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lq/b;->f(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V

    return-void
.end method

.method public final synthetic onIsLoadingChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lq/b;->g(Landroidx/media3/common/Player$Listener;Z)V

    return-void
.end method

.method public final synthetic onIsPlayingChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lq/b;->h(Landroidx/media3/common/Player$Listener;Z)V

    return-void
.end method

.method public final synthetic onLoadingChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lq/b;->i(Landroidx/media3/common/Player$Listener;Z)V

    return-void
.end method

.method public final synthetic onMediaItemTransition(Landroidx/media3/common/MediaItem;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lq/b;->j(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/MediaItem;I)V

    return-void
.end method

.method public final synthetic onMediaMetadataChanged(Landroidx/media3/common/MediaMetadata;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lq/b;->k(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method public final synthetic onMetadata(Landroidx/media3/common/Metadata;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lq/b;->l(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Metadata;)V

    return-void
.end method

.method public final synthetic onPlayWhenReadyChanged(ZI)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lq/b;->m(Landroidx/media3/common/Player$Listener;ZI)V

    return-void
.end method

.method public final synthetic onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lq/b;->n(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 4

    iget v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$PlayerEventListener;->previousState:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$PlayerEventListener;->errorHappened:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_6

    iget-boolean v1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$PlayerEventListener;->readyHappened:Z

    if-nez v1, :cond_6

    iput-boolean v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$PlayerEventListener;->readyHappened:Z

    iget-object v1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$PlayerEventListener;->player:Landroidx/media3/exoplayer/ExoPlayer;

    iget-object v2, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;

    invoke-static {v2}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->access$800(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;)[Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v2

    iget-object v3, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;

    invoke-static {v3}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->access$300(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;)I

    move-result v3

    aget-object v2, v2, v3

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;

    invoke-static {v1}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->access$900(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    iget-object v1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;

    invoke-static {v1}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->access$300(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;)I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->access$600(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;I)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;

    invoke-static {v1, v0}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->access$1002(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;Z)Z

    goto :goto_2

    :cond_5
    :goto_1
    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->access$700(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;)Lsk/mimac/slideshow/utils/Consumer;

    move-result-object v0

    iget v1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$PlayerEventListener;->playId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lsk/mimac/slideshow/utils/Consumer;->accept(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    iput p1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$PlayerEventListener;->previousState:I

    return-void
.end method

.method public final synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lq/b;->o(Landroidx/media3/common/Player$Listener;I)V

    return-void
.end method

.method public onPlayerError(Landroidx/media3/common/PlaybackException;)V
    .locals 5

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$PlayerEventListener;->player:Landroidx/media3/exoplayer/ExoPlayer;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;

    invoke-static {v1}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->access$800(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;)[Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->access$300(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;)I

    move-result v0

    if-ne v2, v0, :cond_1

    invoke-static {}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->access$1200()Lorg/slf4j/Logger;

    move-result-object v0

    iget-object v1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;

    invoke-static {v1}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->access$1100(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;)[Landroid/net/Uri;

    move-result-object v1

    aget-object v1, v1, v2

    const-string v4, "Can\'t play video \'{}\'"

    :goto_1
    invoke-interface {v0, v4, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    invoke-static {}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->access$1200()Lorg/slf4j/Logger;

    move-result-object v0

    iget-object v1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;

    invoke-static {v1}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->access$1100(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;)[Landroid/net/Uri;

    move-result-object v1

    aget-object v1, v1, v2

    const-string v4, "Can\'t prepare video \'{}\'"

    goto :goto_1

    :goto_2
    iget-object p1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;

    invoke-static {p1, v2}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->access$600(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;I)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;

    invoke-static {p1}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->access$300(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;)I

    move-result p1

    if-ne v2, p1, :cond_2

    iput-boolean v3, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$PlayerEventListener;->errorHappened:Z

    iget-object p1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;

    invoke-static {p1}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->access$1300(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;)Lsk/mimac/slideshow/utils/Consumer;

    move-result-object p1

    iget v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$PlayerEventListener;->playId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lsk/mimac/slideshow/utils/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final synthetic onPlayerErrorChanged(Landroidx/media3/common/PlaybackException;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lq/b;->p(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method public final synthetic onPlayerStateChanged(ZI)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lq/b;->q(Landroidx/media3/common/Player$Listener;ZI)V

    return-void
.end method

.method public final synthetic onPositionDiscontinuity(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lq/b;->r(Landroidx/media3/common/Player$Listener;I)V

    return-void
.end method

.method public final synthetic onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lq/b;->s(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V

    return-void
.end method

.method public final synthetic onRenderedFirstFrame()V
    .locals 0

    .line 1
    invoke-static {p0}, Lq/b;->t(Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public final synthetic onSkipSilenceEnabledChanged(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lq/b;->u(Landroidx/media3/common/Player$Listener;Z)V

    return-void
.end method

.method public final synthetic onSurfaceSizeChanged(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lq/b;->v(Landroidx/media3/common/Player$Listener;II)V

    return-void
.end method

.method public final synthetic onTimelineChanged(Landroidx/media3/common/Timeline;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lq/b;->w(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Timeline;I)V

    return-void
.end method

.method public final synthetic onTrackSelectionParametersChanged(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lq/b;->x(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method public final synthetic onTracksChanged(Landroidx/media3/common/Tracks;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lq/b;->y(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/Tracks;)V

    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 3

    iget v0, p1, Landroidx/media3/common/VideoSize;->width:I

    if-eqz v0, :cond_1

    iget v0, p1, Landroidx/media3/common/VideoSize;->height:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->access$800(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;)[Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    iget-object v1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;

    invoke-static {v1}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->access$300(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$PlayerEventListener;->player:Landroidx/media3/exoplayer/ExoPlayer;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->access$1400(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;)Lsk/mimac/slideshow/gui/video/AspectRatioFrameLayout;

    move-result-object v0

    iget v1, p1, Landroidx/media3/common/VideoSize;->width:I

    int-to-float v1, v1

    iget v2, p1, Landroidx/media3/common/VideoSize;->pixelWidthHeightRatio:F

    mul-float v1, v1, v2

    iget p1, p1, Landroidx/media3/common/VideoSize;->height:I

    int-to-float p1, p1

    div-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/gui/video/AspectRatioFrameLayout;->setAspectRatio(F)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->access$1502(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;Landroidx/media3/common/VideoSize;)Landroidx/media3/common/VideoSize;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;

    invoke-static {v0, p1}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->access$1502(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;Landroidx/media3/common/VideoSize;)Landroidx/media3/common/VideoSize;

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic onVolumeChanged(F)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lq/b;->A(Landroidx/media3/common/Player$Listener;F)V

    return-void
.end method
