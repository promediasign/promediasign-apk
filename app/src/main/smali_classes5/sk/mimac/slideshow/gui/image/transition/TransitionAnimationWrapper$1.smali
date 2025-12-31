.class Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper$1;
.super Lsk/mimac/slideshow/gui/image/transition/Transition$AnimationListenerWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper;-><init>(Landroid/view/animation/Animation;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper$1;->this$0:Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper;

    iput-object p2, p0, Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/image/transition/Transition$AnimationListenerWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper$1;->val$view:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper$1;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    return-void
.end method
