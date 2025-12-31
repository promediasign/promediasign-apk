.class final Lsk/mimac/slideshow/gui/image/touch/TouchImageView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/gui/image/touch/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;


# direct methods
.method private constructor <init>(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$ScaleListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;Lsk/mimac/slideshow/gui/image/touch/TouchImageView$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$ScaleListener;-><init>(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$ScaleListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    iget-object v3, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$ScaleListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {v3}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$2000(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)Z

    move-result v3

    invoke-static {v0, v1, v2, p1, v3}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$2100(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;FFFZ)V

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$ScaleListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    sget-object v0, Lsk/mimac/slideshow/gui/image/touch/ImageActionState;->ZOOM:Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

    invoke-static {p1, v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$1100(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;Lsk/mimac/slideshow/gui/image/touch/ImageActionState;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$ScaleListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    sget-object v0, Lsk/mimac/slideshow/gui/image/touch/ImageActionState;->NONE:Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

    invoke-static {p1, v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$1100(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;Lsk/mimac/slideshow/gui/image/touch/ImageActionState;)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$ScaleListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$900(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)F

    move-result p1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$ScaleListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$900(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)F

    move-result v0

    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$ScaleListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {v1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$800(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)F

    move-result v1

    const/4 v2, 0x1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$ScaleListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$800(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)F

    move-result p1

    :goto_0
    move v5, p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$ScaleListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$900(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)F

    move-result v0

    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$ScaleListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {v1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$1000(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$ScaleListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$1000(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)F

    move-result p1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_2

    new-instance p1, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$DoubleTapZoom;

    iget-object v4, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$ScaleListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {v4}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$1400(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v6, v0, v1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$ScaleListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$1600(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)I

    move-result v0

    int-to-float v0, v0

    div-float v7, v0, v1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$ScaleListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$2000(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)Z

    move-result v8

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$DoubleTapZoom;-><init>(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;FFFZ)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$ScaleListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {v0, p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$500(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
