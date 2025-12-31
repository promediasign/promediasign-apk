.class public Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;
.super Lsk/mimac/slideshow/gui/video/ExoPlayerVideoView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$SurfaceHolderCallback;,
        Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$PlayerEventListener;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private volatile currentIndex:I

.field private final frameLayout:Lsk/mimac/slideshow/gui/video/AspectRatioFrameLayout;

.field private final mediaPlayer:[Landroidx/media3/exoplayer/ExoPlayer;

.field private nextPrepared:Z

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

.field private pendingVideoSize:Landroidx/media3/common/VideoSize;

.field private final surfaceHolder:[Landroid/view/Surface;

.field private tempPlayId:I

.field private final textureView:[Landroid/view/TextureView;

.field private final uri:[Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lsk/mimac/slideshow/gui/video/AspectRatioFrameLayout;Landroid/view/TextureView;Landroid/view/TextureView;)V
    .locals 4

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/video/ExoPlayerVideoView;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->nextPrepared:Z

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/view/TextureView;

    iput-object v2, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->textureView:[Landroid/view/TextureView;

    new-array v3, v1, [Landroidx/media3/exoplayer/ExoPlayer;

    iput-object v3, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->mediaPlayer:[Landroidx/media3/exoplayer/ExoPlayer;

    new-array v3, v1, [Landroid/view/Surface;

    iput-object v3, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->surfaceHolder:[Landroid/view/Surface;

    new-array v1, v1, [Landroid/net/Uri;

    iput-object v1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->uri:[Landroid/net/Uri;

    iput v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->currentIndex:I

    aput-object p2, v2, v0

    const/4 v1, 0x1

    aput-object p3, v2, v1

    new-instance v2, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$SurfaceHolderCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$SurfaceHolderCallback;-><init>(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;ILsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$1;)V

    invoke-virtual {p2, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    new-instance v2, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$SurfaceHolderCallback;

    invoke-direct {v2, p0, v1, v3}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$SurfaceHolderCallback;-><init>(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;ILsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$1;)V

    invoke-virtual {p3, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-virtual {p2, v0}, Landroid/view/TextureView;->setOpaque(Z)V

    invoke-virtual {p3, v0}, Landroid/view/TextureView;->setOpaque(Z)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setFocusable(Z)V

    iput-object p1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->frameLayout:Lsk/mimac/slideshow/gui/video/AspectRatioFrameLayout;

    return-void
.end method

.method public static synthetic access$100(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;)[Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->surfaceHolder:[Landroid/view/Surface;

    return-object p0
.end method

.method public static synthetic access$1002(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->nextPrepared:Z

    return p1
.end method

.method public static synthetic access$1100(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;)[Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->uri:[Landroid/net/Uri;

    return-object p0
.end method

.method public static synthetic access$1200()Lorg/slf4j/Logger;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->LOG:Lorg/slf4j/Logger;

    return-object v0
.end method

.method public static synthetic access$1300(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;)Lsk/mimac/slideshow/utils/Consumer;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->onErrorListener:Lsk/mimac/slideshow/utils/Consumer;

    return-object p0
.end method

.method public static synthetic access$1400(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;)Lsk/mimac/slideshow/gui/video/AspectRatioFrameLayout;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->frameLayout:Lsk/mimac/slideshow/gui/video/AspectRatioFrameLayout;

    return-object p0
.end method

.method public static synthetic access$1502(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;Landroidx/media3/common/VideoSize;)Landroidx/media3/common/VideoSize;
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->pendingVideoSize:Landroidx/media3/common/VideoSize;

    return-object p1
.end method

.method public static synthetic access$200(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->clearSurface(I)V

    return-void
.end method

.method public static synthetic access$300(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;)I
    .locals 0

    iget p0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->currentIndex:I

    return p0
.end method

.method public static synthetic access$400(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;)I
    .locals 0

    iget p0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->tempPlayId:I

    return p0
.end method

.method public static synthetic access$500(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->openVideo(I)V

    return-void
.end method

.method public static synthetic access$600(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->release(I)V

    return-void
.end method

.method public static synthetic access$700(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;)Lsk/mimac/slideshow/utils/Consumer;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->onCompletionListener:Lsk/mimac/slideshow/utils/Consumer;

    return-object p0
.end method

.method public static synthetic access$800(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;)[Landroidx/media3/exoplayer/ExoPlayer;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->mediaPlayer:[Landroidx/media3/exoplayer/ExoPlayer;

    return-object p0
.end method

.method public static synthetic access$900(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method private clearSurface(I)V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->textureView:[Landroid/view/TextureView;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-super {p0, v0}, Lsk/mimac/slideshow/gui/video/ExoPlayerVideoView;->clearSurface(Ljava/lang/Object;)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->textureView:[Landroid/view/TextureView;

    aget-object p1, v0, p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private createMediaPlayer(I)Landroidx/media3/exoplayer/ExoPlayer;
    .locals 5

    new-instance v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;

    sget-object v1, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

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

    new-instance v1, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$PlayerEventListener;

    invoke-direct {v1, p0, v0, p1}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$PlayerEventListener;-><init>(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;Landroidx/media3/exoplayer/ExoPlayer;I)V

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->addListener(Landroidx/media3/common/Player$Listener;)V

    return-object v0
.end method

.method private openVideo(I)V
    .locals 5

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->uri:[Landroid/net/Uri;

    iget v1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->currentIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->surfaceHolder:[Landroid/view/Surface;

    iget v1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->currentIndex:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->currentIndex:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->mediaPlayer:[Landroidx/media3/exoplayer/ExoPlayer;

    aget-object v3, v3, v0

    if-eqz v3, :cond_4

    iget-object v3, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->uri:[Landroid/net/Uri;

    iget v4, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->currentIndex:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->uri:[Landroid/net/Uri;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->release(I)V

    goto :goto_2

    :cond_2
    iget-boolean v3, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->nextPrepared:Z

    if-eqz v3, :cond_4

    iput v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->currentIndex:I

    iput-boolean v2, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->nextPrepared:Z

    iget-object p1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    iget p1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->currentIndex:I

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, v1}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->release(I)V

    return-void

    :cond_4
    :goto_2
    iget v1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->currentIndex:I

    invoke-direct {p0, v1}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->release(I)V

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->release(I)V

    :try_start_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->mediaPlayer:[Landroidx/media3/exoplayer/ExoPlayer;

    iget v1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->currentIndex:I

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->createMediaPlayer(I)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->mediaPlayer:[Landroidx/media3/exoplayer/ExoPlayer;

    iget v1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->currentIndex:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->surfaceHolder:[Landroid/view/Surface;

    iget v2, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->currentIndex:I

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->setVideoSurface(Landroid/view/Surface;)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->mediaPlayer:[Landroidx/media3/exoplayer/ExoPlayer;

    iget v1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->currentIndex:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->uri:[Landroid/net/Uri;

    iget v2, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->currentIndex:I

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lsk/mimac/slideshow/gui/video/ExoPlayerVideoView;->createMediaSource(Landroid/net/Uri;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer;->setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->mediaPlayer:[Landroidx/media3/exoplayer/ExoPlayer;

    iget v1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->currentIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Landroidx/media3/common/Player;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->LOG:Lorg/slf4j/Logger;

    iget-object v2, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->uri:[Landroid/net/Uri;

    iget v3, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->currentIndex:I

    aget-object v2, v2, v3

    const-string v3, "Error while preparing to play video \'{}\'"

    invoke-interface {v1, v3, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->currentIndex:I

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->release(I)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->onErrorListener:Lsk/mimac/slideshow/utils/Consumer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lsk/mimac/slideshow/utils/Consumer;->accept(Ljava/lang/Object;)V

    :goto_3
    return-void

    :cond_5
    :goto_4
    iput p1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->tempPlayId:I

    return-void
.end method

.method private release(I)V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->mediaPlayer:[Landroidx/media3/exoplayer/ExoPlayer;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/common/Player;->release()V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->mediaPlayer:[Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->clearSurface(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->mediaPlayer:[Landroidx/media3/exoplayer/ExoPlayer;

    iget v1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->currentIndex:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->mediaPlayer:[Landroidx/media3/exoplayer/ExoPlayer;

    iget v1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->currentIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public getDuration()I
    .locals 6

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->mediaPlayer:[Landroidx/media3/exoplayer/ExoPlayer;

    iget v1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->currentIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->mediaPlayer:[Landroidx/media3/exoplayer/ExoPlayer;

    iget v2, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->currentIndex:I

    aget-object v0, v0, v2

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

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->mediaPlayer:[Landroidx/media3/exoplayer/ExoPlayer;

    iget v1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->currentIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->mediaPlayer:[Landroidx/media3/exoplayer/ExoPlayer;

    iget v1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->currentIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->setVolume(F)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->mediaPlayer:[Landroidx/media3/exoplayer/ExoPlayer;

    iget v1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->currentIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->mediaPlayer:[Landroidx/media3/exoplayer/ExoPlayer;

    iget v1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->currentIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Landroidx/media3/common/Player;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->mediaPlayer:[Landroidx/media3/exoplayer/ExoPlayer;

    iget v1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->currentIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    :cond_0
    return-void
.end method

.method public prepare(Ljava/lang/String;Lsk/mimac/slideshow/gui/play/PlayId;)V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->uri:[Landroid/net/Uri;

    iget v1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->currentIndex:I

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p2}, Lsk/mimac/slideshow/gui/play/PlayId;->getPlayId()I

    move-result p1

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->openVideo(I)V

    return-void
.end method

.method public prepareNext(Ljava/lang/String;Lsk/mimac/slideshow/gui/play/PlayId;)V
    .locals 4

    iget v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->currentIndex:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->release(I)V

    iget-object v2, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->surfaceHolder:[Landroid/view/Surface;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->uri:[Landroid/net/Uri;

    aput-object v2, v3, v0

    iget-object v3, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->mediaPlayer:[Landroidx/media3/exoplayer/ExoPlayer;

    invoke-virtual {p2}, Lsk/mimac/slideshow/gui/play/PlayId;->getPlayId()I

    move-result p2

    invoke-direct {p0, p2}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->createMediaPlayer(I)Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p2

    aput-object p2, v3, v0

    iget-object p2, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->mediaPlayer:[Landroidx/media3/exoplayer/ExoPlayer;

    aget-object p2, p2, v0

    iget-object v3, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->surfaceHolder:[Landroid/view/Surface;

    aget-object v3, v3, v0

    invoke-interface {p2, v3}, Landroidx/media3/common/Player;->setVideoSurface(Landroid/view/Surface;)V

    iput-boolean v1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->nextPrepared:Z

    iget-object p2, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->mediaPlayer:[Landroidx/media3/exoplayer/ExoPlayer;

    aget-object p2, p2, v0

    invoke-virtual {p0, v2}, Lsk/mimac/slideshow/gui/video/ExoPlayerVideoView;->createMediaSource(Landroid/net/Uri;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v1

    invoke-interface {p2, v1}, Landroidx/media3/exoplayer/ExoPlayer;->setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;)V

    iget-object p2, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->mediaPlayer:[Landroidx/media3/exoplayer/ExoPlayer;

    aget-object p2, p2, v0

    invoke-interface {p2}, Landroidx/media3/common/Player;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    sget-object v0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Can\'t prepare next video to play: {}"

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public requestFocus()Z
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->textureView:[Landroid/view/TextureView;

    iget v1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->currentIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    return v0
.end method

.method public resume()V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->mediaPlayer:[Landroidx/media3/exoplayer/ExoPlayer;

    iget v1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->currentIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->mediaPlayer:[Landroidx/media3/exoplayer/ExoPlayer;

    iget v1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->currentIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Landroidx/media3/common/Player;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->mediaPlayer:[Landroidx/media3/exoplayer/ExoPlayer;

    iget v1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->currentIndex:I

    aget-object v0, v0, v1

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

    iput-object p1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->onCompletionListener:Lsk/mimac/slideshow/utils/Consumer;

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

    iput-object p1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->onErrorListener:Lsk/mimac/slideshow/utils/Consumer;

    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setScaleType(Lsk/mimac/slideshow/enums/ScaleType;)V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->frameLayout:Lsk/mimac/slideshow/gui/video/AspectRatioFrameLayout;

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/gui/video/AspectRatioFrameLayout;->setResizeMode(Lsk/mimac/slideshow/enums/ScaleType;)V

    return-void
.end method

.method public setVolume(I)V
    .locals 2

    iput p1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->originalVolume:I

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->mediaPlayer:[Landroidx/media3/exoplayer/ExoPlayer;

    iget v1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->currentIndex:I

    aget-object v0, v0, v1

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
    .locals 5

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->frameLayout:Lsk/mimac/slideshow/gui/video/AspectRatioFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->pendingVideoSize:Landroidx/media3/common/VideoSize;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->frameLayout:Lsk/mimac/slideshow/gui/video/AspectRatioFrameLayout;

    iget v3, v0, Landroidx/media3/common/VideoSize;->width:I

    int-to-float v3, v3

    iget v4, v0, Landroidx/media3/common/VideoSize;->pixelWidthHeightRatio:F

    mul-float v3, v3, v4

    iget v0, v0, Landroidx/media3/common/VideoSize;->height:I

    int-to-float v0, v0

    div-float/2addr v3, v0

    invoke-virtual {v2, v3}, Lsk/mimac/slideshow/gui/video/AspectRatioFrameLayout;->setAspectRatio(F)V

    const/4 v0, 0x0

    iput-object v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->pendingVideoSize:Landroidx/media3/common/VideoSize;

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->textureView:[Landroid/view/TextureView;

    iget v2, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->currentIndex:I

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->mediaPlayer:[Landroidx/media3/exoplayer/ExoPlayer;

    iget v1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->currentIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    return-void
.end method

.method public stopPlayback()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->release(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->release(I)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->frameLayout:Lsk/mimac/slideshow/gui/video/AspectRatioFrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public unMute()V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->mediaPlayer:[Landroidx/media3/exoplayer/ExoPlayer;

    iget v1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->currentIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->mediaPlayer:[Landroidx/media3/exoplayer/ExoPlayer;

    iget v1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->currentIndex:I

    aget-object v0, v0, v1

    iget v1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->originalVolume:I

    int-to-float v1, v1

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->setVolume(F)V

    :cond_0
    return-void
.end method
