.class public Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/gui/image/transition/Transition;


# instance fields
.field private final animation:Landroid/view/animation/Animation;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/animation/Animation;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper;->animation:Landroid/view/animation/Animation;

    iput-object p2, p0, Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper;->view:Landroid/view/View;

    new-instance v0, Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper$1;

    invoke-direct {v0, p0, p2}, Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper$1;-><init>(Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method


# virtual methods
.method public getAnimation()Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper;->animation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public setDuration(I)Lsk/mimac/slideshow/gui/image/transition/Transition;
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper;->animation:Landroid/view/animation/Animation;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object p0
.end method

.method public startAnimation()V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper;->view:Landroid/view/View;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
