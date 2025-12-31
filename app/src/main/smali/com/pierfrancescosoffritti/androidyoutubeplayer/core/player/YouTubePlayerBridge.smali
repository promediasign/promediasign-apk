.class public final Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;,
        Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$Companion;


# instance fields
.field private final mainThreadHandler:Landroid/os/Handler;

.field private final youTubePlayerOwner:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->Companion:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;)V
    .locals 1

    const-string v0, "youTubePlayerOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->youTubePlayerOwner:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->mainThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;F)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->sendVideoCurrentTime$lambda$14(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;F)V

    return-void
.end method

.method public static synthetic b(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->sendApiChange$lambda$12(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;)V

    return-void
.end method

.method public static synthetic c(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->sendVideoId$lambda$20(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackQuality;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->sendPlaybackQualityChange$lambda$6(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackQuality;)V

    return-void
.end method

.method public static synthetic e(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerError;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->sendError$lambda$10(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerError;)V

    return-void
.end method

.method public static synthetic f(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;F)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->sendVideoLoadedFraction$lambda$18(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;F)V

    return-void
.end method

.method public static synthetic g(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;F)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->sendVideoDuration$lambda$16(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;F)V

    return-void
.end method

.method public static synthetic h(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->sendYouTubeIFrameAPIReady$lambda$0(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;)V

    return-void
.end method

.method public static synthetic i(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerState;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->sendStateChange$lambda$4(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerState;)V

    return-void
.end method

.method public static synthetic j(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackRate;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->sendPlaybackRateChange$lambda$8(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackRate;)V

    return-void
.end method

.method public static synthetic k(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->sendReady$lambda$2(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;)V

    return-void
.end method

.method private final parsePlaybackQuality(Ljava/lang/String;)Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackQuality;
    .locals 1

    const-string v0, "small"

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackQuality;->SMALL:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackQuality;

    goto :goto_0

    :cond_0
    const-string v0, "medium"

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackQuality;->MEDIUM:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackQuality;

    goto :goto_0

    :cond_1
    const-string v0, "large"

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackQuality;->LARGE:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackQuality;

    goto :goto_0

    :cond_2
    const-string v0, "hd720"

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackQuality;->HD720:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackQuality;

    goto :goto_0

    :cond_3
    const-string v0, "hd1080"

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackQuality;->HD1080:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackQuality;

    goto :goto_0

    :cond_4
    const-string v0, "highres"

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackQuality;->HIGH_RES:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackQuality;

    goto :goto_0

    :cond_5
    const-string v0, "default"

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackQuality;->DEFAULT:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackQuality;

    goto :goto_0

    :cond_6
    sget-object p1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackQuality;->UNKNOWN:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackQuality;

    :goto_0
    return-object p1
.end method

.method private final parsePlaybackRate(Ljava/lang/String;)Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackRate;
    .locals 1

    const-string v0, "0.25"

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackRate;->RATE_0_25:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackRate;

    goto :goto_0

    :cond_0
    const-string v0, "0.5"

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackRate;->RATE_0_5:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackRate;

    goto :goto_0

    :cond_1
    const-string v0, "1"

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackRate;->RATE_1:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackRate;

    goto :goto_0

    :cond_2
    const-string v0, "1.5"

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackRate;->RATE_1_5:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackRate;

    goto :goto_0

    :cond_3
    const-string v0, "2"

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackRate;->RATE_2:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackRate;

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackRate;->UNKNOWN:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackRate;

    :goto_0
    return-object p1
.end method

.method private final parsePlayerError(Ljava/lang/String;)Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerError;
    .locals 1

    const-string v0, "2"

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerError;->INVALID_PARAMETER_IN_REQUEST:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerError;

    goto :goto_1

    :cond_0
    const-string v0, "5"

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerError;->HTML_5_PLAYER:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerError;

    goto :goto_1

    :cond_1
    const-string v0, "100"

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerError;->VIDEO_NOT_FOUND:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerError;

    goto :goto_1

    :cond_2
    const-string v0, "101"

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    sget-object p1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerError;->VIDEO_NOT_PLAYABLE_IN_EMBEDDED_PLAYER:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerError;

    goto :goto_1

    :cond_3
    const-string v0, "150"

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerError;->UNKNOWN:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerError;

    :goto_1
    return-object p1
.end method

.method private final parsePlayerState(Ljava/lang/String;)Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerState;
    .locals 1

    const-string v0, "UNSTARTED"

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerState;->UNSTARTED:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerState;

    goto :goto_0

    :cond_0
    const-string v0, "ENDED"

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerState;->ENDED:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerState;

    goto :goto_0

    :cond_1
    const-string v0, "PLAYING"

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerState;->PLAYING:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerState;

    goto :goto_0

    :cond_2
    const-string v0, "PAUSED"

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerState;->PAUSED:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerState;

    goto :goto_0

    :cond_3
    const-string v0, "BUFFERING"

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerState;->BUFFERING:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerState;

    goto :goto_0

    :cond_4
    const-string v0, "CUED"

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerState;->VIDEO_CUED:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerState;

    goto :goto_0

    :cond_5
    sget-object p1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerState;->UNKNOWN:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerState;

    :goto_0
    return-object p1
.end method

.method private static final sendApiChange$lambda$12(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->youTubePlayerOwner:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;

    invoke-interface {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;->getListeners()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;

    iget-object v2, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->youTubePlayerOwner:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;

    invoke-interface {v2}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;->getInstance()Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;->onApiChange(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final sendError$lambda$10(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerError;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$playerError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->youTubePlayerOwner:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;

    invoke-interface {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;->getListeners()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;

    iget-object v2, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->youTubePlayerOwner:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;

    invoke-interface {v2}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;->getInstance()Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;->onError(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerError;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final sendPlaybackQualityChange$lambda$6(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackQuality;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$playbackQuality"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->youTubePlayerOwner:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;

    invoke-interface {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;->getListeners()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;

    iget-object v2, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->youTubePlayerOwner:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;

    invoke-interface {v2}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;->getInstance()Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;->onPlaybackQualityChange(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackQuality;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final sendPlaybackRateChange$lambda$8(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackRate;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$playbackRate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->youTubePlayerOwner:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;

    invoke-interface {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;->getListeners()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;

    iget-object v2, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->youTubePlayerOwner:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;

    invoke-interface {v2}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;->getInstance()Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;->onPlaybackRateChange(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackRate;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final sendReady$lambda$2(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->youTubePlayerOwner:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;

    invoke-interface {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;->getListeners()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;

    iget-object v2, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->youTubePlayerOwner:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;

    invoke-interface {v2}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;->getInstance()Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;->onReady(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final sendStateChange$lambda$4(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerState;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$playerState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->youTubePlayerOwner:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;

    invoke-interface {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;->getListeners()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;

    iget-object v2, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->youTubePlayerOwner:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;

    invoke-interface {v2}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;->getInstance()Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;->onStateChange(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerState;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final sendVideoCurrentTime$lambda$14(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;F)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->youTubePlayerOwner:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;

    invoke-interface {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;->getListeners()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;

    iget-object v2, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->youTubePlayerOwner:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;

    invoke-interface {v2}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;->getInstance()Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;->onCurrentSecond(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final sendVideoDuration$lambda$16(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;F)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->youTubePlayerOwner:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;

    invoke-interface {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;->getListeners()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;

    iget-object v2, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->youTubePlayerOwner:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;

    invoke-interface {v2}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;->getInstance()Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;->onVideoDuration(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final sendVideoId$lambda$20(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;Ljava/lang/String;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$videoId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->youTubePlayerOwner:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;

    invoke-interface {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;->getListeners()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;

    iget-object v2, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->youTubePlayerOwner:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;

    invoke-interface {v2}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;->getInstance()Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;->onVideoId(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final sendVideoLoadedFraction$lambda$18(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;F)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->youTubePlayerOwner:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;

    invoke-interface {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;->getListeners()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;

    iget-object v2, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->youTubePlayerOwner:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;

    invoke-interface {v2}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;->getInstance()Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;->onVideoLoadedFraction(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final sendYouTubeIFrameAPIReady$lambda$0(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->youTubePlayerOwner:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;

    invoke-interface {p0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;->onYouTubeIFrameAPIReady()V

    return-void
.end method


# virtual methods
.method public final sendApiChange()Z
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, LW0/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LW0/b;-><init>(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public final sendError(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->parsePlayerError(Ljava/lang/String;)Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerError;

    move-result-object p1

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, LG/c;

    const/16 v2, 0x9

    invoke-direct {v1, p0, p1, v2}, LG/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendPlaybackQualityChange(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "quality"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->parsePlaybackQuality(Ljava/lang/String;)Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackQuality;

    move-result-object p1

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, LG/c;

    const/4 v2, 0x6

    invoke-direct {v1, p0, p1, v2}, LG/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendPlaybackRateChange(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "rate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->parsePlaybackRate(Ljava/lang/String;)Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlaybackRate;

    move-result-object p1

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, LG/c;

    const/4 v2, 0x7

    invoke-direct {v1, p0, p1, v2}, LG/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendReady()Z
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, LW0/b;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, LW0/b;-><init>(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public final sendStateChange(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->parsePlayerState(Ljava/lang/String;)Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerState;

    move-result-object p1

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, LG/c;

    const/16 v2, 0xa

    invoke-direct {v1, p0, p1, v2}, LG/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendVideoCurrentTime(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "seconds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, LW0/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, LW0/a;-><init>(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;FI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final sendVideoDuration(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "seconds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "0"

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, LW0/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, LW0/a;-><init>(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;FI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final sendVideoId(Ljava/lang/String;)Z
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, LG/c;

    const/16 v2, 0x8

    invoke-direct {v1, p0, p1, v2}, LG/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public final sendVideoLoadedFraction(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "fraction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, LW0/a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, LW0/a;-><init>(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;FI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final sendYouTubeIFrameAPIReady()Z
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, LW0/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LW0/b;-><init>(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method
