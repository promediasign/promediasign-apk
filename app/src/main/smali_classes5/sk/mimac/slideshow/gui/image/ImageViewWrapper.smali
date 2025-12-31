.class public abstract Lsk/mimac/slideshow/gui/image/ImageViewWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final RANDOM:Ljava/util/Random;


# instance fields
.field private scaleType:Lsk/mimac/slideshow/enums/ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lsk/mimac/slideshow/gui/image/ImageViewWrapper;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createAnimation(Lsk/mimac/slideshow/enums/AnimationType;ILandroid/view/ViewGroup;)Landroid/view/animation/Animation;
    .locals 1

    invoke-virtual {p1}, Lsk/mimac/slideshow/enums/AnimationType;->isZoom()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lsk/mimac/slideshow/gui/image/ImageViewWrapper;->createZoomAnimation(Lsk/mimac/slideshow/enums/AnimationType;ILandroid/view/ViewGroup;)Landroid/view/animation/ScaleAnimation;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lsk/mimac/slideshow/gui/image/ImageViewWrapper;->createMoveAnimation(Lsk/mimac/slideshow/enums/AnimationType;ILandroid/view/ViewGroup;)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method private createMoveAnimation(Lsk/mimac/slideshow/enums/AnimationType;ILandroid/view/ViewGroup;)Landroid/view/animation/Animation;
    .locals 11

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/image/ImageViewWrapper;->getBitmapWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lsk/mimac/slideshow/gui/image/ImageViewWrapper;->getBitmapHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapper;->scaleType:Lsk/mimac/slideshow/enums/ScaleType;

    sget-object v2, Lsk/mimac/slideshow/enums/ScaleType;->FIT_CENTER:Lsk/mimac/slideshow/enums/ScaleType;

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide v4, 0x3ff3333333333333L    # 1.2

    const-wide v6, 0x3fe999999999999aL    # 0.8

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lsk/mimac/slideshow/enums/AnimationType;->isMoveHorizontally()Z

    move-result v1

    if-eqz v1, :cond_0

    float-to-double v1, v0

    cmpg-double v8, v1, v6

    if-ltz v8, :cond_3

    :cond_0
    invoke-virtual {p1}, Lsk/mimac/slideshow/enums/AnimationType;->isMoveVertically()Z

    move-result v1

    if-eqz v1, :cond_1

    float-to-double v1, v0

    cmpl-double v8, v1, v4

    if-gtz v8, :cond_3

    :cond_1
    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapper;->scaleType:Lsk/mimac/slideshow/enums/ScaleType;

    sget-object v2, Lsk/mimac/slideshow/enums/ScaleType;->CENTER_CROP:Lsk/mimac/slideshow/enums/ScaleType;

    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Lsk/mimac/slideshow/enums/AnimationType;->isMoveHorizontally()Z

    move-result v1

    if-eqz v1, :cond_2

    float-to-double v1, v0

    cmpl-double v8, v1, v4

    if-gtz v8, :cond_3

    :cond_2
    invoke-virtual {p1}, Lsk/mimac/slideshow/enums/AnimationType;->isMoveVertically()Z

    move-result v1

    if-eqz v1, :cond_4

    float-to-double v0, v0

    cmpg-double v2, v0, v6

    if-gez v2, :cond_4

    :cond_3
    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_4
    int-to-float v0, p2

    const/high16 v1, 0x42200000    # 40.0f

    div-float/2addr v0, v1

    add-float/2addr v3, v0

    move v8, v3

    :goto_0
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v0

    mul-int v0, v0, p2

    int-to-float v0, v0

    const/high16 v1, 0x42a00000    # 80.0f

    div-float/2addr v0, v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    mul-int v2, v2, p2

    int-to-float p2, v2

    div-float/2addr p2, v1

    sget-object v1, Lsk/mimac/slideshow/gui/image/ImageViewWrapper$1;->$SwitchMap$sk$mimac$slideshow$enums$AnimationType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_8

    const/4 v3, 0x2

    if-eq p1, v3, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    new-instance p1, Landroid/view/animation/TranslateAnimation;

    invoke-direct {p1, v2, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_1

    :cond_5
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    neg-float v0, p2

    invoke-direct {p1, v2, v2, v0, p2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_1

    :cond_6
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    neg-float v0, p2

    invoke-direct {p1, v2, v2, p2, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_1

    :cond_7
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    neg-float p2, v0

    invoke-direct {p1, v0, p2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_1

    :cond_8
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    neg-float p2, v0

    invoke-direct {p1, p2, v0, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    :goto_1
    float-to-double v2, v8

    const-wide v4, 0x3fefae147ae147aeL    # 0.99

    cmpg-double p2, v2, v4

    if-ltz p2, :cond_a

    const-wide v4, 0x3ff028f5c28f5c29L    # 1.01

    cmpl-double p2, v2, v4

    if-lez p2, :cond_9

    goto :goto_2

    :cond_9
    return-object p1

    :cond_a
    :goto_2
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float v9, p2, v0

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float v10, p2, v0

    new-instance p2, Landroid/view/animation/AnimationSet;

    invoke-direct {p2, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance p3, Landroid/view/animation/ScaleAnimation;

    move-object v4, p3

    move v5, v8

    move v6, v8

    move v7, v8

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    invoke-virtual {p2, p3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p2, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object p2
.end method

.method private createZoomAnimation(Lsk/mimac/slideshow/enums/AnimationType;ILandroid/view/ViewGroup;)Landroid/view/animation/ScaleAnimation;
    .locals 9

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v7, v0, v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    div-float v8, p3, v1

    int-to-float p2, p2

    const/high16 p3, 0x42200000    # 40.0f

    div-float/2addr p2, p3

    const/high16 p3, 0x3f800000    # 1.0f

    add-float/2addr p2, p3

    sget-object p3, Lsk/mimac/slideshow/enums/AnimationType;->ZOOM_IN:Lsk/mimac/slideshow/enums/AnimationType;

    if-ne p1, p3, :cond_0

    new-instance p1, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v2, p1

    move v4, p2

    move v6, p2

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    return-object p1

    :cond_0
    new-instance p1, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v2, p1

    move v3, p2

    move v5, p2

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    return-object p1
.end method


# virtual methods
.method public abstract getBitmapHeight()I
.end method

.method public abstract getBitmapWidth()I
.end method

.method public abstract hide()V
.end method

.method public prepareAnimation(Landroid/widget/ImageView;IILjava/util/Set;)Landroid/view/animation/Animation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "II",
            "Ljava/util/Set<",
            "Lsk/mimac/slideshow/enums/AnimationType;",
            ">;)",
            "Landroid/view/animation/Animation;"
        }
    .end annotation

    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-lt p2, v0, :cond_1

    if-ge p3, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    new-array v1, v1, [Lsk/mimac/slideshow/enums/AnimationType;

    invoke-interface {p4, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lsk/mimac/slideshow/enums/AnimationType;

    sget-object v2, Lsk/mimac/slideshow/gui/image/ImageViewWrapper;->RANDOM:Ljava/util/Random;

    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result p4

    invoke-virtual {v2, p4}, Ljava/util/Random;->nextInt(I)I

    move-result p4

    aget-object p4, v1, p4

    invoke-direct {p0, p4, p3, p1}, Lsk/mimac/slideshow/gui/image/ImageViewWrapper;->createAnimation(Lsk/mimac/slideshow/enums/AnimationType;ILandroid/view/ViewGroup;)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    new-instance p3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract setAnimation(IILjava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Set<",
            "Lsk/mimac/slideshow/enums/AnimationType;",
            ">;)V"
        }
    .end annotation
.end method

.method public setScaleType(Lsk/mimac/slideshow/enums/ScaleType;)V
    .locals 0

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/gui/image/ImageViewWrapper;->setScaleTypeInternal(Lsk/mimac/slideshow/enums/ScaleType;)V

    iput-object p1, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapper;->scaleType:Lsk/mimac/slideshow/enums/ScaleType;

    return-void
.end method

.method public abstract setScaleTypeInternal(Lsk/mimac/slideshow/enums/ScaleType;)V
.end method

.method public abstract setZoomPan(Z)V
.end method

.method public abstract showWithTransition(Landroid/graphics/drawable/Drawable;)V
.end method
