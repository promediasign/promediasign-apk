.class Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$SurfaceHolderCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SurfaceHolderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;


# direct methods
.method private constructor <init>(Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$SurfaceHolderCallback;->this$0:Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$SurfaceHolderCallback;-><init>(Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;)V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$SurfaceHolderCallback;->this$0:Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, v0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->surface:Landroid/view/Surface;

    iget-object p1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$SurfaceHolderCallback;->this$0:Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;

    iget-object v0, p1, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->tempPlayId:Lsk/mimac/slideshow/gui/play/PlayId;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->openVideo(Lsk/mimac/slideshow/gui/play/PlayId;Z)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object p1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$SurfaceHolderCallback;->this$0:Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->release()V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$SurfaceHolderCallback;->this$0:Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;

    iget-object p1, p1, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->surface:Landroid/view/Surface;

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView$SurfaceHolderCallback;->this$0:Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;

    const/4 v0, 0x0

    iput-object v0, p1, Lsk/mimac/slideshow/gui/video/SurfaceExoPlayerVideoView;->surface:Landroid/view/Surface;

    return-void
.end method
