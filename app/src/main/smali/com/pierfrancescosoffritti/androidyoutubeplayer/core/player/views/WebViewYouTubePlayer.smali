.class public final Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;
.super Landroid/webkit/WebView;
.source "SourceFile"

# interfaces
.implements Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;


# instance fields
.field private final _youTubePlayer:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerImpl;

.field private isBackgroundPlaybackEnabled:Z

.field private final listener:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/FullscreenListener;

.field private youTubePlayerInitListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/FakeWebViewYouTubeListener;->INSTANCE:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/FakeWebViewYouTubeListener;

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;-><init>(Landroid/content/Context;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/FullscreenListener;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/FullscreenListener;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p2, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;->listener:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/FullscreenListener;

    new-instance p1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerImpl;

    invoke-direct {p1, p0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerImpl;-><init>(Landroid/webkit/WebView;)V

    iput-object p1, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;->_youTubePlayer:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerImpl;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/FullscreenListener;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 3
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;-><init>(Landroid/content/Context;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/FullscreenListener;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getListener$p(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;)Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/FullscreenListener;
    .locals 0

    iget-object p0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;->listener:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/FullscreenListener;

    return-object p0
.end method

.method private final initWebView(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    new-instance v0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;

    invoke-direct {v0, p0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;-><init>(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;)V

    const-string v1, "YouTubePlayerBridge"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/R$raw;->ayp_youtube_player:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "resources.openRawResourc\u2026R.raw.ayp_youtube_player)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayerKt;->readHTMLFromUTF8File(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<<injectedPlayerVars>>"

    invoke-static {v0, v2, v1}, Lkotlin/text/StringsKt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions;->getOrigin$core_release()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    const-string v6, "text/html"

    const-string v7, "utf-8"

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer$initWebView$2;

    invoke-direct {p1, p0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer$initWebView$2;-><init>(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;)V

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method


# virtual methods
.method public final addListener(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;)Z
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;->_youTubePlayer:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerImpl;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerImpl;->getListeners()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;->_youTubePlayer:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerImpl;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerImpl;->release()V

    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public getInstance()Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;
    .locals 1

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;->_youTubePlayer:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerImpl;

    return-object v0
.end method

.method public getListeners()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;->_youTubePlayer:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerImpl;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerImpl;->getListeners()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->f(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getYoutubePlayer$core_release()Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;
    .locals 1

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;->_youTubePlayer:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerImpl;

    return-object v0
.end method

.method public final initialize$core_release(Lkotlin/jvm/functions/Function1;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions;",
            ")V"
        }
    .end annotation

    const-string v0, "initListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;->youTubePlayerInitListener:Lkotlin/jvm/functions/Function1;

    if-nez p2, :cond_0

    sget-object p1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions;->Companion:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions$Companion;

    invoke-virtual {p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions$Companion;->getDefault()Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p2}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;->initWebView(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions;)V

    return-void
.end method

.method public final isBackgroundPlaybackEnabled$core_release()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;->isBackgroundPlaybackEnabled:Z

    return v0
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;->isBackgroundPlaybackEnabled:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public onYouTubeIFrameAPIReady()V
    .locals 2

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;->youTubePlayerInitListener:Lkotlin/jvm/functions/Function1;

    if-nez v0, :cond_0

    const-string v0, "youTubePlayerInitListener"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;->_youTubePlayer:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerImpl;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setBackgroundPlaybackEnabled$core_release(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;->isBackgroundPlaybackEnabled:Z

    return-void
.end method
