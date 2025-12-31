.class Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;

.field final synthetic val$explodeLayout:Landroid/widget/LinearLayout;

.field final synthetic val$positionView:I


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;Landroid/widget/LinearLayout;I)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition$1;->this$0:Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;

    iput-object p2, p0, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition$1;->val$explodeLayout:Landroid/widget/LinearLayout;

    iput p3, p0, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition$1;->val$positionView:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition$1;->this$0:Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition$1;->val$explodeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p1, v0}, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;->access$002(Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition$1;->this$0:Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;

    invoke-static {p1}, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;->access$100(Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition$1;->val$explodeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition$1;->this$0:Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;

    invoke-static {p1}, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;->access$100(Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition$1;->this$0:Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;

    invoke-static {p1}, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;->access$000(Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition$1;->val$explodeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition$1;->this$0:Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;

    invoke-static {p1}, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;->access$000(Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition$1;->this$0:Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;->access$100(Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition$1;->val$positionView:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition$1;->this$0:Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;

    invoke-static {p1}, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;->access$100(Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    return-void
.end method
