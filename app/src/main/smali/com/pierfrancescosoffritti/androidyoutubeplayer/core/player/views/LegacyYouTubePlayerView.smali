.class public final Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;
.super Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/SixteenByNineFrameLayout;
.source "SourceFile"


# instance fields
.field private canPlay:Z

.field private initialize:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private isYouTubePlayerReady:Z

.field private final networkObserver:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;

.field private final playbackResumer:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/PlaybackResumer;

.field private final webViewYouTubePlayer:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;

.field private final youTubePlayerCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/FakeWebViewYouTubeListener;->INSTANCE:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/FakeWebViewYouTubeListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;-><init>(Landroid/content/Context;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/FullscreenListener;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/FullscreenListener;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3, p4}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/SixteenByNineFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;-><init>(Landroid/content/Context;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/FullscreenListener;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p3, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;->webViewYouTubePlayer:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;

    new-instance p2, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p4, "context.applicationContext"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;->networkObserver:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;

    new-instance p1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/PlaybackResumer;

    invoke-direct {p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/PlaybackResumer;-><init>()V

    iput-object p1, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;->playbackResumer:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/PlaybackResumer;

    sget-object p4, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView$initialize$1;->INSTANCE:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView$initialize$1;

    iput-object p4, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;->initialize:Lkotlin/jvm/functions/Function0;

    new-instance p4, Ljava/util/LinkedHashSet;

    invoke-direct {p4}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p4, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;->youTubePlayerCallbacks:Ljava/util/Set;

    const/4 p4, 0x1

    iput-boolean p4, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;->canPlay:Z

    new-instance p4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p4, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p3, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p3, p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;->addListener(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;)Z

    new-instance p1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView$1;

    invoke-direct {p1, p0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView$1;-><init>(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;)V

    invoke-virtual {p3, p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;->addListener(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;)Z

    new-instance p1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView$2;

    invoke-direct {p1, p0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView$2;-><init>(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;)V

    invoke-virtual {p3, p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;->addListener(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;)Z

    invoke-virtual {p2}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;->getListeners()Ljava/util/List;

    move-result-object p1

    new-instance p2, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView$3;

    invoke-direct {p2, p0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView$3;-><init>(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;-><init>(Landroid/content/Context;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/FullscreenListener;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getInitialize$p(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;)Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;->initialize:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getPlaybackResumer$p(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;)Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/PlaybackResumer;
    .locals 0

    iget-object p0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;->playbackResumer:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/PlaybackResumer;

    return-object p0
.end method

.method public static final synthetic access$getYouTubePlayerCallbacks$p(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;->youTubePlayerCallbacks:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public final getCanPlay$core_release()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;->canPlay:Z

    return v0
.end method

.method public final getWebViewYouTubePlayer$core_release()Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;
    .locals 1

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;->webViewYouTubePlayer:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;

    return-object v0
.end method

.method public final getYouTubePlayerWhenReady(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerCallback;)V
    .locals 1

    const-string v0, "youTubePlayerCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;->isYouTubePlayerReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;->webViewYouTubePlayer:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;->getYoutubePlayer$core_release()Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerCallback;->onYouTubePlayer(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;->youTubePlayerCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final initialize(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;ZLcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions;)V
    .locals 1

    const-string v0, "youTubePlayerListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerOptions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;->isYouTubePlayerReady:Z

    if-nez v0, :cond_2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;->networkObserver:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;->observeNetwork()V

    :cond_0
    new-instance v0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView$initialize$2;

    invoke-direct {v0, p0, p3, p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView$initialize$2;-><init>(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;)V

    iput-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;->initialize:Lkotlin/jvm/functions/Function0;

    if-nez p2, :cond_1

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This YouTubePlayerView has already been initialized."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final isEligibleForPlayback$core_release()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;->canPlay:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;->webViewYouTubePlayer:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;->isBackgroundPlaybackEnabled$core_release()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isYouTubePlayerReady$core_release()Z
    .locals 1

    iget-boolean v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;->isYouTubePlayerReady:Z

    return v0
.end method

.method public final onResume$core_release()V
    .locals 1

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;->playbackResumer:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/PlaybackResumer;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/PlaybackResumer;->onLifecycleResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;->canPlay:Z

    return-void
.end method

.method public final onStop$core_release()V
    .locals 1

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;->webViewYouTubePlayer:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;->getYoutubePlayer$core_release()Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;->pause()V

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;->playbackResumer:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/PlaybackResumer;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/PlaybackResumer;->onLifecycleStop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;->canPlay:Z

    return-void
.end method

.method public final release()V
    .locals 1

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;->networkObserver:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/NetworkObserver;->destroy()V

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;->webViewYouTubePlayer:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;->webViewYouTubePlayer:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;->webViewYouTubePlayer:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;->destroy()V

    return-void
.end method

.method public final setCustomPlayerUi(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->removeViews(II)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final setYouTubePlayerReady$core_release(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;->isYouTubePlayerReady:Z

    return-void
.end method
