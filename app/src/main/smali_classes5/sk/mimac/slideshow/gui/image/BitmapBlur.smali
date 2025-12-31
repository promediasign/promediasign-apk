.class public abstract Lsk/mimac/slideshow/gui/image/BitmapBlur;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static blur(Landroid/graphics/Bitmap;ILjava/lang/Boolean;)Landroid/graphics/Bitmap;
    .locals 37

    move/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    mul-int v11, v9, v10

    new-array v12, v11, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object v2, v12

    move v4, v9

    move v7, v9

    move v8, v10

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v1, v9, -0x1

    add-int/lit8 v2, v10, -0x1

    add-int v3, v0, v0

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v5, v11, [I

    new-array v6, v11, [I

    new-array v7, v11, [I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    new-array v8, v8, [I

    invoke-static {v3}, Lsk/mimac/slideshow/gui/image/BitmapBlur;->initDv(I)[I

    move-result-object v11

    const/4 v13, 0x2

    new-array v14, v13, [I

    const/4 v15, 0x3

    aput v15, v14, v4

    const/4 v15, 0x0

    aput v3, v14, v15

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[I

    add-int/lit8 v14, v0, 0x1

    const/4 v4, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_0
    if-ge v4, v10, :cond_4

    neg-int v15, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    :goto_1
    const v29, 0xff00

    const/high16 v30, 0xff0000

    move/from16 v32, v2

    move/from16 v31, v10

    if-gt v15, v0, :cond_1

    const/4 v10, 0x0

    invoke-static {v15, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int v2, v2, v17

    aget v2, v12, v2

    add-int v19, v15, v0

    aget-object v33, v13, v19

    and-int v19, v2, v30

    shr-int/lit8 v19, v19, 0x10

    aput v19, v33, v10

    and-int v19, v2, v29

    shr-int/lit8 v19, v19, 0x8

    const/16 v16, 0x1

    aput v19, v33, v16

    and-int/lit16 v2, v2, 0xff

    const/16 v29, 0x2

    aput v2, v33, v29

    invoke-static {v15}, Ljava/lang/StrictMath;->abs(I)I

    move-result v2

    sub-int v2, v14, v2

    aget v30, v33, v10

    mul-int v10, v30, v2

    add-int v20, v10, v20

    aget v10, v33, v16

    mul-int v34, v10, v2

    add-int v21, v34, v21

    aget v33, v33, v29

    mul-int v2, v2, v33

    add-int v22, v2, v22

    if-lez v15, :cond_0

    add-int v26, v26, v30

    add-int v27, v27, v10

    add-int v28, v28, v33

    goto :goto_2

    :cond_0
    add-int v23, v23, v30

    add-int v24, v24, v10

    add-int v25, v25, v33

    :goto_2
    add-int/lit8 v15, v15, 0x1

    move/from16 v10, v31

    move/from16 v2, v32

    goto :goto_1

    :cond_1
    move v10, v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v9, :cond_3

    aget v15, v11, v20

    aput v15, v5, v17

    aget v15, v11, v21

    aput v15, v6, v17

    aget v15, v11, v22

    aput v15, v7, v17

    sub-int v20, v20, v23

    sub-int v21, v21, v24

    sub-int v22, v22, v25

    sub-int v15, v10, v0

    add-int/2addr v15, v3

    rem-int/2addr v15, v3

    aget-object v15, v13, v15

    const/16 v19, 0x0

    aget v33, v15, v19

    sub-int v23, v23, v33

    const/16 v16, 0x1

    aget v33, v15, v16

    sub-int v24, v24, v33

    const/16 v33, 0x2

    aget v34, v15, v33

    sub-int v25, v25, v34

    if-nez v4, :cond_2

    add-int v33, v2, v0

    move-object/from16 v34, v11

    add-int/lit8 v11, v33, 0x1

    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    aput v11, v8, v2

    goto :goto_4

    :cond_2
    move-object/from16 v34, v11

    :goto_4
    aget v11, v8, v2

    add-int v11, v18, v11

    aget v11, v12, v11

    and-int v33, v11, v30

    shr-int/lit8 v33, v33, 0x10

    const/16 v19, 0x0

    aput v33, v15, v19

    and-int v35, v11, v29

    shr-int/lit8 v35, v35, 0x8

    const/16 v16, 0x1

    aput v35, v15, v16

    and-int/lit16 v11, v11, 0xff

    const/16 v36, 0x2

    aput v11, v15, v36

    add-int v26, v26, v33

    add-int v27, v27, v35

    add-int v28, v28, v11

    add-int v20, v20, v26

    add-int v21, v21, v27

    add-int v22, v22, v28

    add-int/lit8 v10, v10, 0x1

    rem-int/2addr v10, v3

    rem-int v11, v10, v3

    aget-object v11, v13, v11

    const/4 v15, 0x0

    aget v33, v11, v15

    add-int v23, v23, v33

    const/4 v15, 0x1

    aget v35, v11, v15

    add-int v24, v24, v35

    const/4 v15, 0x2

    aget v11, v11, v15

    add-int v25, v25, v11

    sub-int v26, v26, v33

    sub-int v27, v27, v35

    sub-int v28, v28, v11

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v11, v34

    goto/16 :goto_3

    :cond_3
    move-object/from16 v34, v11

    add-int v18, v18, v9

    add-int/lit8 v4, v4, 0x1

    move/from16 v10, v31

    move/from16 v2, v32

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_4
    move/from16 v32, v2

    move/from16 v31, v10

    move-object/from16 v34, v11

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v9, :cond_a

    neg-int v1, v0

    mul-int v2, v1, v9

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    :goto_6
    move-object/from16 v24, v8

    if-gt v1, v0, :cond_7

    const/4 v8, 0x0

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v19

    add-int v25, v19, v10

    add-int v19, v1, v0

    aget-object v26, v13, v19

    aget v19, v5, v25

    aput v19, v26, v8

    aget v8, v6, v25

    const/16 v16, 0x1

    aput v8, v26, v16

    aget v8, v7, v25

    const/16 v27, 0x2

    aput v8, v26, v27

    invoke-static {v1}, Ljava/lang/StrictMath;->abs(I)I

    move-result v8

    sub-int v8, v14, v8

    aget v27, v5, v25

    mul-int v27, v27, v8

    add-int v4, v27, v4

    aget v27, v6, v25

    mul-int v27, v27, v8

    add-int v11, v27, v11

    aget v25, v7, v25

    mul-int v25, v25, v8

    add-int v15, v25, v15

    const/4 v8, 0x0

    if-lez v1, :cond_5

    aget v19, v26, v8

    add-int v21, v21, v19

    const/16 v16, 0x1

    aget v19, v26, v16

    add-int v22, v22, v19

    const/16 v25, 0x2

    aget v19, v26, v25

    add-int v23, v23, v19

    :goto_7
    move/from16 v8, v32

    goto :goto_8

    :cond_5
    const/16 v16, 0x1

    const/16 v25, 0x2

    aget v27, v26, v8

    add-int v17, v17, v27

    aget v8, v26, v16

    add-int v18, v18, v8

    aget v8, v26, v25

    add-int v20, v20, v8

    goto :goto_7

    :goto_8
    if-ge v1, v8, :cond_6

    add-int/2addr v2, v9

    :cond_6
    add-int/lit8 v1, v1, 0x1

    move/from16 v32, v8

    move-object/from16 v8, v24

    goto :goto_6

    :cond_7
    move/from16 v8, v32

    move/from16 v26, v0

    move/from16 v25, v10

    move/from16 v2, v31

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v2, :cond_9

    aget v27, v34, v4

    shl-int/lit8 v27, v27, 0x10

    aget v28, v34, v11

    shl-int/lit8 v28, v28, 0x8

    or-int v27, v27, v28

    aget v28, v34, v15

    move/from16 v31, v2

    or-int v2, v27, v28

    move-object/from16 v27, v7

    move-object/from16 v7, p2

    invoke-static {v2, v7}, Lsk/mimac/slideshow/gui/image/BitmapBlur;->processColorShift(ILjava/lang/Boolean;)I

    move-result v2

    aput v2, v12, v25

    sub-int v4, v4, v17

    sub-int v11, v11, v18

    sub-int v15, v15, v20

    sub-int v2, v26, v0

    add-int/2addr v2, v3

    rem-int/2addr v2, v3

    aget-object v2, v13, v2

    const/16 v19, 0x0

    aget v28, v2, v19

    sub-int v17, v17, v28

    const/16 v16, 0x1

    aget v28, v2, v16

    sub-int v18, v18, v28

    const/16 v28, 0x2

    aget v29, v2, v28

    sub-int v20, v20, v29

    if-nez v10, :cond_8

    add-int v0, v1, v14

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int v0, v0, v9

    aput v0, v24, v1

    :cond_8
    aget v0, v24, v1

    add-int/2addr v0, v10

    aget v28, v5, v0

    const/16 v19, 0x0

    aput v28, v2, v19

    aget v29, v6, v0

    const/16 v16, 0x1

    aput v29, v2, v16

    aget v0, v27, v0

    const/16 v30, 0x2

    aput v0, v2, v30

    add-int v21, v21, v28

    add-int v22, v22, v29

    add-int v23, v23, v0

    add-int v4, v4, v21

    add-int v11, v11, v22

    add-int v15, v15, v23

    add-int/lit8 v26, v26, 0x1

    rem-int v26, v26, v3

    aget-object v0, v13, v26

    const/4 v2, 0x0

    aget v19, v0, v2

    add-int v17, v17, v19

    const/16 v16, 0x1

    aget v28, v0, v16

    add-int v18, v18, v28

    const/16 v29, 0x2

    aget v0, v0, v29

    add-int v20, v20, v0

    sub-int v21, v21, v19

    sub-int v22, v22, v28

    sub-int v23, v23, v0

    add-int v25, v25, v9

    add-int/lit8 v1, v1, 0x1

    move/from16 v0, p1

    move-object/from16 v7, v27

    move/from16 v2, v31

    goto/16 :goto_9

    :cond_9
    move/from16 v31, v2

    move-object/from16 v27, v7

    const/4 v2, 0x0

    const/16 v16, 0x1

    const/16 v29, 0x2

    move-object/from16 v7, p2

    add-int/lit8 v10, v10, 0x1

    move/from16 v0, p1

    move/from16 v32, v8

    move-object/from16 v8, v24

    move-object/from16 v7, v27

    goto/16 :goto_5

    :cond_a
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v2, v31

    invoke-static {v9, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v8

    move-object v1, v12

    move v7, v2

    move v2, v3

    move v3, v9

    move v6, v9

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v8
.end method

.method private static initDv(I)[I
    .locals 4

    add-int/lit8 p0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1

    mul-int p0, p0, p0

    mul-int/lit16 v0, p0, 0x100

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    div-int v3, v2, p0

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static processColorShift(ILjava/lang/Boolean;)I
    .locals 2

    const/high16 v0, -0x1000000

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const v0, -0x7f7f80

    :cond_0
    const/high16 p1, 0xff0000

    and-int v1, p0, p1

    shr-int/lit8 v1, v1, 0x1

    and-int/2addr p1, v1

    or-int/2addr p1, v0

    const v0, 0xff00

    and-int v1, p0, v0

    shr-int/lit8 v1, v1, 0x1

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    and-int/lit16 p0, p0, 0xff

    shr-int/lit8 p0, p0, 0x1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, p1

    return p0

    :cond_1
    or-int/2addr p0, v0

    return p0
.end method
