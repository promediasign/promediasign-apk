.class public Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;
.super Landroid/widget/VideoView;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/gui/video/VideoViewInterface;


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private originalVolume:I

.field private playId:Lsk/mimac/slideshow/gui/play/PlayId;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;Landroid/media/MediaPlayer$OnPreparedListener;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;->lambda$setOnPreparedListener$2(Landroid/media/MediaPlayer$OnPreparedListener;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic b(Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;Lsk/mimac/slideshow/utils/Consumer;Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;->lambda$setOnErrorListener$1(Lsk/mimac/slideshow/utils/Consumer;Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;Lsk/mimac/slideshow/utils/Consumer;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;->lambda$setOnCompletionListener$0(Lsk/mimac/slideshow/utils/Consumer;Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private synthetic lambda$setOnCompletionListener$0(Lsk/mimac/slideshow/utils/Consumer;Landroid/media/MediaPlayer;)V
    .locals 0

    iget-object p2, p0, Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;->playId:Lsk/mimac/slideshow/gui/play/PlayId;

    invoke-virtual {p2}, Lsk/mimac/slideshow/gui/play/PlayId;->getPlayId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lsk/mimac/slideshow/utils/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setOnErrorListener$1(Lsk/mimac/slideshow/utils/Consumer;Landroid/media/MediaPlayer;II)Z
    .locals 1

    sget-object p2, Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;->LOG:Lorg/slf4j/Logger;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v0, "Can\'t play video: {}, {}"

    invoke-interface {p2, v0, p3, p4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p0, Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;->playId:Lsk/mimac/slideshow/gui/play/PlayId;

    invoke-virtual {p2}, Lsk/mimac/slideshow/gui/play/PlayId;->getPlayId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lsk/mimac/slideshow/utils/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$setOnPreparedListener$2(Landroid/media/MediaPlayer$OnPreparedListener;Landroid/media/MediaPlayer;)V
    .locals 0

    iput-object p2, p0, Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {p1, p2}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    return-void
.end method


# virtual methods
.method public mute()V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void
.end method

.method public pause()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;->LOG:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t pause video: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public prepare(Ljava/lang/String;Lsk/mimac/slideshow/gui/play/PlayId;)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/VideoView;->setVisibility(I)V

    iput-object p2, p0, Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;->playId:Lsk/mimac/slideshow/gui/play/PlayId;

    invoke-virtual {p0, p1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    return-void
.end method

.method public prepareNext(Ljava/lang/String;Lsk/mimac/slideshow/gui/play/PlayId;)V
    .locals 0

    return-void
.end method

.method public resume()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;->LOG:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t resume video: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setOnCompletionListener(Lsk/mimac/slideshow/utils/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsk/mimac/slideshow/utils/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ln1/b;

    invoke-direct {v0, p0, p1}, Ln1/b;-><init>(Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;Lsk/mimac/slideshow/utils/Consumer;)V

    invoke-virtual {p0, v0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method public setOnErrorListener(Lsk/mimac/slideshow/utils/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsk/mimac/slideshow/utils/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lp1/c;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lp1/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 1

    new-instance v0, Ln1/a;

    invoke-direct {v0, p0, p1}, Ln1/a;-><init>(Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;Landroid/media/MediaPlayer$OnPreparedListener;)V

    invoke-super {p0, v0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method public setVolume(I)V
    .locals 1

    iput p1, p0, Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;->originalVolume:I

    invoke-static {}, Lsk/mimac/slideshow/VolumeHolder;->isMuted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    int-to-float p1, p1

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :goto_0
    return-void
.end method

.method public stopPlayback()V
    .locals 1

    invoke-super {p0}, Landroid/widget/VideoView;->stopPlayback()V

    const/16 v0, 0x8

    invoke-super {p0, v0}, Landroid/widget/VideoView;->setVisibility(I)V

    return-void
.end method

.method public unMute()V
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;->mediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lsk/mimac/slideshow/gui/video/AndroidVideoViewWrapper;->originalVolume:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void
.end method
