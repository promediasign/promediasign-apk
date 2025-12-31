.class public abstract Lcom/scand/svg/parser/paintutil/ShaderApply;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static applyShader(Lcom/scand/svg/parser/Gradient;FFFFLcom/scand/svg/parser/support/GraphicsSVG;Lcom/scand/svg/parser/support/ColorSVG;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    iget-object v3, v0, Lcom/scand/svg/parser/Gradient;->colors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1c

    iget-object v3, v0, Lcom/scand/svg/parser/Gradient;->positions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v4, :cond_0

    goto/16 :goto_21

    :cond_0
    iget-object v3, v0, Lcom/scand/svg/parser/Gradient;->colors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v11, v3, [Lcom/scand/svg/parser/support/ColorSVG;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    iget-object v6, v0, Lcom/scand/svg/parser/Gradient;->colors:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scand/svg/parser/support/ColorSVG;

    aput-object v6, v11, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lcom/scand/svg/parser/Gradient;->positions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v10, v3, [F

    :goto_1
    if-ge v4, v3, :cond_3

    iget-object v5, v0, Lcom/scand/svg/parser/Gradient;->positions:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, v10, v4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    iget-object v4, v0, Lcom/scand/svg/parser/Gradient;->spreadMethod:Ljava/lang/String;

    if-eqz v4, :cond_4

    const-string v5, "reflect"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v3, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    :cond_4
    :goto_2
    move-object v12, v3

    goto :goto_3

    :cond_5
    iget-object v4, v0, Lcom/scand/svg/parser/Gradient;->spreadMethod:Ljava/lang/String;

    const-string v5, "repeat"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_2

    :goto_3
    iget-object v3, v0, Lcom/scand/svg/parser/Gradient;->gradientUnits:Ljava/lang/String;

    const-string v4, "objectBoundingBox"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iget-boolean v4, v0, Lcom/scand/svg/parser/Gradient;->isLinear:Z

    if-eqz v4, :cond_f

    iget-boolean v4, v0, Lcom/scand/svg/parser/Gradient;->pX1:Z

    if-nez v4, :cond_7

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    iget-object v4, v0, Lcom/scand/svg/parser/Gradient;->x1:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    :goto_4
    move v5, v4

    goto :goto_6

    :cond_7
    :goto_5
    iget-object v4, v0, Lcom/scand/svg/parser/Gradient;->x1:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float v4, v4, p3

    add-float v4, v4, p1

    goto :goto_4

    :goto_6
    iget-boolean v4, v0, Lcom/scand/svg/parser/Gradient;->pY1:Z

    if-nez v4, :cond_9

    if-eqz v3, :cond_8

    goto :goto_8

    :cond_8
    iget-object v4, v0, Lcom/scand/svg/parser/Gradient;->y1:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    :goto_7
    move v6, v4

    goto :goto_9

    :cond_9
    :goto_8
    iget-object v4, v0, Lcom/scand/svg/parser/Gradient;->y1:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float v4, v4, p4

    add-float v4, v4, p2

    goto :goto_7

    :goto_9
    iget-boolean v4, v0, Lcom/scand/svg/parser/Gradient;->pX2:Z

    if-nez v4, :cond_b

    if-eqz v3, :cond_a

    goto :goto_b

    :cond_a
    iget-object v4, v0, Lcom/scand/svg/parser/Gradient;->x2:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    :goto_a
    move v7, v4

    goto :goto_c

    :cond_b
    :goto_b
    iget-object v4, v0, Lcom/scand/svg/parser/Gradient;->x2:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float v4, v4, p3

    add-float v4, v4, p1

    goto :goto_a

    :goto_c
    iget-boolean v4, v0, Lcom/scand/svg/parser/Gradient;->pY2:Z

    if-nez v4, :cond_d

    if-eqz v3, :cond_c

    goto :goto_e

    :cond_c
    iget-object v3, v0, Lcom/scand/svg/parser/Gradient;->y2:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :goto_d
    move v8, v3

    goto :goto_f

    :cond_d
    :goto_e
    iget-object v3, v0, Lcom/scand/svg/parser/Gradient;->y2:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float v3, v3, p4

    add-float v3, v3, p2

    goto :goto_d

    :goto_f
    iget-object v3, v0, Lcom/scand/svg/parser/Gradient;->matrix:Landroid/graphics/Matrix;

    if-eqz v3, :cond_e

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v13, Lcom/scand/svg/parser/support/LinearGradientPaint;

    iget-object v0, v0, Lcom/scand/svg/parser/Gradient;->matrix:Landroid/graphics/Matrix;

    move-object v4, v13

    move-object v5, v3

    move-object v7, v10

    move-object v8, v11

    move-object v9, v12

    move-object v10, v0

    invoke-direct/range {v4 .. v10}, Lcom/scand/svg/parser/support/LinearGradientPaint;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;[F[Lcom/scand/svg/parser/support/ColorSVG;Landroid/graphics/Shader$TileMode;Landroid/graphics/Matrix;)V

    goto :goto_10

    :cond_e
    new-instance v13, Lcom/scand/svg/parser/support/LinearGradientPaint;

    move-object v4, v13

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    invoke-direct/range {v4 .. v11}, Lcom/scand/svg/parser/support/LinearGradientPaint;-><init>(FFFF[F[Lcom/scand/svg/parser/support/ColorSVG;Landroid/graphics/Shader$TileMode;)V

    :goto_10
    invoke-virtual {v1, v13, v2}, Lcom/scand/svg/parser/support/GraphicsSVG;->setGradient(Lcom/scand/svg/parser/support/LinearGradientPaint;Lcom/scand/svg/parser/support/ColorSVG;)V

    goto/16 :goto_21

    :cond_f
    iget-boolean v4, v0, Lcom/scand/svg/parser/Gradient;->pX:Z

    if-nez v4, :cond_11

    if-eqz v3, :cond_10

    goto :goto_12

    :cond_10
    iget-object v4, v0, Lcom/scand/svg/parser/Gradient;->x:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    :goto_11
    move v5, v4

    goto :goto_13

    :cond_11
    :goto_12
    iget-object v4, v0, Lcom/scand/svg/parser/Gradient;->x:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float v4, v4, p3

    add-float v4, v4, p1

    goto :goto_11

    :goto_13
    iget-boolean v4, v0, Lcom/scand/svg/parser/Gradient;->pY:Z

    if-nez v4, :cond_13

    if-eqz v3, :cond_12

    goto :goto_15

    :cond_12
    iget-object v4, v0, Lcom/scand/svg/parser/Gradient;->y:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    :goto_14
    move v6, v4

    goto :goto_16

    :cond_13
    :goto_15
    iget-object v4, v0, Lcom/scand/svg/parser/Gradient;->y:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float v4, v4, p4

    add-float v4, v4, p2

    goto :goto_14

    :goto_16
    iget-boolean v4, v0, Lcom/scand/svg/parser/Gradient;->pFX:Z

    if-nez v4, :cond_15

    if-eqz v3, :cond_14

    goto :goto_18

    :cond_14
    iget-object v4, v0, Lcom/scand/svg/parser/Gradient;->fx:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    :goto_17
    move v8, v4

    goto :goto_19

    :cond_15
    :goto_18
    iget-object v4, v0, Lcom/scand/svg/parser/Gradient;->fx:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float v4, v4, p3

    add-float v4, v4, p1

    goto :goto_17

    :goto_19
    iget-boolean v4, v0, Lcom/scand/svg/parser/Gradient;->pFY:Z

    if-nez v4, :cond_17

    if-eqz v3, :cond_16

    goto :goto_1b

    :cond_16
    iget-object v4, v0, Lcom/scand/svg/parser/Gradient;->fy:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    :goto_1a
    move v9, v4

    goto :goto_1c

    :cond_17
    :goto_1b
    iget-object v4, v0, Lcom/scand/svg/parser/Gradient;->fy:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float v4, v4, p4

    add-float v4, v4, p2

    goto :goto_1a

    :goto_1c
    iget-boolean v4, v0, Lcom/scand/svg/parser/Gradient;->pR:Z

    if-nez v4, :cond_19

    if-eqz v3, :cond_18

    goto :goto_1e

    :cond_18
    iget-object v3, v0, Lcom/scand/svg/parser/Gradient;->radius:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :goto_1d
    move v7, v3

    goto :goto_1f

    :cond_19
    :goto_1e
    iget-object v3, v0, Lcom/scand/svg/parser/Gradient;->radius:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float v3, v3, p3

    goto :goto_1d

    :goto_1f
    const/4 v3, 0x0

    cmpg-float v3, v7, v3

    if-gtz v3, :cond_1a

    return-void

    :cond_1a
    iget-object v3, v0, Lcom/scand/svg/parser/Gradient;->matrix:Landroid/graphics/Matrix;

    if-eqz v3, :cond_1b

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v13, Landroid/graphics/PointF;

    invoke-direct {v13, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v14, Lcom/scand/svg/parser/support/RadialGradientPaint;

    iget-object v0, v0, Lcom/scand/svg/parser/Gradient;->matrix:Landroid/graphics/Matrix;

    move-object v4, v14

    move-object v5, v3

    move v6, v7

    move-object v7, v13

    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    move-object v11, v0

    invoke-direct/range {v4 .. v11}, Lcom/scand/svg/parser/support/RadialGradientPaint;-><init>(Landroid/graphics/PointF;FLandroid/graphics/PointF;[F[Lcom/scand/svg/parser/support/ColorSVG;Landroid/graphics/Shader$TileMode;Landroid/graphics/Matrix;)V

    goto :goto_20

    :cond_1b
    new-instance v14, Lcom/scand/svg/parser/support/RadialGradientPaint;

    move-object v4, v14

    invoke-direct/range {v4 .. v12}, Lcom/scand/svg/parser/support/RadialGradientPaint;-><init>(FFFFF[F[Lcom/scand/svg/parser/support/ColorSVG;Landroid/graphics/Shader$TileMode;)V

    :goto_20
    invoke-virtual {v1, v14, v2}, Lcom/scand/svg/parser/support/GraphicsSVG;->setGradient(Lcom/scand/svg/parser/support/RadialGradientPaint;Lcom/scand/svg/parser/support/ColorSVG;)V

    :cond_1c
    :goto_21
    return-void
.end method
