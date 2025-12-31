.class public Lsk/mimac/slideshow/gui/PercentageLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private displayId:Ljava/lang/String;

.field private displayIdInt:I

.field private displayInterface:Lsk/mimac/slideshow/display/DisplayInterface;

.field private mainDisplay:Z

.field private rotation:I

.field private window:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsk/mimac/slideshow/gui/PercentageLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lsk/mimac/slideshow/gui/PercentageLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0xc8

    invoke-static {p1, p1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget p2, p0, Lsk/mimac/slideshow/gui/PercentageLayout;->rotation:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;

    return p1
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    new-instance v0, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;

    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {v0, v1, v1, v2, v2}, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;-><init>(FFFF)V

    return-object v0
.end method

.method public getDisplayId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/PercentageLayout;->displayId:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayIdInt()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/gui/PercentageLayout;->displayIdInt:I

    return v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/PercentageLayout;->window:Landroid/view/Window;

    return-object v0
.end method

.method public isMainDisplay()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/gui/PercentageLayout;->mainDisplay:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/gui/PercentageLayout;->displayInterface:Lsk/mimac/slideshow/display/DisplayInterface;

    invoke-interface {v0}, Lsk/mimac/slideshow/display/DisplayInterface;->getDisplayHelper()Lsk/mimac/slideshow/display/DisplayHelper;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/display/DisplayHelper;->getTouchListener()Lsk/mimac/slideshow/utils/TouchListener;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lsk/mimac/slideshow/utils/TouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_7

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;

    invoke-static {v6}, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->access$200(Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;)F

    move-result v7

    invoke-static {v6}, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->access$300(Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;)F

    move-result v8

    invoke-static {v6}, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->access$100(Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;)F

    move-result v9

    invoke-static {v6}, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->access$000(Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;)F

    move-result v10

    iget v11, v0, Lsk/mimac/slideshow/gui/PercentageLayout;->rotation:I

    const/16 v12, 0xb4

    const/16 v13, 0x10e

    const/16 v14, 0x5a

    const/high16 v15, 0x42c80000    # 100.0f

    if-ne v11, v14, :cond_0

    invoke-static {v6}, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->access$300(Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;)F

    move-result v7

    invoke-static {v6}, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->access$000(Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;)F

    move-result v8

    add-float/2addr v8, v7

    sub-float v7, v15, v8

    invoke-static {v6}, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->access$200(Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;)F

    move-result v8

    :goto_1
    invoke-static {v6}, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->access$000(Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;)F

    move-result v9

    invoke-static {v6}, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->access$100(Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;)F

    move-result v10

    goto :goto_2

    :cond_0
    if-ne v11, v13, :cond_1

    invoke-static {v6}, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->access$300(Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;)F

    move-result v7

    invoke-static {v6}, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->access$200(Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;)F

    move-result v8

    invoke-static {v6}, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->access$100(Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;)F

    move-result v9

    add-float/2addr v9, v8

    sub-float v8, v15, v9

    goto :goto_1

    :cond_1
    if-ne v11, v12, :cond_2

    invoke-static {v6}, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->access$200(Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;)F

    move-result v7

    invoke-static {v6}, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->access$100(Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;)F

    move-result v8

    add-float/2addr v8, v7

    sub-float v7, v15, v8

    invoke-static {v6}, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->access$300(Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;)F

    move-result v8

    invoke-static {v6}, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->access$000(Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;)F

    move-result v11

    add-float/2addr v11, v8

    sub-float v8, v15, v11

    :cond_2
    :goto_2
    int-to-float v11, v1

    mul-float v16, v11, v7

    div-float v16, v16, v15

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v16

    add-float/2addr v7, v9

    mul-float v7, v7, v11

    div-float/2addr v7, v15

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v9, v2

    mul-float v11, v9, v8

    div-float/2addr v11, v15

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-float/2addr v8, v10

    mul-float v8, v8, v9

    div-float/2addr v8, v15

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget v9, v0, Lsk/mimac/slideshow/gui/PercentageLayout;->rotation:I

    if-eqz v9, :cond_3

    add-int v10, v7, v16

    div-int/lit8 v10, v10, 0x2

    add-int v15, v8, v11

    div-int/lit8 v15, v15, 0x2

    if-ne v9, v14, :cond_4

    sub-int/2addr v11, v15

    sub-int v9, v10, v11

    sub-int v16, v16, v10

    add-int v11, v16, v15

    sub-int/2addr v8, v15

    sub-int v16, v10, v8

    sub-int/2addr v7, v10

    add-int v8, v7, v15

    :goto_3
    move v7, v9

    :cond_3
    move/from16 v9, v16

    goto :goto_4

    :cond_4
    if-ne v9, v13, :cond_5

    sub-int/2addr v11, v15

    add-int/2addr v11, v10

    sub-int v16, v16, v10

    sub-int v9, v15, v16

    sub-int/2addr v8, v15

    add-int/2addr v8, v10

    sub-int/2addr v7, v10

    sub-int v7, v15, v7

    move/from16 v17, v11

    move v11, v7

    move v7, v8

    move v8, v9

    move/from16 v9, v17

    goto :goto_4

    :cond_5
    if-ne v9, v12, :cond_3

    sub-int v16, v16, v10

    sub-int v9, v10, v16

    sub-int/2addr v8, v15

    sub-int v8, v15, v8

    sub-int/2addr v7, v10

    sub-int v16, v10, v7

    sub-int/2addr v11, v15

    sub-int v7, v15, v11

    move v11, v8

    move v8, v7

    goto :goto_3

    :goto_4
    sub-int v10, v7, v9

    iput v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int v10, v8, v11

    iput v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v5, v9, v11, v7, v8}, Landroid/view/View;->layout(IIII)V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public onMeasure(II)V
    .locals 10

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    iget v2, p0, Lsk/mimac/slideshow/gui/PercentageLayout;->rotation:I

    const/16 v3, 0x5a

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    :goto_2
    if-ge v4, v3, :cond_5

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;

    int-to-float v7, v0

    if-eqz v2, :cond_2

    invoke-static {v6}, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->access$000(Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;)F

    move-result v8

    goto :goto_3

    :cond_2
    invoke-static {v6}, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->access$100(Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;)F

    move-result v8

    :goto_3
    mul-float v7, v7, v8

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v9, v1

    if-eqz v2, :cond_3

    invoke-static {v6}, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->access$100(Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;)F

    move-result v6

    goto :goto_4

    :cond_3
    invoke-static {v6}, Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;->access$000(Lsk/mimac/slideshow/gui/PercentageLayout$LayoutParams;)F

    move-result v6

    :goto_4
    mul-float v9, v9, v6

    div-float/2addr v9, v8

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v7, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v6, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {p0, v5, v7, v6}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setDisplayId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/PercentageLayout;->displayId:Ljava/lang/String;

    return-void
.end method

.method public setDisplayIdInt(I)V
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/gui/PercentageLayout;->displayIdInt:I

    return-void
.end method

.method public setDisplayInterface(Lsk/mimac/slideshow/display/DisplayInterface;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/PercentageLayout;->displayInterface:Lsk/mimac/slideshow/display/DisplayInterface;

    return-void
.end method

.method public setMainDisplay(Z)V
    .locals 0

    iput-boolean p1, p0, Lsk/mimac/slideshow/gui/PercentageLayout;->mainDisplay:Z

    return-void
.end method

.method public setRotation(I)V
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/gui/PercentageLayout;->rotation:I

    return-void
.end method

.method public setWindow(Landroid/view/Window;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/gui/PercentageLayout;->window:Landroid/view/Window;

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
