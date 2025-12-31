.class public Lsk/mimac/slideshow/gui/YouTubeViewWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/gui/YouTubeViewWrapper$YouTubePlayerListener;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private currentPosition:I

.field private duration:I

.field private originalVolume:I

.field private playId:I

.field private preparedVideoId:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;

.field private youTubePlayer:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;

.field private final youtubeView:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/widget/RelativeLayout;Lsk/mimac/slideshow/gui/ItemThread;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;

    sget-object v1, Lsk/mimac/slideshow/ContextHolder;->CONTEXT:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->youtubeView:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;->setEnableAutomaticInitialization(Z)V

    new-instance v2, Lsk/mimac/slideshow/gui/YouTubeViewWrapper$YouTubePlayerListener;

    invoke-direct {v2, p0, p2}, Lsk/mimac/slideshow/gui/YouTubeViewWrapper$YouTubePlayerListener;-><init>(Lsk/mimac/slideshow/gui/YouTubeViewWrapper;Lsk/mimac/slideshow/gui/ItemThread;)V

    new-instance v3, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions$Builder;

    invoke-direct {v3}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions$Builder;-><init>()V

    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->YOUTUBE_SHOW_CONTROLS:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v4}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions$Builder;->controls(I)Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions$Builder;

    move-result-object v3

    sget-object v4, Lsk/mimac/slideshow/settings/UserSettings;->YOUTUBE_SHOW_CAPTIONS:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v4}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions$Builder;->ccLoadPolicy(I)Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions$Builder;->build()Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4, v3}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;->initialize(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;ZLcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions;)V

    :try_start_0
    const-class v2, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;

    const-string v3, "legacyTubePlayerView"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "webViewYouTubePlayer"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Can\'t extract WebView from YouTube player"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->youtubeView:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->youtubeView:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;

    new-instance v0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper$YouTubePlayerListener;

    invoke-direct {v0, p0, p2}, Lsk/mimac/slideshow/gui/YouTubeViewWrapper$YouTubePlayerListener;-><init>(Lsk/mimac/slideshow/gui/YouTubeViewWrapper;Lsk/mimac/slideshow/gui/ItemThread;)V

    invoke-virtual {p1, v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;->addYouTubePlayerListener(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;)Z

    return-void
.end method

.method public static synthetic a(Lsk/mimac/slideshow/gui/YouTubeViewWrapper;Ljava/lang/String;ILjava/lang/String;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->lambda$play$0(Ljava/lang/String;ILjava/lang/String;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;)V

    return-void
.end method

.method public static synthetic access$000()Lorg/slf4j/Logger;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->LOG:Lorg/slf4j/Logger;

    return-object v0
.end method

.method public static synthetic access$100(Lsk/mimac/slideshow/gui/YouTubeViewWrapper;)I
    .locals 0

    iget p0, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->playId:I

    return p0
.end method

.method public static synthetic access$202(Lsk/mimac/slideshow/gui/YouTubeViewWrapper;I)I
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->currentPosition:I

    return p1
.end method

.method public static synthetic access$302(Lsk/mimac/slideshow/gui/YouTubeViewWrapper;I)I
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->duration:I

    return p1
.end method

.method public static synthetic b(Lsk/mimac/slideshow/gui/YouTubeViewWrapper;ILjava/lang/String;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->lambda$prepare$1(ILjava/lang/String;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;)V

    return-void
.end method

.method private synthetic lambda$play$0(Ljava/lang/String;ILjava/lang/String;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->setPreferredQuality(Ljava/lang/String;)V

    iput-object p4, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->youTubePlayer:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;

    iput p2, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->originalVolume:I

    mul-int/lit8 p2, p2, 0x64

    invoke-interface {p4, p2}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;->setVolume(I)V

    const/4 p1, 0x0

    invoke-interface {p4, p3, p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;->loadVideo(Ljava/lang/String;F)V

    invoke-static {}, Lsk/mimac/slideshow/VolumeHolder;->isMuted()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p4}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;->mute()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$prepare$1(ILjava/lang/String;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;)V
    .locals 0

    mul-int/lit8 p1, p1, 0x64

    invoke-interface {p3, p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;->setVolume(I)V

    const/4 p1, 0x0

    invoke-interface {p3, p2, p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;->cueVideo(Ljava/lang/String;F)V

    iput-object p2, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->preparedVideoId:Ljava/lang/String;

    return-void
.end method

.method private setPreferredQuality(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript: { localStorage.setItem(\'yt-player-quality\', JSON.stringify({data: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\', creation: Date.now(), expiration: Date.now() + 2419200000})); }"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->webView:Landroid/webkit/WebView;

    const-string v0, "javascript: { localStorage.removeItem(\'yt-player-quality\'); }"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->currentPosition:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->duration:I

    return v0
.end method

.method public hide()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->currentPosition:I

    iput v0, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->duration:I

    const/4 v0, 0x0

    iput-object v0, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->preparedVideoId:Ljava/lang/String;

    iget-object v0, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->youTubePlayer:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;->pause()V

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->youtubeView:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public mute()V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->youTubePlayer:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;->mute()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->youTubePlayer:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;->pause()V

    :cond_0
    return-void
.end method

.method public play(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    iput p4, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->playId:I

    iget-object p4, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->youtubeView:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p4, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->preparedVideoId:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-direct {p0, p2}, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->setPreferredQuality(Ljava/lang/String;)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->youTubePlayer:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;

    invoke-interface {p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;->play()V

    goto :goto_0

    :cond_0
    const/4 p4, -0x1

    iput p4, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->currentPosition:I

    iput p4, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->duration:I

    iget-object p4, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->youtubeView:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;

    new-instance v0, Lk1/r;

    invoke-direct {v0, p0, p2, p3, p1}, Lk1/r;-><init>(Lsk/mimac/slideshow/gui/YouTubeViewWrapper;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p4, v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;->getYouTubePlayerWhenReady(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerCallback;)V

    :goto_0
    return-void
.end method

.method public prepare(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->currentPosition:I

    iput v0, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->duration:I

    iput p3, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->playId:I

    iget-object p3, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->youTubePlayer:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->youtubeView:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;

    new-instance v0, Lk1/q;

    invoke-direct {v0, p0, p2, p1}, Lk1/q;-><init>(Lsk/mimac/slideshow/gui/YouTubeViewWrapper;ILjava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;->getYouTubePlayerWhenReady(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerCallback;)V

    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->youTubePlayer:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;->play()V

    :cond_0
    return-void
.end method

.method public unMute()V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->youTubePlayer:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;->unMute()V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->youTubePlayer:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;

    iget v1, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->originalVolume:I

    mul-int/lit8 v1, v1, 0x64

    invoke-interface {v0, v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;->setVolume(I)V

    :cond_0
    return-void
.end method
