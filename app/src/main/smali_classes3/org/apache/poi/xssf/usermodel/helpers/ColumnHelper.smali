.class public Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->cleanColumns()V

    return-void
.end method

.method private addCleanColIntoCols(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Ljava/util/TreeSet;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;",
            "Ljava/util/TreeSet<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;",
            ">;)V"
        }
    .end annotation

    .line 2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v0, v2, v3}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getOverlappingCols(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Ljava/util/TreeSet;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual/range {p0 .. p2}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->cloneCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {v3, v7}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    invoke-direct {v0, v2, v8}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getOverlap(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)[J

    move-result-object v9

    invoke-direct {v0, v1, v8, v9}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->cloneCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;[J)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v10

    invoke-virtual {v0, v2, v10}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->setColumnAttributes(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V

    invoke-virtual {v3, v10}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v10

    invoke-interface/range {p2 .. p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v12

    cmp-long v14, v10, v12

    if-gez v14, :cond_2

    move-object v10, v8

    goto :goto_1

    :cond_2
    move-object v10, v2

    :goto_1
    invoke-interface {v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v11

    invoke-interface/range {p2 .. p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    aget-wide v13, v9, v6

    const-wide/16 v15, 0x1

    sub-long/2addr v13, v15

    new-array v15, v4, [J

    aput-wide v11, v15, v6

    aput-wide v13, v15, v5

    aget-wide v11, v15, v6

    aget-wide v13, v15, v5

    cmp-long v16, v11, v13

    if-gtz v16, :cond_3

    invoke-direct {v0, v1, v10, v15}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->cloneCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;[J)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v10

    invoke-interface/range {p2 .. p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v12

    cmp-long v14, v10, v12

    if-lez v14, :cond_4

    move-object v10, v8

    goto :goto_2

    :cond_4
    move-object v10, v2

    :goto_2
    aget-wide v11, v9, v5

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    invoke-interface {v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v13

    invoke-static {v8, v9, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    new-array v13, v4, [J

    aput-wide v11, v13, v6

    aput-wide v8, v13, v5

    aget-wide v8, v13, v6

    aget-wide v11, v13, v5

    cmp-long v14, v8, v11

    if-gtz v14, :cond_1

    invoke-direct {v0, v1, v10, v13}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->cloneCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;[J)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private cloneCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;[J)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .locals 2

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->cloneCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p1

    const/4 p2, 0x0

    aget-wide v0, p3, p2

    invoke-interface {p1, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMin(J)V

    const/4 p2, 0x1

    aget-wide p2, p3, p2

    invoke-interface {p1, p2, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMax(J)V

    return-object p1
.end method

.method private columnExists(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;JJ)Z
    .locals 7

    .line 2
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v4

    cmp-long v6, v4, p2

    if-nez v6, :cond_0

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v3

    cmp-long v5, v3, p4

    if-nez v5, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private columnExists1Based(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;J)Z
    .locals 6

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-interface {v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v3

    cmp-long v5, v3, p2

    if-nez v5, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getOverlap(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)[J
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getOverlappingRange(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)[J

    move-result-object p1

    return-object p1
.end method

.method private getOverlappingCols(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Ljava/util/TreeSet;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;",
            "Ljava/util/TreeSet<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2, p1}, Ljava/util/TreeSet;->lower(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->overlaps(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Z

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p2

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    invoke-direct {p0, p1, v1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->overlaps(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private getOverlappingRange(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)[J
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->toRange(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)[J

    move-result-object p1

    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->toRange(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)[J

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/poi/xssf/util/NumericRanges;->getOverlappingRange([J[J)[J

    move-result-object p1

    return-object p1
.end method

.method private insertCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;JJ[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .locals 9

    .line 1
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->insertCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;JJ[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;ZLorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p1

    return-object p1
.end method

.method private insertCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;JJ[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;ZLorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .locals 0

    .line 2
    if-nez p7, :cond_1

    invoke-direct/range {p0 .. p5}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->columnExists(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;JJ)Z

    move-result p7

    if-nez p7, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    :goto_0
    const/4 p7, 0x0

    invoke-interface {p1, p7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->insertNewCol(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMin(J)V

    invoke-interface {p1, p4, p5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMax(J)V

    array-length p2, p6

    :goto_1
    if-ge p7, p2, :cond_2

    aget-object p3, p6, p7

    invoke-virtual {p0, p3, p1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->setColumnAttributes(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V

    add-int/lit8 p7, p7, 0x1

    goto :goto_1

    :cond_2
    if-eqz p8, :cond_3

    invoke-virtual {p0, p8, p1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->setColumnAttributes(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V

    :cond_3
    return-object p1
.end method

.method private overlaps(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->toRange(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)[J

    move-result-object p1

    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->toRange(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)[J

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/poi/xssf/util/NumericRanges;->getOverlappingType([J[J)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static sortColumns(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;)V
    .locals 2

    invoke-interface {p0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/xssf/util/CTColComparator;->BY_MIN_MAX:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    invoke-interface {p0, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->setColArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V

    return-void
.end method

.method private toRange(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)[J
    .locals 5

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v2

    const/4 p1, 0x2

    new-array p1, p1, [J

    const/4 v4, 0x0

    aput-wide v0, p1, v4

    const/4 v0, 0x1

    aput-wide v2, p1, v0

    return-object p1
.end method


# virtual methods
.method public addCleanColIntoCols(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lorg/apache/poi/xssf/util/CTColComparator;->BY_MIN_MAX:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->addCleanColIntoCols(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Ljava/util/TreeSet;)V

    const/4 p2, 0x0

    new-array p2, p2, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    invoke-virtual {v0, p2}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    invoke-interface {p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->setColArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V

    return-object p1
.end method

.method public cleanColumns()V
    .locals 9

    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lorg/apache/poi/xssf/util/CTColComparator;->BY_MIN_MAX:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_1

    aget-object v5, v2, v4

    invoke-interface {v5}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_0

    aget-object v8, v5, v7

    invoke-direct {p0, v1, v8, v0}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->addCleanColIntoCols(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Ljava/util/TreeSet;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, -0x1

    :goto_2
    if-ltz v4, :cond_2

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v2, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->removeCols(I)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v2

    new-array v2, v2, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->setColArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewCols()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    invoke-interface {v0, v3, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->setColsArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;)V

    return-void
.end method

.method public cloneCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .locals 2

    .line 1
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->addNewCol()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p1

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMin(J)V

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMax(J)V

    invoke-virtual {p0, p2, p1}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->setColumnAttributes(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V

    return-object p1
.end method

.method public columnExists(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;J)Z
    .locals 2

    .line 1
    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->columnExists1Based(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;J)Z

    move-result p1

    return p1
.end method

.method public getColDefaultStyle(J)I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColumn(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColumn(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getStyle()J

    move-result-wide p1

    long-to-int p2, p1

    return p2

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getColumn(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .locals 2

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColumn1Based(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p1

    return-object p1
.end method

.method public getColumn1Based(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .locals 20

    move-wide/from16 v0, p1

    const/4 v2, 0x1

    move-object/from16 v10, p0

    iget-object v3, v10, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v11, 0x0

    invoke-interface {v3, v11}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object v12

    invoke-interface {v12}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v13, v3, v5

    invoke-interface {v13}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v6

    invoke-interface {v13}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v14

    cmp-long v8, v6, v0

    if-gtz v8, :cond_3

    cmp-long v16, v14, v0

    if-ltz v16, :cond_3

    if-eqz p3, :cond_2

    const-wide/16 v17, 0x1

    if-gez v8, :cond_0

    sub-long v8, v0, v17

    new-array v5, v2, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    aput-object v13, v5, v11

    move-object/from16 v3, p0

    move-object v4, v12

    move-object/from16 v19, v5

    move-wide v5, v6

    move-wide v7, v8

    move-object/from16 v9, v19

    invoke-direct/range {v3 .. v9}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->insertCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;JJ[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    :cond_0
    if-lez v16, :cond_1

    add-long v5, v0, v17

    new-array v9, v2, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    aput-object v13, v9, v11

    move-object/from16 v3, p0

    move-object v4, v12

    move-wide v7, v14

    invoke-direct/range {v3 .. v9}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->insertCol(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;JJ[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    :cond_1
    invoke-interface {v13, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMin(J)V

    invoke-interface {v13, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMax(J)V

    :cond_2
    return-object v13

    :cond_3
    add-int/2addr v5, v2

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndexOfColumn(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)I
    .locals 10

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->getColArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v4, p1, v2

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v5

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMin()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-nez v9, :cond_1

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v4

    invoke-interface {p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getMax()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    return v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public getOrCreateColumn1Based(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getColumn1Based(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->worksheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getColsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;

    move-result-object p3

    invoke-interface {p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCols;->addNewCol()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMin(J)V

    invoke-interface {p3, p1, p2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setMax(J)V

    :cond_0
    return-object p3
.end method

.method public setColBestFit(JZ)V
    .locals 2

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getOrCreateColumn1Based(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p1

    invoke-interface {p1, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setBestFit(Z)V

    return-void
.end method

.method public setColDefaultStyle(JI)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getOrCreateColumn1Based(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p1

    int-to-long p2, p3

    invoke-interface {p1, p2, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setStyle(J)V

    return-void
.end method

.method public setColDefaultStyle(JLorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 0

    .line 2
    invoke-interface {p3}, Lorg/apache/poi/ss/usermodel/CellStyle;->getIndex()S

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->setColDefaultStyle(JI)V

    return-void
.end method

.method public setColHidden(JZ)V
    .locals 2

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getOrCreateColumn1Based(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p1

    invoke-interface {p1, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setHidden(Z)V

    return-void
.end method

.method public setColWidth(JD)V
    .locals 2

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getOrCreateColumn1Based(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p1

    invoke-interface {p1, p3, p4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setWidth(D)V

    return-void
.end method

.method public setColumnAttributes(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;)V
    .locals 2

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->isSetBestFit()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getBestFit()Z

    move-result v0

    invoke-interface {p2, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setBestFit(Z)V

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->isSetCustomWidth()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getCustomWidth()Z

    move-result v0

    invoke-interface {p2, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setCustomWidth(Z)V

    :cond_1
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->isSetHidden()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getHidden()Z

    move-result v0

    invoke-interface {p2, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setHidden(Z)V

    :cond_2
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->isSetStyle()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getStyle()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setStyle(J)V

    :cond_3
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->isSetWidth()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getWidth()D

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setWidth(D)V

    :cond_4
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->isSetCollapsed()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getCollapsed()Z

    move-result v0

    invoke-interface {p2, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setCollapsed(Z)V

    :cond_5
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->isSetPhonetic()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getPhonetic()Z

    move-result v0

    invoke-interface {p2, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setPhonetic(Z)V

    :cond_6
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->isSetOutlineLevel()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->getOutlineLevel()S

    move-result v0

    invoke-interface {p2, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setOutlineLevel(S)V

    :cond_7
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->isSetCollapsed()Z

    move-result p1

    invoke-interface {p2, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setCollapsed(Z)V

    return-void
.end method

.method public setCustomWidth(JZ)V
    .locals 2

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/xssf/usermodel/helpers/ColumnHelper;->getOrCreateColumn1Based(JZ)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;

    move-result-object p1

    invoke-interface {p1, p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCol;->setCustomWidth(Z)V

    return-void
.end method
