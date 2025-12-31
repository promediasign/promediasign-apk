.class public Lsk/mimac/slideshow/gui/image/transition/FoldLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/gui/image/transition/FoldLayout$Orientation;,
        Lsk/mimac/slideshow/gui/image/transition/FoldLayout$NumberOfFoldingLayoutChildrenException;
    }
.end annotation


# instance fields
.field private mDst:[F

.field private mFoldDrawHeight:F

.field private mFoldDrawWidth:F

.field private mFoldFactor:F

.field private mFoldMaxHeight:F

.field private mFoldMaxWidth:F

.field private mFoldRectArray:[Landroid/graphics/Rect;

.field private mGradientShadow:Landroid/graphics/Paint;

.field private mIsFoldPrepared:Z

.field private mIsHorizontal:Z

.field private mMatrix:[Landroid/graphics/Matrix;

.field private mOrientation:Lsk/mimac/slideshow/gui/image/transition/FoldLayout$Orientation;

.field private mOriginalHeight:I

.field private mOriginalWidth:I

.field private mShadowGradientMatrix:Landroid/graphics/Matrix;

.field private mShadowLinearGradient:Landroid/graphics/LinearGradient;

.field private mShouldDraw:Z

.field private mSolidShadow:Landroid/graphics/Paint;

.field private mSrc:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    sget-object p1, Lsk/mimac/slideshow/gui/image/transition/FoldLayout$Orientation;->HORIZONTAL:Lsk/mimac/slideshow/gui/image/transition/FoldLayout$Orientation;

    iput-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mOrientation:Lsk/mimac/slideshow/gui/image/transition/FoldLayout$Orientation;

    const/4 p1, 0x0

    iput p1, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldFactor:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mIsHorizontal:Z

    const/4 v1, 0x0

    iput v1, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mOriginalWidth:I

    iput v1, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mOriginalHeight:I

    iput p1, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldMaxWidth:F

    iput p1, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldMaxHeight:F

    iput p1, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldDrawWidth:F

    iput p1, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldDrawHeight:F

    iput-boolean v1, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mIsFoldPrepared:Z

    iput-boolean v0, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mShouldDraw:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lsk/mimac/slideshow/gui/image/transition/FoldLayout$Orientation;->HORIZONTAL:Lsk/mimac/slideshow/gui/image/transition/FoldLayout$Orientation;

    iput-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mOrientation:Lsk/mimac/slideshow/gui/image/transition/FoldLayout$Orientation;

    const/4 p1, 0x0

    iput p1, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldFactor:F

    const/4 p2, 0x1

    iput-boolean p2, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mIsHorizontal:Z

    const/4 v0, 0x0

    iput v0, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mOriginalWidth:I

    iput v0, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mOriginalHeight:I

    iput p1, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldMaxWidth:F

    iput p1, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldMaxHeight:F

    iput p1, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldDrawWidth:F

    iput p1, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldDrawHeight:F

    iput-boolean v0, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mIsFoldPrepared:Z

    iput-boolean p2, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mShouldDraw:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p1, Lsk/mimac/slideshow/gui/image/transition/FoldLayout$Orientation;->HORIZONTAL:Lsk/mimac/slideshow/gui/image/transition/FoldLayout$Orientation;

    iput-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mOrientation:Lsk/mimac/slideshow/gui/image/transition/FoldLayout$Orientation;

    const/4 p1, 0x0

    iput p1, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldFactor:F

    const/4 p2, 0x1

    iput-boolean p2, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mIsHorizontal:Z

    const/4 p3, 0x0

    iput p3, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mOriginalWidth:I

    iput p3, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mOriginalHeight:I

    iput p1, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldMaxWidth:F

    iput p1, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldMaxHeight:F

    iput p1, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldDrawWidth:F

    iput p1, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldDrawHeight:F

    iput-boolean p3, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mIsFoldPrepared:Z

    iput-boolean p2, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mShouldDraw:Z

    return-void
.end method

.method private calculateMatrices()V
    .locals 25

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mShouldDraw:Z

    iget-boolean v2, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mIsFoldPrepared:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget v2, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldFactor:F

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iput-boolean v4, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mShouldDraw:Z

    return-void

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x5

    if-ge v2, v5, :cond_2

    iget-object v5, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mMatrix:[Landroid/graphics/Matrix;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget v2, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldFactor:F

    sub-float v2, v3, v2

    iget-boolean v6, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mIsHorizontal:Z

    if-eqz v6, :cond_3

    iget v6, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mOriginalWidth:I

    :goto_1
    int-to-float v6, v6

    mul-float v6, v6, v2

    goto :goto_2

    :cond_3
    iget v6, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mOriginalHeight:I

    goto :goto_1

    :goto_2
    const/high16 v7, 0x40a00000    # 5.0f

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldMaxWidth:F

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldDrawWidth:F

    iget v7, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldMaxHeight:F

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldDrawHeight:F

    mul-float v6, v6, v6

    iget-boolean v8, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mIsHorizontal:Z

    if-eqz v8, :cond_4

    iget v7, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldDrawWidth:F

    :cond_4
    mul-float v7, v7, v7

    sub-float/2addr v7, v6

    float-to-double v6, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    const v7, 0x44bb8000    # 1500.0f

    add-float/2addr v6, v7

    div-float/2addr v7, v6

    iget-boolean v6, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mIsHorizontal:Z

    if-eqz v6, :cond_5

    iget v6, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldDrawWidth:F

    mul-float v6, v6, v2

    iget v2, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldDrawHeight:F

    mul-float v2, v2, v7

    goto :goto_3

    :cond_5
    iget v6, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldDrawWidth:F

    mul-float v6, v6, v7

    iget v7, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldDrawHeight:F

    mul-float v2, v2, v7

    :goto_3
    iget v7, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldDrawHeight:F

    sub-float v8, v7, v2

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float v10, v8, v2

    iget v11, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldDrawWidth:F

    sub-float v12, v11, v6

    div-float/2addr v12, v9

    add-float v9, v12, v6

    iget-object v13, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mSrc:[F

    const/4 v14, 0x0

    aput v14, v13, v4

    aput v14, v13, v1

    const/4 v15, 0x2

    aput v14, v13, v15

    const/16 v16, 0x3

    aput v7, v13, v16

    const/16 v17, 0x4

    aput v11, v13, v17

    aput v14, v13, v5

    const/16 v18, 0x6

    aput v11, v13, v18

    const/4 v11, 0x7

    aput v7, v13, v11

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v5, :cond_16

    rem-int/lit8 v13, v7, 0x2

    if-nez v13, :cond_6

    const/4 v13, 0x1

    goto :goto_5

    :cond_6
    const/4 v13, 0x0

    :goto_5
    iget-boolean v14, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mIsHorizontal:Z

    if-eqz v14, :cond_b

    iget-object v14, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mDst:[F

    int-to-float v3, v7

    mul-float v3, v3, v6

    aput v3, v14, v4

    if-eqz v13, :cond_7

    const/16 v19, 0x0

    goto :goto_6

    :cond_7
    move/from16 v19, v8

    :goto_6
    aput v19, v14, v1

    aput v3, v14, v15

    if-eqz v13, :cond_8

    iget v3, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldDrawHeight:F

    goto :goto_7

    :cond_8
    move v3, v10

    :goto_7
    aput v3, v14, v16

    add-int/lit8 v3, v7, 0x1

    int-to-float v3, v3

    mul-float v3, v3, v6

    aput v3, v14, v17

    if-eqz v13, :cond_9

    move/from16 v19, v8

    goto :goto_8

    :cond_9
    const/16 v19, 0x0

    :goto_8
    aput v19, v14, v5

    aput v3, v14, v18

    if-eqz v13, :cond_a

    move v3, v10

    goto :goto_9

    :cond_a
    iget v3, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldDrawHeight:F

    :goto_9
    aput v3, v14, v11

    goto :goto_e

    :cond_b
    iget-object v3, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mDst:[F

    if-eqz v13, :cond_c

    const/4 v14, 0x0

    goto :goto_a

    :cond_c
    move v14, v12

    :goto_a
    aput v14, v3, v4

    int-to-float v14, v7

    mul-float v14, v14, v2

    aput v14, v3, v1

    if-eqz v13, :cond_d

    move/from16 v19, v12

    goto :goto_b

    :cond_d
    const/16 v19, 0x0

    :goto_b
    aput v19, v3, v15

    add-int/lit8 v1, v7, 0x1

    int-to-float v1, v1

    mul-float v1, v1, v2

    aput v1, v3, v16

    if-eqz v13, :cond_e

    iget v15, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldDrawWidth:F

    goto :goto_c

    :cond_e
    move v15, v9

    :goto_c
    aput v15, v3, v17

    aput v14, v3, v5

    if-eqz v13, :cond_f

    move v13, v9

    goto :goto_d

    :cond_f
    iget v13, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldDrawWidth:F

    :goto_d
    aput v13, v3, v18

    aput v1, v3, v11

    :goto_e
    const/4 v1, 0x0

    :goto_f
    const/16 v3, 0x8

    if-ge v1, v3, :cond_10

    iget-object v3, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mDst:[F

    aget v13, v3, v1

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    int-to-float v13, v13

    aput v13, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_10
    iget-boolean v1, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mIsHorizontal:Z

    if-eqz v1, :cond_13

    iget-object v1, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mDst:[F

    aget v3, v1, v17

    aget v13, v1, v4

    cmpg-float v3, v3, v13

    if-lez v3, :cond_12

    aget v3, v1, v18

    const/4 v13, 0x2

    aget v1, v1, v13

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_11

    goto :goto_10

    :cond_11
    const/4 v14, 0x1

    goto :goto_11

    :cond_12
    :goto_10
    iput-boolean v4, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mShouldDraw:Z

    return-void

    :cond_13
    const/4 v13, 0x2

    iget-object v1, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mDst:[F

    aget v3, v1, v16

    const/4 v14, 0x1

    aget v15, v1, v14

    cmpg-float v3, v3, v15

    if-lez v3, :cond_15

    aget v3, v1, v11

    aget v1, v1, v5

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_14

    goto :goto_12

    :cond_14
    :goto_11
    iget-object v1, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mMatrix:[Landroid/graphics/Matrix;

    aget-object v19, v1, v7

    iget-object v1, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mSrc:[F

    iget-object v3, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mDst:[F

    const/16 v23, 0x0

    const/16 v24, 0x4

    const/16 v21, 0x0

    move-object/from16 v20, v1

    move-object/from16 v22, v3

    invoke-virtual/range {v19 .. v24}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    add-int/lit8 v7, v7, 0x1

    const/4 v1, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x2

    goto/16 :goto_4

    :cond_15
    :goto_12
    iput-boolean v4, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mShouldDraw:Z

    return-void

    :cond_16
    iget v1, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldFactor:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    const v2, 0x3f4ccccd    # 0.8f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iget-object v2, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mSolidShadow:Landroid/graphics/Paint;

    invoke-static {v1, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean v2, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mIsHorizontal:Z

    if-eqz v2, :cond_17

    iget-object v2, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mShadowGradientMatrix:Landroid/graphics/Matrix;

    iget v3, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldDrawWidth:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    :goto_13
    iget-object v2, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mShadowLinearGradient:Landroid/graphics/LinearGradient;

    iget-object v3, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mShadowGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    goto :goto_14

    :cond_17
    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v2, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mShadowGradientMatrix:Landroid/graphics/Matrix;

    iget v3, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldDrawHeight:F

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_13

    :goto_14
    iget-object v2, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mGradientShadow:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private prepareFold(Lsk/mimac/slideshow/gui/image/transition/FoldLayout$Orientation;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x8

    new-array v3, v2, [F

    iput-object v3, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mSrc:[F

    new-array v2, v2, [F

    iput-object v2, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mDst:[F

    const/4 v2, 0x0

    iput v2, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldFactor:F

    const/4 v2, 0x0

    iput-boolean v2, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mIsFoldPrepared:Z

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mSolidShadow:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mGradientShadow:Landroid/graphics/Paint;

    iput-object v1, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mOrientation:Lsk/mimac/slideshow/gui/image/transition/FoldLayout$Orientation;

    sget-object v3, Lsk/mimac/slideshow/gui/image/transition/FoldLayout$Orientation;->HORIZONTAL:Lsk/mimac/slideshow/gui/image/transition/FoldLayout$Orientation;

    const/4 v4, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mIsHorizontal:Z

    if-eqz v1, :cond_1

    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v11, 0x0

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x0

    const/high16 v10, -0x1000000

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    :goto_1
    iput-object v1, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mShadowLinearGradient:Landroid/graphics/LinearGradient;

    goto :goto_2

    :cond_1
    new-instance v1, Landroid/graphics/LinearGradient;

    const/16 v19, 0x0

    sget-object v20, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x3f000000    # 0.5f

    const/high16 v18, -0x1000000

    move-object v13, v1

    invoke-direct/range {v13 .. v20}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    goto :goto_1

    :goto_2
    iget-object v1, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mGradientShadow:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mGradientShadow:Landroid/graphics/Paint;

    iget-object v3, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mShadowLinearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mShadowGradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mOriginalWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mOriginalHeight:I

    const/4 v1, 0x5

    new-array v3, v1, [Landroid/graphics/Rect;

    iput-object v3, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldRectArray:[Landroid/graphics/Rect;

    new-array v3, v1, [Landroid/graphics/Matrix;

    iput-object v3, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mMatrix:[Landroid/graphics/Matrix;

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_2

    iget-object v5, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mMatrix:[Landroid/graphics/Matrix;

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    aput-object v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    iget v3, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mOriginalHeight:I

    iget v5, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mOriginalWidth:I

    iget-boolean v6, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mIsHorizontal:Z

    const/high16 v7, 0x40a00000    # 5.0f

    if-eqz v6, :cond_3

    int-to-float v6, v5

    :goto_4
    div-float/2addr v6, v7

    goto :goto_5

    :cond_3
    int-to-float v6, v3

    goto :goto_4

    :goto_5
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v1, :cond_7

    iget-boolean v8, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mIsHorizontal:Z

    if-eqz v8, :cond_5

    add-int/lit8 v8, v7, 0x1

    mul-int v8, v8, v6

    if-le v8, v5, :cond_4

    mul-int v8, v7, v6

    sub-int v8, v5, v8

    goto :goto_7

    :cond_4
    move v8, v6

    :goto_7
    iget-object v9, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldRectArray:[Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    mul-int v11, v7, v6

    add-int/2addr v8, v11

    invoke-direct {v10, v11, v2, v8, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v10, v9, v7

    goto :goto_9

    :cond_5
    add-int/lit8 v8, v7, 0x1

    mul-int v8, v8, v6

    if-le v8, v3, :cond_6

    mul-int v8, v7, v6

    sub-int v8, v3, v8

    goto :goto_8

    :cond_6
    move v8, v6

    :goto_8
    iget-object v9, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldRectArray:[Landroid/graphics/Rect;

    new-instance v10, Landroid/graphics/Rect;

    mul-int v11, v7, v6

    add-int/2addr v8, v11

    invoke-direct {v10, v2, v11, v5, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v10, v9, v7

    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_7
    iget-boolean v1, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mIsHorizontal:Z

    if-eqz v1, :cond_8

    int-to-float v1, v3

    iput v1, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldMaxHeight:F

    int-to-float v1, v6

    :goto_a
    iput v1, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldMaxWidth:F

    goto :goto_b

    :cond_8
    int-to-float v1, v6

    iput v1, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldMaxHeight:F

    int-to-float v1, v5

    goto :goto_a

    :goto_b
    iput-boolean v4, v0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mIsFoldPrepared:Z

    return-void
.end method

.method private throwCustomException(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Lsk/mimac/slideshow/gui/image/transition/FoldLayout$NumberOfFoldingLayoutChildrenException;

    const-string v0, "Folding Layout can only 1 child at most"

    invoke-direct {p1, v0}, Lsk/mimac/slideshow/gui/image/transition/FoldLayout$NumberOfFoldingLayoutChildrenException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private updateFold()V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mOrientation:Lsk/mimac/slideshow/gui/image/transition/FoldLayout$Orientation;

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->prepareFold(Lsk/mimac/slideshow/gui/image/transition/FoldLayout$Orientation;)V

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->calculateMatrices()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->throwCustomException(I)V

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->throwCustomException(I)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result p1

    return p1
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    iget-boolean v0, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mIsFoldPrepared:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldFactor:F

    const/4 v6, 0x0

    cmpl-float v0, v0, v6

    if-nez v0, :cond_0

    goto :goto_5

    :cond_0
    iget-boolean v0, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mShouldDraw:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    const/4 v0, 0x5

    if-ge v8, v0, :cond_5

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldRectArray:[Landroid/graphics/Rect;

    aget-object v0, v0, v8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mMatrix:[Landroid/graphics/Matrix;

    aget-object v1, v1, v8

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-virtual {p1, v7, v7, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-boolean v1, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mIsHorizontal:Z

    if-eqz v1, :cond_2

    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v1, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    :cond_2
    iget v1, v0, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v6, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v1, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mIsHorizontal:Z

    if-eqz v1, :cond_3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_2

    :cond_3
    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1, v6, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_2
    rem-int/lit8 v0, v8, 0x2

    iget v3, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldDrawWidth:F

    iget v4, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldDrawHeight:F

    if-nez v0, :cond_4

    iget-object v5, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mSolidShadow:Landroid/graphics/Paint;

    :goto_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_4
    iget-object v5, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mGradientShadow:Landroid/graphics/Paint;

    goto :goto_3

    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    return-void

    :cond_6
    :goto_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    invoke-virtual {p2, p1, p1, p3, p4}, Landroid/view/View;->layout(IIII)V

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->updateFold()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setFoldFactor(F)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget v0, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldFactor:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mFoldFactor:F

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->calculateMatrices()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setOrientation(Lsk/mimac/slideshow/gui/image/transition/FoldLayout$Orientation;)V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mOrientation:Lsk/mimac/slideshow/gui/image/transition/FoldLayout$Orientation;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->mOrientation:Lsk/mimac/slideshow/gui/image/transition/FoldLayout$Orientation;

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/image/transition/FoldLayout;->updateFold()V

    :cond_0
    return-void
.end method
