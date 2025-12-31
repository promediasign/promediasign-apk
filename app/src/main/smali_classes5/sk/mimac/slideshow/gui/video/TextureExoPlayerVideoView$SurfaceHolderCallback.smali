.class Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$SurfaceHolderCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SurfaceHolderCallback"
.end annotation


# instance fields
.field private final index:I

.field final synthetic this$0:Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;


# direct methods
.method private constructor <init>(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$SurfaceHolderCallback;->this$0:Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$SurfaceHolderCallback;->index:I

    return-void
.end method

.method public synthetic constructor <init>(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;ILsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$SurfaceHolderCallback;-><init>(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;I)V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    iget-object p2, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$SurfaceHolderCallback;->this$0:Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;

    invoke-static {p2}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->access$100(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;)[Landroid/view/Surface;

    move-result-object p2

    iget p3, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$SurfaceHolderCallback;->index:I

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    aput-object v0, p2, p3

    iget-object p1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$SurfaceHolderCallback;->this$0:Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;

    iget p2, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$SurfaceHolderCallback;->index:I

    invoke-static {p1, p2}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->access$200(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;I)V

    iget p1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$SurfaceHolderCallback;->index:I

    iget-object p2, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$SurfaceHolderCallback;->this$0:Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;

    invoke-static {p2}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->access$300(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;)I

    move-result p2

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$SurfaceHolderCallback;->this$0:Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;

    invoke-static {p1}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->access$400(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;)I

    move-result p2

    invoke-static {p1, p2}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->access$500(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;I)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    iget-object p1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$SurfaceHolderCallback;->this$0:Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;

    invoke-static {p1}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->access$100(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;)[Landroid/view/Surface;

    move-result-object p1

    iget v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$SurfaceHolderCallback;->index:I

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$SurfaceHolderCallback;->this$0:Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;

    invoke-static {p1}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->access$100(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;)[Landroid/view/Surface;

    move-result-object p1

    iget v0, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$SurfaceHolderCallback;->index:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    iget-object p1, p0, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView$SurfaceHolderCallback;->this$0:Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;

    invoke-static {p1, v0}, Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;->access$600(Lsk/mimac/slideshow/gui/video/TextureExoPlayerVideoView;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
