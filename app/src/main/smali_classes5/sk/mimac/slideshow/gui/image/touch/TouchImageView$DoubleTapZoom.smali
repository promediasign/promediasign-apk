.class final Lsk/mimac/slideshow/gui/image/touch/TouchImageView$DoubleTapZoom;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/gui/image/touch/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DoubleTapZoom"
.end annotation


# instance fields
.field private final bitmapX:F

.field private final bitmapY:F

.field private final endTouch:Landroid/graphics/PointF;

.field private final interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private final startTime:J

.field private final startTouch:Landroid/graphics/PointF;

.field private final startZoom:F

.field private final stretchImageToSuper:Z

.field private final targetZoom:F

.field final synthetic this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;FFFZ)V
    .locals 2

    iput-object p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$DoubleTapZoom;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$DoubleTapZoom;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    sget-object v0, Lsk/mimac/slideshow/gui/image/touch/ImageActionState;->ANIMATE_ZOOM:Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

    invoke-static {p1, v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$1100(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;Lsk/mimac/slideshow/gui/image/touch/ImageActionState;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$DoubleTapZoom;->startTime:J

    invoke-static {p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$900(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)F

    move-result v0

    iput v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$DoubleTapZoom;->startZoom:F

    iput p2, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$DoubleTapZoom;->targetZoom:F

    iput-boolean p5, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$DoubleTapZoom;->stretchImageToSuper:Z

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p4, p2}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;

    move-result-object p2

    iget p3, p2, Landroid/graphics/PointF;->x:F

    iput p3, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$DoubleTapZoom;->bitmapX:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iput p2, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$DoubleTapZoom;->bitmapY:F

    invoke-virtual {p1, p3, p2}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->transformCoordBitmapToTouch(FF)Landroid/graphics/PointF;

    move-result-object p2

    iput-object p2, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$DoubleTapZoom;->startTouch:Landroid/graphics/PointF;

    new-instance p2, Landroid/graphics/PointF;

    invoke-static {p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$1400(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)I

    move-result p3

    int-to-float p3, p3

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    invoke-static {p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$1600(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p4

    invoke-direct {p2, p3, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$DoubleTapZoom;->endTouch:Landroid/graphics/PointF;

    return-void
.end method

.method private calculateDeltaScale(F)F
    .locals 2

    iget v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$DoubleTapZoom;->startZoom:F

    iget v1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$DoubleTapZoom;->targetZoom:F

    sub-float/2addr v1, v0

    mul-float v1, v1, p1

    add-float/2addr v1, v0

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$DoubleTapZoom;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$900(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)F

    move-result p1

    div-float/2addr v1, p1

    return v1
.end method

.method private interpolate()F
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$DoubleTapZoom;->startTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43fa0000    # 500.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$DoubleTapZoom;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v1, v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method

.method private translateImageToCenterTouchPosition(F)V
    .locals 4

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$DoubleTapZoom;->startTouch:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$DoubleTapZoom;->endTouch:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v1

    mul-float v3, v3, p1

    add-float/2addr v3, v1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v0

    mul-float v1, v1, p1

    add-float/2addr v1, v0

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$DoubleTapZoom;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    iget v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$DoubleTapZoom;->bitmapX:F

    iget v2, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$DoubleTapZoom;->bitmapY:F

    invoke-virtual {p1, v0, v2}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->transformCoordBitmapToTouch(FF)Landroid/graphics/PointF;

    move-result-object p1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$DoubleTapZoom;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$1800(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget v2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, p1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$DoubleTapZoom;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$DoubleTapZoom;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    sget-object v1, Lsk/mimac/slideshow/gui/image/touch/ImageActionState;->NONE:Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

    invoke-static {v0, v1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$1100(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;Lsk/mimac/slideshow/gui/image/touch/ImageActionState;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$DoubleTapZoom;->interpolate()F

    move-result v0

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$DoubleTapZoom;->calculateDeltaScale(F)F

    move-result v1

    iget-object v2, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$DoubleTapZoom;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    iget v3, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$DoubleTapZoom;->bitmapX:F

    iget v4, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$DoubleTapZoom;->bitmapY:F

    iget-boolean v5, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$DoubleTapZoom;->stretchImageToSuper:Z

    invoke-static {v2, v1, v3, v4, v5}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$2100(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;FFFZ)V

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$DoubleTapZoom;->translateImageToCenterTouchPosition(F)V

    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$DoubleTapZoom;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {v1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$2200(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)V

    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$DoubleTapZoom;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {v1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$1800(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$DoubleTapZoom;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {v0, p0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$500(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
