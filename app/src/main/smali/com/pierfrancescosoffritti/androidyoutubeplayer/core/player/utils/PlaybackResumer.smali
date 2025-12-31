.class public final Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/PlaybackResumer;
.super Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/AbstractYouTubePlayerListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/PlaybackResumer$WhenMappings;
    }
.end annotation


# instance fields
.field private canLoad:Z

.field private currentSecond:F

.field private currentVideoId:Ljava/lang/String;

.field private error:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerError;

.field private isPlaying:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/AbstractYouTubePlayerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentSecond(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;F)V
    .locals 1

    const-string v0, "youTubePlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput p2, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/PlaybackResumer;->currentSecond:F

    return-void
.end method

.method public onError(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerError;)V
    .locals 1

    const-string v0, "youTubePlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "error"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerError;->HTML_5_PLAYER:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerError;

    if-ne p2, p1, :cond_0

    iput-object p2, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/PlaybackResumer;->error:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerError;

    :cond_0
    return-void
.end method

.method public final onLifecycleResume()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/PlaybackResumer;->canLoad:Z

    return-void
.end method

.method public final onLifecycleStop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/PlaybackResumer;->canLoad:Z

    return-void
.end method

.method public onStateChange(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerState;)V
    .locals 1

    const-string v0, "youTubePlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "state"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/PlaybackResumer$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p2, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/PlaybackResumer;->isPlaying:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/PlaybackResumer;->isPlaying:Z

    :goto_0
    return-void
.end method

.method public onVideoId(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;Ljava/lang/String;)V
    .locals 1

    const-string v0, "youTubePlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "videoId"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/PlaybackResumer;->currentVideoId:Ljava/lang/String;

    return-void
.end method

.method public final resume(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;)V
    .locals 4

    const-string v0, "youTubePlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/PlaybackResumer;->currentVideoId:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/PlaybackResumer;->isPlaying:Z

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/PlaybackResumer;->error:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerError;

    sget-object v3, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerError;->HTML_5_PLAYER:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerError;

    if-ne v2, v3, :cond_1

    iget-boolean v1, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/PlaybackResumer;->canLoad:Z

    iget v2, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/PlaybackResumer;->currentSecond:F

    invoke-static {p1, v1, v0, v2}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/YouTubePlayerUtils;->loadOrCueVideo(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;ZLjava/lang/String;F)V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/PlaybackResumer;->error:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerError;

    sget-object v2, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerError;->HTML_5_PLAYER:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerError;

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/PlaybackResumer;->currentSecond:F

    invoke-interface {p1, v0, v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;->cueVideo(Ljava/lang/String;F)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/utils/PlaybackResumer;->error:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerError;

    return-void
.end method
