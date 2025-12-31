.class public Landroidx/recyclerview/widget/GridLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;,
        Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;,
        Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    }
.end annotation


# instance fields
.field mCachedBorders:[I

.field final mDecorInsets:Landroid/graphics/Rect;

.field mPendingSpanCountChange:Z

.field final mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

.field final mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

.field mSet:[Landroid/view/View;

.field mSpanCount:I

.field mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;

    move-result-object p1

    iget p1, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method private assignSpans(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;IIZ)V
    .locals 3

    const/4 p4, 0x0

    if-eqz p5, :cond_0

    const/4 p5, 0x1

    move p5, p3

    const/4 p3, 0x0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p3, p3, -0x1

    const/4 p5, -0x1

    const/4 v0, -0x1

    :goto_0
    if-eq p3, p5, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v1, v1, p3

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSize(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v1

    iput v1, v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    iput p4, v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    add-int/2addr p4, v1

    add-int/2addr p3, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private cachePreLayoutSpanMapping()V
    .locals 6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v3

    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v2

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private calculateItemBorders(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->calculateItemBorders([III)[I

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    return-void
.end method

.method public static calculateItemBorders([III)[I
    .locals 5

    .line 2
    const/4 v0, 0x1

    if-eqz p0, :cond_0

    array-length v1, p0

    add-int/lit8 v2, p1, 0x1

    if-ne v1, v2, :cond_0

    array-length v1, p0

    sub-int/2addr v1, v0

    aget v1, p0, v1

    if-eq v1, p2, :cond_1

    :cond_0
    add-int/lit8 p0, p1, 0x1

    new-array p0, p0, [I

    :cond_1
    const/4 v1, 0x0

    aput v1, p0, v1

    div-int v2, p2, p1

    rem-int/2addr p2, p1

    const/4 v3, 0x0

    :goto_0
    if-gt v0, p1, :cond_3

    add-int/2addr v1, p2

    if-lez v1, :cond_2

    sub-int v4, p1, v1

    if-ge v4, p2, :cond_2

    add-int/lit8 v4, v2, 0x1

    sub-int/2addr v1, p1

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    add-int/2addr v3, v4

    aput v3, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method private clearPreLayoutSpanMappingCache()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method private ensureAnchorIsInCorrectSpan(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;I)V
    .locals 4

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    iget v1, p3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v1

    if-eqz p4, :cond_1

    :goto_1
    if-lez v1, :cond_3

    iget p4, p3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    if-lez p4, :cond_3

    add-int/lit8 p4, p4, -0x1

    iput p4, p3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, p4}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p4

    sub-int/2addr p4, v0

    iget v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    :goto_2
    if-ge v0, p4, :cond_2

    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, p1, p2, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v3

    if-le v3, v1, :cond_2

    move v0, v2

    move v1, v3

    goto :goto_2

    :cond_2
    iput v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    :cond_3
    return-void
.end method

.method private ensureViewSet()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    if-eqz v0, :cond_0

    array-length v0, v0

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    :cond_1
    return-void
.end method

.method private getSpanGroupIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I
    .locals 0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    iget p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p1, p3, p2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Cannot find span size for pre layout position. "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    iget p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p2, p1, p3}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result p1

    return p1
.end method

.method private getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I
    .locals 1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    iget p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p1, p3, p2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result p1

    return p1

    :cond_0
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-eq p2, v0, :cond_1

    return p2

    :cond_1
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result p1

    if-ne p1, v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_2
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    iget p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p2, p1, p3}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result p1

    return p1
.end method

.method private getSpanSize(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I
    .locals 1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result p1

    return p1

    :cond_0
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-eq p2, v0, :cond_1

    return p2

    :cond_1
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result p1

    if-ne p1, v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GridLayoutManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_2
    iget-object p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result p1

    return p1
.end method

.method private guessMeasurement(FI)V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->calculateItemBorders(I)V

    return-void
.end method

.method private measureChild(Landroid/view/View;IZ)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v1

    iget v1, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v4, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    invoke-virtual {p0, v1, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v1

    iget v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v1, p2, v3, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v3

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v1, v3, v2, v0, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v1, p2, v2, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v1, v2, v3, v0, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    move v7, v0

    move v0, p2

    move p2, v7

    :goto_0
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    return-void
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz p4, :cond_0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->shouldReMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result p4

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result p4

    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_1
    return-void
.end method

.method private updateMeasurements()V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    :goto_0
    sub-int/2addr v0, v1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v1

    goto :goto_0

    :goto_1
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->calculateItemBorders(I)V

    return-void
.end method


# virtual methods
.method public checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    return p1
.end method

.method public collectPrefetchPositionsForLayoutState(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 5

    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-ge v2, v3, :cond_0

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->hasMore(Landroidx/recyclerview/widget/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-lez v0, :cond_0

    iget v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-interface {p3, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v3

    sub-int/2addr v0, v3

    iget v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v3, v4

    iput v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public findReferenceChild(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;III)Landroid/view/View;
    .locals 7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->ensureLayoutState()V

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    if-le p4, p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    const/4 v3, 0x0

    move-object v4, v3

    :goto_1
    if-eq p3, p4, :cond_6

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    if-ltz v6, :cond_5

    if-ge v6, p5, :cond_5

    invoke-direct {p0, p1, p2, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v4, :cond_5

    move-object v4, v5

    goto :goto_3

    :cond_2
    iget-object v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    if-ge v6, v1, :cond_4

    iget-object v6, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    if-ge v6, v0, :cond_3

    goto :goto_2

    :cond_3
    return-object v5

    :cond_4
    :goto_2
    if-nez v3, :cond_5

    move-object v3, v5

    :cond_5
    :goto_3
    add-int/2addr p3, v2

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    move-object v3, v4

    :goto_4
    return-object v3
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 3

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-nez v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0

    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 2
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getColumnCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    return p1

    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method

.method public getRowCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    iget p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    return p1

    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result p1

    add-int/2addr p1, v1

    return p1
.end method

.method public getSpaceForSpanRange(II)I
    .locals 3

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    sub-int v2, v1, p1

    aget v2, v0, v2

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    aget p1, v0, v1

    sub-int/2addr v2, p1

    return v2

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    add-int/2addr p2, p1

    aget p2, v0, p2

    aget p1, v0, p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public layoutChunk(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;)V
    .locals 18

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v7, p3

    .line 8
    .line 9
    move-object/from16 v8, p4

    .line 10
    .line 11
    iget-object v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getModeInOther()I

    .line 14
    .line 15
    .line 16
    move-result v9

    .line 17
    const/4 v10, 0x1

    .line 18
    const/high16 v12, 0x40000000    # 2.0f

    .line 19
    .line 20
    if-eq v9, v12, :cond_0

    .line 21
    .line 22
    const/4 v13, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v13, 0x0

    .line 25
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-lez v0, :cond_1

    .line 30
    .line 31
    iget-object v0, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    .line 32
    .line 33
    iget v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 34
    .line 35
    aget v0, v0, v3

    .line 36
    .line 37
    move v14, v0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/4 v14, 0x0

    .line 40
    :goto_1
    if-eqz v13, :cond_2

    .line 41
    .line 42
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    .line 43
    .line 44
    .line 45
    :cond_2
    iget v0, v7, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 46
    .line 47
    if-ne v0, v10, :cond_3

    .line 48
    .line 49
    const/4 v15, 0x1

    .line 50
    goto :goto_2

    .line 51
    :cond_3
    const/4 v15, 0x0

    .line 52
    :goto_2
    iget v0, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 53
    .line 54
    if-nez v15, :cond_4

    .line 55
    .line 56
    iget v0, v7, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 57
    .line 58
    invoke-direct {v6, v1, v2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iget v3, v7, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 63
    .line 64
    invoke-direct {v6, v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSize(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    add-int/2addr v0, v3

    .line 69
    :cond_4
    const/4 v4, 0x0

    .line 70
    const/4 v5, 0x0

    .line 71
    :goto_3
    iget v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 72
    .line 73
    if-ge v5, v3, :cond_8

    .line 74
    .line 75
    invoke-virtual {v7, v2}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->hasMore(Landroidx/recyclerview/widget/RecyclerView$State;)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_8

    .line 80
    .line 81
    if-lez v0, :cond_8

    .line 82
    .line 83
    iget v3, v7, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 84
    .line 85
    invoke-direct {v6, v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSize(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    .line 86
    .line 87
    .line 88
    move-result v12

    .line 89
    iget v11, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 90
    .line 91
    if-gt v12, v11, :cond_7

    .line 92
    .line 93
    sub-int/2addr v0, v12

    .line 94
    if-gez v0, :cond_5

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_5
    invoke-virtual {v7, v1}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->next(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    if-nez v3, :cond_6

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_6
    add-int/2addr v4, v12

    .line 105
    iget-object v11, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 106
    .line 107
    aput-object v3, v11, v5

    .line 108
    .line 109
    add-int/lit8 v5, v5, 0x1

    .line 110
    .line 111
    const/high16 v12, 0x40000000    # 2.0f

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 115
    .line 116
    const-string v1, "Item at position "

    .line 117
    .line 118
    const-string v2, " requires "

    .line 119
    .line 120
    const-string v4, " spans but GridLayoutManager has only "

    .line 121
    .line 122
    invoke-static {v1, v3, v2, v12, v4}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    iget v2, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 127
    .line 128
    const-string v3, " spans."

    .line 129
    .line 130
    invoke-static {v3, v2, v1}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw v0

    .line 138
    :cond_8
    :goto_4
    if-nez v5, :cond_9

    .line 139
    .line 140
    iput-boolean v10, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 141
    .line 142
    return-void

    .line 143
    :cond_9
    move-object/from16 v0, p0

    .line 144
    .line 145
    move-object/from16 v1, p1

    .line 146
    .line 147
    move-object/from16 v2, p2

    .line 148
    .line 149
    move v3, v5

    .line 150
    move v11, v5

    .line 151
    move v5, v15

    .line 152
    invoke-direct/range {v0 .. v5}, Landroidx/recyclerview/widget/GridLayoutManager;->assignSpans(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;IIZ)V

    .line 153
    .line 154
    .line 155
    const/4 v0, 0x0

    .line 156
    const/4 v1, 0x0

    .line 157
    const/4 v2, 0x0

    .line 158
    :goto_5
    if-ge v1, v11, :cond_f

    .line 159
    .line 160
    iget-object v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 161
    .line 162
    aget-object v3, v3, v1

    .line 163
    .line 164
    iget-object v4, v7, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    .line 165
    .line 166
    if-nez v4, :cond_b

    .line 167
    .line 168
    if-eqz v15, :cond_a

    .line 169
    .line 170
    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    .line 171
    .line 172
    .line 173
    const/4 v4, 0x0

    .line 174
    goto :goto_6

    .line 175
    :cond_a
    const/4 v4, 0x0

    .line 176
    invoke-virtual {v6, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    .line 177
    .line 178
    .line 179
    goto :goto_6

    .line 180
    :cond_b
    const/4 v4, 0x0

    .line 181
    if-eqz v15, :cond_c

    .line 182
    .line 183
    invoke-virtual {v6, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;)V

    .line 184
    .line 185
    .line 186
    goto :goto_6

    .line 187
    :cond_c
    invoke-virtual {v6, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;I)V

    .line 188
    .line 189
    .line 190
    :goto_6
    iget-object v5, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 191
    .line 192
    invoke-virtual {v6, v3, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 193
    .line 194
    .line 195
    invoke-direct {v6, v3, v9, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    .line 196
    .line 197
    .line 198
    iget-object v4, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 199
    .line 200
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    .line 201
    .line 202
    .line 203
    move-result v4

    .line 204
    if-le v4, v2, :cond_d

    .line 205
    .line 206
    move v2, v4

    .line 207
    :cond_d
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    check-cast v4, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 212
    .line 213
    iget-object v5, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 214
    .line 215
    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    int-to-float v3, v3

    .line 220
    const/high16 v5, 0x3f800000    # 1.0f

    .line 221
    .line 222
    mul-float v3, v3, v5

    .line 223
    .line 224
    iget v4, v4, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 225
    .line 226
    int-to-float v4, v4

    .line 227
    div-float/2addr v3, v4

    .line 228
    cmpl-float v4, v3, v0

    .line 229
    .line 230
    if-lez v4, :cond_e

    .line 231
    .line 232
    move v0, v3

    .line 233
    :cond_e
    add-int/lit8 v1, v1, 0x1

    .line 234
    .line 235
    goto :goto_5

    .line 236
    :cond_f
    if-eqz v13, :cond_11

    .line 237
    .line 238
    invoke-direct {v6, v0, v14}, Landroidx/recyclerview/widget/GridLayoutManager;->guessMeasurement(FI)V

    .line 239
    .line 240
    .line 241
    const/4 v2, 0x0

    .line 242
    const/4 v4, 0x0

    .line 243
    :goto_7
    if-ge v4, v11, :cond_11

    .line 244
    .line 245
    iget-object v0, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 246
    .line 247
    aget-object v0, v0, v4

    .line 248
    .line 249
    const/high16 v1, 0x40000000    # 2.0f

    .line 250
    .line 251
    invoke-direct {v6, v0, v1, v10}, Landroidx/recyclerview/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    .line 252
    .line 253
    .line 254
    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 255
    .line 256
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    if-le v0, v2, :cond_10

    .line 261
    .line 262
    move v2, v0

    .line 263
    :cond_10
    add-int/lit8 v4, v4, 0x1

    .line 264
    .line 265
    goto :goto_7

    .line 266
    :cond_11
    const/4 v4, 0x0

    .line 267
    :goto_8
    if-ge v4, v11, :cond_14

    .line 268
    .line 269
    iget-object v0, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 270
    .line 271
    aget-object v0, v0, v4

    .line 272
    .line 273
    iget-object v1, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 274
    .line 275
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    if-eq v1, v2, :cond_13

    .line 280
    .line 281
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 286
    .line 287
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 288
    .line 289
    iget v5, v3, Landroid/graphics/Rect;->top:I

    .line 290
    .line 291
    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    .line 292
    .line 293
    add-int/2addr v5, v9

    .line 294
    iget v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 295
    .line 296
    add-int/2addr v5, v9

    .line 297
    iget v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 298
    .line 299
    add-int/2addr v5, v9

    .line 300
    iget v9, v3, Landroid/graphics/Rect;->left:I

    .line 301
    .line 302
    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 303
    .line 304
    add-int/2addr v9, v3

    .line 305
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 306
    .line 307
    add-int/2addr v9, v3

    .line 308
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 309
    .line 310
    add-int/2addr v9, v3

    .line 311
    iget v3, v1, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 312
    .line 313
    iget v12, v1, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 314
    .line 315
    invoke-virtual {v6, v3, v12}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    .line 316
    .line 317
    .line 318
    move-result v3

    .line 319
    iget v12, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 320
    .line 321
    if-ne v12, v10, :cond_12

    .line 322
    .line 323
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 324
    .line 325
    const/4 v12, 0x0

    .line 326
    const/high16 v13, 0x40000000    # 2.0f

    .line 327
    .line 328
    invoke-static {v3, v13, v9, v1, v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    sub-int v3, v2, v5

    .line 333
    .line 334
    invoke-static {v3, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 335
    .line 336
    .line 337
    move-result v3

    .line 338
    goto :goto_9

    .line 339
    :cond_12
    const/4 v12, 0x0

    .line 340
    const/high16 v13, 0x40000000    # 2.0f

    .line 341
    .line 342
    sub-int v9, v2, v9

    .line 343
    .line 344
    invoke-static {v9, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 345
    .line 346
    .line 347
    move-result v9

    .line 348
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 349
    .line 350
    invoke-static {v3, v13, v5, v1, v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    .line 351
    .line 352
    .line 353
    move-result v3

    .line 354
    move v1, v9

    .line 355
    :goto_9
    invoke-direct {v6, v0, v1, v3, v10}, Landroidx/recyclerview/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    .line 356
    .line 357
    .line 358
    goto :goto_a

    .line 359
    :cond_13
    const/4 v12, 0x0

    .line 360
    const/high16 v13, 0x40000000    # 2.0f

    .line 361
    .line 362
    :goto_a
    add-int/lit8 v4, v4, 0x1

    .line 363
    .line 364
    goto :goto_8

    .line 365
    :cond_14
    const/4 v12, 0x0

    .line 366
    iput v2, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 367
    .line 368
    iget v0, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 369
    .line 370
    const/4 v1, -0x1

    .line 371
    if-ne v0, v10, :cond_16

    .line 372
    .line 373
    iget v0, v7, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 374
    .line 375
    iget v4, v7, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 376
    .line 377
    if-ne v0, v1, :cond_15

    .line 378
    .line 379
    sub-int v0, v4, v2

    .line 380
    .line 381
    const/4 v1, 0x0

    .line 382
    const/4 v2, 0x0

    .line 383
    move/from16 v17, v4

    .line 384
    .line 385
    move v4, v0

    .line 386
    move/from16 v0, v17

    .line 387
    .line 388
    goto :goto_c

    .line 389
    :cond_15
    add-int v0, v4, v2

    .line 390
    .line 391
    const/4 v1, 0x0

    .line 392
    const/4 v2, 0x0

    .line 393
    goto :goto_c

    .line 394
    :cond_16
    iget v0, v7, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 395
    .line 396
    iget v4, v7, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 397
    .line 398
    if-ne v0, v1, :cond_17

    .line 399
    .line 400
    sub-int v0, v4, v2

    .line 401
    .line 402
    move v1, v0

    .line 403
    move v2, v4

    .line 404
    :goto_b
    const/4 v0, 0x0

    .line 405
    const/4 v4, 0x0

    .line 406
    goto :goto_c

    .line 407
    :cond_17
    add-int v0, v4, v2

    .line 408
    .line 409
    move v2, v0

    .line 410
    move v1, v4

    .line 411
    goto :goto_b

    .line 412
    :goto_c
    if-ge v12, v11, :cond_1c

    .line 413
    .line 414
    iget-object v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 415
    .line 416
    aget-object v7, v3, v12

    .line 417
    .line 418
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 419
    .line 420
    .line 421
    move-result-object v3

    .line 422
    move-object v9, v3

    .line 423
    check-cast v9, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 424
    .line 425
    iget v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    .line 426
    .line 427
    if-ne v3, v10, :cond_19

    .line 428
    .line 429
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    .line 430
    .line 431
    .line 432
    move-result v1

    .line 433
    if-eqz v1, :cond_18

    .line 434
    .line 435
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 436
    .line 437
    .line 438
    move-result v1

    .line 439
    iget-object v2, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    .line 440
    .line 441
    iget v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 442
    .line 443
    iget v5, v9, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 444
    .line 445
    sub-int/2addr v3, v5

    .line 446
    aget v2, v2, v3

    .line 447
    .line 448
    add-int/2addr v1, v2

    .line 449
    iget-object v2, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 450
    .line 451
    invoke-virtual {v2, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    .line 452
    .line 453
    .line 454
    move-result v2

    .line 455
    sub-int v2, v1, v2

    .line 456
    .line 457
    move v13, v0

    .line 458
    move v15, v1

    .line 459
    move v14, v2

    .line 460
    :goto_d
    move/from16 v16, v4

    .line 461
    .line 462
    goto :goto_e

    .line 463
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 464
    .line 465
    .line 466
    move-result v1

    .line 467
    iget-object v2, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    .line 468
    .line 469
    iget v3, v9, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 470
    .line 471
    aget v2, v2, v3

    .line 472
    .line 473
    add-int/2addr v1, v2

    .line 474
    iget-object v2, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 475
    .line 476
    invoke-virtual {v2, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    .line 477
    .line 478
    .line 479
    move-result v2

    .line 480
    add-int/2addr v2, v1

    .line 481
    move v13, v0

    .line 482
    move v14, v1

    .line 483
    move v15, v2

    .line 484
    goto :goto_d

    .line 485
    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 486
    .line 487
    .line 488
    move-result v0

    .line 489
    iget-object v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    .line 490
    .line 491
    iget v4, v9, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 492
    .line 493
    aget v3, v3, v4

    .line 494
    .line 495
    add-int/2addr v0, v3

    .line 496
    iget-object v3, v6, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 497
    .line 498
    invoke-virtual {v3, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    .line 499
    .line 500
    .line 501
    move-result v3

    .line 502
    add-int/2addr v3, v0

    .line 503
    move/from16 v16, v0

    .line 504
    .line 505
    move v14, v1

    .line 506
    move v15, v2

    .line 507
    move v13, v3

    .line 508
    :goto_e
    move-object/from16 v0, p0

    .line 509
    .line 510
    move-object v1, v7

    .line 511
    move v2, v14

    .line 512
    move/from16 v3, v16

    .line 513
    .line 514
    move v4, v15

    .line 515
    move v5, v13

    .line 516
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    .line 520
    .line 521
    .line 522
    move-result v0

    .line 523
    if-nez v0, :cond_1a

    .line 524
    .line 525
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    .line 526
    .line 527
    .line 528
    move-result v0

    .line 529
    if-eqz v0, :cond_1b

    .line 530
    .line 531
    :cond_1a
    iput-boolean v10, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 532
    .line 533
    :cond_1b
    iget-boolean v0, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    .line 534
    .line 535
    invoke-virtual {v7}, Landroid/view/View;->hasFocusable()Z

    .line 536
    .line 537
    .line 538
    move-result v1

    .line 539
    or-int/2addr v0, v1

    .line 540
    iput-boolean v0, v8, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    .line 541
    .line 542
    add-int/lit8 v12, v12, 0x1

    .line 543
    .line 544
    move v0, v13

    .line 545
    move v1, v14

    .line 546
    move v2, v15

    .line 547
    move/from16 v4, v16

    .line 548
    .line 549
    goto/16 :goto_c

    .line 550
    .line 551
    :cond_1c
    iget-object v0, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 552
    .line 553
    const/4 v1, 0x0

    .line 554
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 555
    .line 556
    .line 557
    return-void
.end method

.method public onAnchorReady(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;I)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->onAnchorReady(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;I)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/GridLayoutManager;->ensureAnchorIsInCorrectSpan(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;I)V

    :cond_0
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->ensureViewSet()V

    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    iget v6, v5, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v5, v5, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    add-int/2addr v5, v6

    invoke-super/range {p0 .. p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_1

    return-object v4

    :cond_1
    move/from16 v7, p2

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    iget-boolean v10, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v11, -0x1

    if-eq v7, v10, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v9

    const/4 v10, -0x1

    const/4 v12, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v7

    move v10, v7

    const/4 v7, 0x0

    const/4 v12, 0x1

    :goto_1
    iget v13, v0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    if-ne v13, v9, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x1

    goto :goto_2

    :cond_4
    const/4 v13, 0x0

    :goto_2
    invoke-direct {v0, v1, v2, v7}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v14

    move v11, v7

    const/4 v8, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, 0x0

    move-object v7, v4

    :goto_3
    if-eq v11, v10, :cond_5

    invoke-direct {v0, v1, v2, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v9

    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, v3, :cond_6

    :cond_5
    :goto_4
    move-object/from16 v21, v7

    goto/16 :goto_c

    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v18

    if-eqz v18, :cond_a

    if-eq v9, v14, :cond_a

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    move-object/from16 v18, v3

    move-object/from16 v21, v7

    :cond_8
    move/from16 v19, v8

    move/from16 v20, v10

    :cond_9
    move/from16 v7, v16

    move/from16 v8, v17

    goto/16 :goto_a

    :cond_a
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    iget v2, v9, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move-object/from16 v18, v3

    iget v3, v9, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    add-int/2addr v3, v2

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_b

    if-ne v2, v6, :cond_b

    if-ne v3, v5, :cond_b

    return-object v1

    :cond_b
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_c

    if-eqz v4, :cond_d

    :cond_c
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-nez v19, :cond_e

    if-nez v7, :cond_e

    :cond_d
    move-object/from16 v21, v7

    :goto_5
    move/from16 v19, v8

    move/from16 v20, v10

    move/from16 v7, v16

    move/from16 v8, v17

    goto :goto_9

    :cond_e
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v19

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v20

    move-object/from16 v21, v7

    sub-int v7, v20, v19

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_11

    if-le v7, v8, :cond_f

    :goto_6
    goto :goto_5

    :cond_f
    if-ne v7, v8, :cond_8

    if-le v2, v15, :cond_10

    const/4 v7, 0x1

    goto :goto_7

    :cond_10
    const/4 v7, 0x0

    :goto_7
    if-ne v13, v7, :cond_8

    goto :goto_6

    :cond_11
    if-nez v4, :cond_8

    move/from16 v19, v8

    move/from16 v20, v10

    const/4 v8, 0x0

    const/4 v10, 0x1

    invoke-virtual {v0, v1, v8, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isViewPartiallyVisible(Landroid/view/View;ZZ)Z

    move-result v22

    if-eqz v22, :cond_9

    move/from16 v8, v17

    if-le v7, v8, :cond_12

    move/from16 v7, v16

    goto :goto_9

    :cond_12
    if-ne v7, v8, :cond_15

    move/from16 v7, v16

    if-le v2, v7, :cond_13

    goto :goto_8

    :cond_13
    const/4 v10, 0x0

    :goto_8
    if-ne v13, v10, :cond_16

    :goto_9
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v10

    if-eqz v10, :cond_14

    iget v4, v9, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v2, v3, v2

    move v15, v4

    move/from16 v16, v7

    move/from16 v17, v8

    move-object/from16 v7, v21

    move-object v4, v1

    move v8, v2

    goto :goto_b

    :cond_14
    iget v7, v9, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v17, v3, v2

    move/from16 v16, v7

    move/from16 v8, v19

    move-object v7, v1

    goto :goto_b

    :cond_15
    move/from16 v7, v16

    :cond_16
    :goto_a
    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v8, v19

    move-object/from16 v7, v21

    :goto_b
    add-int/2addr v11, v12

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, v18

    move/from16 v10, v20

    const/4 v9, 0x1

    goto/16 :goto_3

    :goto_c
    if-eqz v4, :cond_17

    goto :goto_d

    :cond_17
    move-object/from16 v4, v21

    :goto_d
    return-object v4
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 7

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    if-nez v1, :cond_0

    invoke-super {p0, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void

    :cond_0
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result p1

    iget p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 p3, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result p2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v2

    iget v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-le v3, v1, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v0

    iget v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-ne v0, v3, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    const/4 v4, 0x1

    move v1, p2

    move v3, p1

    :goto_1
    invoke-static/range {v1 .. v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v4

    iget p2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-le p2, v1, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result p2

    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-ne p2, v0, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    const/4 v6, 0x0

    const/4 v2, 0x1

    move v1, p1

    goto :goto_1

    :goto_3
    return-void
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->cachePreLayoutSpanMapping()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->clearPreLayoutSpanMappingCache()V

    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    return-void
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->ensureViewSet()V

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->ensureViewSet()V

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, v0

    iget v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getMinimumHeight()I

    move-result v0

    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result p1

    iget-object p3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v0, p3

    sub-int/2addr v0, v3

    aget p3, p3, v0

    add-int/2addr p3, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getMinimumWidth()I

    move-result v0

    invoke-static {p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getMinimumWidth()I

    move-result v0

    invoke-static {p2, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result p2

    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v0, p1

    sub-int/2addr v0, v3

    aget p1, p1, v0

    add-int/2addr p1, v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getMinimumHeight()I

    move-result v0

    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result p1

    :goto_0
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimension(II)V

    return-void
.end method

.method public setSpanCount(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 8
    .line 9
    if-lt p1, v0, :cond_1

    .line 10
    .line 11
    iput p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 12
    .line 13
    iget-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string v1, "Span count should be at least 1. Provided "

    .line 25
    .line 26
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0
.end method

.method public setStackFromEnd(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
