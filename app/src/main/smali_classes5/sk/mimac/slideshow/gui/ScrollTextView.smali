.class public Lsk/mimac/slideshow/gui/ScrollTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private onScrollDoneListener:Lsk/mimac/slideshow/utils/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsk/mimac/slideshow/utils/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private playId:I

.field private scrollSpeed:I

.field private scroller:Landroid/widget/Scroller;

.field private startX:Ljava/lang/Integer;

.field private startY:Ljava/lang/Integer;

.field private stopped:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lsk/mimac/slideshow/gui/ScrollTextView;->stopped:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    invoke-static {p0}, LA/a;->t(Lsk/mimac/slideshow/gui/ScrollTextView;)V

    :cond_0
    return-void
.end method

.method private calculateScrollingHeight()I
    .locals 9

    new-instance v8, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    invoke-virtual {v8}, Landroid/text/Layout;->getHeight()I

    move-result v0

    return v0
.end method

.method private calculateScrollingWidth()I
    .locals 11

    const/4 v0, 0x0

    const v1, 0x9c40

    const/4 v2, 0x0

    :goto_0
    const v3, 0xf4240

    if-gt v1, v3, :cond_1

    new-instance v10, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v2, v10

    move v5, v1

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    invoke-virtual {v10, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v2

    float-to-int v2, v2

    int-to-double v3, v2

    const-wide v5, 0x3ff199999999999aL    # 1.1

    mul-double v3, v3, v5

    int-to-double v5, v1

    cmpg-double v7, v3, v5

    if-gez v7, :cond_0

    return v2

    :cond_0
    mul-int/lit8 v1, v1, 0x5

    goto :goto_0

    :cond_1
    return v2
.end method

.method private setScrollSpeed(I)V
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/gui/ScrollTextView;->scrollSpeed:I

    return-void
.end method

.method private startScroll(ZZ)V
    .locals 8

    iget-boolean v0, p0, Lsk/mimac/slideshow/gui/ScrollTextView;->stopped:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/ScrollTextView;->stopScroll()V

    :cond_0
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lsk/mimac/slideshow/gui/ScrollTextView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setScroller(Landroid/widget/Scroller;)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ScrollTextView;->startX:Ljava/lang/Integer;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/gui/ScrollTextView;->startX:Ljava/lang/Integer;

    :cond_1
    iget-object v0, p0, Lsk/mimac/slideshow/gui/ScrollTextView;->startY:Ljava/lang/Integer;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/gui/ScrollTextView;->startY:Ljava/lang/Integer;

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsk/mimac/slideshow/gui/ScrollTextView;->stopped:Z

    if-eqz p2, :cond_6

    invoke-direct {p0}, Lsk/mimac/slideshow/gui/ScrollTextView;->calculateScrollingWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v1, p0, Lsk/mimac/slideshow/gui/ScrollTextView;->onScrollDoneListener:Lsk/mimac/slideshow/utils/Consumer;

    iget v2, p0, Lsk/mimac/slideshow/gui/ScrollTextView;->playId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lsk/mimac/slideshow/utils/Consumer;->accept(Ljava/lang/Object;)V

    :cond_3
    add-int/2addr p2, v0

    iget v1, p0, Lsk/mimac/slideshow/gui/ScrollTextView;->scrollSpeed:I

    div-int v1, p2, v1

    mul-int/lit8 v7, v1, 0x14

    iget-object v2, p0, Lsk/mimac/slideshow/gui/ScrollTextView;->scroller:Landroid/widget/Scroller;

    if-eqz p1, :cond_4

    sub-int v0, p2, v0

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_4
    neg-int v0, v0

    goto :goto_0

    :goto_1
    if-eqz p1, :cond_5

    neg-int p2, p2

    :cond_5
    move v5, p2

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Lsk/mimac/slideshow/gui/ScrollTextView;->calculateScrollingHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    if-nez p2, :cond_7

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ScrollTextView;->onScrollDoneListener:Lsk/mimac/slideshow/utils/Consumer;

    iget v1, p0, Lsk/mimac/slideshow/gui/ScrollTextView;->playId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lsk/mimac/slideshow/utils/Consumer;->accept(Ljava/lang/Object;)V

    :cond_7
    add-int/lit8 v0, p2, 0x8

    add-int v5, v0, p1

    iget p1, p0, Lsk/mimac/slideshow/gui/ScrollTextView;->scrollSpeed:I

    div-int p1, v5, p1

    mul-int/lit8 v6, p1, 0x14

    iget-object v1, p0, Lsk/mimac/slideshow/gui/ScrollTextView;->scroller:Landroid/widget/Scroller;

    neg-int v3, p2

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    :goto_2
    return-void
.end method

.method private stopScroll()V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ScrollTextView;->scroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lsk/mimac/slideshow/gui/ScrollTextView;->stopped:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsk/mimac/slideshow/gui/ScrollTextView;->stopped:Z

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ScrollTextView;->startX:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setScrollX(I)V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ScrollTextView;->startY:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setScrollY(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->computeScroll()V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ScrollTextView;->scroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lsk/mimac/slideshow/gui/ScrollTextView;->stopped:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsk/mimac/slideshow/gui/ScrollTextView;->stopped:Z

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ScrollTextView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v0, p0, Lsk/mimac/slideshow/gui/ScrollTextView;->onScrollDoneListener:Lsk/mimac/slideshow/utils/Consumer;

    iget v1, p0, Lsk/mimac/slideshow/gui/ScrollTextView;->playId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lsk/mimac/slideshow/utils/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setOnScrollDoneListener(Lsk/mimac/slideshow/utils/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsk/mimac/slideshow/utils/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lsk/mimac/slideshow/gui/ScrollTextView;->onScrollDoneListener:Lsk/mimac/slideshow/utils/Consumer;

    return-void
.end method

.method public setText(Lsk/mimac/slideshow/model/TextModel;II)V
    .locals 2

    iput p3, p0, Lsk/mimac/slideshow/gui/ScrollTextView;->playId:I

    int-to-float p2, p2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt p2, v1, :cond_0

    invoke-virtual {p1}, Lsk/mimac/slideshow/model/TextModel;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p0}, LV/a;->l(Lsk/mimac/slideshow/gui/ScrollTextView;)Landroid/text/PrecomputedText$Params;

    move-result-object v1

    invoke-static {p2, v1}, LV/a;->m(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;)Landroid/text/PrecomputedText;

    move-result-object p2

    :goto_0
    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lsk/mimac/slideshow/model/TextModel;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Lsk/mimac/slideshow/model/TextModel;->getTextColor()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1}, Lsk/mimac/slideshow/model/TextModel;->isVerticalScroll()Z

    move-result p2

    const/4 v1, 0x1

    xor-int/2addr p2, v1

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    invoke-virtual {p1}, Lsk/mimac/slideshow/model/TextModel;->isVerticalScroll()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lsk/mimac/slideshow/model/TextModel;->isHorizontalScroll()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_3

    :cond_1
    const/16 p2, 0x11

    :goto_2
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_4

    :cond_2
    :goto_3
    const/16 p2, 0x13

    goto :goto_2

    :goto_4
    invoke-virtual {p1}, Lsk/mimac/slideshow/model/TextModel;->isToRight()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x4

    goto :goto_5

    :cond_3
    const/4 p2, 0x3

    :goto_5
    invoke-virtual {p0, p2}, Landroid/view/View;->setTextDirection(I)V

    invoke-virtual {p1}, Lsk/mimac/slideshow/model/TextModel;->isHorizontalScroll()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lsk/mimac/slideshow/model/TextModel;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_4

    invoke-virtual {p1}, Lsk/mimac/slideshow/model/TextModel;->getScrollSpeed()I

    move-result p2

    invoke-direct {p0, p2}, Lsk/mimac/slideshow/gui/ScrollTextView;->setScrollSpeed(I)V

    invoke-virtual {p1}, Lsk/mimac/slideshow/model/TextModel;->isToRight()Z

    move-result p1

    invoke-direct {p0, p1, v1}, Lsk/mimac/slideshow/gui/ScrollTextView;->startScroll(ZZ)V

    goto :goto_6

    :cond_4
    invoke-direct {p0}, Lsk/mimac/slideshow/gui/ScrollTextView;->stopScroll()V

    iget-object p1, p0, Lsk/mimac/slideshow/gui/ScrollTextView;->onScrollDoneListener:Lsk/mimac/slideshow/utils/Consumer;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lsk/mimac/slideshow/utils/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_6

    :cond_5
    invoke-virtual {p1}, Lsk/mimac/slideshow/model/TextModel;->isVerticalScroll()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lsk/mimac/slideshow/model/TextModel;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_4

    invoke-virtual {p1}, Lsk/mimac/slideshow/model/TextModel;->getScrollSpeed()I

    move-result p1

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/gui/ScrollTextView;->setScrollSpeed(I)V

    invoke-direct {p0, v0, v0}, Lsk/mimac/slideshow/gui/ScrollTextView;->startScroll(ZZ)V

    goto :goto_6

    :cond_6
    invoke-direct {p0}, Lsk/mimac/slideshow/gui/ScrollTextView;->stopScroll()V

    :goto_6
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lsk/mimac/slideshow/gui/ScrollTextView;->stopScroll()V

    :cond_1
    return-void
.end method
