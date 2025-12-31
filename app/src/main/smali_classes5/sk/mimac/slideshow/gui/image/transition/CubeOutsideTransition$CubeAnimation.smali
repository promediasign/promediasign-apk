.class Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition$CubeAnimation;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CubeAnimation"
.end annotation


# instance fields
.field private final camera:Landroid/graphics/Camera;

.field private finished:Z

.field private final first:Z

.field private lastZz:Ljava/lang/Float;

.field final synthetic this$0:Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition;


# direct methods
.method public constructor <init>(Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition;Z)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition$CubeAnimation;->this$0:Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    new-instance p1, Landroid/graphics/Camera;

    invoke-direct {p1}, Landroid/graphics/Camera;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition$CubeAnimation;->camera:Landroid/graphics/Camera;

    const/4 p1, 0x0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition$CubeAnimation;->lastZz:Ljava/lang/Float;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition$CubeAnimation;->finished:Z

    iput-boolean p2, p0, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition$CubeAnimation;->first:Z

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    iget-boolean v0, p0, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition$CubeAnimation;->finished:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-static {}, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition;->access$000()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition$CubeAnimation;->camera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition$CubeAnimation;->camera:Landroid/graphics/Camera;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition$CubeAnimation;->this$0:Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition;

    iget-boolean v2, v1, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;->aroundY:Z

    if-eqz v2, :cond_1

    iget v1, v1, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;->halfWidth:F

    goto :goto_0

    :cond_1
    iget v1, v1, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;->halfHeight:F

    :goto_0
    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Landroid/graphics/Camera;->translate(FFF)V

    sget-object v0, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition$2;->$SwitchMap$sk$mimac$slideshow$gui$image$transition$CubeTransition$Direction:[I

    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition$CubeAnimation;->this$0:Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition;

    iget-object v1, v1, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;->direction:Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_8

    const/4 v5, 0x2

    if-eq v0, v5, :cond_6

    const/4 v5, 0x3

    if-eq v0, v5, :cond_4

    const/4 v5, 0x4

    if-eq v0, v5, :cond_2

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition$CubeAnimation;->camera:Landroid/graphics/Camera;

    iget-boolean v5, p0, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition$CubeAnimation;->first:Z

    if-eqz v5, :cond_3

    sub-float/2addr v4, p1

    goto :goto_1

    :cond_3
    neg-float v4, p1

    :goto_1
    mul-float v4, v4, v3

    invoke-virtual {v0, v4}, Landroid/graphics/Camera;->rotateX(F)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition$CubeAnimation;->camera:Landroid/graphics/Camera;

    iget-boolean v5, p0, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition$CubeAnimation;->first:Z

    if-eqz v5, :cond_5

    sub-float v4, p1, v4

    goto :goto_1

    :cond_5
    move v4, p1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition$CubeAnimation;->camera:Landroid/graphics/Camera;

    iget-boolean v5, p0, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition$CubeAnimation;->first:Z

    if-eqz v5, :cond_7

    sub-float v4, p1, v4

    goto :goto_2

    :cond_7
    move v4, p1

    :goto_2
    mul-float v4, v4, v3

    invoke-virtual {v0, v4}, Landroid/graphics/Camera;->rotateY(F)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition$CubeAnimation;->camera:Landroid/graphics/Camera;

    iget-boolean v5, p0, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition$CubeAnimation;->first:Z

    if-eqz v5, :cond_9

    sub-float/2addr v4, p1

    goto :goto_2

    :cond_9
    neg-float v4, p1

    goto :goto_2

    :goto_3
    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition$CubeAnimation;->camera:Landroid/graphics/Camera;

    iget-object v3, p0, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition$CubeAnimation;->this$0:Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition;

    iget-boolean v4, v3, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;->aroundY:Z

    if-eqz v4, :cond_a

    iget v3, v3, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;->halfWidth:F

    goto :goto_4

    :cond_a
    iget v3, v3, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;->halfHeight:F

    :goto_4
    neg-float v3, v3

    invoke-virtual {v0, v2, v2, v3}, Landroid/graphics/Camera;->translate(FFF)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition$CubeAnimation;->camera:Landroid/graphics/Camera;

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v2, p0, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition$CubeAnimation;->this$0:Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition;

    iget v3, v2, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;->halfWidth:F

    neg-float v3, v3

    iget v2, v2, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;->halfHeight:F

    neg-float v2, v2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition$CubeAnimation;->this$0:Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition;

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;->getScale(F)F

    move-result p1

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition$CubeAnimation;->this$0:Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition;

    iget v2, v0, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;->halfWidth:F

    iget v0, v0, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;->halfHeight:F

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-boolean p1, p0, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition$CubeAnimation;->first:Z

    if-nez p1, :cond_11

    const/16 p1, 0x9

    new-array p1, p1, [F

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition$CubeAnimation;->lastZz:Ljava/lang/Float;

    const/16 v2, 0x8

    if-nez v0, :cond_b

    aget p1, p1, v2

    :goto_5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition$CubeAnimation;->lastZz:Ljava/lang/Float;

    goto :goto_7

    :cond_b
    iget-object v3, p0, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition$CubeAnimation;->this$0:Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition;

    iget-object v3, v3, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;->direction:Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

    sget-object v4, Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;->FROM_RIGHT:Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

    if-eq v3, v4, :cond_c

    sget-object v4, Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;->FROM_TOP:Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

    if-ne v3, v4, :cond_d

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aget v3, p1, v2

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_10

    :cond_d
    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition$CubeAnimation;->this$0:Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition;

    iget-object v0, v0, Lsk/mimac/slideshow/gui/image/transition/CubeTransition;->direction:Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

    sget-object v3, Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;->FROM_LEFT:Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

    if-eq v0, v3, :cond_e

    sget-object v3, Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;->FROM_BOTTOM:Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

    if-ne v0, v3, :cond_f

    :cond_e
    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition$CubeAnimation;->lastZz:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aget v3, p1, v2

    cmpg-float v0, v0, v3

    if-gez v0, :cond_f

    goto :goto_6

    :cond_f
    aget p1, p1, v2

    goto :goto_5

    :cond_10
    :goto_6
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-static {}, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition;->access$000()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iput-boolean v1, p0, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition$CubeAnimation;->finished:Z

    :cond_11
    :goto_7
    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition$CubeAnimation;->camera:Landroid/graphics/Camera;

    invoke-virtual {p1}, Landroid/graphics/Camera;->restore()V

    return-void
.end method
