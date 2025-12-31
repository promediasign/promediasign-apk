.class Lsk/mimac/slideshow/gui/image/transition/FoldTransition$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsk/mimac/slideshow/gui/image/transition/FoldTransition;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsk/mimac/slideshow/gui/image/transition/FoldTransition;

.field final synthetic val$foldLayout:Lsk/mimac/slideshow/gui/image/transition/FoldLayout;

.field final synthetic val$parentView:Landroid/view/ViewGroup;

.field final synthetic val$positionView:I


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/gui/image/transition/FoldTransition;Lsk/mimac/slideshow/gui/image/transition/FoldLayout;Landroid/view/ViewGroup;I)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/FoldTransition$1;->this$0:Lsk/mimac/slideshow/gui/image/transition/FoldTransition;

    iput-object p2, p0, Lsk/mimac/slideshow/gui/image/transition/FoldTransition$1;->val$foldLayout:Lsk/mimac/slideshow/gui/image/transition/FoldLayout;

    iput-object p3, p0, Lsk/mimac/slideshow/gui/image/transition/FoldTransition$1;->val$parentView:Landroid/view/ViewGroup;

    iput p4, p0, Lsk/mimac/slideshow/gui/image/transition/FoldTransition$1;->val$positionView:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/FoldTransition$1;->this$0:Lsk/mimac/slideshow/gui/image/transition/FoldTransition;

    invoke-static {p1}, Lsk/mimac/slideshow/gui/image/transition/FoldTransition;->access$000(Lsk/mimac/slideshow/gui/image/transition/FoldTransition;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/FoldTransition$1;->val$foldLayout:Lsk/mimac/slideshow/gui/image/transition/FoldLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/FoldTransition$1;->val$parentView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/FoldTransition$1;->val$foldLayout:Lsk/mimac/slideshow/gui/image/transition/FoldLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/FoldTransition$1;->val$parentView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/FoldTransition$1;->this$0:Lsk/mimac/slideshow/gui/image/transition/FoldTransition;

    invoke-static {v0}, Lsk/mimac/slideshow/gui/image/transition/FoldTransition;->access$000(Lsk/mimac/slideshow/gui/image/transition/FoldTransition;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lsk/mimac/slideshow/gui/image/transition/FoldTransition$1;->val$positionView:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/FoldTransition$1;->this$0:Lsk/mimac/slideshow/gui/image/transition/FoldTransition;

    invoke-static {p1}, Lsk/mimac/slideshow/gui/image/transition/FoldTransition;->access$000(Lsk/mimac/slideshow/gui/image/transition/FoldTransition;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    return-void
.end method
