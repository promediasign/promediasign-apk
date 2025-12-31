.class final Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView$initialize$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;->initialize(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;ZLcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $playerOptions:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions;

.field final synthetic $youTubePlayerListener:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;

.field final synthetic this$0:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;


# direct methods
.method public constructor <init>(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView$initialize$2;->this$0:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;

    iput-object p2, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView$initialize$2;->$playerOptions:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions;

    iput-object p3, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView$initialize$2;->$youTubePlayerListener:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView$initialize$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView$initialize$2;->this$0:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;

    invoke-virtual {v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView;->getWebViewYouTubePlayer$core_release()Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;

    move-result-object v0

    new-instance v1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView$initialize$2$1;

    iget-object v2, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView$initialize$2;->$youTubePlayerListener:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;

    invoke-direct {v1, v2}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView$initialize$2$1;-><init>(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;)V

    iget-object v2, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/LegacyYouTubePlayerView$initialize$2;->$playerOptions:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions;

    invoke-virtual {v0, v1, v2}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/WebViewYouTubePlayer;->initialize$core_release(Lkotlin/jvm/functions/Function1;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/options/IFramePlayerOptions;)V

    return-void
.end method
