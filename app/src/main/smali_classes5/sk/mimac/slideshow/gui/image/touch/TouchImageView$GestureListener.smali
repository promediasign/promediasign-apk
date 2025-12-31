.class final Lsk/mimac/slideshow/gui/image/touch/TouchImageView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/gui/image/touch/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;


# direct methods
.method private constructor <init>(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$GestureListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;Lsk/mimac/slideshow/gui/image/touch/TouchImageView$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$GestureListener;-><init>(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$GestureListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$400(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$GestureListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$600(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

    move-result-object v0

    sget-object v1, Lsk/mimac/slideshow/gui/image/touch/ImageActionState;->NONE:Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$GestureListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$700(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$GestureListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$800(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)F

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$GestureListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$700(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)F

    move-result v0

    :goto_0
    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$GestureListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {v1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$900(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)F

    move-result v1

    iget-object v2, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$GestureListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {v2}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$1000(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    :goto_1
    move v3, v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$GestureListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$1000(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)F

    move-result v0

    goto :goto_1

    :goto_2
    new-instance v0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$DoubleTapZoom;

    iget-object v2, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$GestureListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$DoubleTapZoom;-><init>(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;FFFZ)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$GestureListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {p1, v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$500(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    goto :goto_3

    :cond_2
    const/4 p1, 0x0

    :goto_3
    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$GestureListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$300(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)Lsk/mimac/slideshow/gui/image/touch/TouchImageView$Fling;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$GestureListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$300(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)Lsk/mimac/slideshow/gui/image/touch/TouchImageView$Fling;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$Fling;->cancelFling()V

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$GestureListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$400(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$GestureListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    new-instance v1, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$Fling;

    float-to-int v2, p3

    float-to-int v3, p4

    invoke-direct {v1, v0, v2, v3}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$Fling;-><init>(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;II)V

    invoke-static {v0, v1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$302(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;Lsk/mimac/slideshow/gui/image/touch/TouchImageView$Fling;)Lsk/mimac/slideshow/gui/image/touch/TouchImageView$Fling;

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$GestureListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$300(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)Lsk/mimac/slideshow/gui/image/touch/TouchImageView$Fling;

    move-result-object v1

    invoke-static {v0, v1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->access$500(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;Ljava/lang/Runnable;)V

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$GestureListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-virtual {p1}, Landroid/view/View;->performLongClick()Z

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$GestureListener;->this$0:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    move-result p1

    return p1
.end method
