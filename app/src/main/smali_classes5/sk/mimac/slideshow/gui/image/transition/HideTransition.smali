.class public Lsk/mimac/slideshow/gui/image/transition/HideTransition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/gui/image/transition/Transition;


# instance fields
.field private final alphaAnimation:Landroid/view/animation/AlphaAnimation;

.field private final view1:Landroid/widget/ImageView;

.field private final view2:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lsk/mimac/slideshow/gui/image/transition/HideTransition$1;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lsk/mimac/slideshow/gui/image/transition/HideTransition$1;-><init>(Lsk/mimac/slideshow/gui/image/transition/HideTransition;FF)V

    iput-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/HideTransition;->alphaAnimation:Landroid/view/animation/AlphaAnimation;

    iput-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/HideTransition;->view1:Landroid/widget/ImageView;

    iput-object p2, p0, Lsk/mimac/slideshow/gui/image/transition/HideTransition;->view2:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public setDuration(I)Lsk/mimac/slideshow/gui/image/transition/HideTransition;
    .locals 3

    .line 1
    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/HideTransition;->alphaAnimation:Landroid/view/animation/AlphaAnimation;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object p0
.end method

.method public bridge synthetic setDuration(I)Lsk/mimac/slideshow/gui/image/transition/Transition;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/gui/image/transition/HideTransition;->setDuration(I)Lsk/mimac/slideshow/gui/image/transition/HideTransition;

    move-result-object p1

    return-object p1
.end method

.method public startAnimation()V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/HideTransition;->view2:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/HideTransition;->view2:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/HideTransition;->view1:Landroid/widget/ImageView;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/transition/HideTransition;->alphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
