.class public Lsk/mimac/slideshow/gui/image/transition/CrossfadeTransition;
.super Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper;
.source "SourceFile"


# instance fields
.field private final animation1:Landroid/view/animation/Animation;

.field private final animation2:Landroid/view/animation/Animation;

.field private final view1:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-direct {p0, v0, p2}, Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper;-><init>(Landroid/view/animation/Animation;Landroid/view/View;)V

    new-instance p2, Lsk/mimac/slideshow/gui/image/transition/CrossfadeTransition$1;

    invoke-direct {p2, p0, v2, v1}, Lsk/mimac/slideshow/gui/image/transition/CrossfadeTransition$1;-><init>(Lsk/mimac/slideshow/gui/image/transition/CrossfadeTransition;FF)V

    iput-object p2, p0, Lsk/mimac/slideshow/gui/image/transition/CrossfadeTransition;->animation1:Landroid/view/animation/Animation;

    iput-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/CrossfadeTransition;->view1:Landroid/view/View;

    invoke-super {p0}, Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/CrossfadeTransition;->animation2:Landroid/view/animation/Animation;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public setDuration(I)Lsk/mimac/slideshow/gui/image/transition/Transition;
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/CrossfadeTransition;->animation1:Landroid/view/animation/Animation;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/CrossfadeTransition;->animation2:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object p0
.end method

.method public startFollowingAnimation()V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/CrossfadeTransition;->view1:Landroid/view/View;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/transition/CrossfadeTransition;->animation1:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
