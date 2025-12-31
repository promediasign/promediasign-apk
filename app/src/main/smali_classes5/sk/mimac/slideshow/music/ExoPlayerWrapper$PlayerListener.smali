.class Lsk/mimac/slideshow/music/ExoPlayerWrapper$PlayerListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/music/ExoPlayerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlayerListener"
.end annotation


# instance fields
.field private errorHappened:Z

.field final synthetic this$0:Lsk/mimac/slideshow/music/ExoPlayerWrapper;


# direct methods
.method private constructor <init>(Lsk/mimac/slideshow/music/ExoPlayerWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsk/mimac/slideshow/music/ExoPlayerWrapper$PlayerListener;->this$0:Lsk/mimac/slideshow/music/ExoPlayerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lsk/mimac/slideshow/music/ExoPlayerWrapper$PlayerListener;->errorHappened:Z

    return-void
.end method

.method public synthetic constructor <init>(Lsk/mimac/slideshow/music/ExoPlayerWrapper;Lsk/mimac/slideshow/music/ExoPlayerWrapper$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/music/ExoPlayerWrapper$PlayerListener;-><init>(Lsk/mimac/slideshow/music/ExoPlayerWrapper;)V

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
    .locals 2

    iget-boolean v0, p0, Lsk/mimac/slideshow/music/ExoPlayerWrapper$PlayerListener;->errorHappened:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lsk/mimac/slideshow/music/ExoPlayerWrapper$PlayerListener;->this$0:Lsk/mimac/slideshow/music/ExoPlayerWrapper;

    invoke-static {v0}, Lsk/mimac/slideshow/music/ExoPlayerWrapper;->access$200(Lsk/mimac/slideshow/music/ExoPlayerWrapper;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_2

    :cond_1
    iget-object p1, p0, Lsk/mimac/slideshow/music/ExoPlayerWrapper$PlayerListener;->this$0:Lsk/mimac/slideshow/music/ExoPlayerWrapper;

    invoke-static {p1, v1}, Lsk/mimac/slideshow/music/ExoPlayerWrapper;->access$202(Lsk/mimac/slideshow/music/ExoPlayerWrapper;Z)Z

    iget-object p1, p0, Lsk/mimac/slideshow/music/ExoPlayerWrapper$PlayerListener;->this$0:Lsk/mimac/slideshow/music/ExoPlayerWrapper;

    invoke-static {p1}, Lsk/mimac/slideshow/music/ExoPlayerWrapper;->access$300(Lsk/mimac/slideshow/music/ExoPlayerWrapper;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lq/b;->o(Landroidx/media3/common/Player$Listener;I)V

    return-void
.end method

.method public onPlayerError(Landroidx/media3/common/PlaybackException;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsk/mimac/slideshow/music/ExoPlayerWrapper$PlayerListener;->errorHappened:Z

    iget-object v0, p0, Lsk/mimac/slideshow/music/ExoPlayerWrapper$PlayerListener;->this$0:Lsk/mimac/slideshow/music/ExoPlayerWrapper;

    invoke-static {v0}, Lsk/mimac/slideshow/music/ExoPlayerWrapper;->access$100(Lsk/mimac/slideshow/music/ExoPlayerWrapper;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    iget p1, p1, Landroidx/media3/common/PlaybackException;->errorCode:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v2, p1, v1}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

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

.method public final synthetic onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lq/b;->z(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/VideoSize;)V

    return-void
.end method

.method public final synthetic onVolumeChanged(F)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lq/b;->A(Landroidx/media3/common/Player$Listener;F)V

    return-void
.end method
