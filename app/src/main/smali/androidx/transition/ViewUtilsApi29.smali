.class Landroidx/transition/ViewUtilsApi29;
.super Landroidx/transition/ViewUtilsApi23;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/transition/ViewUtilsApi23;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransitionAlpha(Landroid/view/View;)F
    .locals 0

    invoke-static {p1}, LA/d;->a(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public setAnimationMatrix(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 0

    invoke-static {p1, p2}, LA/d;->o(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public setLeftTopRightBottom(Landroid/view/View;IIII)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LA/d;->n(Landroid/view/View;IIII)V

    return-void
.end method

.method public setTransitionAlpha(Landroid/view/View;F)V
    .locals 0

    invoke-static {p1, p2}, LA/d;->l(Landroid/view/View;F)V

    return-void
.end method

.method public setTransitionVisibility(Landroid/view/View;I)V
    .locals 0

    invoke-static {p1, p2}, LA/d;->m(Landroid/view/View;I)V

    return-void
.end method

.method public transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 0

    invoke-static {p1, p2}, LA/d;->z(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 0

    invoke-static {p1, p2}, LA/d;->B(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method
