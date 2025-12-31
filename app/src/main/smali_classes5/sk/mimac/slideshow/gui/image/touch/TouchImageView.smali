.class public Lsk/mimac/slideshow/gui/image/touch/TouchImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/gui/image/touch/TouchImageView$Fling;,
        Lsk/mimac/slideshow/gui/image/touch/TouchImageView$ScaleListener;,
        Lsk/mimac/slideshow/gui/image/touch/TouchImageView$GestureListener;,
        Lsk/mimac/slideshow/gui/image/touch/TouchImageView$PrivateOnTouchListener;,
        Lsk/mimac/slideshow/gui/image/touch/TouchImageView$CompatScroller;,
        Lsk/mimac/slideshow/gui/image/touch/TouchImageView$DoubleTapZoom;
    }
.end annotation


# instance fields
.field private currentZoom:F

.field private delayedZoomVariables:Lsk/mimac/slideshow/gui/image/touch/ZoomVariables;

.field private doubleTapScale:F

.field private fling:Lsk/mimac/slideshow/gui/image/touch/TouchImageView$Fling;

.field private final floatMatrix:[F

.field private final gestureDetector:Landroid/view/GestureDetector;

.field private imageActionState:Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

.field private imageRenderedAtLeastOnce:Z

.field private isSuperZoomEnabled:Z

.field private isZoomEnabled:Z

.field private matchViewHeight:F

.field private matchViewWidth:F

.field private maxScale:F

.field private maxScaleIsSetByMultiplier:Z

.field private maxScaleMultiplier:F

.field private minScale:F

.field private onDrawReady:Z

.field private final orientationChangeFixedPixel:Lsk/mimac/slideshow/gui/image/touch/FixedPixel;

.field private orientationJustChanged:Z

.field private prevMatchViewHeight:F

.field private prevMatchViewWidth:F

.field private final prevMatrix:Landroid/graphics/Matrix;

.field private prevViewHeight:I

.field private prevViewWidth:I

.field private final scaleDetector:Landroid/view/ScaleGestureDetector;

.field private superMaxScale:F

.field private superMinScale:F

.field private final touchMatrix:Landroid/graphics/Matrix;

.field private touchScaleType:Landroid/widget/ImageView$ScaleType;

.field private userSpecifiedMinScale:F

.field private viewHeight:I

.field private final viewSizeChangeFixedPixel:Lsk/mimac/slideshow/gui/image/touch/FixedPixel;

.field private viewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->isSuperZoomEnabled:Z

    sget-object v1, Lsk/mimac/slideshow/gui/image/touch/FixedPixel;->CENTER:Lsk/mimac/slideshow/gui/image/touch/FixedPixel;

    iput-object v1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->orientationChangeFixedPixel:Lsk/mimac/slideshow/gui/image/touch/FixedPixel;

    iput-object v1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->viewSizeChangeFixedPixel:Lsk/mimac/slideshow/gui/image/touch/FixedPixel;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    new-instance v1, Landroid/view/ScaleGestureDetector;

    new-instance v2, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$ScaleListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$ScaleListener;-><init>(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;Lsk/mimac/slideshow/gui/image/touch/TouchImageView$1;)V

    invoke-direct {v1, p1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->scaleDetector:Landroid/view/ScaleGestureDetector;

    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$GestureListener;

    invoke-direct {v2, p0, v3}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$GestureListener;-><init>(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;Lsk/mimac/slideshow/gui/image/touch/TouchImageView$1;)V

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->gestureDetector:Landroid/view/GestureDetector;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->touchMatrix:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->floatMatrix:[F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->currentZoom:F

    iget-object v2, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->touchScaleType:Landroid/widget/ImageView$ScaleType;

    if-nez v2, :cond_0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v2, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->touchScaleType:Landroid/widget/ImageView$ScaleType;

    :cond_0
    iput v1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->minScale:F

    const/high16 v2, 0x40400000    # 3.0f

    iput v2, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->maxScale:F

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float v1, v1, v4

    iput v1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->superMinScale:F

    const/high16 v1, 0x3fa00000    # 1.25f

    mul-float v2, v2, v1

    iput v2, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->superMaxScale:F

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget-object p1, Lsk/mimac/slideshow/gui/image/touch/ImageActionState;->NONE:Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->setState(Lsk/mimac/slideshow/gui/image/touch/ImageActionState;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->onDrawReady:Z

    new-instance p1, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$PrivateOnTouchListener;

    invoke-direct {p1, p0, v3}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$PrivateOnTouchListener;-><init>(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;Lsk/mimac/slideshow/gui/image/touch/TouchImageView$1;)V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-boolean v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->isZoomEnabled:Z

    return-void
.end method

.method public static synthetic access$1000(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)F
    .locals 0

    iget p0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->minScale:F

    return p0
.end method

.method public static synthetic access$1100(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;Lsk/mimac/slideshow/gui/image/touch/ImageActionState;)V
    .locals 0

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->setState(Lsk/mimac/slideshow/gui/image/touch/ImageActionState;)V

    return-void
.end method

.method public static synthetic access$1200(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)Landroid/view/ScaleGestureDetector;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->scaleDetector:Landroid/view/ScaleGestureDetector;

    return-object p0
.end method

.method public static synthetic access$1300(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)Landroid/view/GestureDetector;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->gestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method public static synthetic access$1400(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)I
    .locals 0

    iget p0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->viewWidth:I

    return p0
.end method

.method public static synthetic access$1500(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)F
    .locals 0

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->getImageWidth()F

    move-result p0

    return p0
.end method

.method public static synthetic access$1600(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)I
    .locals 0

    iget p0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->viewHeight:I

    return p0
.end method

.method public static synthetic access$1700(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)F
    .locals 0

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->getImageHeight()F

    move-result p0

    return p0
.end method

.method public static synthetic access$1800(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->touchMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public static synthetic access$1900(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)V
    .locals 0

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->fixTrans()V

    return-void
.end method

.method public static synthetic access$2000(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)Z
    .locals 0

    iget-boolean p0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->isSuperZoomEnabled:Z

    return p0
.end method

.method public static synthetic access$2100(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;FFFZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->scaleImage(FFFZ)V

    return-void
.end method

.method public static synthetic access$2200(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)V
    .locals 0

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->fixScaleTrans()V

    return-void
.end method

.method public static synthetic access$2400(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)[F
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->floatMatrix:[F

    return-object p0
.end method

.method public static synthetic access$300(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)Lsk/mimac/slideshow/gui/image/touch/TouchImageView$Fling;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->fling:Lsk/mimac/slideshow/gui/image/touch/TouchImageView$Fling;

    return-object p0
.end method

.method public static synthetic access$302(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;Lsk/mimac/slideshow/gui/image/touch/TouchImageView$Fling;)Lsk/mimac/slideshow/gui/image/touch/TouchImageView$Fling;
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->fling:Lsk/mimac/slideshow/gui/image/touch/TouchImageView$Fling;

    return-object p1
.end method

.method public static synthetic access$400(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)Z
    .locals 0

    iget-boolean p0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->isZoomEnabled:Z

    return p0
.end method

.method public static synthetic access$500(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->compatPostOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic access$600(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)Lsk/mimac/slideshow/gui/image/touch/ImageActionState;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->imageActionState:Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

    return-object p0
.end method

.method public static synthetic access$700(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)F
    .locals 0

    iget p0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->doubleTapScale:F

    return p0
.end method

.method public static synthetic access$800(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)F
    .locals 0

    iget p0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->maxScale:F

    return p0
.end method

.method public static synthetic access$900(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)F
    .locals 0

    iget p0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->currentZoom:F

    return p0
.end method

.method private compatPostOnAnimation(Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method private fitImageToView()V
    .locals 18

    move-object/from16 v8, p0

    iget-boolean v0, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->orientationJustChanged:Z

    if-eqz v0, :cond_0

    iget-object v0, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->orientationChangeFixedPixel:Lsk/mimac/slideshow/gui/image/touch/FixedPixel;

    :goto_0
    move-object v9, v0

    goto :goto_1

    :cond_0
    iget-object v0, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->viewSizeChangeFixedPixel:Lsk/mimac/slideshow/gui/image/touch/FixedPixel;

    goto :goto_0

    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->orientationJustChanged:Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_7

    :cond_1
    iget-object v2, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->touchMatrix:Landroid/graphics/Matrix;

    if-eqz v2, :cond_c

    iget-object v2, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    if-nez v2, :cond_2

    goto/16 :goto_7

    :cond_2
    iget v2, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->userSpecifiedMinScale:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    invoke-virtual {v8, v3}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->setMinZoom(F)V

    iget v2, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->currentZoom:F

    iget v3, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->minScale:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    iput v3, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->currentZoom:F

    :cond_3
    invoke-direct {v8, v1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->getDrawableWidth(Landroid/graphics/drawable/Drawable;)I

    move-result v6

    invoke-direct {v8, v1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->getDrawableHeight(Landroid/graphics/drawable/Drawable;)I

    move-result v10

    iget v1, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->viewWidth:I

    int-to-float v1, v1

    int-to-float v2, v6

    div-float/2addr v1, v2

    iget v3, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->viewHeight:I

    int-to-float v3, v3

    int-to-float v4, v10

    div-float/2addr v3, v4

    sget-object v5, Lsk/mimac/slideshow/gui/image/touch/TouchImageView$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v7, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->touchScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v5, v7

    const/4 v11, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x4

    const/4 v14, 0x2

    const/4 v15, 0x5

    if-eq v7, v11, :cond_6

    if-eq v7, v14, :cond_5

    const/4 v11, 0x3

    if-eq v7, v11, :cond_4

    if-eq v7, v13, :cond_4

    if-eq v7, v15, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    :goto_2
    move v3, v1

    goto :goto_3

    :cond_5
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_2

    :cond_6
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_3
    iget v7, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->viewWidth:I

    int-to-float v11, v7

    mul-float v16, v1, v2

    sub-float v11, v11, v16

    iget v14, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->viewHeight:I

    int-to-float v0, v14

    mul-float v17, v3, v4

    sub-float v0, v0, v17

    int-to-float v7, v7

    sub-float/2addr v7, v11

    iput v7, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->matchViewWidth:F

    int-to-float v7, v14

    sub-float/2addr v7, v0

    iput v7, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->matchViewHeight:F

    invoke-virtual/range {p0 .. p0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->isZoomed()Z

    move-result v7

    const/4 v14, 0x0

    if-nez v7, :cond_9

    iget-boolean v7, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->imageRenderedAtLeastOnce:Z

    if-nez v7, :cond_9

    iget-object v2, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->touchMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v1, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->touchScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v5, v1

    if-eq v1, v13, :cond_8

    if-eq v1, v15, :cond_7

    iget-object v1, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->touchMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v11, v2

    div-float/2addr v0, v2

    :goto_4
    invoke-virtual {v1, v11, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_5

    :cond_7
    iget-object v1, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->touchMatrix:Landroid/graphics/Matrix;

    goto :goto_4

    :cond_8
    iget-object v0, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->touchMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v14, v14}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :goto_5
    iput v12, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->currentZoom:F

    goto/16 :goto_6

    :cond_9
    iget v0, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->prevMatchViewWidth:F

    cmpl-float v0, v0, v14

    if-eqz v0, :cond_a

    iget v0, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->prevMatchViewHeight:F

    cmpl-float v0, v0, v14

    if-nez v0, :cond_b

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->savePreviousImageValues()V

    :cond_b
    iget-object v0, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    iget-object v1, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->floatMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->floatMatrix:[F

    iget v1, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->matchViewWidth:F

    div-float/2addr v1, v2

    iget v2, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->currentZoom:F

    mul-float v1, v1, v2

    const/4 v3, 0x0

    aput v1, v0, v3

    iget v1, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->matchViewHeight:F

    div-float/2addr v1, v4

    mul-float v1, v1, v2

    aput v1, v0, v13

    const/4 v1, 0x2

    aget v3, v0, v1

    aget v11, v0, v15

    iget v0, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->prevMatchViewWidth:F

    mul-float v2, v2, v0

    invoke-direct/range {p0 .. p0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->getImageWidth()F

    move-result v4

    iget-object v12, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->floatMatrix:[F

    iget v5, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->prevViewWidth:I

    iget v7, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->viewWidth:I

    move-object/from16 v0, p0

    move v1, v3

    move v3, v4

    move v4, v5

    move v5, v7

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->newTranslationAfterChange(FFFIIILsk/mimac/slideshow/gui/image/touch/FixedPixel;)F

    move-result v0

    const/4 v1, 0x2

    aput v0, v12, v1

    iget v0, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->prevMatchViewHeight:F

    iget v1, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->currentZoom:F

    mul-float v2, v0, v1

    invoke-direct/range {p0 .. p0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->getImageHeight()F

    move-result v3

    iget-object v12, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->floatMatrix:[F

    iget v4, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->prevViewHeight:I

    iget v5, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->viewHeight:I

    move-object/from16 v0, p0

    move v1, v11

    move v6, v10

    invoke-direct/range {v0 .. v7}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->newTranslationAfterChange(FFFIIILsk/mimac/slideshow/gui/image/touch/FixedPixel;)F

    move-result v0

    aput v0, v12, v15

    iget-object v0, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->touchMatrix:Landroid/graphics/Matrix;

    iget-object v1, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->floatMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    :goto_6
    invoke-direct/range {p0 .. p0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->fixTrans()V

    iget-object v0, v8, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->touchMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_c
    :goto_7
    return-void
.end method

.method private fixScaleTrans()V
    .locals 4

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->fixTrans()V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->touchMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->floatMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->getImageWidth()F

    move-result v0

    iget v1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->viewWidth:I

    int-to-float v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    int-to-float v0, v1

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->getImageWidth()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->floatMatrix:[F

    const/4 v2, 0x2

    aput v0, v1, v2

    :cond_0
    invoke-direct {p0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->getImageHeight()F

    move-result v0

    iget v1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->viewHeight:I

    int-to-float v2, v1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->floatMatrix:[F

    int-to-float v1, v1

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->getImageHeight()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    const/4 v2, 0x5

    aput v1, v0, v2

    :cond_1
    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->touchMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->floatMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    return-void
.end method

.method private fixTrans()V
    .locals 5

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->touchMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->floatMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->floatMatrix:[F

    const/4 v1, 0x2

    aget v1, v0, v1

    const/4 v2, 0x5

    aget v0, v0, v2

    iget v2, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->viewWidth:I

    int-to-float v2, v2

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->getImageWidth()F

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->getFixTrans(FFFF)F

    move-result v1

    iget v2, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->viewHeight:I

    int-to-float v2, v2

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->getImageHeight()F

    move-result v3

    invoke-direct {p0, v0, v2, v3, v4}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->getFixTrans(FFFF)F

    move-result v0

    iget-object v2, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->touchMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private getDrawableHeight(Landroid/graphics/drawable/Drawable;)I
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    return p1
.end method

.method private getDrawableWidth(Landroid/graphics/drawable/Drawable;)I
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    return p1
.end method

.method private getFixTrans(FFFF)F
    .locals 2

    cmpg-float v0, p3, p2

    add-float/2addr p2, p4

    sub-float/2addr p2, p3

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, p4

    move p4, p2

    move p2, v1

    :goto_0
    cmpg-float p3, p1, p4

    if-gez p3, :cond_1

    neg-float p1, p1

    add-float/2addr p1, p4

    return p1

    :cond_1
    cmpl-float p3, p1, p2

    if-lez p3, :cond_2

    neg-float p1, p1

    add-float/2addr p1, p2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private getImageHeight()F
    .locals 2

    iget v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->matchViewHeight:F

    iget v1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->currentZoom:F

    mul-float v0, v0, v1

    return v0
.end method

.method private getImageWidth()F
    .locals 2

    iget v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->matchViewWidth:F

    iget v1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->currentZoom:F

    mul-float v0, v0, v1

    return v0
.end method

.method private newTranslationAfterChange(FFFIIILsk/mimac/slideshow/gui/image/touch/FixedPixel;)F
    .locals 2

    int-to-float p5, p5

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p3, p5

    if-gez v1, :cond_0

    int-to-float p1, p6

    iget-object p2, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->floatMatrix:[F

    const/4 p3, 0x0

    aget p2, p2, p3

    mul-float p1, p1, p2

    sub-float/2addr p5, p1

    mul-float p5, p5, v0

    return p5

    :cond_0
    const/4 p6, 0x0

    cmpl-float v1, p1, p6

    if-lez v1, :cond_1

    sub-float/2addr p3, p5

    mul-float p3, p3, v0

    neg-float p1, p3

    return p1

    :cond_1
    sget-object v1, Lsk/mimac/slideshow/gui/image/touch/FixedPixel;->BOTTOM_RIGHT:Lsk/mimac/slideshow/gui/image/touch/FixedPixel;

    if-ne p7, v1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    sget-object v1, Lsk/mimac/slideshow/gui/image/touch/FixedPixel;->TOP_LEFT:Lsk/mimac/slideshow/gui/image/touch/FixedPixel;

    if-ne p7, v1, :cond_3

    const/4 v0, 0x0

    :cond_3
    :goto_0
    neg-float p1, p1

    int-to-float p4, p4

    mul-float p4, p4, v0

    add-float/2addr p4, p1

    div-float/2addr p4, p2

    mul-float p4, p4, p3

    mul-float p5, p5, v0

    sub-float/2addr p4, p5

    neg-float p1, p4

    return p1
.end method

.method private scaleImage(FFFZ)V
    .locals 4

    if-eqz p4, :cond_0

    iget p4, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->superMinScale:F

    iget v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->superMaxScale:F

    goto :goto_0

    :cond_0
    iget p4, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->minScale:F

    iget v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->maxScale:F

    :goto_0
    iget v1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->currentZoom:F

    mul-float v2, v1, p1

    iput v2, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->currentZoom:F

    cmpl-float v3, v2, v0

    if-lez v3, :cond_1

    iput v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->currentZoom:F

    div-float p1, v0, v1

    goto :goto_1

    :cond_1
    cmpg-float v0, v2, p4

    if-gez v0, :cond_2

    iput p4, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->currentZoom:F

    div-float p1, p4, v1

    :cond_2
    :goto_1
    iget-object p4, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->touchMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p4, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->fixScaleTrans()V

    return-void
.end method

.method private setState(Lsk/mimac/slideshow/gui/image/touch/ImageActionState;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->imageActionState:Lsk/mimac/slideshow/gui/image/touch/ImageActionState;

    return-void
.end method

.method private setViewSize(III)I
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    return p2

    :cond_0
    return p3

    :cond_1
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method


# virtual methods
.method public canScrollHorizontally(I)Z
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->touchMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->floatMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->floatMatrix:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->getImageWidth()F

    move-result v1

    iget v2, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->viewWidth:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_0

    if-ltz p1, :cond_2

    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->viewWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->getImageWidth()F

    move-result v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    if-gtz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public canScrollVertically(I)Z
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->touchMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->floatMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->floatMatrix:[F

    const/4 v1, 0x5

    aget v0, v0, v1

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->getImageHeight()F

    move-result v1

    iget v2, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->viewHeight:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_0

    if-ltz p1, :cond_2

    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->viewHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->getImageHeight()F

    move-result v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    if-gtz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->touchScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public final getScrollPosition()Landroid/graphics/PointF;
    .locals 5

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->getDrawableWidth(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->getDrawableHeight(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    iget v2, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->viewWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->viewHeight:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v4, v3}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;

    move-result-object v2

    iget v3, v2, Landroid/graphics/PointF;->x:F

    int-to-float v1, v1

    div-float/2addr v3, v1

    iput v3, v2, Landroid/graphics/PointF;->x:F

    iget v1, v2, Landroid/graphics/PointF;->y:F

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, v2, Landroid/graphics/PointF;->y:F

    return-object v2
.end method

.method public final isZoomed()Z
    .locals 2

    iget v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->currentZoom:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->onDrawReady:Z

    iput-boolean v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->imageRenderedAtLeastOnce:Z

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->delayedZoomVariables:Lsk/mimac/slideshow/gui/image/touch/ZoomVariables;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/image/touch/ZoomVariables;->getScale()F

    move-result v1

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/image/touch/ZoomVariables;->getFocusX()F

    move-result v2

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/image/touch/ZoomVariables;->getFocusY()F

    move-result v3

    invoke-virtual {v0}, Lsk/mimac/slideshow/gui/image/touch/ZoomVariables;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->setZoom(FFFLandroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->delayedZoomVariables:Lsk/mimac/slideshow/gui/image/touch/ZoomVariables;

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->getDrawableWidth(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->getDrawableHeight(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    invoke-direct {p0, p1, v2, v1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->setViewSize(III)I

    move-result p1

    invoke-direct {p0, p2, v3, v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->setViewSize(III)I

    move-result p2

    iget-boolean v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->orientationJustChanged:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->savePreviousImageValues()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    iput p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->viewWidth:I

    iput p2, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->viewHeight:I

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->fitImageToView()V

    return-void
.end method

.method public final resetZoom()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->currentZoom:F

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->fitImageToView()V

    return-void
.end method

.method public final savePreviousImageValues()V
    .locals 2

    iget v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->viewHeight:I

    if-eqz v0, :cond_0

    iget v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->viewWidth:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->touchMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->floatMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->floatMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    iget v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->matchViewHeight:F

    iput v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->prevMatchViewHeight:F

    iget v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->matchViewWidth:F

    iput v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->prevMatchViewWidth:F

    iget v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->viewHeight:I

    iput v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->prevViewHeight:I

    iget v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->viewWidth:I

    iput v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->prevViewWidth:I

    :cond_0
    return-void
.end method

.method public final setDoubleTapScale(F)V
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->doubleTapScale:F

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->imageRenderedAtLeastOnce:Z

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->savePreviousImageValues()V

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->fitImageToView()V

    return-void
.end method

.method public final setMaxZoom(F)V
    .locals 1

    iput p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->maxScale:F

    const/high16 v0, 0x3fa00000    # 1.25f

    mul-float p1, p1, v0

    iput p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->superMaxScale:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->maxScaleIsSetByMultiplier:Z

    return-void
.end method

.method public final setMaxZoomRatio(F)V
    .locals 1

    iput p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->maxScaleMultiplier:F

    iget v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->minScale:F

    mul-float v0, v0, p1

    iput v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->maxScale:F

    const/high16 p1, 0x3fa00000    # 1.25f

    mul-float v0, v0, p1

    iput v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->superMaxScale:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->maxScaleIsSetByMultiplier:Z

    return-void
.end method

.method public final setMinZoom(F)V
    .locals 3

    iput p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->userSpecifiedMinScale:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->touchScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_1

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    :goto_0
    iput p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->minScale:F

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->getDrawableWidth(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->getDrawableHeight(Landroid/graphics/drawable/Drawable;)I

    move-result p1

    if-lez v1, :cond_3

    if-lez p1, :cond_3

    iget v2, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->viewWidth:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    iget v1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->viewHeight:I

    int-to-float v1, v1

    int-to-float p1, p1

    div-float/2addr v1, p1

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->touchScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_0

    :cond_2
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr p1, v0

    goto :goto_0

    :cond_3
    :goto_1
    iget-boolean p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->maxScaleIsSetByMultiplier:Z

    if-eqz p1, :cond_4

    iget p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->maxScaleMultiplier:F

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->setMaxZoomRatio(F)V

    :cond_4
    const/high16 p1, 0x3f400000    # 0.75f

    iget v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->minScale:F

    mul-float v0, v0, p1

    iput v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->superMinScale:F

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->touchScaleType:Landroid/widget/ImageView$ScaleType;

    iget-boolean p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->onDrawReady:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0, p0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->setZoom(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setSuperZoomEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->isSuperZoomEnabled:Z

    return-void
.end method

.method public final setZoom(FFFLandroid/widget/ImageView$ScaleType;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->onDrawReady:Z

    if-nez v0, :cond_0

    new-instance v0, Lsk/mimac/slideshow/gui/image/touch/ZoomVariables;

    invoke-direct {v0, p1, p2, p3, p4}, Lsk/mimac/slideshow/gui/image/touch/ZoomVariables;-><init>(FFFLandroid/widget/ImageView$ScaleType;)V

    iput-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->delayedZoomVariables:Lsk/mimac/slideshow/gui/image/touch/ZoomVariables;

    goto :goto_0

    :cond_0
    iget v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->userSpecifiedMinScale:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->setMinZoom(F)V

    iget v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->currentZoom:F

    iget v1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->minScale:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iput v1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->currentZoom:F

    :cond_1
    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->touchScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq p4, v0, :cond_2

    invoke-virtual {p0, p4}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_2
    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->resetZoom()V

    iget p4, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->viewWidth:I

    int-to-float p4, p4

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p4, v0

    iget v1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->viewHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    iget-boolean v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->isSuperZoomEnabled:Z

    invoke-direct {p0, p1, p4, v1, v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->scaleImage(FFFZ)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->touchMatrix:Landroid/graphics/Matrix;

    iget-object p4, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->floatMatrix:[F

    invoke-virtual {p1, p4}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->floatMatrix:[F

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->getImageWidth()F

    move-result p4

    mul-float p2, p2, p4

    iget p4, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->viewWidth:I

    int-to-float p4, p4

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float p4, p4, v0

    sub-float/2addr p2, p4

    neg-float p2, p2

    const/4 p4, 0x2

    aput p2, p1, p4

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->floatMatrix:[F

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->getImageHeight()F

    move-result p2

    mul-float p3, p3, p2

    iget p2, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->viewHeight:I

    int-to-float p2, p2

    mul-float p2, p2, v0

    sub-float/2addr p3, p2

    neg-float p2, p3

    const/4 p3, 0x5

    aput p2, p1, p3

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->touchMatrix:Landroid/graphics/Matrix;

    iget-object p2, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->floatMatrix:[F

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->fixTrans()V

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->savePreviousImageValues()V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->touchMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :goto_0
    return-void
.end method

.method public final setZoom(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)V
    .locals 3

    .line 2
    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->getScrollPosition()Landroid/graphics/PointF;

    move-result-object v0

    iget v1, p1, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->currentZoom:F

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object p1

    invoke-virtual {p0, v1, v2, v0, p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->setZoom(FFFLandroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public final setZoomEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->isZoomEnabled:Z

    return-void
.end method

.method public final transformCoordBitmapToTouch(FF)Landroid/graphics/PointF;
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->touchMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->floatMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v0

    div-float/2addr p2, v1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->floatMatrix:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->getImageWidth()F

    move-result v1

    mul-float v1, v1, p1

    add-float/2addr v1, v0

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->floatMatrix:[F

    const/4 v0, 0x5

    aget p1, p1, v0

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->getImageHeight()F

    move-result v0

    mul-float v0, v0, p2

    add-float/2addr v0, p1

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method public final transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;
    .locals 5

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->touchMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->floatMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->floatMatrix:[F

    const/4 v3, 0x2

    aget v3, v2, v3

    const/4 v4, 0x5

    aget v2, v2, v4

    sub-float/2addr p1, v3

    mul-float p1, p1, v0

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->getImageWidth()F

    move-result v3

    div-float/2addr p1, v3

    sub-float/2addr p2, v2

    mul-float p2, p2, v1

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->getImageHeight()F

    move-result v2

    div-float/2addr p2, v2

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    :cond_0
    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p3
.end method
