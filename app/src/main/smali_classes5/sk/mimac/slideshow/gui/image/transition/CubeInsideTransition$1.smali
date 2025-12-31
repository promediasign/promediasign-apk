.class Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition$1;
.super Lsk/mimac/slideshow/gui/image/transition/Transition$AnimationListenerWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition$1;->this$0:Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition;

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/image/transition/Transition$AnimationListenerWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition$1;->this$0:Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition;

    iget-object p1, p1, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;->view2:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition$1;->this$0:Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition;

    iget-object p1, p1, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;->view2:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    return-void
.end method
