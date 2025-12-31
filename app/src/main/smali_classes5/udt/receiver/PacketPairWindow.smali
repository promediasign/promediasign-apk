.class public Ludt/receiver/PacketPairWindow;
.super Ludt/util/CircularArray;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ludt/util/CircularArray<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Ludt/util/CircularArray;-><init>(I)V

    return-void
.end method


# virtual methods
.method public computeMedianTimeInterval()D
    .locals 12

    iget-boolean v0, p0, Ludt/util/CircularArray;->haveOverflow:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ludt/util/CircularArray;->max:I

    goto :goto_0

    :cond_0
    iget v0, p0, Ludt/util/CircularArray;->max:I

    iget v1, p0, Ludt/util/CircularArray;->position:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v5, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_1

    iget-object v7, p0, Ludt/util/CircularArray;->array:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v7

    add-double/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    int-to-double v7, v0

    div-double/2addr v5, v7

    const-wide/high16 v7, 0x4020000000000000L    # 8.0

    mul-double v9, v5, v7

    div-double/2addr v5, v7

    const/4 v4, 0x0

    :goto_2
    if-ge v3, v0, :cond_3

    iget-object v7, p0, Ludt/util/CircularArray;->array:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v7

    cmpg-double v11, v7, v9

    if-gez v11, :cond_2

    cmpl-double v11, v7, v5

    if-lez v11, :cond_2

    add-double/2addr v1, v7

    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    int-to-double v3, v4

    div-double/2addr v1, v3

    return-wide v1
.end method

.method public getEstimatedLinkCapacity()J
    .locals 4

    const-wide v0, 0x412e848000000000L    # 1000000.0

    invoke-virtual {p0}, Ludt/receiver/PacketPairWindow;->computeMedianTimeInterval()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method
