.class public Lsk/mimac/slideshow/music/MusicPlayerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/music/MusicPlayer;


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field private static volatile mediaPlayer:Lsk/mimac/slideshow/music/GenericMediaPlayer;


# instance fields
.field private final dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

.field private final itemThread:Lsk/mimac/slideshow/gui/ItemThread;

.field private volatile lastUri:Landroid/net/Uri;

.field private playId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/music/MusicPlayerImpl;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/music/MusicPlayerImpl;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lsk/mimac/slideshow/gui/ItemThread;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/music/MusicPlayerImpl;->itemThread:Lsk/mimac/slideshow/gui/ItemThread;

    sget-object p1, Lsk/mimac/slideshow/settings/UserSettings;->REQUEST_USER_AGENT:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {p1}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object p1, Lsk/mimac/slideshow/BuildInfo;->USER_AGENT:Ljava/lang/String;

    :cond_1
    new-instance v0, Landroidx/media3/datasource/DefaultDataSource$Factory;

    sget-object v1, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    new-instance v2, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    invoke-direct {v2}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;-><init>()V

    invoke-virtual {v2, p1}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    move-result-object p1

    const/16 v2, 0x4e20

    invoke-virtual {p1, v2}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->setConnectTimeoutMs(I)Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->setReadTimeoutMs(I)Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;->setAllowCrossProtocolRedirects(Z)Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroidx/media3/datasource/DefaultDataSource$Factory;-><init>(Landroid/content/Context;Landroidx/media3/datasource/DataSource$Factory;)V

    iput-object v0, p0, Lsk/mimac/slideshow/music/MusicPlayerImpl;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    return-void
.end method

