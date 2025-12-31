.class Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition;

.field final synthetic val$originalRotationX:F


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition;F)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition$1;->this$0:Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition;

    iput p2, p0, Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition$1;->val$originalRotationX:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition$1;->this$0:Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition;

    invoke-static {p1}, Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition;->access$000(Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition;)Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition$1;->val$originalRotationX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationX(F)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition$1;->this$0:Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition;

    invoke-static {p1}, Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition;->access$000(Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition$1;->this$0:Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition;

    invoke-static {p1}, Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition;->access$000(Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    return-void
.end method
