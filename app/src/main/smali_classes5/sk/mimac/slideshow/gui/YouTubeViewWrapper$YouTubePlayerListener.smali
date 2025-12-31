.class Lsk/mimac/slideshow/gui/YouTubeViewWrapper$YouTubePlayerListener;
.super Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/AbstractYouTubePlayerListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/gui/YouTubeViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "YouTubePlayerListener"
.end annotation


# instance fields
.field private final itemThread:Lsk/mimac/slideshow/gui/ItemThread;

.field final synthetic this$0:Lsk/mimac/slideshow/gui/YouTubeViewWrapper;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/gui/YouTubeViewWrapper;Lsk/mimac/slideshow/gui/ItemThread;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper$YouTubePlayerListener;->this$0:Lsk/mimac/slideshow/gui/YouTubeViewWrapper;

    invoke-direct {p0}, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/listeners/AbstractYouTubePlayerListener;-><init>()V

    iput-object p2, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper$YouTubePlayerListener;->itemThread:Lsk/mimac/slideshow/gui/ItemThread;

    return-void
.end method


# virtual methods
.method public onCurrentSecond(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;F)V
    .locals 1

    iget-object p1, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper$YouTubePlayerListener;->this$0:Lsk/mimac/slideshow/gui/YouTubeViewWrapper;

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float p2, p2, v0

    float-to-int p2, p2

    invoke-static {p1, p2}, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->access$202(Lsk/mimac/slideshow/gui/YouTubeViewWrapper;I)I

    return-void
.end method

.method public onError(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerError;)V
    .locals 1

    invoke-static {}, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->access$000()Lorg/slf4j/Logger;

    move-result-object p1

    const-string v0, "Error while playing YouTube video: {}"

    invoke-interface {p1, v0, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper$YouTubePlayerListener;->itemThread:Lsk/mimac/slideshow/gui/ItemThread;

    iget-object p2, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper$YouTubePlayerListener;->this$0:Lsk/mimac/slideshow/gui/YouTubeViewWrapper;

    invoke-static {p2}, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->access$100(Lsk/mimac/slideshow/gui/YouTubeViewWrapper;)I

    move-result p2

    invoke-virtual {p1, p2}, Lsk/mimac/slideshow/gui/ItemThread;->interruptIfPlayId(I)V

    return-void
.end method

.method public onStateChange(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerState;)V
    .locals 0

    sget-object p1, Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerState;->ENDED:Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/PlayerConstants$PlayerState;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper$YouTubePlayerListener;->itemThread:Lsk/mimac/slideshow/gui/ItemThread;

    iget-object p2, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper$YouTubePlayerListener;->this$0:Lsk/mimac/slideshow/gui/YouTubeViewWrapper;

    invoke-static {p2}, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->access$100(Lsk/mimac/slideshow/gui/YouTubeViewWrapper;)I

    move-result p2

    invoke-virtual {p1, p2}, Lsk/mimac/slideshow/gui/ItemThread;->interruptIfPlayId(I)V

    :cond_0
    return-void
.end method

.method public onVideoDuration(Lcom/pierfrancescosoffritti/androidyoutubeplayer/core/player/YouTubePlayer;F)V
    .locals 1

    iget-object p1, p0, Lsk/mimac/slideshow/gui/YouTubeViewWrapper$YouTubePlayerListener;->this$0:Lsk/mimac/slideshow/gui/YouTubeViewWrapper;

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float p2, p2, v0

    float-to-int p2, p2

    invoke-static {p1, p2}, Lsk/mimac/slideshow/gui/YouTubeViewWrapper;->access$302(Lsk/mimac/slideshow/gui/YouTubeViewWrapper;I)I

    return-void
.end method
