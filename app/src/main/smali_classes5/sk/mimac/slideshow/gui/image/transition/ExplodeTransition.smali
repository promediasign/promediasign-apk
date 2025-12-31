.class public Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsk/mimac/slideshow/gui/image/transition/Transition;


# static fields
.field private static final INTERPOLATOR:Landroid/animation/TimeInterpolator;


# instance fields
.field private duration:J

.field private parentView:Landroid/view/ViewGroup;

.field private final view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;->view:Landroid/view/View;

    return-void
.end method

.method public static synthetic access$000(Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;->parentView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static synthetic access$002(Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;->parentView:Landroid/view/ViewGroup;

    return-object p1
.end method

.method public static synthetic access$100(Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;->view:Landroid/view/View;

    return-object p0
.end method

.method private sideTranslation(III)[I
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_0

    neg-int v0, p2

    aput v0, v1, v2

    neg-int p3, p3

    aput p3, v1, v3

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    neg-int v0, p2

    aput v0, v1, v2

    aput p3, v1, v3

    :cond_1
    :goto_0
    if-ne p1, v3, :cond_2

    neg-int p1, p2

    aput p1, v1, v2

    aput v2, v1, v3

    :cond_2
    return-object v1
.end method


# virtual methods
.method public setDuration(I)Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;
    .locals 2

    .line 1
    int-to-long v0, p1

    iput-wide v0, p0, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;->duration:J

    return-object p0
.end method

.method public bridge synthetic setDuration(I)Lsk/mimac/slideshow/gui/image/transition/Transition;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;->setDuration(I)Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;

    move-result-object p1

    return-object p1
.end method

.method public startAnimation()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, v0, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x3

    new-array v3, v2, [Landroid/widget/LinearLayout;

    iget-object v4, v0, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, v0, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;->parentView:Landroid/view/ViewGroup;

    iget-object v4, v0, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v6, v0, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;->view:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v6, v0, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;->view:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_0

    iget-object v1, v0, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;->view:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    return-void

    :cond_0
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/2addr v7, v2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    div-int/2addr v8, v2

    const/16 v9, 0x9

    new-array v10, v9, [Landroid/widget/ImageView;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v11, v9, :cond_6

    rem-int/lit8 v14, v11, 0x3

    if-nez v14, :cond_2

    if-eqz v11, :cond_1

    add-int/lit8 v13, v13, 0x1

    :cond_1
    new-instance v12, Landroid/widget/LinearLayout;

    iget-object v14, v0, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;->view:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v12, v14}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    aput-object v12, v3, v13

    invoke-virtual {v12, v5}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-direct {v0, v13, v7, v8}, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;->sideTranslation(III)[I

    move-result-object v12

    aget v14, v12, v5

    aget v12, v12, v4

    move v15, v14

    move v14, v12

    const/4 v12, 0x0

    goto :goto_2

    :cond_2
    const/4 v15, 0x2

    if-ne v14, v15, :cond_3

    neg-int v14, v7

    invoke-direct {v0, v13, v14, v8}, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;->sideTranslation(III)[I

    move-result-object v14

    aget v15, v14, v5

    aget v14, v14, v4

    goto :goto_2

    :cond_3
    if-ne v12, v4, :cond_5

    if-nez v13, :cond_4

    neg-int v14, v8

    :goto_1
    const/4 v15, 0x0

    goto :goto_2

    :cond_4
    if-ne v13, v15, :cond_5

    move v14, v8

    goto :goto_1

    :cond_5
    const/4 v14, 0x0

    goto :goto_1

    :goto_2
    new-instance v9, Landroid/widget/ImageView;

    iget-object v5, v0, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v9, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v9, v10, v11

    mul-int v5, v7, v12

    mul-int v2, v8, v13

    invoke-static {v6, v5, v2, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    aget-object v2, v10, v11

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-float v5, v15

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-float v5, v14

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v5, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-wide v14, v0, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;->duration:J

    invoke-virtual {v2, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    aget-object v2, v3, v13

    aget-object v5, v10, v11

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/2addr v12, v4

    add-int/lit8 v11, v11, 0x1

    const/4 v2, 0x3

    const/4 v5, 0x0

    const/16 v9, 0x9

    goto/16 :goto_0

    :cond_6
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v2, :cond_7

    aget-object v5, v3, v4

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    iget-object v2, v0, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;->parentView:Landroid/view/ViewGroup;

    iget-object v3, v0, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;->view:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    iget-object v3, v0, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;->parentView:Landroid/view/ViewGroup;

    iget-object v4, v0, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;->view:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v3, v0, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    :goto_4
    iget-object v4, v0, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, v0, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;->parentView:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v4, v0, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, v0, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;->parentView:Landroid/view/ViewGroup;

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    aget-object v3, v10, v5

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition$1;

    invoke-direct {v4, v0, v1, v2}, Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition$1;-><init>(Lsk/mimac/slideshow/gui/image/transition/ExplodeTransition;Landroid/widget/LinearLayout;I)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
