.class public final Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;
.super Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/SixteenByNineFrameLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView$WhenMappings;
    }
.end annotation


# instance fields
.field private enableAutomaticInitialization:Z

.field private final fullscreenListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/FullscreenListener;",
            ">;"
        }
    .end annotation
.end field

.field private final legacyTubePlayerView:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;

.field private final webViewFullscreenListener:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView$webViewFullscreenListener$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/SixteenByNineFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;->fullscreenListeners:Ljava/util/List;

    new-instance v2, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView$webViewFullscreenListener$1;

    invoke-direct {v2, p0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView$webViewFullscreenListener$1;-><init>(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;)V

    iput-object v2, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;->webViewFullscreenListener:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView$webViewFullscreenListener$1;

    new-instance p3, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p3

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;-><init>(Landroid/content/Context;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/FullscreenListener;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p3, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;->legacyTubePlayerView:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;

    invoke-static {}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerViewKt;->access$getMatchParent()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/R$styleable;->YouTubePlayerView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "context.theme.obtainStyl\u2026.YouTubePlayerView, 0, 0)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lcom/pierfrancescosoffritti/androidyoutubeplayer/R$styleable;->YouTubePlayerView_enableAutomaticInitialization:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;->enableAutomaticInitialization:Z

    sget p2, Lcom/pierfrancescosoffritti/androidyoutubeplayer/R$styleable;->YouTubePlayerView_autoPlay:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    sget v1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/R$styleable;->YouTubePlayerView_handleNetworkEvents:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    sget v1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/R$styleable;->YouTubePlayerView_videoId:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "YouTubePlayerView: videoId is not set but autoPlay is set to true. This combination is not allowed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance p1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView$youTubePlayerListener$1;

    invoke-direct {p1, v1, p0, p2}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView$youTubePlayerListener$1;-><init>(Ljava/lang/String;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;Z)V

    iget-boolean p2, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;->enableAutomaticInitialization:Z

    if-eqz p2, :cond_2

    sget-object p2, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions;->Companion:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions$Companion;

    invoke-virtual {p2}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions$Companion;->getDefault()Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions;

    move-result-object p2

    invoke-virtual {p3, p1, v0, p2}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;->initialize(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;ZLcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions;)V

    :cond_2
    return-void
.end method

.method public static final synthetic access$getFullscreenListeners$p(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;->fullscreenListeners:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getLegacyTubePlayerView$p(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;)Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;
    .locals 0

    iget-object p0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;->legacyTubePlayerView:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;

    return-object p0
.end method

.method private final onResume()V
    .locals 1

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;->legacyTubePlayerView:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;->onResume$core_release()V

    return-void
.end method

.method private final onStop()V
    .locals 1

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;->legacyTubePlayerView:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;->onStop$core_release()V

    return-void
.end method


# virtual methods
.method public final addYouTubePlayerListener(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;)Z
    .locals 1

    const-string v0, "youTubePlayerListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;->legacyTubePlayerView:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;->getWebViewYouTubePlayer$core_release()Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;->addListener(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;)Z

    move-result p1

    return p1
.end method

.method public final getYouTubePlayerWhenReady(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerCallback;)V
    .locals 1

    const-string v0, "youTubePlayerCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;->legacyTubePlayerView:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;

    invoke-virtual {v0, p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;->getYouTubePlayerWhenReady(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerCallback;)V

    return-void
.end method

.method public final initialize(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;ZLcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions;)V
    .locals 1

    const-string v0, "youTubePlayerListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playerOptions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;->enableAutomaticInitialization:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;->legacyTubePlayerView:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;->initialize(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;ZLcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "YouTubePlayerView: If you want to initialize this view manually, you need to set \'enableAutomaticInitialization\' to false."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;->release()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;->onStop()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;->onResume()V

    :goto_0
    return-void
.end method

.method public final release()V
    .locals 1

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;->legacyTubePlayerView:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;->release()V

    return-void
.end method

.method public final setCustomPlayerUi(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;->legacyTubePlayerView:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;

    invoke-virtual {v0, p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;->setCustomPlayerUi(Landroid/view/View;)V

    return-void
.end method

.method public final setEnableAutomaticInitialization(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerView;->enableAutomaticInitialization:Z

    return-void
.end method
