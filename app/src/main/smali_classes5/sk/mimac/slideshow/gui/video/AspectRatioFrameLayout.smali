.class public final Lsk/mimac/slideshow/gui/video/AspectRatioFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private resizeMode:Lsk/mimac/slideshow/enums/ScaleType;

.field private videoAspectRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lsk/mimac/slideshow/enums/ScaleType;->FIT_CENTER:Lsk/mimac/slideshow/enums/ScaleType;

    iput-object p1, p0, Lsk/mimac/slideshow/gui/video/AspectRatioFrameLayout;->resizeMode:Lsk/mimac/slideshow/enums/ScaleType;

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget p1, p0, Lsk/mimac/slideshow/gui/video/AspectRatioFrameLayout;->videoAspectRatio:F

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v1, p1

    int-to-float v2, v0

    div-float v3, v1, v2

    iget v4, p0, Lsk/mimac/slideshow/gui/video/AspectRatioFrameLayout;->videoAspectRatio:F

    div-float/2addr v4, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v5, 0x3c23d70a    # 0.01f

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_1

    return-void

    :cond_1
    sget-object v3, Lsk/mimac/slideshow/gui/video/AspectRatioFrameLayout$1;->$SwitchMap$sk$mimac$slideshow$enums$ScaleType:[I

    iget-object v5, p0, Lsk/mimac/slideshow/gui/video/AspectRatioFrameLayout;->resizeMode:Lsk/mimac/slideshow/enums/ScaleType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v3, v3, v5

    const/4 v5, 0x1

    if-eq v3, v5, :cond_5

    const/4 v5, 0x2

    if-eq v3, v5, :cond_5

    const/4 v5, 0x3

    if-eq v3, v5, :cond_2

    goto :goto_1

    :cond_2
    cmpl-float p2, v4, p2

    if-lez p2, :cond_4

    :cond_3
    iget p2, p0, Lsk/mimac/slideshow/gui/video/AspectRatioFrameLayout;->videoAspectRatio:F

    div-float/2addr v1, p2

    float-to-int v0, v1

    goto :goto_1

    :cond_4
    :goto_0
    iget p1, p0, Lsk/mimac/slideshow/gui/video/AspectRatioFrameLayout;->videoAspectRatio:F

    mul-float v2, v2, p1

    float-to-int p1, v2

    goto :goto_1

    :cond_5
    cmpl-float p2, v4, p2

    if-lez p2, :cond_3

    goto :goto_0

    :goto_1
    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setAspectRatio(F)V
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/gui/video/AspectRatioFrameLayout;->videoAspectRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lsk/mimac/slideshow/gui/video/AspectRatioFrameLayout;->videoAspectRatio:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setResizeMode(Lsk/mimac/slideshow/enums/ScaleType;)V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/video/AspectRatioFrameLayout;->resizeMode:Lsk/mimac/slideshow/enums/ScaleType;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/video/AspectRatioFrameLayout;->resizeMode:Lsk/mimac/slideshow/enums/ScaleType;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method
