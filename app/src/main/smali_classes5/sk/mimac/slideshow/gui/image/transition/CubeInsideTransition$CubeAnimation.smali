.class Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition$CubeAnimation;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CubeAnimation"
.end annotation


# instance fields
.field private final camera:Landroid/graphics/Camera;

.field private final first:Z

.field final synthetic this$0:Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition;Z)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition$CubeAnimation;->this$0:Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    new-instance p1, Landroid/graphics/Camera;

    invoke-direct {p1}, Landroid/graphics/Camera;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition$CubeAnimation;->camera:Landroid/graphics/Camera;

    iput-boolean p2, p0, Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition$CubeAnimation;->first:Z

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition$CubeAnimation;->camera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    sget-object v0, Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition$2;->$SwitchMap$sk$mimac$slideshow$gui$image$transition$CubeTransition$Direction:[I

    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition$CubeAnimation;->this$0:Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition;

    iget-object v1, v1, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;->direction:Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_4

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition$CubeAnimation;->camera:Landroid/graphics/Camera;

    iget-boolean v1, p0, Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition$CubeAnimation;->first:Z

    if-eqz v1, :cond_1

    sub-float v1, p1, v3

    goto :goto_0

    :cond_1
    move v1, p1

    :goto_0
    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateX(F)V

    goto :goto_4

    :cond_2
    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition$CubeAnimation;->camera:Landroid/graphics/Camera;

    iget-boolean v1, p0, Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition$CubeAnimation;->first:Z

    if-eqz v1, :cond_3

    sub-float/2addr v3, p1

    goto :goto_1

    :cond_3
    neg-float v3, p1

    :goto_1
    mul-float v3, v3, v2

    invoke-virtual {v0, v3}, Landroid/graphics/Camera;->rotateX(F)V

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition$CubeAnimation;->camera:Landroid/graphics/Camera;

    iget-boolean v1, p0, Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition$CubeAnimation;->first:Z

    if-eqz v1, :cond_5

    sub-float/2addr v3, p1

    goto :goto_2

    :cond_5
    neg-float v3, p1

    :goto_2
    mul-float v3, v3, v2

    invoke-virtual {v0, v3}, Landroid/graphics/Camera;->rotateY(F)V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition$CubeAnimation;->camera:Landroid/graphics/Camera;

    iget-boolean v1, p0, Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition$CubeAnimation;->first:Z

    if-eqz v1, :cond_7

    sub-float v1, p1, v3

    goto :goto_3

    :cond_7
    move v1, p1

    :goto_3
    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateY(F)V

    :goto_4
    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition$CubeAnimation;->this$0:Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition;

    iget-boolean v1, v0, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;->aroundY:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition$CubeAnimation;->camera:Landroid/graphics/Camera;

    iget v0, v0, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;->halfWidth:F

    :goto_5
    invoke-virtual {v1, v2, v2, v0}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_6

    :cond_8
    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition$CubeAnimation;->camera:Landroid/graphics/Camera;

    iget v0, v0, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;->halfHeight:F

    goto :goto_5

    :goto_6
    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition$CubeAnimation;->camera:Landroid/graphics/Camera;

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition$CubeAnimation;->this$0:Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition;

    iget v2, v1, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;->halfWidth:F

    neg-float v2, v2

    iget v1, v1, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;->halfHeight:F

    neg-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition$CubeAnimation;->this$0:Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition;

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;->getScale(F)F

    move-result p1

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    iget-object p2, p0, Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition$CubeAnimation;->this$0:Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition;

    iget v0, p2, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;->halfWidth:F

    iget p2, p2, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;->halfHeight:F

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition$CubeAnimation;->camera:Landroid/graphics/Camera;

    invoke-virtual {p1}, Landroid/graphics/Camera;->restore()V

    return-void
.end method
