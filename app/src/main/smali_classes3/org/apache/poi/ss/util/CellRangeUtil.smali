.class public final Lorg/apache/poi/ss/util/CellRangeUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ENCLOSES:I = 0x4

.field public static final INSIDE:I = 0x3

.field public static final NO_INTERSECTION:I = 0x1

.field public static final OVERLAP:I = 0x2


# direct methods
.method public static contains(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/CellRangeUtil;->le(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/CellRangeUtil;->ge(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/CellRangeUtil;->le(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result p0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result p1

    invoke-static {p0, p1}, Lorg/apache/poi/ss/util/CellRangeUtil;->ge(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static createEnclosingCellRange(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 5

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddress;->copy()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/poi/ss/util/CellRangeUtil;->lt(II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/poi/ss/util/CellRangeUtil;->gt(II)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v1

    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v3

    invoke-static {v2, v3}, Lorg/apache/poi/ss/util/CellRangeUtil;->lt(II)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v2

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v2

    :goto_2
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v4

    invoke-static {v3, v4}, Lorg/apache/poi/ss/util/CellRangeUtil;->gt(II)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result p0

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result p0

    :goto_3
    new-instance p1, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {p1, v0, v1, v2, p0}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    return-object p1
.end method

.method private static ge(II)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/ss/util/CellRangeUtil;->lt(II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static gt(II)Z
    .locals 0

    invoke-static {p1, p0}, Lorg/apache/poi/ss/util/CellRangeUtil;->lt(II)Z

    move-result p0

    return p0
.end method

.method public static hasExactSharedBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)Z
    .locals 7

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result p1

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v3

    sub-int/2addr v3, v5

    if-eq v3, v1, :cond_1

    :cond_0
    if-lez v0, :cond_3

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v6

    if-ne v3, v6, :cond_3

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result p0

    if-ne p0, p1, :cond_2

    const/4 v4, 0x1

    :cond_2
    return v4

    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v3

    sub-int/2addr v3, v5

    if-eq v3, p1, :cond_5

    :cond_4
    if-lez v2, :cond_6

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result p1

    sub-int/2addr v2, v5

    if-ne p1, v2, :cond_6

    :cond_5
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result p1

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result p0

    if-ne p0, v1, :cond_6

    const/4 v4, 0x1

    :cond_6
    return v4
.end method

.method public static intersect(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)I
    .locals 5

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v4

    invoke-static {v4, v1}, Lorg/apache/poi/ss/util/CellRangeUtil;->gt(II)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v1

    invoke-static {v1, v0}, Lorg/apache/poi/ss/util/CellRangeUtil;->lt(II)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v0

    invoke-static {v0, v3}, Lorg/apache/poi/ss/util/CellRangeUtil;->gt(II)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v0

    invoke-static {v0, v2}, Lorg/apache/poi/ss/util/CellRangeUtil;->lt(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/poi/ss/util/CellRangeUtil;->contains(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    invoke-static {p1, p0}, Lorg/apache/poi/ss/util/CellRangeUtil;->contains(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    const/4 p0, 0x2

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static le(II)Z
    .locals 0

    if-eq p0, p1, :cond_1

    invoke-static {p0, p1}, Lorg/apache/poi/ss/util/CellRangeUtil;->lt(II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static lt(II)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    if-ge p0, p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private static mergeCellRanges(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ss/util/CellRangeAddress;

    add-int/lit8 v5, v2, 0x1

    move v6, v5

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-static {v4, v7}, Lorg/apache/poi/ss/util/CellRangeUtil;->mergeRanges(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)[Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v7

    if-nez v7, :cond_1

    goto :goto_3

    :cond_1
    aget-object v3, v7, v0

    invoke-interface {p0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v6, -0x1

    invoke-interface {p0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v6, v3

    const/4 v3, 0x1

    :goto_2
    array-length v8, v7

    if-ge v3, v8, :cond_2

    add-int/lit8 v6, v6, 0x1

    aget-object v8, v7, v3

    invoke-interface {p0, v6, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x1

    :goto_3
    add-int/2addr v6, v1

    goto :goto_1

    :cond_3
    move v2, v5

    goto :goto_0

    :cond_4
    if-nez v3, :cond_0

    :cond_5
    return-object p0
.end method

.method public static mergeCellRanges([Lorg/apache/poi/ss/util/CellRangeAddress;)[Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 2

    .line 2
    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Lorg/apache/poi/ss/util/CellRangeAddress;

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/apache/poi/ss/util/CellRangeUtil;->toList([Lorg/apache/poi/ss/util/CellRangeAddress;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ss/util/CellRangeUtil;->mergeCellRanges(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ss/util/CellRangeUtil;->toArray(Ljava/util/List;)[Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object p0

    return-object p0
.end method

.method private static mergeRanges(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)[Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {p0, p1}, Lorg/apache/poi/ss/util/CellRangeUtil;->intersect(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eq v2, v1, :cond_3

    .line 9
    .line 10
    const/4 v4, 0x2

    .line 11
    if-eq v2, v4, :cond_2

    .line 12
    .line 13
    const/4 v3, 0x3

    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    const/4 p0, 0x4

    .line 17
    if-ne v2, p0, :cond_0

    .line 18
    .line 19
    new-array p0, v1, [Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 20
    .line 21
    aput-object p1, p0, v0

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 25
    .line 26
    const-string p1, "unexpected intersection result ("

    .line 27
    .line 28
    const-string v0, ")"

    .line 29
    .line 30
    invoke-static {v2, p1, v0}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0

    .line 38
    :cond_1
    new-array p1, v1, [Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 39
    .line 40
    aput-object p0, p1, v0

    .line 41
    .line 42
    return-object p1

    .line 43
    :cond_2
    return-object v3

    .line 44
    :cond_3
    invoke-static {p0, p1}, Lorg/apache/poi/ss/util/CellRangeUtil;->hasExactSharedBorder(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_4

    .line 49
    .line 50
    invoke-static {p0, p1}, Lorg/apache/poi/ss/util/CellRangeUtil;->createEnclosingCellRange(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    new-array p1, v1, [Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 55
    .line 56
    aput-object p0, p1, v0

    .line 57
    .line 58
    return-object p1

    .line 59
    :cond_4
    return-object v3
.end method

.method private static toArray(Ljava/util/List;)[Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;)[",
            "Lorg/apache/poi/ss/util/CellRangeAddress;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method private static toList([Lorg/apache/poi/ss/util/CellRangeAddress;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