.method public static synthetic a(Lsk/mimac/slideshow/music/MusicPlayerImpl;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/music/MusicPlayerImpl;->lambda$createPlayer$3(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic b(Lsk/mimac/slideshow/music/MusicPlayerImpl;Landroid/net/Uri;Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lsk/mimac/slideshow/music/MusicPlayerImpl;->lambda$createPlayer$2(Landroid/net/Uri;Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0
.end method

.method public static beep()V
    .locals 2

    sget-object v0, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    sget v1, Lsk/mimac/slideshow/R$raw;->beep:I

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public static synthetic c(Lsk/mimac/slideshow/music/MusicPlayerImpl;Landroidx/media3/exoplayer/ExoPlayer;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/music/MusicPlayerImpl;->lambda$createPlayer$1(Landroidx/media3/exoplayer/ExoPlayer;Landroid/net/Uri;)V

    return-void
.end method

.method private createPlayer(Landroid/net/Uri;)V
    .locals 4

    iput-object p1, p0, Lsk/mimac/slideshow/music/MusicPlayerImpl;->lastUri:Landroid/net/Uri;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;

    sget-object v1, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->build()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    new-instance v1, Lsk/mimac/slideshow/music/ExoPlayerWrapper;

    invoke-direct {v1, v0}, Lsk/mimac/slideshow/music/ExoPlayerWrapper;-><init>(Landroidx/media3/exoplayer/ExoPlayer;)V

    sput-object v1, Lsk/mimac/slideshow/music/MusicPlayerImpl;->mediaPlayer:Lsk/mimac/slideshow/music/GenericMediaPlayer;

    sget-object v1, Lsk/mimac/slideshow/music/MusicPlayerImpl;->mediaPlayer:Lsk/mimac/slideshow/music/GenericMediaPlayer;

    new-instance v2, Lp1/c;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lp1/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v1, v2}, Lsk/mimac/slideshow/music/GenericMediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    new-instance v1, LD/f;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v0, p1, v2}, LD/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v1}, Lsk/mimac/slideshow/ContextHolder;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lsk/mimac/slideshow/music/AndroidMediaPlayerWrapper;

    sget-object v1, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-direct {v0, v1}, Lsk/mimac/slideshow/music/AndroidMediaPlayerWrapper;-><init>(Landroid/media/MediaPlayer;)V

    sput-object v0, Lsk/mimac/slideshow/music/MusicPlayerImpl;->mediaPlayer:Lsk/mimac/slideshow/music/GenericMediaPlayer;

    sget-object v0, Lsk/mimac/slideshow/music/MusicPlayerImpl;->mediaPlayer:Lsk/mimac/slideshow/music/GenericMediaPlayer;

    new-instance v1, Lp1/c;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lp1/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Lsk/mimac/slideshow/music/GenericMediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    :goto_0
    sget-object v0, Lsk/mimac/slideshow/music/MusicPlayerImpl;->mediaPlayer:Lsk/mimac/slideshow/music/GenericMediaPlayer;

    if-eqz v0, :cond_2

    sget-object p1, Lsk/mimac/slideshow/music/MusicPlayerImpl;->mediaPlayer:Lsk/mimac/slideshow/music/GenericMediaPlayer;

    new-instance v0, Lp1/d;

    invoke-direct {v0, p0}, Lp1/d;-><init>(Lsk/mimac/slideshow/music/MusicPlayerImpl;)V

    invoke-interface {p1, v0}, Lsk/mimac/slideshow/music/GenericMediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    sget-object p1, Lsk/mimac/slideshow/music/MusicPlayerImpl;->mediaPlayer:Lsk/mimac/slideshow/music/GenericMediaPlayer;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lsk/mimac/slideshow/music/GenericMediaPlayer;->setVolume(I)V

    return-void

    :cond_2
    new-instance v0, Lsk/mimac/slideshow/item/CantShowException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t create media player for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lsk/mimac/slideshow/item/CantShowException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic d(Lsk/mimac/slideshow/music/MusicPlayerImpl;Landroid/net/Uri;Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lsk/mimac/slideshow/music/MusicPlayerImpl;->lambda$createPlayer$0(Landroid/net/Uri;Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$createPlayer$0(Landroid/net/Uri;Landroid/media/MediaPlayer;II)Z
    .locals 2

    sget-object p2, Lsk/mimac/slideshow/music/MusicPlayerImpl;->LOG:Lorg/slf4j/Logger;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p3, v0, p1

    const/4 p3, 0x2

    aput-object p4, v0, p3

    const-string p3, "Can\'t play music file \'{}\' ({}, {})"

    invoke-interface {p2, p3, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/music/MusicPlayerImpl;->stop()V

    iget-object p2, p0, Lsk/mimac/slideshow/music/MusicPlayerImpl;->itemThread:Lsk/mimac/slideshow/gui/ItemThread;

    iget p3, p0, Lsk/mimac/slideshow/music/MusicPlayerImpl;->playId:I

    invoke-virtual {p2, p3}, Lsk/mimac/slideshow/gui/ItemThread;->interruptIfPlayId(I)V

    return p1
.end method

.method private synthetic lambda$createPlayer$1(Landroidx/media3/exoplayer/ExoPlayer;Landroid/net/Uri;)V
    .locals 2

    new-instance v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    iget-object v1, p0, Lsk/mimac/slideshow/music/MusicPlayerImpl;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    new-instance v1, Lsk/mimac/slideshow/gui/video/SimpleLoadErrorHandlingPolicy;

    invoke-direct {v1}, Lsk/mimac/slideshow/gui/video/SimpleLoadErrorHandlingPolicy;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->setLoadErrorHandlingPolicy(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    move-result-object v0

    invoke-static {p2}, Landroidx/media3/common/MediaItem;->fromUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/ExoPlayer;->setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;)V

    invoke-interface {p1}, Landroidx/media3/common/Player;->prepare()V

    return-void
.end method

.method private synthetic lambda$createPlayer$2(Landroid/net/Uri;Landroid/media/MediaPlayer;II)Z
    .locals 2

    sget-object p2, Lsk/mimac/slideshow/music/MusicPlayerImpl;->LOG:Lorg/slf4j/Logger;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p3, v0, p1

    const/4 p3, 0x2

    aput-object p4, v0, p3

    const-string p3, "Can\'t play music file \'{}\' ({}, {})"

    invoke-interface {p2, p3, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/music/MusicPlayerImpl;->stop()V

    iget-object p2, p0, Lsk/mimac/slideshow/music/MusicPlayerImpl;->itemThread:Lsk/mimac/slideshow/gui/ItemThread;

    iget p3, p0, Lsk/mimac/slideshow/music/MusicPlayerImpl;->playId:I

    invoke-virtual {p2, p3}, Lsk/mimac/slideshow/gui/ItemThread;->interruptIfPlayId(I)V

    return p1
.end method

.method private synthetic lambda$createPlayer$3(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object p1, p0, Lsk/mimac/slideshow/music/MusicPlayerImpl;->itemThread:Lsk/mimac/slideshow/gui/ItemThread;

    iget v0, p0, Lsk/mimac/slideshow/music/MusicPlayerImpl;->playId:I

    invoke-virtual {p1, v0}, Lsk/mimac/slideshow/gui/ItemThread;->interruptIfPlayId(I)V

    return-void
.end method

.method private play(Landroid/net/Uri;I)V
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/music/MusicPlayerImpl;->mediaPlayer:Lsk/mimac/slideshow/music/GenericMediaPlayer;

    if-eqz v0, :cond_1

    sget-object v0, Lsk/mimac/slideshow/music/MusicPlayerImpl;->mediaPlayer:Lsk/mimac/slideshow/music/GenericMediaPlayer;

    invoke-interface {v0}, Lsk/mimac/slideshow/music/GenericMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/music/MusicPlayerImpl;->lastUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p2, p0, Lsk/mimac/slideshow/music/MusicPlayerImpl;->playId:I

    return-void

    :cond_0
    invoke-virtual {p0}, Lsk/mimac/slideshow/music/MusicPlayerImpl;->stop()V

    :cond_1
    iput p2, p0, Lsk/mimac/slideshow/music/MusicPlayerImpl;->playId:I

    sget-object p2, Lsk/mimac/slideshow/settings/UserSettings;->MUTE_VIDEO_FOR_AUDIO_PLAYLIST:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {p2}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Lsk/mimac/slideshow/VolumeHolder;->isMuted()Z

    move-result p2

    if-nez p2, :cond_2

    sget-object p2, Lsk/mimac/slideshow/music/MusicPlayerImpl;->LOG:Lorg/slf4j/Logger;

    const-string v0, "Muting other audio"

    invoke-interface {p2, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-static {p2}, Lsk/mimac/slideshow/VolumeHolder;->setMuted(Z)V

    invoke-static {}, Lsk/mimac/slideshow/gui/GuiCreator;->getInstance()Lsk/mimac/slideshow/gui/GuiCreator;

    move-result-object p2

    invoke-virtual {p2}, Lsk/mimac/slideshow/gui/GuiCreator;->mute()V

    :cond_2
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/music/MusicPlayerImpl;->createPlayer(Landroid/net/Uri;)V

    sget-object p1, Lsk/mimac/slideshow/music/MusicPlayerImpl;->mediaPlayer:Lsk/mimac/slideshow/music/GenericMediaPlayer;

    invoke-interface {p1}, Lsk/mimac/slideshow/music/GenericMediaPlayer;->start()V

    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/music/MusicPlayerImpl;->mediaPlayer:Lsk/mimac/slideshow/music/GenericMediaPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lsk/mimac/slideshow/music/MusicPlayerImpl;->mediaPlayer:Lsk/mimac/slideshow/music/GenericMediaPlayer;

    invoke-interface {v0}, Lsk/mimac/slideshow/music/GenericMediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getDuration()I
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/music/MusicPlayerImpl;->mediaPlayer:Lsk/mimac/slideshow/music/GenericMediaPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lsk/mimac/slideshow/music/MusicPlayerImpl;->mediaPlayer:Lsk/mimac/slideshow/music/GenericMediaPlayer;

    invoke-interface {v0}, Lsk/mimac/slideshow/music/GenericMediaPlayer;->getDuration()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/music/MusicPlayerImpl;->mediaPlayer:Lsk/mimac/slideshow/music/GenericMediaPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lsk/mimac/slideshow/music/MusicPlayerImpl;->mediaPlayer:Lsk/mimac/slideshow/music/GenericMediaPlayer;

    invoke-interface {v0}, Lsk/mimac/slideshow/music/GenericMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pause()V
    .locals 1

    invoke-virtual {p0}, Lsk/mimac/slideshow/music/MusicPlayerImpl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lsk/mimac/slideshow/music/MusicPlayerImpl;->mediaPlayer:Lsk/mimac/slideshow/music/GenericMediaPlayer;

    invoke-interface {v0}, Lsk/mimac/slideshow/music/GenericMediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public playFile(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/music/MusicPlayerImpl;->play(Landroid/net/Uri;I)V

    return-void
.end method

.method public playUrl(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/music/MusicPlayerImpl;->play(Landroid/net/Uri;I)V

    return-void
.end method

.method public resume()V
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/music/MusicPlayerImpl;->mediaPlayer:Lsk/mimac/slideshow/music/GenericMediaPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lsk/mimac/slideshow/music/MusicPlayerImpl;->mediaPlayer:Lsk/mimac/slideshow/music/GenericMediaPlayer;

    invoke-interface {v0}, Lsk/mimac/slideshow/music/GenericMediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/music/MusicPlayerImpl;->mediaPlayer:Lsk/mimac/slideshow/music/GenericMediaPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lsk/mimac/slideshow/music/MusicPlayerImpl;->mediaPlayer:Lsk/mimac/slideshow/music/GenericMediaPlayer;

    invoke-interface {v0}, Lsk/mimac/slideshow/music/GenericMediaPlayer;->stop()V

    const/4 v0, 0x0

    sput-object v0, Lsk/mimac/slideshow/music/MusicPlayerImpl;->mediaPlayer:Lsk/mimac/slideshow/music/GenericMediaPlayer;

    iput-object v0, p0, Lsk/mimac/slideshow/music/MusicPlayerImpl;->lastUri:Landroid/net/Uri;

    :cond_0
    return-void
.end method
