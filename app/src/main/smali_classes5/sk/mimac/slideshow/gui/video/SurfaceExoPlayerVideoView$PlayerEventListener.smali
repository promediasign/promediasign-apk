.class Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlayerEventListener"
.end annotation


# instance fields
.field private errorHappened:Z

.field private previousState:I

.field private readyHappened:Z

.field final synthetic this$0:Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;


# direct methods
.method private constructor <init>(Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;->previousState:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;->readyHappened:Z

    iput-boolean p1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;->errorHappened:Z

    return-void
.end method

.method public synthetic constructor <init>(Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;-><init>(Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;->lambda$onPositionDiscontinuity$0(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$onPositionDiscontinuity$0(Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;

    invoke-static {p0}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->access$1100(Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;)V

    return-void
.end method

.method private updateViewSize(FF)V
    .locals 5

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;

    iget-object v0, v0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;

    iget-object v1, v1, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    if-lez v3, :cond_5

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    goto :goto_2

    :cond_0
    sget-object v2, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$2;->$SwitchMap$sk$mimac$slideshow$enums$ScaleType:[I

    sget-object v3, Lsk/mimac/slideshow/settings/UserSettings;->IMAGE_SCALE_TYPE:Lsk/mimac/slideshow/settings/UserSettings;

    const-class v4, Lsk/mimac/slideshow/enums/ScaleType;

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/settings/UserSettings;->getEnum(Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lsk/mimac/slideshow/enums/ScaleType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    div-float/2addr v0, p1

    div-float/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    :goto_0
    iget-object p2, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;

    iget-object p2, p2, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->surfaceView:Landroid/view/SurfaceView;

    div-float v0, p1, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p2, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;

    iget-object p2, p2, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->surfaceView:Landroid/view/SurfaceView;

    div-float/2addr p1, v1

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_2

    :cond_2
    div-float/2addr v0, p1

    div-float/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;

    iget-object p1, p1, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->surfaceView:Landroid/view/SurfaceView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;

    iget-object p1, p1, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->surfaceView:Landroid/view/SurfaceView;

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;

    iget-object v2, v2, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->surfaceView:Landroid/view/SurfaceView;

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;

    iget-object p1, p1, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->surfaceView:Landroid/view/SurfaceView;

    div-float/2addr p2, v1

    goto :goto_1

    :cond_5
    :goto_2
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

    iget v0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;->previousState:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;->errorHappened:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    iget-boolean v1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;->readyHappened:Z

    if-nez v1, :cond_4

    iput-boolean v0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;->readyHappened:Z

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->access$500(Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->access$400(Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;)Lsk/mimac/slideshow/utils/Consumer;

    move-result-object v0

    iget-object v1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;

    invoke-static {v1}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->access$300(Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lsk/mimac/slideshow/utils/Consumer;->accept(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    iput p1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;->previousState:I

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

    invoke-static {}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->access$700()Lorg/slf4j/Logger;

    move-result-object v0

    iget-object v1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;

    invoke-static {v1}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->access$600(Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "Can\'t play video \'{}\'"

    invoke-interface {v0, v2, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->release()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;->errorHappened:Z

    iget-object p1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;

    invoke-static {p1}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->access$900(Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;)Lsk/mimac/slideshow/utils/Consumer;

    move-result-object p1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->access$800(Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->access$800(Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->access$800(Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v0, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->tag:Ljava/lang/Object;

    check-cast v0, Lsk/mimac/slideshow/gui/play/PlayId;

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/play/PlayId;->getPlayId()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->access$300(Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;)I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lsk/mimac/slideshow/utils/Consumer;->accept(Ljava/lang/Object;)V

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

.method public onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 2

    .line 2
    if-nez p3, :cond_1

    iget-object p1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;

    invoke-static {p1}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->access$400(Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;)Lsk/mimac/slideshow/utils/Consumer;

    move-result-object p1

    iget-object p2, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;

    invoke-static {p2}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->access$300(Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lsk/mimac/slideshow/utils/Consumer;->accept(Ljava/lang/Object;)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;

    invoke-static {p1}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->access$800(Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p1

    invoke-interface {p1}, Landroidx/media3/common/Player;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;

    invoke-static {p1}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->access$800(Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p1

    invoke-interface {p1}, Landroidx/media3/common/Player;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object p1

    iget-object p1, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object p1, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->tag:Ljava/lang/Object;

    check-cast p1, Lsk/mimac/slideshow/gui/play/PlayId;

    iget-object p2, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/play/PlayId;->getPlayId()I

    move-result p3

    invoke-static {p2, p3}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->access$302(Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;I)I

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/play/PlayId;->getSyncKey()Lsk/mimac/slideshow/gui/play/PlayId$SyncKey;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->access$1000()Lsk/mimac/slideshow/utils/MultivaluedBiMap;

    move-result-object p2

    iget-object p3, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;

    invoke-virtual {p2, p3}, Lsk/mimac/slideshow/utils/MultivaluedBiMap;->removeValue(Ljava/lang/Object;)V

    invoke-static {}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->access$1000()Lsk/mimac/slideshow/utils/MultivaluedBiMap;

    move-result-object p2

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/play/PlayId;->getSyncKey()Lsk/mimac/slideshow/gui/play/PlayId$SyncKey;

    move-result-object p1

    invoke-virtual {p2, p1}, Lsk/mimac/slideshow/utils/MultivaluedBiMap;->getAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    invoke-static {}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->access$700()Lorg/slf4j/Logger;

    move-result-object p2

    iget-object p3, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;

    invoke-static {p3}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->access$300(Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Automatically progressed to playId={} and starting other synchronized videos (count={})"

    invoke-interface {p2, v1, p3, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p2, Lsk/mimac/slideshow/gui/video/a;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lj$/lang/Iterable$-EL;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    :cond_0
    iget-object p1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;

    invoke-static {p1}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->access$500(Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    :cond_1
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
    .locals 1

    iget v0, p1, Landroidx/media3/common/VideoSize;->width:I

    if-eqz v0, :cond_0

    iget p1, p1, Landroidx/media3/common/VideoSize;->height:I

    if-eqz p1, :cond_0

    int-to-float v0, v0

    int-to-float p1, p1

    invoke-direct {p0, v0, p1}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;->updateViewSize(FF)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;->this$0:Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;

    iget-object p1, p1, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final synthetic onVolumeChanged(F)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lq/b;->A(Landroidx/media3/common/Player$Listener;F)V

    return-void
.end method
