.class public Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;
.super Lsk/mimac/slideshow/gui/video/ExoPlayerVideoView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UnsafeOptInUsageError"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$SurfaceHolderCallback;,
        Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field private static final allPlayers:Lsk/mimac/slideshow/utils/MultivaluedBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsk/mimac/slideshow/utils/MultivaluedBiMap<",
            "Lsk/mimac/slideshow/gui/play/PlayId$SyncKey;",
            "Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private concatMediaSource:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

.field private currentPlayId:I

.field private mediaPlayer:Landroidx/media3/exoplayer/ExoPlayer;

.field private onCompletionListener:Lsk/mimac/slideshow/utils/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsk/mimac/slideshow/utils/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private onErrorListener:Lsk/mimac/slideshow/utils/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsk/mimac/slideshow/utils/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private originalVolume:I

.field private final renderersFactory:Lsk/mimac/slideshow/gui/video/MyDefaultRenderersFactory;

.field protected surface:Landroid/view/Surface;

.field protected final surfaceView:Landroid/view/SurfaceView;

.field protected tempPlayId:Lsk/mimac/slideshow/gui/play/PlayId;

.field private final tunnelingEnabled:Z

.field private uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->LOG:Lorg/slf4j/Logger;

    new-instance v0, Lsk/mimac/slideshow/utils/MultivaluedBiMap;

    invoke-direct {v0}, Lsk/mimac/slideshow/utils/MultivaluedBiMap;-><init>()V

    sput-object v0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->allPlayers:Lsk/mimac/slideshow/utils/MultivaluedBiMap;

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceView;IZ)V
    .locals 2

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/video/ExoPlayerVideoView;-><init>()V

    new-instance v0, Lsk/mimac/slideshow/gui/video/MyDefaultRenderersFactory;

    sget-object v1, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-direct {v0, v1}, Lsk/mimac/slideshow/gui/video/MyDefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->renderersFactory:Lsk/mimac/slideshow/gui/video/MyDefaultRenderersFactory;

    iput-object p1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->surfaceView:Landroid/view/SurfaceView;

    iput-boolean p3, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->tunnelingEnabled:Z

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    new-instance p3, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$SurfaceHolderCallback;

    const/4 v1, 0x0

    invoke-direct {p3, p0, v1}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$SurfaceHolderCallback;-><init>(Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$1;)V

    invoke-interface {p1, p3}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-virtual {v0, p2}, Lsk/mimac/slideshow/gui/video/MyDefaultRenderersFactory;->setRotation(I)V

    return-void
.end method

