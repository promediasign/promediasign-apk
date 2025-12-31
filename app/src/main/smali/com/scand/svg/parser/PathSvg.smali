.class public abstract Lcom/scand/svg/parser/PathSvg;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static arcTo(Landroid/graphics/Path;FFFFFZZFF)V
    .locals 34

    move/from16 v0, p5

    move/from16 v1, p7

    move/from16 v2, p8

    move/from16 v3, p9

    cmpl-float v4, p1, v2

    if-nez v4, :cond_0

    cmpl-float v4, p2, v3

    if-nez v4, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x0

    cmpl-float v5, p3, v4

    if-eqz v5, :cond_b

    cmpl-float v4, p4, v4

    if-nez v4, :cond_1

    move-object/from16 v1, p0

    move v0, v2

    move v2, v3

    goto/16 :goto_6

    :cond_1
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v6, v0

    const-wide v8, 0x4076800000000000L    # 360.0

    rem-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    double-to-float v6, v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    sub-float v12, p1, v2

    float-to-double v12, v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    sub-float v8, p2, v3

    float-to-double v8, v8

    div-double/2addr v8, v14

    mul-double v16, v10, v12

    mul-double v18, v6, v8

    add-double v14, v18, v16

    neg-double v2, v6

    mul-double v2, v2, v12

    mul-double v8, v8, v10

    add-double/2addr v8, v2

    mul-float v2, v4, v4

    float-to-double v2, v2

    mul-float v12, v5, v5

    float-to-double v12, v12

    mul-double v16, v14, v14

    mul-double v18, v8, v8

    div-double v22, v16, v2

    div-double v24, v18, v12

    add-double v24, v24, v22

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    cmpl-double v26, v24, v22

    if-lez v26, :cond_2

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v4, v4, v2

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v5, v5, v2

    mul-float v2, v4, v4

    float-to-double v2, v2

    mul-float v12, v5, v5

    float-to-double v12, v12

    :cond_2
    const-wide/high16 v24, -0x4010000000000000L    # -1.0

    move/from16 v0, p6

    if-ne v0, v1, :cond_3

    move-wide/from16 v26, v24

    goto :goto_0

    :cond_3
    move-wide/from16 v26, v22

    :goto_0
    mul-double v28, v2, v12

    mul-double v2, v2, v18

    sub-double v28, v28, v2

    mul-double v12, v12, v16

    sub-double v28, v28, v12

    add-double/2addr v2, v12

    div-double v28, v28, v2

    const-wide/16 v2, 0x0

    cmpg-double v0, v28, v2

    if-gez v0, :cond_4

    move-wide/from16 v28, v2

    :cond_4
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    mul-double v12, v12, v26

    float-to-double v2, v4

    mul-double v18, v2, v8

    float-to-double v0, v5

    div-double v18, v18, v0

    mul-double v18, v18, v12

    mul-double v26, v0, v14

    move/from16 v28, v4

    move/from16 v29, v5

    div-double v4, v26, v2

    neg-double v4, v4

    mul-double v12, v12, v4

    move/from16 v4, p8

    add-float v5, p1, v4

    float-to-double v4, v5

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v4, v4, v20

    move-wide/from16 v26, v0

    move/from16 v0, p9

    add-float v1, p2, v0

    float-to-double v0, v1

    div-double v0, v0, v20

    mul-double v30, v10, v18

    mul-double v32, v6, v12

    sub-double v30, v30, v32

    add-double v4, v30, v4

    mul-double v6, v6, v18

    mul-double v10, v10, v12

    add-double/2addr v10, v6

    add-double/2addr v10, v0

    sub-double v0, v14, v18

    div-double/2addr v0, v2

    sub-double v6, v8, v12

    div-double v6, v6, v26

    neg-double v14, v14

    sub-double v14, v14, v18

    div-double/2addr v14, v2

    neg-double v2, v8

    sub-double/2addr v2, v12

    div-double v2, v2, v26

    mul-double v8, v0, v0

    mul-double v12, v6, v6

    add-double/2addr v12, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide/16 v16, 0x0

    cmpg-double v18, v6, v16

    if-gez v18, :cond_5

    move-wide/from16 v18, v24

    goto :goto_1

    :cond_5
    move-wide/from16 v18, v22

    :goto_1
    div-double v8, v0, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->acos(D)D

    move-result-wide v8

    mul-double v8, v8, v18

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    mul-double v18, v14, v14

    mul-double v26, v2, v2

    add-double v26, v26, v18

    mul-double v26, v26, v12

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    mul-double v18, v0, v14

    mul-double v26, v6, v2

    add-double v26, v26, v18

    mul-double v0, v0, v2

    mul-double v6, v6, v14

    sub-double/2addr v0, v6

    const-wide/16 v2, 0x0

    cmpg-double v6, v0, v2

    if-gez v6, :cond_6

    goto :goto_2

    :cond_6
    move-wide/from16 v24, v22

    :goto_2
    div-double v26, v26, v12

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    mul-double v0, v0, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    if-nez p7, :cond_7

    cmpl-double v6, v0, v2

    if-lez v6, :cond_7

    const-wide v6, 0x4076800000000000L    # 360.0

    sub-double/2addr v0, v6

    goto :goto_3

    :cond_7
    const-wide v6, 0x4076800000000000L    # 360.0

    if-eqz p7, :cond_8

    cmpg-double v12, v0, v2

    if-gez v12, :cond_8

    add-double/2addr v0, v6

    :cond_8
    :goto_3
    rem-double/2addr v0, v6

    rem-double/2addr v8, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v6, 0x4056800000000000L    # 90.0

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    int-to-double v8, v2

    div-double/2addr v0, v8

    double-to-float v0, v0

    float-to-double v8, v0

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v12, v8, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    const-wide v16, 0x3ff5555555555555L    # 1.3333333333333333

    mul-double v14, v14, v16

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    add-double v12, v12, v22

    div-double/2addr v14, v12

    mul-int/lit8 v1, v2, 0x6

    new-array v3, v1, [F

    const/4 v13, 0x0

    const/16 v16, 0x0

    :goto_4
    if-ge v13, v2, :cond_9

    int-to-float v12, v13

    mul-float v12, v12, v0

    move/from16 v17, v0

    move/from16 p2, v1

    float-to-double v0, v12

    add-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    add-int/lit8 v12, v16, 0x1

    mul-double v22, v14, v20

    move-wide/from16 p3, v6

    sub-double v6, v18, v22

    double-to-float v6, v6

    aput v6, v3, v16

    add-int/lit8 v6, v16, 0x2

    mul-double v18, v18, v14

    move-wide/from16 v22, v10

    add-double v10, v18, v20

    double-to-float v7, v10

    aput v7, v3, v12

    add-double/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    add-int/lit8 v7, v16, 0x3

    mul-double v18, v14, v0

    move-wide/from16 v20, v8

    add-double v8, v18, v10

    double-to-float v8, v8

    aput v8, v3, v6

    add-int/lit8 v6, v16, 0x4

    mul-double v8, v14, v10

    sub-double v8, v0, v8

    double-to-float v8, v8

    aput v8, v3, v7

    add-int/lit8 v7, v16, 0x5

    double-to-float v8, v10

    aput v8, v3, v6

    add-int/lit8 v16, v16, 0x6

    double-to-float v0, v0

    aput v0, v3, v7

    add-int/lit8 v13, v13, 0x1

    move/from16 v1, p2

    move-wide/from16 v6, p3

    move/from16 v0, v17

    move-wide/from16 v8, v20

    move-wide/from16 v10, v22

    goto :goto_4

    :cond_9
    move/from16 p2, v1

    move-wide/from16 v22, v10

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    double-to-float v1, v4

    double-to-float v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    add-int/lit8 v1, p2, -0x2

    move/from16 v0, p8

    aput v0, v3, v1

    add-int/lit8 v1, p2, -0x1

    move/from16 v2, p9

    aput v2, v3, v1

    move/from16 v2, p2

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v2, :cond_a

    aget v0, v3, v12

    add-int/lit8 v1, v12, 0x1

    aget v1, v3, v1

    add-int/lit8 v4, v12, 0x2

    aget v4, v3, v4

    add-int/lit8 v5, v12, 0x3

    aget v5, v3, v5

    add-int/lit8 v6, v12, 0x4

    aget v6, v3, v6

    add-int/lit8 v7, v12, 0x5

    aget v7, v3, v7

    move-object/from16 p1, p0

    move/from16 p2, v0

    move/from16 p3, v1

    move/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    move/from16 p7, v7

    invoke-virtual/range {p1 .. p7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v12, v12, 0x6

    goto :goto_5

    :cond_a
    return-void

    :cond_b
    move v0, v2

    move v2, v3

    move-object/from16 v1, p0

    :goto_6
    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method public static parsePath(Ljava/lang/String;)Lcom/scand/svg/parser/support/PathExt;
    .locals 23

    move-object/from16 v0, p0

    new-instance v11, Lcom/scand/svg/parser/support/PathExt;

    invoke-direct {v11}, Lcom/scand/svg/parser/support/PathExt;-><init>()V

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v11, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    if-eqz v0, :cond_13

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_f

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v12

    new-instance v13, Lcom/scand/svg/parser/FloatSequence;

    const/4 v14, 0x0

    invoke-direct {v13, v0, v14}, Lcom/scand/svg/parser/FloatSequence;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v13}, Lcom/scand/svg/parser/FloatSequence;->skipWhitespace()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_0
    iget v5, v13, Lcom/scand/svg/parser/FloatSequence;->pos:I

    if-ge v5, v12, :cond_13

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2b

    const/16 v14, 0x6d

    if-eq v5, v6, :cond_1

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_1

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :cond_1
    :pswitch_0
    if-eq v1, v14, :cond_5

    const/16 v6, 0x4d

    if-ne v1, v6, :cond_2

    goto :goto_3

    :cond_2
    const/16 v6, 0x7a

    if-ne v1, v6, :cond_4

    const/16 v6, 0x5a

    if-eq v1, v6, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {v13}, Lcom/scand/svg/parser/FloatSequence;->advance()V

    move v1, v5

    :cond_4
    :goto_2
    move/from16 v18, v1

    goto :goto_4

    :cond_5
    :goto_3
    add-int/lit8 v5, v1, -0x1

    int-to-char v5, v5

    move/from16 v18, v1

    move v1, v5

    :goto_4
    const/16 v19, 0x1

    sparse-switch v1, :sswitch_data_0

    :goto_5
    const/16 v19, 0x0

    goto/16 :goto_e

    :sswitch_0
    invoke-virtual {v11}, Landroid/graphics/Path;->close()V

    invoke-virtual {v11, v10, v9}, Landroid/graphics/Path;->moveTo(FF)V

    move v3, v9

    move/from16 v17, v3

    move v2, v10

    move/from16 v16, v2

    :goto_6
    const/4 v4, 0x0

    goto/16 :goto_e

    :sswitch_1
    invoke-virtual {v13}, Lcom/scand/svg/parser/FloatSequence;->nextFloat()F

    move-result v4

    const/16 v5, 0x76

    if-ne v1, v5, :cond_6

    add-float/2addr v3, v4

    invoke-virtual {v11, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_7
    const/4 v4, 0x0

    goto :goto_5

    :cond_6
    invoke-virtual {v11, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move v3, v4

    goto :goto_7

    :sswitch_2
    invoke-virtual {v13}, Lcom/scand/svg/parser/FloatSequence;->nextFloat()F

    move-result v5

    invoke-virtual {v13}, Lcom/scand/svg/parser/FloatSequence;->nextFloat()F

    move-result v6

    const/16 v14, 0x74

    if-ne v1, v14, :cond_7

    add-float/2addr v5, v2

    add-float/2addr v6, v3

    :cond_7
    if-eqz v4, :cond_8

    invoke-virtual {v11, v8, v7, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    sub-float v1, v5, v8

    add-float/2addr v1, v5

    sub-float v2, v6, v7

    add-float/2addr v2, v6

    move v8, v1

    move v7, v2

    goto :goto_8

    :cond_8
    invoke-virtual {v11, v2, v3, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    sub-float v1, v5, v2

    add-float/2addr v1, v5

    sub-float v2, v6, v3

    add-float/2addr v2, v6

    move v8, v1

    move v7, v2

    const/4 v4, 0x1

    :goto_8
    move v2, v5

    move/from16 v16, v2

    move v3, v6

    move/from16 v17, v3

    goto/16 :goto_e

    :sswitch_3
    invoke-virtual {v13}, Lcom/scand/svg/parser/FloatSequence;->nextFloat()F

    move-result v4

    invoke-virtual {v13}, Lcom/scand/svg/parser/FloatSequence;->nextFloat()F

    move-result v5

    invoke-virtual {v13}, Lcom/scand/svg/parser/FloatSequence;->nextFloat()F

    move-result v6

    invoke-virtual {v13}, Lcom/scand/svg/parser/FloatSequence;->nextFloat()F

    move-result v14

    const/16 v15, 0x73

    if-ne v1, v15, :cond_9

    add-float/2addr v4, v2

    add-float/2addr v6, v2

    add-float/2addr v5, v3

    add-float/2addr v14, v3

    :cond_9
    move v15, v5

    move/from16 v20, v6

    move/from16 v21, v14

    move v14, v4

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, v2, v1

    sub-float v2, v2, v16

    mul-float v3, v3, v1

    sub-float v3, v3, v17

    move-object v1, v11

    move v4, v14

    move v5, v15

    move/from16 v6, v20

    move/from16 v22, v7

    move/from16 v7, v21

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move/from16 v16, v14

    move/from16 v17, v15

    move/from16 v2, v20

    move/from16 v3, v21

    :goto_9
    move/from16 v7, v22

    goto/16 :goto_6

    :sswitch_4
    invoke-virtual {v13}, Lcom/scand/svg/parser/FloatSequence;->nextFloat()F

    move-result v4

    invoke-virtual {v13}, Lcom/scand/svg/parser/FloatSequence;->nextFloat()F

    move-result v5

    invoke-virtual {v13}, Lcom/scand/svg/parser/FloatSequence;->nextFloat()F

    move-result v6

    invoke-virtual {v13}, Lcom/scand/svg/parser/FloatSequence;->nextFloat()F

    move-result v7

    const/16 v8, 0x71

    if-ne v1, v8, :cond_a

    add-float/2addr v4, v2

    add-float/2addr v6, v2

    add-float/2addr v5, v3

    add-float/2addr v7, v3

    :cond_a
    move v2, v6

    move v3, v7

    invoke-virtual {v11, v4, v5, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    sub-float v1, v2, v4

    add-float v8, v1, v2

    sub-float v1, v3, v5

    add-float v7, v1, v3

    move/from16 v16, v2

    move/from16 v17, v3

    const/4 v4, 0x1

    goto/16 :goto_e

    :sswitch_5
    move/from16 v22, v7

    invoke-virtual {v13}, Lcom/scand/svg/parser/FloatSequence;->nextFloat()F

    move-result v4

    invoke-virtual {v13}, Lcom/scand/svg/parser/FloatSequence;->nextFloat()F

    move-result v5

    if-ne v1, v14, :cond_b

    add-float/2addr v10, v4

    add-float/2addr v9, v5

    add-float/2addr v2, v4

    add-float/2addr v3, v5

    invoke-virtual {v11, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_a
    move/from16 v7, v22

    goto/16 :goto_7

    :cond_b
    invoke-virtual {v11, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    move v2, v4

    move v10, v2

    move v3, v5

    move v9, v3

    goto :goto_a

    :sswitch_6
    move/from16 v22, v7

    invoke-virtual {v13}, Lcom/scand/svg/parser/FloatSequence;->nextFloat()F

    move-result v4

    invoke-virtual {v13}, Lcom/scand/svg/parser/FloatSequence;->nextFloat()F

    move-result v5

    const/16 v6, 0x6c

    if-ne v1, v6, :cond_c

    add-float/2addr v2, v4

    add-float/2addr v3, v5

    :goto_b
    invoke-virtual {v11, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_a

    :cond_c
    invoke-virtual {v11, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    move v2, v4

    move v3, v5

    goto :goto_a

    :sswitch_7
    move/from16 v22, v7

    invoke-virtual {v13}, Lcom/scand/svg/parser/FloatSequence;->nextFloat()F

    move-result v4

    const/16 v5, 0x68

    if-ne v1, v5, :cond_d

    add-float/2addr v2, v4

    goto :goto_b

    :cond_d
    invoke-virtual {v11, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    move v2, v4

    goto :goto_a

    :sswitch_8
    move/from16 v22, v7

    invoke-virtual {v13}, Lcom/scand/svg/parser/FloatSequence;->nextFloat()F

    move-result v4

    invoke-virtual {v13}, Lcom/scand/svg/parser/FloatSequence;->nextFloat()F

    move-result v5

    invoke-virtual {v13}, Lcom/scand/svg/parser/FloatSequence;->nextFloat()F

    move-result v6

    invoke-virtual {v13}, Lcom/scand/svg/parser/FloatSequence;->nextFloat()F

    move-result v7

    invoke-virtual {v13}, Lcom/scand/svg/parser/FloatSequence;->nextFloat()F

    move-result v14

    invoke-virtual {v13}, Lcom/scand/svg/parser/FloatSequence;->nextFloat()F

    move-result v15

    const/16 v0, 0x63

    if-ne v1, v0, :cond_e

    add-float/2addr v4, v2

    add-float/2addr v6, v2

    add-float/2addr v14, v2

    add-float/2addr v5, v3

    add-float/2addr v7, v3

    add-float/2addr v15, v3

    :cond_e
    move v2, v4

    move v3, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move-object v1, v11

    move/from16 v4, v16

    move/from16 v5, v17

    move v6, v14

    move v7, v15

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v2, v14

    move v3, v15

    goto/16 :goto_9

    :sswitch_9
    move/from16 v22, v7

    invoke-virtual {v13}, Lcom/scand/svg/parser/FloatSequence;->nextFloat()F

    move-result v4

    invoke-virtual {v13}, Lcom/scand/svg/parser/FloatSequence;->nextFloat()F

    move-result v5

    invoke-virtual {v13}, Lcom/scand/svg/parser/FloatSequence;->nextFloat()F

    move-result v6

    invoke-virtual {v13}, Lcom/scand/svg/parser/FloatSequence;->nextFloat()F

    move-result v0

    const/4 v14, 0x0

    cmpl-float v0, v0, v14

    if-eqz v0, :cond_f

    const/4 v7, 0x1

    goto :goto_c

    :cond_f
    const/4 v7, 0x0

    :goto_c
    invoke-virtual {v13}, Lcom/scand/svg/parser/FloatSequence;->nextFloat()F

    move-result v0

    cmpl-float v0, v0, v14

    if-eqz v0, :cond_10

    goto :goto_d

    :cond_10
    const/16 v19, 0x0

    :goto_d
    invoke-virtual {v13}, Lcom/scand/svg/parser/FloatSequence;->nextFloat()F

    move-result v0

    invoke-virtual {v13}, Lcom/scand/svg/parser/FloatSequence;->nextFloat()F

    move-result v15

    const/16 v14, 0x61

    if-ne v1, v14, :cond_11

    add-float/2addr v0, v2

    add-float/2addr v15, v3

    :cond_11
    move-object v1, v11

    move v14, v8

    move/from16 v8, v19

    move/from16 v19, v9

    move v9, v0

    move/from16 v20, v10

    move v10, v15

    invoke-static/range {v1 .. v10}, Lcom/scand/svg/parser/PathSvg;->arcTo(Landroid/graphics/Path;FFFFFZZFF)V

    move v2, v0

    move v8, v14

    move v3, v15

    move/from16 v9, v19

    move/from16 v10, v20

    goto/16 :goto_a

    :goto_e
    if-nez v19, :cond_12

    move/from16 v16, v2

    move/from16 v17, v3

    :cond_12
    invoke-virtual {v13}, Lcom/scand/svg/parser/FloatSequence;->skipWhitespace()V

    move-object/from16 v0, p0

    move/from16 v1, v18

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_13
    :goto_f
    return-object v11

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_9
        0x43 -> :sswitch_8
        0x48 -> :sswitch_7
        0x4c -> :sswitch_6
        0x4d -> :sswitch_5
        0x51 -> :sswitch_4
        0x53 -> :sswitch_3
        0x54 -> :sswitch_2
        0x56 -> :sswitch_1
        0x5a -> :sswitch_0
        0x61 -> :sswitch_9
        0x63 -> :sswitch_8
        0x68 -> :sswitch_7
        0x6c -> :sswitch_6
        0x6d -> :sswitch_5
        0x71 -> :sswitch_4
        0x73 -> :sswitch_3
        0x74 -> :sswitch_2
        0x76 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch
.end method
