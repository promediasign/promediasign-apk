.class public Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;
.super Lsk/mimac/slideshow/gui/image/ImageViewWrapper;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private nextTransition:Lsk/mimac/slideshow/gui/image/transition/Transition;

.field private transitionLength:I

.field private transitionType:Lsk/mimac/slideshow/enums/TransitionType;

.field private view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

.field private view2:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lsk/mimac/slideshow/gui/image/touch/TouchImageView;Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)V
    .locals 1

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/image/ImageViewWrapper;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    iput-object p2, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view2:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    return-void
.end method

.method private createTransition()Lsk/mimac/slideshow/gui/image/transition/Transition;
    .locals 14

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->transitionType:Lsk/mimac/slideshow/enums/TransitionType;

    sget-object v1, Lsk/mimac/slideshow/enums/TransitionType;->RANDOM:Lsk/mimac/slideshow/enums/TransitionType;

    if-ne v0, v1, :cond_0

    sget-object v0, Lsk/mimac/slideshow/enums/TransitionType;->WITHOUT_RANDOM_NONE:[Lsk/mimac/slideshow/enums/TransitionType;

    sget-object v1, Lsk/mimac/slideshow/gui/image/ImageViewWrapper;->RANDOM:Ljava/util/Random;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, v0, v1

    :cond_0
    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    sget-object v1, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2$1;->$SwitchMap$sk$mimac$slideshow$enums$TransitionType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    new-instance v0, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view2:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    iget-object v2, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-direct {v0, v1, v2, v5, v6}, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition;-><init>(Landroid/view/View;Landroid/view/View;II)V

    return-object v0

    :pswitch_1
    new-instance v0, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition;

    iget-object v3, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view2:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    iget-object v4, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    sget-object v7, Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;->FROM_RIGHT:Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lsk/mimac/slideshow/gui/image/transition/CubeOutsideTransition;-><init>(Landroid/view/View;Landroid/view/View;IILsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view2:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    iget-object v2, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-direct {v0, v1, v2, v5, v6}, Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition;-><init>(Landroid/view/View;Landroid/view/View;II)V

    return-object v0

    :pswitch_3
    new-instance v0, Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition;

    iget-object v3, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view2:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    iget-object v4, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    sget-object v7, Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;->FROM_RIGHT:Lsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lsk/mimac/slideshow/gui/image/transition/CubeInsideTransition;-><init>(Landroid/view/View;Landroid/view/View;IILsk/mimac/slideshow/gui/image/transition/CubeTransition$Direction;)V

    return-object v0

    :pswitch_4
    new-instance v0, Lsk/mimac/slideshow/gui/image/transition/HideTransition;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view2:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    iget-object v2, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/gui/image/transition/HideTransition;-><init>(Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-object v0

    :pswitch_5
    new-instance v0, Lsk/mimac/slideshow/gui/image/transition/HorizontalFlipTransition;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view2:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    iget-object v2, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/gui/image/transition/HorizontalFlipTransition;-><init>(Landroid/view/View;Landroid/view/View;)V

    return-object v0

    :pswitch_6
    new-instance v0, Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view2:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    iget-object v2, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/gui/image/transition/VerticalFlipTransition;-><init>(Landroid/view/View;Landroid/view/View;)V

    return-object v0

    :pswitch_7
    new-instance v0, Lsk/mimac/slideshow/gui/image/transition/FoldTransition;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-direct {v0, v1}, Lsk/mimac/slideshow/gui/image/transition/FoldTransition;-><init>(Landroid/view/View;)V

    return-object v0

    :pswitch_8
    new-instance v0, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-direct {v0, v1}, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;-><init>(Landroid/view/View;)V

    return-object v0

    :pswitch_9
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v2, Landroid/view/animation/ScaleAnimation;

    int-to-float v5, v5

    div-float v12, v5, v3

    int-to-float v5, v6

    div-float v13, v5, v3

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x40000000    # 2.0f

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v1, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper;

    iget-object v2, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-direct {v1, v0, v2}, Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper;-><init>(Landroid/view/animation/Animation;Landroid/view/View;)V

    return-object v1

    :pswitch_a
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    int-to-float v2, v5

    div-float/2addr v2, v3

    int-to-float v5, v6

    div-float/2addr v5, v3

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    move-object v7, v1

    move v12, v2

    move v13, v5

    invoke-direct/range {v7 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/view/animation/RotateAnimation;

    const/high16 v3, 0x43b40000    # 360.0f

    invoke-direct {v1, v4, v3, v2, v5}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper;

    iget-object v2, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-direct {v1, v0, v2}, Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper;-><init>(Landroid/view/animation/Animation;Landroid/view/View;)V

    return-object v1

    :pswitch_b
    new-instance v0, Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper;

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    int-to-float v2, v5

    div-float v12, v2, v3

    int-to-float v2, v6

    div-float v13, v2, v3

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    iget-object v2, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper;-><init>(Landroid/view/animation/Animation;Landroid/view/View;)V

    return-object v0

    :pswitch_c
    new-instance v0, Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper;

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, v6

    invoke-direct {v1, v4, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iget-object v2, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper;-><init>(Landroid/view/animation/Animation;Landroid/view/View;)V

    return-object v0

    :pswitch_d
    new-instance v0, Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper;

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    neg-int v2, v6

    int-to-float v2, v2

    invoke-direct {v1, v4, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iget-object v2, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper;-><init>(Landroid/view/animation/Animation;Landroid/view/View;)V

    return-object v0

    :pswitch_e
    new-instance v0, Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper;

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    neg-int v2, v5

    int-to-float v2, v2

    invoke-direct {v1, v4, v2, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iget-object v2, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper;-><init>(Landroid/view/animation/Animation;Landroid/view/View;)V

    return-object v0

    :pswitch_f
    new-instance v0, Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper;

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, v5

    invoke-direct {v1, v4, v2, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iget-object v2, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper;-><init>(Landroid/view/animation/Animation;Landroid/view/View;)V

    return-object v0

    :pswitch_10
    new-instance v0, Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper;

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v1, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-direct {v0, v2, v1}, Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper;-><init>(Landroid/view/animation/Animation;Landroid/view/View;)V

    return-object v0

    :pswitch_11
    new-instance v0, Lsk/mimac/slideshow/gui/image/transition/CrossfadeTransition;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view2:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    iget-object v2, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/gui/image/transition/CrossfadeTransition;-><init>(Landroid/view/View;Landroid/view/View;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private prepareTransition()Lsk/mimac/slideshow/gui/image/transition/Transition;
    .locals 2

    iget v0, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->transitionLength:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->createTransition()Lsk/mimac/slideshow/gui/image/transition/Transition;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget v1, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->transitionLength:I

    invoke-interface {v0, v1}, Lsk/mimac/slideshow/gui/image/transition/Transition;->setDuration(I)Lsk/mimac/slideshow/gui/image/transition/Transition;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method private show(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->showInternal(Landroid/graphics/drawable/Drawable;Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view2:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view2:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    return-void
.end method

.method private showInternal(Landroid/graphics/drawable/Drawable;Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)V
    .locals 1

    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    const v0, 0x106000d

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->resetZoom()V

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    invoke-virtual {p2, p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p2, v0, :cond_0

    invoke-static {p1}, LV/a;->C(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Ll1/a;->c(Ljava/lang/Object;)Landroid/graphics/drawable/AnimatedImageDrawable;

    move-result-object p2

    invoke-static {p2}, Ll1/a;->i(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    :cond_0
    instance-of p2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p2, :cond_1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    :cond_1
    return-void
.end method

.method private swapViews()V
    .locals 4

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view2:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    iput-object v1, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    iput-object v0, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view2:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getBitmapHeight()I
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getBitmapWidth()I
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view2:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view2:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method

.method public setAnimation(IILjava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Set<",
            "Lsk/mimac/slideshow/enums/AnimationType;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->prepareTransition()Lsk/mimac/slideshow/gui/image/transition/Transition;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->nextTransition:Lsk/mimac/slideshow/gui/image/transition/Transition;

    instance-of v0, v0, Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->transitionLength:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr p1, v0

    add-int/lit16 p1, p1, 0x320

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-virtual {p0, v0, p1, p2, p3}, Lsk/mimac/slideshow/gui/image/ImageViewWrapper;->prepareAnimation(Landroid/widget/ImageView;IILjava/util/Set;)Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p2, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->nextTransition:Lsk/mimac/slideshow/gui/image/transition/Transition;

    instance-of p2, p2, Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper;

    if-eqz p2, :cond_1

    new-instance p2, Landroid/view/animation/AnimationSet;

    invoke-direct {p2, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {p2, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->nextTransition:Lsk/mimac/slideshow/gui/image/transition/Transition;

    check-cast p1, Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper;

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5f5e100

    add-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->setStartTime(J)V

    invoke-virtual {p2, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object p1, p2

    :cond_1
    iget-object p2, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-virtual {p2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p2

    if-eqz p2, :cond_2

    new-instance p2, Landroid/view/animation/AnimationSet;

    invoke-direct {p2, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iget-object p3, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-virtual {p3}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p2, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object p1, p2

    :cond_2
    iget-object p2, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    return-void
.end method

.method public setScaleTypeInternal(Lsk/mimac/slideshow/enums/ScaleType;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/widget/ImageView$ScaleType;->valueOf(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;

    move-result-object p1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view2:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public setTransition(Lsk/mimac/slideshow/enums/TransitionType;I)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->transitionType:Lsk/mimac/slideshow/enums/TransitionType;

    iput p2, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->transitionLength:I

    return-void
.end method

.method public setZoomPan(Z)V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/gui/image/touch/TouchImageView;->setZoomEnabled(Z)V

    return-void
.end method

.method public showWithTransition(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view2:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->show(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->swapViews()V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->nextTransition:Lsk/mimac/slideshow/gui/image/transition/Transition;

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->show(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->showInternal(Landroid/graphics/drawable/Drawable;Lsk/mimac/slideshow/gui/image/touch/TouchImageView;)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view1:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :try_start_0
    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->nextTransition:Lsk/mimac/slideshow/gui/image/transition/Transition;

    instance-of v0, p1, Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper;

    if-eqz v0, :cond_4

    check-cast p1, Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper;

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/image/transition/TransitionAnimationWrapper;->startAnimation()V

    :goto_0
    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->nextTransition:Lsk/mimac/slideshow/gui/image/transition/Transition;

    instance-of v0, p1, Lsk/mimac/slideshow/gui/image/transition/CrossfadeTransition;

    if-eqz v0, :cond_5

    check-cast p1, Lsk/mimac/slideshow/gui/image/transition/CrossfadeTransition;

    invoke-virtual {p1}, Lsk/mimac/slideshow/gui/image/transition/CrossfadeTransition;->startFollowingAnimation()V

    goto :goto_2

    :cond_4
    invoke-interface {p1}, Lsk/mimac/slideshow/gui/image/transition/Transition;->startAnimation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->LOG:Lorg/slf4j/Logger;

    iget-object v1, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->nextTransition:Lsk/mimac/slideshow/gui/image/transition/Transition;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Can\'t display transition {}: {}"

    invoke-interface {v0, v2, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view2:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->view2:Lsk/mimac/slideshow/gui/image/touch/TouchImageView;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    :cond_5
    :goto_2
    const/4 p1, 0x0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/image/ImageViewWrapperImpl2;->nextTransition:Lsk/mimac/slideshow/gui/image/transition/Transition;

    :cond_6
    :goto_3
    return-void
.end method
