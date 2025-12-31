.class public Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition;
.super Lsk/mimac/slideshow/gui/image/transition/CubeTransition;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition$CubeAnimation;
    }
.end annotation


# static fields
.field private static final ZERO_MATRIX:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition;->ZERO_MATRIX:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;-><init>(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View;IILsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;-><init>(Landroid/view/View;Landroid/view/View;IILsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;)V

    return-void
.end method

.method public static synthetic access$000()Landroid/graphics/Matrix;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition;->ZERO_MATRIX:Landroid/graphics/Matrix;

    return-object v0
.end method


# virtual methods
.method public startAnimation()V
    .locals 4

    new-instance v0, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition$CubeAnimation;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition$CubeAnimation;-><init>(Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition;Z)V

    new-instance v1, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition$CubeAnimation;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition$CubeAnimation;-><init>(Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition;Z)V

    iget-object v3, p0, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;->view1:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-wide v2, p0, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;->duration:J

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-wide v2, p0, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;->duration:J

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v2, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition$1;

    invoke-direct {v2, p0}, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition$1;-><init>(Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;->view1:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;->view2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