.method public static synthetic a(Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->openNextVideo()V

    return-void
.end method

.method public static synthetic access$100(Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;)Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->concatMediaSource:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    return-object p0
.end method

.method public static synthetic access$1000()Lsk/mimac/slideshow/utils/MultivaluedBiMap;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->allPlayers:Lsk/mimac/slideshow/utils/MultivaluedBiMap;

    return-object v0
.end method

.method public static synthetic access$102(Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;)Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->concatMediaSource:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    return-object p1
.end method

.method public static synthetic access$1100(Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;)V
    .locals 0

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->openNextVideo()V

    return-void
.end method

.method public static synthetic access$300(Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;)I
    .locals 0

    iget p0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->currentPlayId:I

    return p0
.end method

.method public static synthetic access$302(Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;I)I
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->currentPlayId:I

    return p1
.end method

.method public static synthetic access$400(Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;)Lsk/mimac/slideshow/utils/Consumer;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->onCompletionListener:Lsk/mimac/slideshow/utils/Consumer;

    return-object p0
.end method

.method public static synthetic access$500(Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method public static synthetic access$600(Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public static synthetic access$700()Lorg/slf4j/Logger;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->LOG:Lorg/slf4j/Logger;

    return-object v0
.end method

.method public static synthetic access$800(Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;)Landroidx/media3/exoplayer/ExoPlayer;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->mediaPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    return-object p0
.end method

.method public static synthetic access$900(Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;)Lsk/mimac/slideshow/utils/Consumer;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->onErrorListener:Lsk/mimac/slideshow/utils/Consumer;

    return-object p0
.end method

.method private createMediaItem(Landroid/net/Uri;Lsk/mimac/slideshow/gui/play/PlayId;)Landroidx/media3/common/MediaItem;
    .locals 1

    new-instance v0, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/media3/common/MediaItem$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/media3/common/MediaItem$Builder;->setTag(Ljava/lang/Object;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object p1

    return-object p1
.end method

.method private createMediaPlayer()Landroidx/media3/exoplayer/ExoPlayer;
    .locals 5

    new-instance v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;

    sget-object v1, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->renderersFactory:Lsk/mimac/slideshow/gui/video/MyDefaultRenderersFactory;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setRenderersFactory(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object v0

    new-instance v1, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$1;

    invoke-direct {v1, p0}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$1;-><init>(Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;)V

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setMediaSourceFactory(Landroidx/media3/exoplayer/source/MediaSource$Factory;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object v0

    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->VIDEO_STREAM_BUFFERING:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v1}, Lsk/mimac/slideshow/settings/UserSettings;->getInteger()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;

    invoke-direct {v2}, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v4, 0xc350

    invoke-virtual {v2, v4, v4, v3, v1}, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->setBufferDurationsMs(IIII)Landroidx/media3/exoplayer/DefaultLoadControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/exoplayer/DefaultLoadControl$Builder;->build()Landroidx/media3/exoplayer/DefaultLoadControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setLoadControl(Landroidx/media3/exoplayer/LoadControl;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    :cond_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->build()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    new-instance v1, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$PlayerEventListener;-><init>(Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$1;)V

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->addListener(Landroidx/media3/common/Player$Listener;)V

    iget-boolean v1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->tunnelingEnabled:Z

    if-eqz v1, :cond_1

    new-instance v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    sget-object v2, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setTunnelingEnabled(Z)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    :cond_1
    return-object v0
.end method

.method private createMediaSource(Landroid/net/Uri;Lsk/mimac/slideshow/gui/play/PlayId;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 0

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->createMediaItem(Landroid/net/Uri;Lsk/mimac/slideshow/gui/play/PlayId;)Landroidx/media3/common/MediaItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/gui/video/ExoPlayerVideoView;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object p1

    return-object p1
.end method

.method private openNextVideo()V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->mediaPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getNextMediaItemIndex()I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->mediaPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v1, v0}, Landroidx/media3/common/Player;->getMediaItemAt(I)Landroidx/media3/common/MediaItem;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v0, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->tag:Ljava/lang/Object;

    check-cast v0, Lsk/mimac/slideshow/gui/play/PlayId;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->openVideo(Lsk/mimac/slideshow/gui/play/PlayId;Z)V

    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->mediaPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public getDuration()I
    .locals 6

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->mediaPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v0}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    long-to-int v1, v2

    :cond_1
    return v1
.end method

.method public mute()V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->mediaPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->setVolume(F)V

    :cond_0
    return-void
.end method

.method public openVideo(Lsk/mimac/slideshow/gui/play/PlayId;Z)V
    .locals 8

    sget-object v0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->LOG:Lorg/slf4j/Logger;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->surface:Landroid/view/Surface;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v5, 0x1

    aput-object v1, v3, v5

    const/4 v1, 0x2

    aput-object v2, v3, v1

    const-string v2, "Opening video playId={}, uri={}, surface={}"

    invoke-interface {v0, v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->allPlayers:Lsk/mimac/slideshow/utils/MultivaluedBiMap;

    invoke-virtual {v2, p0}, Lsk/mimac/slideshow/utils/MultivaluedBiMap;->removeValue(Ljava/lang/Object;)V

    iget-object v3, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->uri:Landroid/net/Uri;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->surface:Landroid/view/Surface;

    if-nez v3, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v3, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->mediaPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v6, 0x0

    if-eqz v3, :cond_4

    iget-object v7, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->concatMediaSource:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    if-eqz v7, :cond_4

    invoke-interface {v3}, Landroidx/media3/common/Player;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v3

    if-eqz v3, :cond_4

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/play/PlayId;->getSyncKey()Lsk/mimac/slideshow/gui/play/PlayId$SyncKey;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/play/PlayId;->getSyncKey()Lsk/mimac/slideshow/gui/play/PlayId$SyncKey;

    move-result-object p2

    invoke-virtual {v2, p2}, Lsk/mimac/slideshow/utils/MultivaluedBiMap;->getAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Starting other synchronized videos (count={})"

    invoke-interface {v0, v3, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lh1/e;

    invoke-direct {v0, v1}, Lh1/e;-><init>(I)V

    invoke-static {p2, v0}, Lj$/lang/Iterable$-EL;->forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V

    :cond_1
    iget-object p2, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->mediaPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p2}, Landroidx/media3/common/Player;->getCurrentMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object p2

    iget-object p2, p2, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object p2, p2, Landroidx/media3/common/MediaItem$LocalConfiguration;->tag:Ljava/lang/Object;

    invoke-static {p2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/play/PlayId;->getPlayId()I

    move-result p1

    iput p1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->currentPlayId:I

    return-void

    :cond_2
    iget-object p2, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->mediaPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p2}, Landroidx/media3/common/Player;->hasNextMediaItem()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->mediaPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p2}, Landroidx/media3/common/Player;->getNextMediaItemIndex()I

    move-result v0

    invoke-interface {p2, v0}, Landroidx/media3/common/Player;->getMediaItemAt(I)Landroidx/media3/common/MediaItem;

    move-result-object p2

    iget-object p2, p2, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object p2, p2, Landroidx/media3/common/MediaItem$LocalConfiguration;->tag:Ljava/lang/Object;

    invoke-static {p2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->mediaPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p2}, Landroidx/media3/common/Player;->seekToNextMediaItem()V

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/play/PlayId;->getPlayId()I

    move-result p1

    iput p1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->currentPlayId:I

    iget-object p1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-interface {p1, v6}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    return-void

    :cond_3
    iget-object p2, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->mediaPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->uri:Landroid/net/Uri;

    invoke-direct {p0, v0, p1}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->createMediaItem(Landroid/net/Uri;Lsk/mimac/slideshow/gui/play/PlayId;)Landroidx/media3/common/MediaItem;

    move-result-object v0

    invoke-interface {p2, v0}, Landroidx/media3/common/Player;->setMediaItem(Landroidx/media3/common/MediaItem;)V

    iget-object p2, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->mediaPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p2}, Landroidx/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result v0

    const-wide/16 v1, 0x0

    invoke-interface {p2, v0, v1, v2}, Landroidx/media3/common/Player;->seekTo(IJ)V

    iget-object p2, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->mediaPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p2, v5}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/play/PlayId;->getPlayId()I

    move-result p1

    iput p1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->currentPlayId:I

    return-void

    :cond_4
    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->release()V

    :try_start_0
    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/play/PlayId;->getPlayId()I

    move-result p2

    iput p2, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->currentPlayId:I

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->createMediaPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p2

    iput-object p2, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->mediaPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->surface:Landroid/view/Surface;

    invoke-interface {p2, v0}, Landroidx/media3/common/Player;->setVideoSurface(Landroid/view/Surface;)V

    new-instance p2, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    new-array v0, v4, [Landroidx/media3/exoplayer/source/MediaSource;

    invoke-direct {p2, v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;-><init>([Landroidx/media3/exoplayer/source/MediaSource;)V

    iput-object p2, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->concatMediaSource:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->uri:Landroid/net/Uri;

    invoke-direct {p0, v0, p1}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->createMediaSource(Landroid/net/Uri;Lsk/mimac/slideshow/gui/play/PlayId;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->addMediaSource(Landroidx/media3/exoplayer/source/MediaSource;)V

    iget-object p2, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->mediaPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->concatMediaSource:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    invoke-interface {p2, v0}, Landroidx/media3/exoplayer/ExoPlayer;->setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;)V

    iget-object p2, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->mediaPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p2}, Landroidx/media3/common/Player;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    sget-object v0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Error while preparing to play video \'{}\'"

    iget-object v2, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->uri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v6, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->uri:Landroid/net/Uri;

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->release()V

    iget-object p2, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->onErrorListener:Lsk/mimac/slideshow/utils/Consumer;

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/play/PlayId;->getPlayId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lsk/mimac/slideshow/utils/Consumer;->accept(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_5
    :goto_1
    iput-object p1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->tempPlayId:Lsk/mimac/slideshow/gui/play/PlayId;

    iget-object p1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1, v4}, Landroid/view/SurfaceView;->setVisibility(I)V

    return-void
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->mediaPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/common/Player;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->mediaPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method

.method public prepare(Ljava/lang/String;Lsk/mimac/slideshow/gui/play/PlayId;)V
    .locals 0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->uri:Landroid/net/Uri;

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->openVideo(Lsk/mimac/slideshow/gui/play/PlayId;Z)V

    return-void
.end method

.method public prepareNext(Ljava/lang/String;Lsk/mimac/slideshow/gui/play/PlayId;)V
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->concatMediaSource:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->getSize()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->concatMediaSource:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->removeMediaSource(I)Landroidx/media3/exoplayer/source/MediaSource;

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->mediaPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result v0

    iget-object v1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->mediaPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v1}, Landroidx/media3/common/Player;->hasNextMediaItem()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->concatMediaSource:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->getSize()I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    if-le v1, v0, :cond_1

    iget-object v1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->concatMediaSource:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->getSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->removeMediaSourceRange(II)V

    :cond_1
    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->concatMediaSource:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->createMediaSource(Landroid/net/Uri;Lsk/mimac/slideshow/gui/play/PlayId;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->addMediaSource(Landroidx/media3/exoplayer/source/MediaSource;)V

    invoke-virtual {p2}, Lsk/mimac/slideshow/gui/play/PlayId;->getSyncKey()Lsk/mimac/slideshow/gui/play/PlayId$SyncKey;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object p1, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->allPlayers:Lsk/mimac/slideshow/utils/MultivaluedBiMap;

    invoke-virtual {p2}, Lsk/mimac/slideshow/gui/play/PlayId;->getSyncKey()Lsk/mimac/slideshow/gui/play/PlayId$SyncKey;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lsk/mimac/slideshow/utils/MultivaluedBiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    sget-object p1, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->allPlayers:Lsk/mimac/slideshow/utils/MultivaluedBiMap;

    invoke-virtual {p1, p0}, Lsk/mimac/slideshow/utils/MultivaluedBiMap;->removeValue(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->allPlayers:Lsk/mimac/slideshow/utils/MultivaluedBiMap;

    invoke-virtual {v0, p0}, Lsk/mimac/slideshow/utils/MultivaluedBiMap;->removeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->mediaPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/common/Player;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->mediaPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    iput-object v0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->concatMediaSource:Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;

    :cond_0
    return-void
.end method

.method public requestFocus()Z
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    return v0
.end method

.method public resume()V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->mediaPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/common/Player;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->mediaPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method

.method public setOnCompletionListener(Lsk/mimac/slideshow/utils/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsk/mimac/slideshow/utils/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->onCompletionListener:Lsk/mimac/slideshow/utils/Consumer;

    return-void
.end method

.method public setOnErrorListener(Lsk/mimac/slideshow/utils/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsk/mimac/slideshow/utils/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->onErrorListener:Lsk/mimac/slideshow/utils/Consumer;

    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setVolume(I)V
    .locals 2

    iput p1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->originalVolume:I

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->mediaPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-static {}, Lsk/mimac/slideshow/VolumeHolder;->isMuted()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    :goto_0
    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->setVolume(F)V

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->surfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->mediaPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    return-void
.end method

.method public stopPlayback()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->uri:Landroid/net/Uri;

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->release()V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->surface:Landroid/view/Surface;

    invoke-virtual {p0, v0}, Lsk/mimac/slideshow/gui/video/ExoPlayerVideoView;->clearSurface(Ljava/lang/Object;)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->surfaceView:Landroid/view/SurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    return-void
.end method

.method public unMute()V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->mediaPlayer:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    iget v1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->originalVolume:I

    int-to-float v1, v1

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->setVolume(F)V

    :cond_0
    return-void
.end method
