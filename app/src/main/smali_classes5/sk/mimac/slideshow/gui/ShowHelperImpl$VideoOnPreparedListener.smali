.class Lsk/mimac/slideshow/gui/ShowHelperImpl$VideoOnPreparedListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/gui/ShowHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VideoOnPreparedListener"
.end annotation


# instance fields
.field private final setLength:Z

.field final synthetic this$0:Lsk/mimac/slideshow/gui/ShowHelperImpl;

.field private final volume:I


# direct methods
.method private constructor <init>(Lsk/mimac/slideshow/gui/ShowHelperImpl;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl$VideoOnPreparedListener;->this$0:Lsk/mimac/slideshow/gui/ShowHelperImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl$VideoOnPreparedListener;->volume:I

    iput-boolean p3, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl$VideoOnPreparedListener;->setLength:Z

    return-void
.end method

.method public synthetic constructor <init>(Lsk/mimac/slideshow/gui/ShowHelperImpl;IZLsk/mimac/slideshow/gui/ShowHelperImpl$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lsk/mimac/slideshow/gui/ShowHelperImpl$VideoOnPreparedListener;-><init>(Lsk/mimac/slideshow/gui/ShowHelperImpl;IZ)V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5

    iget-object p1, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl$VideoOnPreparedListener;->this$0:Lsk/mimac/slideshow/gui/ShowHelperImpl;

    invoke-static {p1}, Lsk/mimac/slideshow/gui/ShowHelperImpl;->access$000(Lsk/mimac/slideshow/gui/ShowHelperImpl;)Lsk/mimac/slideshow/gui/PlaylistPanel;

    move-result-object p1

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/PlaylistPanel;->getVideoView()Lsk/mimac/slideshow/gui/video/VideoViewInterface;

    move-result-object p1

    iget v0, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl$VideoOnPreparedListener;->volume:I

    invoke-interface {p1, v0}, Lsk/mimac/slideshow/gui/video/VideoViewInterface;->setVolume(I)V

    invoke-interface {p1}, Lsk/mimac/slideshow/gui/video/VideoViewInterface;->requestFocus()Z

    invoke-interface {p1}, Lsk/mimac/slideshow/gui/video/VideoViewInterface;->start()V

    iget-boolean v0, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl$VideoOnPreparedListener;->setLength:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lsk/mimac/slideshow/gui/video/VideoViewInterface;->getDuration()I

    move-result p1

    if-lez p1, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ShowHelperImpl$VideoOnPreparedListener;->this$0:Lsk/mimac/slideshow/gui/ShowHelperImpl;

    iget-object v0, v0, Lsk/mimac/slideshow/gui/ShowHelper;->itemThread:Lsk/mimac/slideshow/gui/DisplayItemThread;

    int-to-long v1, p1

    const-wide/16 v3, 0x5dc

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lsk/mimac/slideshow/gui/ItemThread;->setLength(J)V

    :cond_0
    return-void
.end method
