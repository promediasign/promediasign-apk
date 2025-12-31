.class public Lorg/h2/mvstore/rtree/SpatialDataType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/mvstore/type/DataType;


# instance fields
.field private final dimensions:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const/16 v2, 0x20

    if-ge p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v0

    const-string v0, "Dimensions must be between 1 and 31, is {0}"

    invoke-static {v2, v0, v1}, Lorg/h2/mvstore/DataUtils;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lorg/h2/mvstore/rtree/SpatialDataType;->dimensions:I

    return-void
.end method

.method private getArea(Lorg/h2/mvstore/rtree/SpatialKey;)F
    .locals 4

    invoke-virtual {p1}, Lorg/h2/mvstore/rtree/SpatialKey;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/h2/mvstore/rtree/SpatialDataType;->dimensions:I

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v2

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float v0, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static getNotNull(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/mvstore/rtree/SpatialKey;

    invoke-virtual {v1}, Lorg/h2/mvstore/rtree/SpatialKey;->isNull()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/mvstore/rtree/SpatialKey;

    invoke-virtual {v1}, Lorg/h2/mvstore/rtree/SpatialKey;->isNull()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private increaseMaxInnerBounds(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lorg/h2/mvstore/rtree/SpatialKey;

    check-cast p2, Lorg/h2/mvstore/rtree/SpatialKey;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/h2/mvstore/rtree/SpatialDataType;->dimensions:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v1

    invoke-virtual {p2, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/rtree/SpatialKey;->setMin(IF)V

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v1

    invoke-virtual {p2, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/rtree/SpatialKey;->setMax(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    if-nez p2, :cond_2

    return v2

    :cond_2
    check-cast p1, Lorg/h2/mvstore/rtree/SpatialKey;

    invoke-virtual {p1}, Lorg/h2/mvstore/rtree/SpatialKey;->getId()J

    move-result-wide v3

    check-cast p2, Lorg/h2/mvstore/rtree/SpatialKey;

    invoke-virtual {p2}, Lorg/h2/mvstore/rtree/SpatialKey;->getId()J

    move-result-wide p1

    cmp-long v5, v3, p1

    if-gez v5, :cond_3

    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    if-lez v5, :cond_4

    const/4 v0, 0x1

    :cond_4
    :goto_0
    return v0
.end method

.method public contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    check-cast p1, Lorg/h2/mvstore/rtree/SpatialKey;

    check-cast p2, Lorg/h2/mvstore/rtree/SpatialKey;

    invoke-virtual {p1}, Lorg/h2/mvstore/rtree/SpatialKey;->isNull()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lorg/h2/mvstore/rtree/SpatialKey;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/h2/mvstore/rtree/SpatialDataType;->dimensions:I

    if-ge v0, v2, :cond_3

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v2

    invoke-virtual {p2, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_2

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v2

    invoke-virtual {p2, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_2
    return v1
.end method

.method public createBoundingBox(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lorg/h2/mvstore/rtree/SpatialKey;

    invoke-virtual {p1}, Lorg/h2/mvstore/rtree/SpatialKey;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget v0, p0, Lorg/h2/mvstore/rtree/SpatialDataType;->dimensions:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/h2/mvstore/rtree/SpatialDataType;->dimensions:I

    if-ge v1, v2, :cond_1

    add-int v2, v1, v1

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/h2/mvstore/rtree/SpatialKey;

    const-wide/16 v1, 0x0

    invoke-direct {p1, v1, v2, v0}, Lorg/h2/mvstore/rtree/SpatialKey;-><init>(J[F)V

    return-object p1
.end method

.method public equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lorg/h2/mvstore/rtree/SpatialKey;

    invoke-virtual {p1}, Lorg/h2/mvstore/rtree/SpatialKey;->getId()J

    move-result-wide v2

    check-cast p2, Lorg/h2/mvstore/rtree/SpatialKey;

    invoke-virtual {p2}, Lorg/h2/mvstore/rtree/SpatialKey;->getId()J

    move-result-wide p1

    cmp-long v4, v2, p1

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAreaIncrease(Ljava/lang/Object;Ljava/lang/Object;)F
    .locals 6

    check-cast p2, Lorg/h2/mvstore/rtree/SpatialKey;

    check-cast p1, Lorg/h2/mvstore/rtree/SpatialKey;

    invoke-virtual {p1}, Lorg/h2/mvstore/rtree/SpatialKey;->isNull()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lorg/h2/mvstore/rtree/SpatialKey;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v1

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v2

    sub-float v3, v2, v1

    invoke-virtual {p2, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {p2, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float/2addr v0, v1

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lorg/h2/mvstore/rtree/SpatialDataType;->dimensions:I

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v2

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v4

    sub-float v5, v4, v2

    mul-float v3, v3, v5

    invoke-virtual {p2, v1}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {p2, v1}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    sub-float/2addr v4, v2

    mul-float v0, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sub-float/2addr v0, v3

    return v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public getCombinedArea(Ljava/lang/Object;Ljava/lang/Object;)F
    .locals 5

    check-cast p1, Lorg/h2/mvstore/rtree/SpatialKey;

    check-cast p2, Lorg/h2/mvstore/rtree/SpatialKey;

    invoke-virtual {p1}, Lorg/h2/mvstore/rtree/SpatialKey;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lorg/h2/mvstore/rtree/SpatialDataType;->getArea(Lorg/h2/mvstore/rtree/SpatialKey;)F

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p2}, Lorg/h2/mvstore/rtree/SpatialKey;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/h2/mvstore/rtree/SpatialDataType;->getArea(Lorg/h2/mvstore/rtree/SpatialKey;)F

    move-result p1

    return p1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/h2/mvstore/rtree/SpatialDataType;->dimensions:I

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v2

    invoke-virtual {p2, v1}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v3

    invoke-virtual {p2, v1}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    sub-float/2addr v3, v2

    mul-float v0, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public getExtremes(Ljava/util/ArrayList;)[I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)[I"
        }
    .end annotation

    invoke-static {p1}, Lorg/h2/mvstore/rtree/SpatialDataType;->getNotNull(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/h2/mvstore/rtree/SpatialDataType;->createBoundingBox(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/mvstore/rtree/SpatialKey;

    invoke-virtual {p0, v2}, Lorg/h2/mvstore/rtree/SpatialDataType;->createBoundingBox(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/mvstore/rtree/SpatialKey;

    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Lorg/h2/mvstore/rtree/SpatialDataType;->dimensions:I

    if-ge v4, v5, :cond_1

    invoke-virtual {v3, v4}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v5

    invoke-virtual {v3, v4}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v6

    invoke-virtual {v3, v4, v6}, Lorg/h2/mvstore/rtree/SpatialKey;->setMin(IF)V

    invoke-virtual {v3, v4, v5}, Lorg/h2/mvstore/rtree/SpatialKey;->setMax(IF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Lorg/h2/mvstore/rtree/SpatialDataType;->increaseBounds(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v3, v5}, Lorg/h2/mvstore/rtree/SpatialDataType;->increaseMaxInnerBounds(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const-wide/16 v4, 0x0

    move-wide v7, v4

    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_2
    iget v10, p0, Lorg/h2/mvstore/rtree/SpatialDataType;->dimensions:I

    if-ge v6, v10, :cond_5

    invoke-virtual {v3, v6}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v10

    invoke-virtual {v3, v6}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v11

    sub-float/2addr v10, v11

    const/4 v11, 0x0

    cmpg-float v11, v10, v11

    if-gez v11, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2, v6}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v11

    invoke-virtual {v2, v6}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v12

    sub-float/2addr v11, v12

    div-float/2addr v10, v11

    float-to-double v10, v10

    cmpl-double v12, v10, v7

    if-lez v12, :cond_4

    move v9, v6

    move-wide v7, v10

    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    cmpg-double v2, v7, v4

    if-gtz v2, :cond_6

    return-object v1

    :cond_6
    invoke-virtual {v3, v9}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v1

    invoke-virtual {v3, v9}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v2

    const/4 v3, -0x1

    const/4 v4, -0x1

    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_a

    if-ltz v3, :cond_7

    if-gez v4, :cond_a

    :cond_7
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/mvstore/rtree/SpatialKey;

    if-gez v3, :cond_8

    invoke-virtual {v5, v9}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v6

    cmpl-float v6, v6, v1

    if-nez v6, :cond_8

    move v3, v0

    goto :goto_5

    :cond_8
    if-gez v4, :cond_9

    invoke-virtual {v5, v9}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v5

    cmpl-float v5, v5, v2

    if-nez v5, :cond_9

    move v4, v0

    :cond_9
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    filled-new-array {v3, v4}, [I

    move-result-object p1

    return-object p1
.end method

.method public getMemory(Ljava/lang/Object;)I
    .locals 0

    iget p1, p0, Lorg/h2/mvstore/rtree/SpatialDataType;->dimensions:I

    mul-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x28

    return p1
.end method

.method public increaseBounds(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Lorg/h2/mvstore/rtree/SpatialKey;

    check-cast p1, Lorg/h2/mvstore/rtree/SpatialKey;

    invoke-virtual {p2}, Lorg/h2/mvstore/rtree/SpatialKey;->isNull()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/h2/mvstore/rtree/SpatialKey;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/h2/mvstore/rtree/SpatialDataType;->dimensions:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v1

    invoke-virtual {p2, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/rtree/SpatialKey;->setMin(IF)V

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v1

    invoke-virtual {p2, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/rtree/SpatialKey;->setMax(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public isInside(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    check-cast p1, Lorg/h2/mvstore/rtree/SpatialKey;

    check-cast p2, Lorg/h2/mvstore/rtree/SpatialKey;

    invoke-virtual {p1}, Lorg/h2/mvstore/rtree/SpatialKey;->isNull()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lorg/h2/mvstore/rtree/SpatialKey;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/h2/mvstore/rtree/SpatialDataType;->dimensions:I

    if-ge v0, v2, :cond_3

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v2

    invoke-virtual {p2, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v3

    cmpg-float v2, v2, v3

    if-lez v2, :cond_2

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v2

    invoke-virtual {p2, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_2
    return v1
.end method

.method public isOverlap(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    check-cast p1, Lorg/h2/mvstore/rtree/SpatialKey;

    check-cast p2, Lorg/h2/mvstore/rtree/SpatialKey;

    invoke-virtual {p1}, Lorg/h2/mvstore/rtree/SpatialKey;->isNull()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lorg/h2/mvstore/rtree/SpatialKey;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/h2/mvstore/rtree/SpatialDataType;->dimensions:I

    if-ge v0, v2, :cond_3

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v2

    invoke-virtual {p2, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_2

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v2

    invoke-virtual {p2, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_2
    return v1
.end method

.method public read(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {p1}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    new-instance p1, Lorg/h2/mvstore/rtree/SpatialKey;

    new-array v2, v2, [F

    invoke-direct {p1, v0, v1, v2}, Lorg/h2/mvstore/rtree/SpatialKey;-><init>(J[F)V

    return-object p1

    :cond_0
    iget v1, p0, Lorg/h2/mvstore/rtree/SpatialDataType;->dimensions:I

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [F

    :goto_0
    iget v3, p0, Lorg/h2/mvstore/rtree/SpatialDataType;->dimensions:I

    if-ge v2, v3, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v3

    const/4 v4, 0x1

    shl-int v5, v4, v2

    and-int/2addr v5, v0

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v5

    :goto_1
    add-int v6, v2, v2

    aput v3, v1, v6

    add-int/2addr v6, v4

    aput v5, v1, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    new-instance p1, Lorg/h2/mvstore/rtree/SpatialKey;

    invoke-direct {p1, v2, v3, v1}, Lorg/h2/mvstore/rtree/SpatialKey;-><init>(J[F)V

    return-object p1
.end method

.method public read(Ljava/nio/ByteBuffer;[Ljava/lang/Object;IZ)V
    .locals 1

    .line 2
    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_0

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/rtree/SpatialDataType;->read(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p2, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p2, Lorg/h2/mvstore/rtree/SpatialKey;

    invoke-virtual {p2}, Lorg/h2/mvstore/rtree/SpatialKey;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/WriteBuffer;->putVarInt(I)Lorg/h2/mvstore/WriteBuffer;

    :cond_0
    invoke-virtual {p2}, Lorg/h2/mvstore/rtree/SpatialKey;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/WriteBuffer;->putVarLong(J)Lorg/h2/mvstore/WriteBuffer;

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lorg/h2/mvstore/rtree/SpatialDataType;->dimensions:I

    const/4 v4, 0x1

    if-ge v1, v3, :cond_3

    invoke-virtual {p2, v1}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v3

    invoke-virtual {p2, v1}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v5

    cmpl-float v3, v3, v5

    if-nez v3, :cond_2

    shl-int v3, v4, v1

    or-int/2addr v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v2}, Lorg/h2/mvstore/WriteBuffer;->putVarInt(I)Lorg/h2/mvstore/WriteBuffer;

    :goto_1
    iget v1, p0, Lorg/h2/mvstore/rtree/SpatialDataType;->dimensions:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p2, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->min(I)F

    move-result v1

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/WriteBuffer;->putFloat(F)Lorg/h2/mvstore/WriteBuffer;

    shl-int v1, v4, v0

    and-int/2addr v1, v2

    if-nez v1, :cond_4

    invoke-virtual {p2, v0}, Lorg/h2/mvstore/rtree/SpatialKey;->max(I)F

    move-result v1

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/WriteBuffer;->putFloat(F)Lorg/h2/mvstore/WriteBuffer;

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public write(Lorg/h2/mvstore/WriteBuffer;[Ljava/lang/Object;IZ)V
    .locals 1

    .line 2
    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_0

    aget-object v0, p2, p4

    invoke-virtual {p0, p1, v0}, Lorg/h2/mvstore/rtree/SpatialDataType;->write(Lorg/h2/mvstore/WriteBuffer;Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
