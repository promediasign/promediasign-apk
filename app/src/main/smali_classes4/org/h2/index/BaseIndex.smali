.class public abstract Lorg/h2/index/BaseIndex;
.super Lorg/h2/schema/SchemaObjectBase;
.source "SourceFile"

# interfaces
.implements Lorg/h2/index/Index;


# instance fields
.field protected columnIds:[I

.field protected columns:[Lorg/h2/table/Column;

.field protected indexColumns:[Lorg/h2/table/IndexColumn;

.field protected indexType:Lorg/h2/index/IndexType;

.field protected isMultiVersion:Z

.field protected table:Lorg/h2/table/Table;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/h2/schema/SchemaObjectBase;-><init>()V

    return-void
.end method

.method public static checkIndexColumnTypes([Lorg/h2/table/IndexColumn;)V
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    iget-object v3, v2, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v3}, Lorg/h2/table/Column;->getType()I

    move-result v3

    const/16 v4, 0x10

    if-eq v3, v4, :cond_0

    const/16 v4, 0xf

    if-eq v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Index on BLOB or CLOB column: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v2, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getCreateSQL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0

    :cond_1
    return-void
.end method

.method private compareValues(Lorg/h2/value/Value;Lorg/h2/value/Value;I)I
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/h2/index/BaseIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {v0, p1, p2}, Lorg/h2/table/Table;->compareTypeSafe(Lorg/h2/value/Value;Lorg/h2/value/Value;)I

    move-result p1

    and-int/lit8 p2, p3, 0x1

    if-eqz p2, :cond_1

    neg-int p1, p1

    :cond_1
    return p1
.end method

.method private getColumnListSQL()Ljava/lang/String;
    .locals 6

    new-instance v0, Lorg/h2/util/StatementBuilder;

    invoke-direct {v0}, Lorg/h2/util/StatementBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/index/BaseIndex;->indexColumns:[Lorg/h2/table/IndexColumn;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    const-string v5, ", "

    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/h2/table/IndexColumn;->getSQL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public canFindNext()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canScan()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public commit(ILorg/h2/result/Row;)V
    .locals 0

    return-void
.end method

.method public compareKeys(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)I
    .locals 5

    invoke-interface {p1}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v0

    invoke-interface {p2}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-boolean v0, p0, Lorg/h2/index/BaseIndex;->isMultiVersion:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/h2/result/SearchRow;->getVersion()I

    move-result p1

    invoke-interface {p2}, Lorg/h2/result/SearchRow;->getVersion()I

    move-result p2

    invoke-static {p2, p1}, Lorg/h2/util/MathUtils;->compareInt(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    if-lez v4, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public compareRows(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)I
    .locals 6

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/h2/index/BaseIndex;->indexColumns:[Lorg/h2/table/IndexColumn;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Lorg/h2/index/BaseIndex;->columnIds:[I

    aget v3, v3, v2

    invoke-interface {p1, v3}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v4

    invoke-interface {p2, v3}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v3

    if-eqz v4, :cond_3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lorg/h2/index/BaseIndex;->indexColumns:[Lorg/h2/table/IndexColumn;

    aget-object v5, v5, v2

    iget v5, v5, Lorg/h2/table/IndexColumn;->sortType:I

    invoke-direct {p0, v4, v3, v5}, Lorg/h2/index/BaseIndex;->compareValues(Lorg/h2/value/Value;Lorg/h2/value/Value;I)I

    move-result v3

    if-eqz v3, :cond_2

    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public containsNullAndAllowMultipleNull(Lorg/h2/result/SearchRow;)Z
    .locals 7

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMode()Lorg/h2/engine/Mode;

    move-result-object v0

    iget-boolean v1, v0, Lorg/h2/engine/Mode;->uniqueIndexSingleNull:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-boolean v0, v0, Lorg/h2/engine/Mode;->uniqueIndexSingleNullExceptAllColumnsAreNull:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/h2/index/BaseIndex;->columnIds:[I

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget v5, v0, v4

    invoke-interface {p1, v5}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v5

    sget-object v6, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq v5, v6, :cond_1

    return v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    iget-object v0, p0, Lorg/h2/index/BaseIndex;->columnIds:[I

    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    aget v5, v0, v4

    invoke-interface {p1, v5}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v5

    sget-object v6, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v5, v6, :cond_4

    return v1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return v2
.end method

.method public createLookupBatch([Lorg/h2/table/TableFilter;I)Lorg/h2/index/IndexLookupBatch;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public find(Lorg/h2/table/TableFilter;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 0

    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getSession()Lorg/h2/engine/Session;

    move-result-object p1

    invoke-interface {p0, p1, p2, p3}, Lorg/h2/index/Index;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public findNext(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 0

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getColumnIndex(Lorg/h2/table/Column;)I
    .locals 3

    iget-object v0, p0, Lorg/h2/index/BaseIndex;->columns:[Lorg/h2/table/Column;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lorg/h2/index/BaseIndex;->columns:[Lorg/h2/table/Column;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lorg/h2/table/Column;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getColumns()[Lorg/h2/table/Column;
    .locals 1

    iget-object v0, p0, Lorg/h2/index/BaseIndex;->columns:[Lorg/h2/table/Column;

    return-object v0
.end method

.method public final getCostRangeIndex([IJ[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;ZLjava/util/HashSet;)J
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([IJ[",
            "Lorg/h2/table/TableFilter;",
            "I",
            "Lorg/h2/result/SortOrder;",
            "Z",
            "Ljava/util/HashSet<",
            "Lorg/h2/table/Column;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    const-wide/16 v2, 0x3e8

    add-long v2, p2, v2

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x64

    const/4 v8, 0x1

    if-eqz p1, :cond_5

    iget-object v10, v0, Lorg/h2/index/BaseIndex;->columns:[Lorg/h2/table/Column;

    array-length v10, v10

    move-wide v13, v2

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v11, v10, :cond_6

    iget-object v15, v0, Lorg/h2/index/BaseIndex;->columns:[Lorg/h2/table/Column;

    aget-object v15, v15, v11

    invoke-virtual {v15}, Lorg/h2/table/Column;->getColumnId()I

    move-result v16

    aget v16, p1, v16

    and-int/lit8 v9, v16, 0x1

    const-wide/16 v17, 0x2

    const-wide/16 v19, 0x3

    if-ne v9, v8, :cond_2

    iget-object v9, v0, Lorg/h2/index/BaseIndex;->columns:[Lorg/h2/table/Column;

    array-length v9, v9

    sub-int/2addr v9, v8

    if-ne v11, v9, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/h2/index/BaseIndex;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v9

    invoke-virtual {v9}, Lorg/h2/index/IndexType;->isUnique()Z

    move-result v9

    if-eqz v9, :cond_0

    move-wide/from16 v13, v19

    goto :goto_2

    :cond_0
    rsub-int/lit8 v9, v12, 0x64

    invoke-virtual {v15}, Lorg/h2/table/Column;->getSelectivity()I

    move-result v12

    rsub-int/lit8 v12, v12, 0x64

    mul-int v12, v12, v9

    div-int/lit8 v12, v12, 0x64

    rsub-int/lit8 v12, v12, 0x64

    int-to-long v13, v12

    mul-long v13, v13, v2

    div-long/2addr v13, v6

    const-wide/16 v8, 0x1

    cmp-long v15, v13, v4

    if-gtz v15, :cond_1

    move-wide v13, v8

    :cond_1
    div-long v13, v2, v13

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    add-long v13, v8, v17

    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x1

    goto :goto_0

    :cond_2
    and-int/lit8 v8, v16, 0x6

    const/4 v9, 0x6

    if-ne v8, v9, :cond_3

    const-wide/16 v8, 0x4

    div-long v8, v2, v8

    :goto_1
    add-long v13, v8, v17

    goto :goto_2

    :cond_3
    and-int/lit8 v8, v16, 0x2

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    div-long v8, v2, v19

    goto :goto_1

    :cond_4
    const/4 v8, 0x4

    and-int/lit8 v9, v16, 0x4

    if-ne v9, v8, :cond_6

    div-long v13, v2, v19

    goto :goto_2

    :cond_5
    move-wide v13, v2

    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    const-wide/16 v4, 0xa

    div-long/2addr v2, v4

    add-long v4, v2, v6

    :cond_7
    if-eqz v1, :cond_e

    if-nez p7, :cond_e

    invoke-virtual/range {p6 .. p6}, Lorg/h2/result/SortOrder;->getSortTypes()[I

    move-result-object v2

    if-nez p4, :cond_8

    const/4 v3, 0x0

    goto :goto_3

    :cond_8
    aget-object v3, p4, p5

    :goto_3
    array-length v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_4
    if-ge v7, v6, :cond_d

    iget-object v9, v0, Lorg/h2/index/BaseIndex;->indexColumns:[Lorg/h2/table/IndexColumn;

    array-length v9, v9

    if-lt v7, v9, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v1, v7, v3}, Lorg/h2/result/SortOrder;->getColumn(ILorg/h2/table/TableFilter;)Lorg/h2/table/Column;

    move-result-object v9

    if-nez v9, :cond_a

    goto :goto_6

    :cond_a
    iget-object v10, v0, Lorg/h2/index/BaseIndex;->indexColumns:[Lorg/h2/table/IndexColumn;

    aget-object v10, v10, v7

    iget-object v11, v10, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v9, v11}, Lorg/h2/table/Column;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    goto :goto_6

    :cond_b
    aget v9, v2, v7

    iget v10, v10, Lorg/h2/table/IndexColumn;->sortType:I

    if-eq v9, v10, :cond_c

    goto :goto_6

    :cond_c
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_d
    :goto_5
    rsub-int/lit8 v1, v8, 0x64

    int-to-long v4, v1

    :cond_e
    :goto_6
    if-nez p7, :cond_12

    if-eqz p8, :cond_12

    invoke-virtual/range {p8 .. p8}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual/range {p8 .. p8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/table/Column;

    invoke-virtual {v2}, Lorg/h2/table/Column;->getTable()Lorg/h2/table/Table;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/h2/index/BaseIndex;->getTable()Lorg/h2/table/Table;

    move-result-object v6

    if-ne v3, v6, :cond_f

    iget-object v3, v0, Lorg/h2/index/BaseIndex;->columns:[Lorg/h2/table/Column;

    array-length v6, v3

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v6, :cond_12

    aget-object v8, v3, v7

    if-ne v2, v8, :cond_10

    goto :goto_7

    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_11
    const/4 v8, 0x0

    goto :goto_9

    :cond_12
    const/4 v8, 0x1

    :goto_9
    const-wide/16 v1, 0x14

    if-eqz p7, :cond_13

    :goto_a
    add-long/2addr v13, v4

    :goto_b
    add-long/2addr v13, v1

    goto :goto_c

    :cond_13
    if-eqz v8, :cond_14

    add-long/2addr v13, v13

    goto :goto_a

    :cond_14
    add-long/2addr v13, v4

    iget-object v1, v0, Lorg/h2/index/BaseIndex;->columns:[Lorg/h2/table/Column;

    array-length v1, v1

    int-to-long v1, v1

    goto :goto_b

    :goto_c
    return-wide v13
.end method

.method public getCreateSQL()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/h2/index/BaseIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {p0}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/h2/index/BaseIndex;->getCreateSQLForCopy(Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreateSQLForCopy(Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CREATE "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/h2/index/BaseIndex;->indexType:Lorg/h2/index/IndexType;

    .line 9
    .line 10
    invoke-virtual {v1}, Lorg/h2/index/IndexType;->getSQL()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x20

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lorg/h2/index/BaseIndex;->table:Lorg/h2/table/Table;

    .line 23
    .line 24
    invoke-virtual {v1}, Lorg/h2/table/Table;->isHidden()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    const-string v1, "IF NOT EXISTS "

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p2, " ON "

    .line 39
    .line 40
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lorg/h2/engine/DbObjectBase;->comment:Ljava/lang/String;

    .line 51
    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    const-string p1, " COMMENT "

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lorg/h2/engine/DbObjectBase;->comment:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {p1}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    :cond_1
    const/16 p1, 0x28

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-direct {p0}, Lorg/h2/index/BaseIndex;->getColumnListSQL()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const/16 p2, 0x29

    .line 78
    .line 79
    invoke-static {v0, p1, p2}, Lch/qos/logback/core/joran/util/a;->s(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    return-object p1
.end method

.method public getDropSQL()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDuplicateKeyException(Ljava/lang/String;)Lorg/h2/message/DbException;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " ON "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lorg/h2/index/BaseIndex;->table:Lorg/h2/table/Table;

    .line 19
    .line 20
    invoke-virtual {v1}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, "("

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lorg/h2/index/BaseIndex;->getColumnListSQL()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, ")"

    .line 37
    .line 38
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    const-string v1, " VALUES "

    .line 45
    .line 46
    invoke-static {v0, v1, p1}, Lorg/apache/ftpserver/main/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :cond_0
    const/16 p1, 0x5bd1

    .line 51
    .line 52
    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1, p0}, Lorg/h2/message/DbException;->setSource(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    return-object p1
.end method

.method public getIndexColumns()[Lorg/h2/table/IndexColumn;
    .locals 1

    iget-object v0, p0, Lorg/h2/index/BaseIndex;->indexColumns:[Lorg/h2/table/IndexColumn;

    return-object v0
.end method

.method public getIndexType()Lorg/h2/index/IndexType;
    .locals 1

    iget-object v0, p0, Lorg/h2/index/BaseIndex;->indexType:Lorg/h2/index/IndexType;

    return-object v0
.end method

.method public getPlanSQL()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRow(Lorg/h2/engine/Session;J)Lorg/h2/result/Row;
    .locals 0

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public getTable()Lorg/h2/table/Table;
    .locals 1

    iget-object v0, p0, Lorg/h2/index/BaseIndex;->table:Lorg/h2/table/Table;

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public initBaseIndex(Lorg/h2/table/Table;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V
    .locals 2

    invoke-virtual {p1}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v0, p2, p3, v1}, Lorg/h2/schema/SchemaObjectBase;->initSchemaObjectBase(Lorg/h2/schema/Schema;ILjava/lang/String;I)V

    iput-object p5, p0, Lorg/h2/index/BaseIndex;->indexType:Lorg/h2/index/IndexType;

    iput-object p1, p0, Lorg/h2/index/BaseIndex;->table:Lorg/h2/table/Table;

    if-eqz p4, :cond_0

    iput-object p4, p0, Lorg/h2/index/BaseIndex;->indexColumns:[Lorg/h2/table/IndexColumn;

    array-length p1, p4

    new-array p1, p1, [Lorg/h2/table/Column;

    iput-object p1, p0, Lorg/h2/index/BaseIndex;->columns:[Lorg/h2/table/Column;

    array-length p1, p1

    new-array p2, p1, [I

    iput-object p2, p0, Lorg/h2/index/BaseIndex;->columnIds:[I

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    aget-object p3, p4, p2

    iget-object p3, p3, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    iget-object p5, p0, Lorg/h2/index/BaseIndex;->columns:[Lorg/h2/table/Column;

    aput-object p3, p5, p2

    iget-object p5, p0, Lorg/h2/index/BaseIndex;->columnIds:[I

    invoke-virtual {p3}, Lorg/h2/table/Column;->getColumnId()I

    move-result p3

    aput p3, p5, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isFirstColumn(Lorg/h2/table/Column;)Z
    .locals 2

    iget-object v0, p0, Lorg/h2/index/BaseIndex;->columns:[Lorg/h2/table/Column;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lorg/h2/table/Column;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isHidden()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/index/BaseIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/table/Table;->isHidden()Z

    move-result v0

    return v0
.end method

.method public isRowIdIndex()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public removeChildrenAndResources(Lorg/h2/engine/Session;)V
    .locals 2

    iget-object v0, p0, Lorg/h2/index/BaseIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {v0, p0}, Lorg/h2/table/Table;->removeIndex(Lorg/h2/index/Index;)V

    invoke-interface {p0, p1}, Lorg/h2/index/Index;->remove(Lorg/h2/engine/Session;)V

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/h2/engine/Database;->removeMeta(Lorg/h2/engine/Session;I)V

    return-void
.end method

.method public setMultiVersion(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/index/BaseIndex;->isMultiVersion:Z

    return-void
.end method

.method public setSortedInsertMode(Z)V
    .locals 0

    return-void
.end method
