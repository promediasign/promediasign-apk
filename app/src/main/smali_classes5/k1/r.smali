.class public final synthetic Lk1/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/YouTubePlayerCallback;


# instance fields
.field public final synthetic a:Lsk/mimac/slideshow/gui/YouTubeViewWrapper;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lsk/mimac/slideshow/gui/YouTubeViewWrapper;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/r;->a:Lsk/mimac/slideshow/gui/YouTubeViewWrapper;

    iput-object p2, p0, Lk1/r;->b:Ljava/lang/String;

    iput p3, p0, Lk1/r;->c:I

    iput-object p4, p0, Lk1/r;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onYouTubePlayer(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;)V
    .locals 4

    .line 1
    iget v0, p0, Lk1/r;->c:I

    iget-object v1, p0, Lk1/r;->d:Ljava/lang/String;

    iget-object v2, p0, Lk1/r;->a:Lsk/mimac/slideshow/gui/YouTubeViewWrapper;

    iget-object v3, p0, Lk1/r;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v1, p1}, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->a(Lsk/mimac/slideshow/gui/YouTubeViewWrapper;Ljava/lang/String;ILjava/lang/String;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;)V

    return-void
.end method
