.class final Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;


# instance fields
.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mainThread:Landroid/os/Handler;

.field private final webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 1

    const-string v0, "webView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerImpl;->webView:Landroid/webkit/WebView;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerImpl;->mainThread:Landroid/os/Handler;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerImpl;->listeners:Ljava/util/Set;

    return-void
.end method

.method public static synthetic a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerImpl;->invoke$lambda$2(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private final varargs invoke(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p3, v2

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x27

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerImpl;->mainThread:Landroid/os/Handler;

    new-instance v1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/a;

    invoke-direct {v1, p1, p2, v0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/a;-><init>(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final invoke$lambda$2(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;)V
    .locals 3

    const-string v0, "$this_invoke"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$function"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$stringArgs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x28

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    check-cast p2, Ljava/lang/Iterable;

    const-string p1, ","

    const/4 v1, 0x0

    const/16 v2, 0x3e

    invoke-static {p2, p1, v1, v1, v2}, Lkotlin/collections/CollectionsKt;->c(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;)Z
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerImpl;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public cueVideo(Ljava/lang/String;F)V
    .locals 3

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerImpl;->webView:Landroid/webkit/WebView;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "cueVideo"

    invoke-direct {p0, v0, p1, v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerImpl;->invoke(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final getListeners()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerImpl;->listeners:Ljava/util/Set;

    return-object v0
.end method

.method public loadVideo(Ljava/lang/String;F)V
    .locals 3

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerImpl;->webView:Landroid/webkit/WebView;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "loadVideo"

    invoke-direct {p0, v0, p1, v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerImpl;->invoke(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public mute()V
    .locals 3

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerImpl;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "mute"

    invoke-direct {p0, v0, v2, v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerImpl;->invoke(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public pause()V
    .locals 3

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerImpl;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "pauseVideo"

    invoke-direct {p0, v0, v2, v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerImpl;->invoke(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public play()V
    .locals 3

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerImpl;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "playVideo"

    invoke-direct {p0, v0, v2, v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerImpl;->invoke(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final release()V
    .locals 2

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerImpl;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerImpl;->mainThread:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public removeListener(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerListener;)Z
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerImpl;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setVolume(I)V
    .locals 3

    if-ltz p1, :cond_0

    const/16 v0, 0x65

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerImpl;->webView:Landroid/webkit/WebView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "setVolume"

    invoke-direct {p0, v0, p1, v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerImpl;->invoke(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Volume must be between 0 and 100"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unMute()V
    .locals 3

    iget-object v0, p0, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerImpl;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "unMute"

    invoke-direct {p0, v0, v2, v1}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/views/YouTubePlayerImpl;->invoke(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
