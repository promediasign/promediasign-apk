.class public final synthetic Lk1/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerCallback;


# instance fields
.field public final synthetic a:Lsk/mimac/slideshow/gui/YouTubeViewWrapper;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lsk/mimac/slideshow/gui/YouTubeViewWrapper;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/q;->a:Lsk/mimac/slideshow/gui/YouTubeViewWrapper;

    iput p2, p0, Lk1/q;->b:I

    iput-object p3, p0, Lk1/q;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onYouTubePlayer(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;)V
    .locals 3

    .line 1
    iget v0, p0, Lk1/q;->b:I

    iget-object v1, p0, Lk1/q;->c:Ljava/lang/String;

    iget-object v2, p0, Lk1/q;->a:Lsk/mimac/slideshow/gui/YouTubeViewWrapper;

    invoke-static {v2, v0, v1, p1}, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->b(Lsk/mimac/slideshow/gui/YouTubeViewWrapper;ILjava/lang/String;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;)V

    return-void
.end method
