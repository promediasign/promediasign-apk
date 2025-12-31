.class public abstract Lcom/scand/svg/parser/Transform;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static parseTransform(Ljava/lang/String;)Landroid/graphics/Matrix;
    .locals 19

    const/4 v0, 0x5

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x2

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    if-nez p0, :cond_0

    return-object v9

    :cond_0
    move-object/from16 v10, p0

    :cond_1
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x29

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-gez v12, :cond_2

    return-object v9

    :cond_2
    const-string v13, "matrix("

    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v10, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/scand/svg/parser/Numbers;->parseNumbers(Ljava/lang/String;)Lcom/scand/svg/parser/Numbers;

    move-result-object v13

    iget-object v14, v13, Lcom/scand/svg/parser/Numbers;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ne v14, v4, :cond_d

    iget-object v13, v13, Lcom/scand/svg/parser/Numbers;->numberArray:[F

    aget v14, v13, v3

    aget v15, v13, v5

    aget v16, v13, v2

    aget v17, v13, v8

    aget v18, v13, v1

    aget v13, v13, v0

    const/16 v11, 0x9

    new-array v11, v11, [F

    aput v14, v11, v3

    aput v15, v11, v8

    aput v16, v11, v5

    aput v17, v11, v1

    aput v18, v11, v2

    aput v13, v11, v0

    aput v7, v11, v4

    aput v7, v11, v6

    const/high16 v13, 0x3f800000    # 1.0f

    const/16 v14, 0x8

    aput v13, v11, v14

    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v13, v11}, Landroid/graphics/Matrix;->setValues([F)V

    :goto_0
    invoke-virtual {v9, v13}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    goto/16 :goto_6

    :cond_3
    const-string v11, "translate("

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/16 v11, 0xa

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/scand/svg/parser/Numbers;->parseNumbers(Ljava/lang/String;)Lcom/scand/svg/parser/Numbers;

    move-result-object v11

    iget-object v13, v11, Lcom/scand/svg/parser/Numbers;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_d

    iget-object v13, v11, Lcom/scand/svg/parser/Numbers;->numberArray:[F

    aget v13, v13, v3

    iget-object v14, v11, Lcom/scand/svg/parser/Numbers;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-le v14, v8, :cond_4

    iget-object v11, v11, Lcom/scand/svg/parser/Numbers;->numberArray:[F

    aget v11, v11, v8

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    :goto_1
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v14, v13, v11}, Landroid/graphics/Matrix;->setTranslate(FF)V

    :goto_2
    invoke-virtual {v9, v14}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    goto/16 :goto_6

    :cond_5
    const-string v11, "scale("

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v10, v4, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/scand/svg/parser/Numbers;->parseNumbers(Ljava/lang/String;)Lcom/scand/svg/parser/Numbers;

    move-result-object v11

    iget-object v13, v11, Lcom/scand/svg/parser/Numbers;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_d

    iget-object v13, v11, Lcom/scand/svg/parser/Numbers;->numberArray:[F

    aget v13, v13, v3

    iget-object v14, v11, Lcom/scand/svg/parser/Numbers;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-le v14, v8, :cond_6

    iget-object v11, v11, Lcom/scand/svg/parser/Numbers;->numberArray:[F

    aget v11, v11, v8

    goto :goto_3

    :cond_6
    move v11, v13

    :goto_3
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v14, v13, v11}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_2

    :cond_7
    const-string v11, "skewX("

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v10, v4, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/scand/svg/parser/Numbers;->parseNumbers(Ljava/lang/String;)Lcom/scand/svg/parser/Numbers;

    move-result-object v11

    iget-object v13, v11, Lcom/scand/svg/parser/Numbers;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_d

    iget-object v11, v11, Lcom/scand/svg/parser/Numbers;->numberArray:[F

    aget v11, v11, v3

    float-to-double v13, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    double-to-float v11, v13

    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    float-to-double v14, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->tan(D)D

    move-result-wide v14

    double-to-float v11, v14

    invoke-virtual {v13, v11, v7}, Landroid/graphics/Matrix;->setSkew(FF)V

    goto/16 :goto_0

    :cond_8
    const-string v11, "skewY("

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {v10, v4, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/scand/svg/parser/Numbers;->parseNumbers(Ljava/lang/String;)Lcom/scand/svg/parser/Numbers;

    move-result-object v11

    iget-object v13, v11, Lcom/scand/svg/parser/Numbers;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_d

    iget-object v11, v11, Lcom/scand/svg/parser/Numbers;->numberArray:[F

    aget v11, v11, v3

    float-to-double v13, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    double-to-float v11, v13

    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    float-to-double v14, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->tan(D)D

    move-result-wide v14

    double-to-float v11, v14

    invoke-virtual {v13, v7, v11}, Landroid/graphics/Matrix;->setSkew(FF)V

    goto/16 :goto_0

    :cond_9
    const-string v11, "rotate("

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-virtual {v10, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/scand/svg/parser/Numbers;->parseNumbers(Ljava/lang/String;)Lcom/scand/svg/parser/Numbers;

    move-result-object v11

    iget-object v13, v11, Lcom/scand/svg/parser/Numbers;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_d

    iget-object v13, v11, Lcom/scand/svg/parser/Numbers;->numberArray:[F

    aget v13, v13, v3

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v13

    double-to-float v13, v13

    iget-object v14, v11, Lcom/scand/svg/parser/Numbers;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-le v14, v5, :cond_a

    iget-object v11, v11, Lcom/scand/svg/parser/Numbers;->numberArray:[F

    aget v14, v11, v8

    aget v11, v11, v5

    goto :goto_4

    :cond_a
    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_4
    cmpl-float v15, v14, v7

    if-nez v15, :cond_c

    cmpl-float v15, v11, v7

    if-eqz v15, :cond_b

    goto :goto_5

    :cond_b
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v11, v13}, Landroid/graphics/Matrix;->setRotate(F)V

    invoke-virtual {v9, v11}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    goto :goto_6

    :cond_c
    :goto_5
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, v14, v11}, Landroid/graphics/Matrix;->setTranslate(FF)V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, v13}, Landroid/graphics/Matrix;->setRotate(F)V

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    neg-float v3, v14

    neg-float v4, v11

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    return-object v0

    :cond_d
    :goto_6
    add-int/2addr v12, v8

    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    goto :goto_7

    :cond_e
    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-virtual {v10, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    :cond_f
    const/16 v11, 0x29

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-gez v11, :cond_1

    :goto_7
    return-object v9
.end method
