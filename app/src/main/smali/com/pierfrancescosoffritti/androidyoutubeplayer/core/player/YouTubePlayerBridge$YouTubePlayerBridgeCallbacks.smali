.class public interface abstract Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge$YouTubePlayerBridgeCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayerBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "YouTubePlayerBridgeCallbacks"
.end annotation


# virtual methods
.method public abstract getInstance()Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;
.end method

.method public abstract getListeners()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onYouTubeIFrameAPIReady()V
.end method
