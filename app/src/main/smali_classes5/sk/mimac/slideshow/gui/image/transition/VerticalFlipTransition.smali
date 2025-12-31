.class public Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/gui/image/transition/Transition;


# static fields
.field private static final INTERPOLATOR:Landroid/animation/TimeInterpolator;


# instance fields
.field private duration:J

.field private final view1:Landroid/view/View;

.field private final view2:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition;->view1:Landroid/view/View;

    iput-object p2, p0, Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition;->view2:Landroid/view/View;

    return-void
.end method

.method public static synthetic access$000(Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition;->view2:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic setDuration(I)Lsk/mimac/slideshow/gui/image/transition/Transition;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition;->setDuration(I)Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition;

    move-result-object p1

    return-object p1
.end method

.method public setDuration(I)Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition;
    .locals 2

    .line 2
    int-to-long v0, p1

    iput-wide v0, p0, Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition;->duration:J

    return-object p0
.end method

.method public startAnimation()V
    .locals 8

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition;->view2:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition;->view2:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRotationX()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    iget-object v3, p0, Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition;->view2:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setPivotX(F)V

    iget-object v3, p0, Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition;->view2:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setPivotY(F)V

    iget-object v3, p0, Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition;->view1:Landroid/view/View;

    iget-object v4, p0, Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition;->view2:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition;->view1:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setPivotX(F)V

    iget-object v2, p0, Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition;->view1:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setPivotY(F)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition;->view1:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v3, p0, Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition;->view1:Landroid/view/View;

    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {v3, v4}, Landroid/view/View;->setRotationX(F)V

    iget-object v3, p0, Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition;->view2:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ROTATION_X:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v6, v5, [F

    fill-array-data v6, :array_0

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v6, p0, Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition;->view1:Landroid/view/View;

    new-array v7, v5, [F

    fill-array-data v7, :array_1

    invoke-static {v6, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v3, v5, v2

    const/4 v2, 0x1

    aput-object v4, v5, v2

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    sget-object v2, Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-wide v2, p0, Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition;->duration:J

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v2, Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition$1;

    invoke-direct {v2, p0, v1}, Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition$1;-><init>(Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition;F)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x42b40000    # 90.0f
    .end array-data

    :array_1
    .array-data 4
        0x43870000    # 270.0f
        0x43b40000    # 360.0f
    .end array-data
.end method
