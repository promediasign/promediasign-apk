.class public Lsk/mimac/slideshow/gui/image/transition/FoldTransition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/gui/image/transition/Transition;


# instance fields
.field private duration:J

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/FoldTransition;->view:Landroid/view/View;

    return-void
.end method

.method public static synthetic access$000(Lsk/mimac/slideshow/gui/image/transition/FoldTransition;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/gui/image/transition/FoldTransition;->view:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public setDuration(I)Lsk/mimac/slideshow/gui/image/transition/Transition;
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lsk/mimac/slideshow/gui/image/transition/FoldTransition;->duration:J

    return-object p0
.end method

.method public startAnimation()V
    .locals 6

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/FoldTransition;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/FoldTransition;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/transition/FoldTransition;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    new-instance v2, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;

    iget-object v3, p0, Lsk/mimac/slideshow/gui/image/transition/FoldTransition;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lsk/mimac/slideshow/gui/image/transition/FoldTransition;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    iget-object v3, p0, Lsk/mimac/slideshow/gui/image/transition/FoldTransition;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    iget-object v3, p0, Lsk/mimac/slideshow/gui/image/transition/FoldTransition;->view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v3, p0, Lsk/mimac/slideshow/gui/image/transition/FoldTransition;->view:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget-object v3, Lsk/mimac/slideshow/gui/image/transition/FoldLayout$Orientation;->HORIZONTAL:Lsk/mimac/slideshow/gui/image/transition/FoldLayout$Orientation;

    invoke-virtual {v2, v3}, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->setOrientation(Lsk/mimac/slideshow/gui/image/transition/FoldLayout$Orientation;)V

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    const-string v4, "foldFactor"

    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-wide v4, p0, Lsk/mimac/slideshow/gui/image/transition/FoldTransition;->duration:J

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lsk/mimac/slideshow/gui/image/transition/FoldTransition$1;

    invoke-direct {v4, p0, v2, v0, v1}, Lsk/mimac/slideshow/gui/image/transition/FoldTransition$1;-><init>(Lsk/mimac/slideshow/gui/image/transition/FoldTransition;Lsk/mimac/slideshow/gui/image/transition/FoldLayout;Landroid/view/ViewGroup;I)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
