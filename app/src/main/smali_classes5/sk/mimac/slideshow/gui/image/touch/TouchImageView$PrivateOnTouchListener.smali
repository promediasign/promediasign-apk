.class final Lsk/mimac/slideshow/gui/image/touch/TouchImageView$PrivateOnTouchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/gui/image/touch/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PrivateOnTouchListener"
.end annotation


# instance fields
.field private final last:Landroid/graphics/PointF;

.field final synthetic this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;


# direct methods
.method private constructor <init>(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$PrivateOnTouchListener;->last:Landroid/graphics/PointF;

    return-void
.end method

.method public synthetic constructor <init>(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;Lsk/mimac/slideshow/gui/image/touch/TouchImageView$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$PrivateOnTouchListener;-><init>(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)V

    return-void
.end method

.method private getFixDragTrans(FFF)F
    .locals 0

    cmpg-float p2, p3, p2

    if-gtz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    sget-object p2, Lsk/mimac/slideshow/gui/image/touch/ImageActionState;->NONE:Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

    invoke-static {p1, p2}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$1100(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;Lsk/mimac/slideshow/gui/image/touch/ImageActionState;)V

    return v0

    :cond_0
    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$400(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$1200(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)Landroid/view/ScaleGestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$1300(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)Landroid/view/GestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    new-instance p1, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$600(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

    move-result-object v0

    sget-object v1, Lsk/mimac/slideshow/gui/image/touch/ImageActionState;->NONE:Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$600(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

    move-result-object v0

    sget-object v3, Lsk/mimac/slideshow/gui/image/touch/ImageActionState;->DRAG:Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$600(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

    move-result-object v0

    sget-object v3, Lsk/mimac/slideshow/gui/image/touch/ImageActionState;->FLING:Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

    if-ne v0, v3, :cond_6

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_4

    if-eq p2, v2, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 p1, 0x6

    if-eq p2, p1, :cond_3

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {p2}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$600(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

    move-result-object p2

    sget-object v0, Lsk/mimac/slideshow/gui/image/touch/ImageActionState;->DRAG:Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

    if-ne p2, v0, :cond_6

    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$PrivateOnTouchListener;->last:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, v1

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v0

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$1400(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {v3}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$1500(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)F

    move-result v3

    invoke-direct {p0, p2, v0, v3}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$PrivateOnTouchListener;->getFixDragTrans(FFF)F

    move-result p2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$1600(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {v3}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$1700(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)F

    move-result v3

    invoke-direct {p0, v1, v0, v3}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$PrivateOnTouchListener;->getFixDragTrans(FFF)F

    move-result v0

    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {v1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$1800(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p2, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {p2}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$1900(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)V

    iget-object p2, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$PrivateOnTouchListener;->last:Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {p1, v1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$1100(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;Lsk/mimac/slideshow/gui/image/touch/ImageActionState;)V

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$PrivateOnTouchListener;->last:Landroid/graphics/PointF;

    invoke-virtual {p2, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$300(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)Lsk/mimac/slideshow/gui/image/touch/TouchImageView$Fling;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$300(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)Lsk/mimac/slideshow/gui/image/touch/TouchImageView$Fling;

    move-result-object p1

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$Fling;->cancelFling()V

    :cond_5
    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    sget-object p2, Lsk/mimac/slideshow/gui/image/touch/ImageActionState;->DRAG:Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

    invoke-static {p1, p2}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$1100(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;Lsk/mimac/slideshow/gui/image/touch/ImageActionState;)V

    :cond_6
    :goto_0
    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$PrivateOnTouchListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$1800(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return v2

    :cond_7
    return v0
.end method
