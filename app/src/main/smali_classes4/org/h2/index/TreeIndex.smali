.class public Lorg/h2/index/TreeIndex;
.super Lorg/h2/index/BaseIndex;
.source "SourceFile"


# instance fields
.field private closed:Z

.field private root:Lorg/h2/index/TreeNode;

.field private rowCount:J

.field private final tableData:Lorg/h2/table/RegularTable;


# direct methods
.method public constructor <init>(Lorg/h2/table/RegularTable;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V
    .locals 0

    invoke-direct {p0}, Lorg/h2/index/BaseIndex;-><init>()V

    invoke-virtual/range {p0 .. p5}, Lorg/h2/index/BaseIndex;->initBaseIndex(Lorg/h2/table/Table;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    iput-object p1, p0, Lorg/h2/index/TreeIndex;->tableData:Lorg/h2/table/RegularTable;

    iget-object p1, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->isStarting()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p4}, Lorg/h2/index/BaseIndex;->checkIndexColumnTypes([Lorg/h2/table/IndexColumn;)V

    :cond_0
    return-void
.end method

.method private balance(Lorg/h2/index/TreeNode;Z)V
    .locals 8

    :goto_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, -0x1

    :goto_1
    iget v3, p1, Lorg/h2/index/TreeNode;->balance:I

    mul-int v3, v3, v2

    const/4 v4, 0x0

    if-eq v3, v0, :cond_4

    if-eqz v3, :cond_2

    if-eq v3, v1, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "b:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p1, Lorg/h2/index/TreeNode;->balance:I

    mul-int v0, v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto :goto_2

    :cond_1
    iput v4, p1, Lorg/h2/index/TreeNode;->balance:I

    return-void

    :cond_2
    neg-int p2, v2

    iput p2, p1, Lorg/h2/index/TreeNode;->balance:I

    :goto_2
    iget-object p2, p0, Lorg/h2/index/TreeIndex;->root:Lorg/h2/index/TreeNode;

    if-ne p1, p2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lorg/h2/index/TreeNode;->isFromLeft()Z

    move-result p2

    iget-object p1, p1, Lorg/h2/index/TreeNode;->parent:Lorg/h2/index/TreeNode;

    goto :goto_0

    :cond_4
    invoke-static {p1, p2}, Lorg/h2/index/TreeIndex;->child(Lorg/h2/index/TreeNode;Z)Lorg/h2/index/TreeNode;

    move-result-object v0

    iget v3, v0, Lorg/h2/index/TreeNode;->balance:I

    neg-int v5, v2

    if-ne v3, v5, :cond_5

    invoke-direct {p0, p1, v0}, Lorg/h2/index/TreeIndex;->replace(Lorg/h2/index/TreeNode;Lorg/h2/index/TreeNode;)V

    xor-int/lit8 v2, p2, 0x1

    invoke-static {v0, v2}, Lorg/h2/index/TreeIndex;->child(Lorg/h2/index/TreeNode;Z)Lorg/h2/index/TreeNode;

    move-result-object v2

    invoke-static {p1, p2, v2}, Lorg/h2/index/TreeIndex;->set(Lorg/h2/index/TreeNode;ZLorg/h2/index/TreeNode;)V

    xor-int/2addr p2, v1

    invoke-static {v0, p2, p1}, Lorg/h2/index/TreeIndex;->set(Lorg/h2/index/TreeNode;ZLorg/h2/index/TreeNode;)V

    iput v4, p1, Lorg/h2/index/TreeNode;->balance:I

    iput v4, v0, Lorg/h2/index/TreeNode;->balance:I

    goto :goto_5

    :cond_5
    xor-int/lit8 v3, p2, 0x1

    invoke-static {v0, v3}, Lorg/h2/index/TreeIndex;->child(Lorg/h2/index/TreeNode;Z)Lorg/h2/index/TreeNode;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/h2/index/TreeIndex;->replace(Lorg/h2/index/TreeNode;Lorg/h2/index/TreeNode;)V

    xor-int/lit8 v6, p2, 0x1

    invoke-static {v3, p2}, Lorg/h2/index/TreeIndex;->child(Lorg/h2/index/TreeNode;Z)Lorg/h2/index/TreeNode;

    move-result-object v7

    invoke-static {v0, v6, v7}, Lorg/h2/index/TreeIndex;->set(Lorg/h2/index/TreeNode;ZLorg/h2/index/TreeNode;)V

    invoke-static {v3, p2, v0}, Lorg/h2/index/TreeIndex;->set(Lorg/h2/index/TreeNode;ZLorg/h2/index/TreeNode;)V

    xor-int/lit8 v6, p2, 0x1

    invoke-static {v3, v6}, Lorg/h2/index/TreeIndex;->child(Lorg/h2/index/TreeNode;Z)Lorg/h2/index/TreeNode;

    move-result-object v6

    invoke-static {p1, p2, v6}, Lorg/h2/index/TreeIndex;->set(Lorg/h2/index/TreeNode;ZLorg/h2/index/TreeNode;)V

    xor-int/2addr p2, v1

    invoke-static {v3, p2, p1}, Lorg/h2/index/TreeIndex;->set(Lorg/h2/index/TreeNode;ZLorg/h2/index/TreeNode;)V

    iget p2, v3, Lorg/h2/index/TreeNode;->balance:I

    if-ne p2, v5, :cond_6

    move v1, v2

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    iput v1, p1, Lorg/h2/index/TreeNode;->balance:I

    if-ne p2, v2, :cond_7

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    :goto_4
    iput v5, v0, Lorg/h2/index/TreeNode;->balance:I

    iput v4, v3, Lorg/h2/index/TreeNode;->balance:I

    :goto_5
    return-void
.end method

.method private static child(Lorg/h2/index/TreeNode;Z)Lorg/h2/index/TreeNode;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/h2/index/TreeNode;->left:Lorg/h2/index/TreeNode;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/h2/index/TreeNode;->right:Lorg/h2/index/TreeNode;

    :goto_0
    return-object p0
.end method

.method private find(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 2

    .line 2
    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/h2/index/TreeIndex;->root:Lorg/h2/index/TreeNode;

    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lorg/h2/index/TreeNode;->left:Lorg/h2/index/TreeNode;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    move-object p1, v0

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v0, Lorg/h2/index/TreeCursor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p2}, Lorg/h2/index/TreeCursor;-><init>(Lorg/h2/index/TreeIndex;Lorg/h2/index/TreeNode;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)V

    return-object v0

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/h2/index/TreeIndex;->findFirstNode(Lorg/h2/result/SearchRow;Z)Lorg/h2/index/TreeNode;

    move-result-object v0

    new-instance v1, Lorg/h2/index/TreeCursor;

    invoke-direct {v1, p0, v0, p1, p2}, Lorg/h2/index/TreeCursor;-><init>(Lorg/h2/index/TreeIndex;Lorg/h2/index/TreeNode;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)V

    return-object v1
.end method

.method private findFirstNode(Lorg/h2/result/SearchRow;Z)Lorg/h2/index/TreeNode;
    .locals 3

    iget-object v0, p0, Lorg/h2/index/TreeIndex;->root:Lorg/h2/index/TreeNode;

    move-object v1, v0

    :goto_0
    if-eqz v0, :cond_4

    iget-object v1, v0, Lorg/h2/index/TreeNode;->row:Lorg/h2/result/Row;

    invoke-virtual {p0, v1, p1}, Lorg/h2/index/BaseIndex;->compareRows(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)I

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, v0, Lorg/h2/index/TreeNode;->row:Lorg/h2/result/Row;

    invoke-virtual {p0, v1, p1}, Lorg/h2/index/BaseIndex;->compareKeys(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)I

    move-result v1

    :cond_0
    if-nez v1, :cond_2

    if-eqz p2, :cond_1

    return-object v0

    :cond_1
    :goto_1
    iget-object v1, v0, Lorg/h2/index/TreeNode;->left:Lorg/h2/index/TreeNode;

    goto :goto_2

    :cond_2
    if-lez v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lorg/h2/index/TreeNode;->right:Lorg/h2/index/TreeNode;

    :goto_2
    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method private replace(Lorg/h2/index/TreeNode;Lorg/h2/index/TreeNode;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/index/TreeIndex;->root:Lorg/h2/index/TreeNode;

    if-ne p1, v0, :cond_0

    iput-object p2, p0, Lorg/h2/index/TreeIndex;->root:Lorg/h2/index/TreeNode;

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    iput-object p1, p2, Lorg/h2/index/TreeNode;->parent:Lorg/h2/index/TreeNode;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/h2/index/TreeNode;->parent:Lorg/h2/index/TreeNode;

    invoke-virtual {p1}, Lorg/h2/index/TreeNode;->isFromLeft()Z

    move-result p1

    invoke-static {v0, p1, p2}, Lorg/h2/index/TreeIndex;->set(Lorg/h2/index/TreeNode;ZLorg/h2/index/TreeNode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static set(Lorg/h2/index/TreeNode;ZLorg/h2/index/TreeNode;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p2, p0, Lorg/h2/index/TreeNode;->left:Lorg/h2/index/TreeNode;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lorg/h2/index/TreeNode;->right:Lorg/h2/index/TreeNode;

    :goto_0
    if-eqz p2, :cond_1

    iput-object p0, p2, Lorg/h2/index/TreeNode;->parent:Lorg/h2/index/TreeNode;

    :cond_1
    return-void
.end method


# virtual methods
.method public add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 5

    iget-boolean p1, p0, Lorg/h2/index/TreeIndex;->closed:Z

    if-nez p1, :cond_6

    new-instance p1, Lorg/h2/index/TreeNode;

    invoke-direct {p1, p2}, Lorg/h2/index/TreeNode;-><init>(Lorg/h2/result/Row;)V

    iget-object v0, p0, Lorg/h2/index/TreeIndex;->root:Lorg/h2/index/TreeNode;

    const/4 v1, 0x1

    move-object v2, v0

    const/4 v3, 0x1

    :goto_0
    if-nez v0, :cond_1

    const-wide/16 v0, 0x1

    if-nez v2, :cond_0

    iput-object p1, p0, Lorg/h2/index/TreeIndex;->root:Lorg/h2/index/TreeNode;

    :goto_1
    iget-wide p1, p0, Lorg/h2/index/TreeIndex;->rowCount:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/h2/index/TreeIndex;->rowCount:J

    return-void

    :cond_0
    invoke-static {v2, v3, p1}, Lorg/h2/index/TreeIndex;->set(Lorg/h2/index/TreeNode;ZLorg/h2/index/TreeNode;)V

    invoke-direct {p0, v2, v3}, Lorg/h2/index/TreeIndex;->balance(Lorg/h2/index/TreeNode;Z)V

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lorg/h2/index/TreeNode;->row:Lorg/h2/result/Row;

    invoke-virtual {p0, p2, v2}, Lorg/h2/index/BaseIndex;->compareRows(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/h2/index/BaseIndex;->indexType:Lorg/h2/index/IndexType;

    invoke-virtual {v3}, Lorg/h2/index/IndexType;->isUnique()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, p2}, Lorg/h2/index/BaseIndex;->containsNullAndAllowMultipleNull(Lorg/h2/result/SearchRow;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/index/BaseIndex;->getDuplicateKeyException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_2
    invoke-virtual {p0, p2, v2}, Lorg/h2/index/BaseIndex;->compareKeys(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)I

    move-result v3

    :cond_4
    if-gez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_3
    invoke-static {v0, v3}, Lorg/h2/index/TreeIndex;->child(Lorg/h2/index/TreeNode;Z)Lorg/h2/index/TreeNode;

    move-result-object v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_0

    :cond_6
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public canGetFirstOrLast()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public checkRename()V
    .locals 0

    return-void
.end method

.method public close(Lorg/h2/engine/Session;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/h2/index/TreeIndex;->root:Lorg/h2/index/TreeNode;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/h2/index/TreeIndex;->closed:Z

    return-void
.end method

.method public find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lorg/h2/index/TreeIndex;->find(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public find(Lorg/h2/table/TableFilter;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 0

    .line 3
    invoke-direct {p0, p2, p3}, Lorg/h2/index/TreeIndex;->find(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public findFirstOrLast(Lorg/h2/engine/Session;Z)Lorg/h2/index/Cursor;
    .locals 2

    iget-boolean v0, p0, Lorg/h2/index/TreeIndex;->closed:Z

    if-nez v0, :cond_8

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1, v1, v1}, Lorg/h2/index/TreeIndex;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Lorg/h2/index/Cursor;->next()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Lorg/h2/index/Cursor;->getSearchRow()Lorg/h2/result/SearchRow;

    move-result-object p2

    iget-object v1, p0, Lorg/h2/index/BaseIndex;->columnIds:[I

    aget v1, v1, v0

    invoke-interface {p2, v1}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object p2

    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq p2, v1, :cond_0

    :cond_1
    return-object p1

    :cond_2
    iget-object p1, p0, Lorg/h2/index/TreeIndex;->root:Lorg/h2/index/TreeNode;

    :goto_0
    if-eqz p1, :cond_4

    iget-object p2, p1, Lorg/h2/index/TreeNode;->right:Lorg/h2/index/TreeNode;

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, p2

    goto :goto_0

    :cond_4
    :goto_1
    new-instance p2, Lorg/h2/index/TreeCursor;

    invoke-direct {p2, p0, p1, v1, v1}, Lorg/h2/index/TreeCursor;-><init>(Lorg/h2/index/TreeIndex;Lorg/h2/index/TreeNode;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)V

    if-nez p1, :cond_5

    return-object p2

    :cond_5
    invoke-virtual {p2}, Lorg/h2/index/TreeCursor;->getSearchRow()Lorg/h2/result/SearchRow;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lorg/h2/index/BaseIndex;->columnIds:[I

    aget v1, v1, v0

    invoke-interface {p1, v1}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object p1

    sget-object v1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq p1, v1, :cond_7

    return-object p2

    :cond_7
    invoke-virtual {p2}, Lorg/h2/index/TreeCursor;->previous()Z

    move-result p1

    if-nez p1, :cond_5

    :goto_2
    return-object p2

    :cond_8
    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getCost(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;Ljava/util/HashSet;)D
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Session;",
            "[I[",
            "Lorg/h2/table/TableFilter;",
            "I",
            "Lorg/h2/result/SortOrder;",
            "Ljava/util/HashSet<",
            "Lorg/h2/table/Column;",
            ">;)D"
        }
    .end annotation

    iget-object p1, p0, Lorg/h2/index/TreeIndex;->tableData:Lorg/h2/table/RegularTable;

    invoke-virtual {p1}, Lorg/h2/table/RegularTable;->getRowCountApproximation()J

    move-result-wide v2

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lorg/h2/index/BaseIndex;->getCostRangeIndex([IJ[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;ZLjava/util/HashSet;)J

    move-result-wide p1

    long-to-double p1, p1

    return-wide p1
.end method

.method public getDiskSpaceUsed()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getRowCount(Lorg/h2/engine/Session;)J
    .locals 2

    iget-wide v0, p0, Lorg/h2/index/TreeIndex;->rowCount:J

    return-wide v0
.end method

.method public getRowCountApproximation()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/index/TreeIndex;->rowCount:J

    return-wide v0
.end method

.method public needRebuild()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public remove(Lorg/h2/engine/Session;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/h2/index/TreeIndex;->truncate(Lorg/h2/engine/Session;)V

    return-void
.end method

.method public remove(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 8

    .line 2
    iget-boolean p1, p0, Lorg/h2/index/TreeIndex;->closed:Z

    if-nez p1, :cond_14

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/h2/index/TreeIndex;->findFirstNode(Lorg/h2/result/SearchRow;Z)Lorg/h2/index/TreeNode;

    move-result-object p2

    if-eqz p2, :cond_13

    iget-object v0, p2, Lorg/h2/index/TreeNode;->left:Lorg/h2/index/TreeNode;

    if-nez v0, :cond_0

    iget-object v0, p2, Lorg/h2/index/TreeNode;->right:Lorg/h2/index/TreeNode;

    goto/16 :goto_4

    :cond_0
    iget-object v1, p2, Lorg/h2/index/TreeNode;->right:Lorg/h2/index/TreeNode;

    if-nez v1, :cond_1

    goto :goto_4

    :cond_1
    :goto_0
    iget-object v1, v0, Lorg/h2/index/TreeNode;->right:Lorg/h2/index/TreeNode;

    if-eqz v1, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lorg/h2/index/TreeNode;->left:Lorg/h2/index/TreeNode;

    iget v2, v0, Lorg/h2/index/TreeNode;->balance:I

    iget v3, p2, Lorg/h2/index/TreeNode;->balance:I

    iput v3, v0, Lorg/h2/index/TreeNode;->balance:I

    iput v2, p2, Lorg/h2/index/TreeNode;->balance:I

    iget-object v2, v0, Lorg/h2/index/TreeNode;->parent:Lorg/h2/index/TreeNode;

    iget-object v3, p2, Lorg/h2/index/TreeNode;->parent:Lorg/h2/index/TreeNode;

    iget-object v4, p0, Lorg/h2/index/TreeIndex;->root:Lorg/h2/index/TreeNode;

    if-ne p2, v4, :cond_3

    iput-object v0, p0, Lorg/h2/index/TreeIndex;->root:Lorg/h2/index/TreeNode;

    :cond_3
    iput-object v3, v0, Lorg/h2/index/TreeNode;->parent:Lorg/h2/index/TreeNode;

    if-eqz v3, :cond_5

    iget-object v4, v3, Lorg/h2/index/TreeNode;->right:Lorg/h2/index/TreeNode;

    if-ne v4, p2, :cond_4

    iput-object v0, v3, Lorg/h2/index/TreeNode;->right:Lorg/h2/index/TreeNode;

    goto :goto_1

    :cond_4
    iput-object v0, v3, Lorg/h2/index/TreeNode;->left:Lorg/h2/index/TreeNode;

    :cond_5
    :goto_1
    if-ne v2, p2, :cond_7

    iput-object v0, p2, Lorg/h2/index/TreeNode;->parent:Lorg/h2/index/TreeNode;

    iget-object v2, p2, Lorg/h2/index/TreeNode;->left:Lorg/h2/index/TreeNode;

    if-ne v2, v0, :cond_6

    iput-object p2, v0, Lorg/h2/index/TreeNode;->left:Lorg/h2/index/TreeNode;

    iget-object v2, p2, Lorg/h2/index/TreeNode;->right:Lorg/h2/index/TreeNode;

    iput-object v2, v0, Lorg/h2/index/TreeNode;->right:Lorg/h2/index/TreeNode;

    goto :goto_3

    :cond_6
    iput-object p2, v0, Lorg/h2/index/TreeNode;->right:Lorg/h2/index/TreeNode;

    :goto_2
    iput-object v2, v0, Lorg/h2/index/TreeNode;->left:Lorg/h2/index/TreeNode;

    goto :goto_3

    :cond_7
    iput-object v2, p2, Lorg/h2/index/TreeNode;->parent:Lorg/h2/index/TreeNode;

    iput-object p2, v2, Lorg/h2/index/TreeNode;->right:Lorg/h2/index/TreeNode;

    iget-object v2, p2, Lorg/h2/index/TreeNode;->right:Lorg/h2/index/TreeNode;

    iput-object v2, v0, Lorg/h2/index/TreeNode;->right:Lorg/h2/index/TreeNode;

    iget-object v2, p2, Lorg/h2/index/TreeNode;->left:Lorg/h2/index/TreeNode;

    goto :goto_2

    :goto_3
    sget-boolean v2, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v2, :cond_8

    iget-object v2, v0, Lorg/h2/index/TreeNode;->right:Lorg/h2/index/TreeNode;

    if-nez v2, :cond_8

    const-string v2, "tree corrupted"

    invoke-static {v2}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_8
    iget-object v2, v0, Lorg/h2/index/TreeNode;->right:Lorg/h2/index/TreeNode;

    iput-object v0, v2, Lorg/h2/index/TreeNode;->parent:Lorg/h2/index/TreeNode;

    iget-object v2, v0, Lorg/h2/index/TreeNode;->left:Lorg/h2/index/TreeNode;

    iput-object v0, v2, Lorg/h2/index/TreeNode;->parent:Lorg/h2/index/TreeNode;

    iput-object v1, p2, Lorg/h2/index/TreeNode;->left:Lorg/h2/index/TreeNode;

    if-eqz v1, :cond_9

    iput-object p2, v1, Lorg/h2/index/TreeNode;->parent:Lorg/h2/index/TreeNode;

    :cond_9
    const/4 v0, 0x0

    iput-object v0, p2, Lorg/h2/index/TreeNode;->right:Lorg/h2/index/TreeNode;

    move-object v0, v1

    :goto_4
    iget-wide v1, p0, Lorg/h2/index/TreeIndex;->rowCount:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lorg/h2/index/TreeIndex;->rowCount:J

    invoke-virtual {p2}, Lorg/h2/index/TreeNode;->isFromLeft()Z

    move-result v1

    invoke-direct {p0, p2, v0}, Lorg/h2/index/TreeIndex;->replace(Lorg/h2/index/TreeNode;Lorg/h2/index/TreeNode;)V

    :goto_5
    iget-object p2, p2, Lorg/h2/index/TreeNode;->parent:Lorg/h2/index/TreeNode;

    if-eqz p2, :cond_12

    const/4 v0, -0x1

    if-eqz v1, :cond_a

    const/4 v2, 0x1

    goto :goto_6

    :cond_a
    const/4 v2, -0x1

    :goto_6
    iget v3, p2, Lorg/h2/index/TreeNode;->balance:I

    mul-int v3, v3, v2

    const/4 v4, 0x0

    if-eq v3, v0, :cond_11

    if-eqz v3, :cond_10

    if-eq v3, p1, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "b: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p2, Lorg/h2/index/TreeNode;->balance:I

    mul-int v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto :goto_9

    :cond_b
    xor-int/lit8 v0, v1, 0x1

    invoke-static {p2, v0}, Lorg/h2/index/TreeIndex;->child(Lorg/h2/index/TreeNode;Z)Lorg/h2/index/TreeNode;

    move-result-object v0

    iget v3, v0, Lorg/h2/index/TreeNode;->balance:I

    mul-int v5, v3, v2

    if-ltz v5, :cond_d

    invoke-direct {p0, p2, v0}, Lorg/h2/index/TreeIndex;->replace(Lorg/h2/index/TreeNode;Lorg/h2/index/TreeNode;)V

    xor-int/lit8 v5, v1, 0x1

    invoke-static {v0, v1}, Lorg/h2/index/TreeIndex;->child(Lorg/h2/index/TreeNode;Z)Lorg/h2/index/TreeNode;

    move-result-object v6

    invoke-static {p2, v5, v6}, Lorg/h2/index/TreeIndex;->set(Lorg/h2/index/TreeNode;ZLorg/h2/index/TreeNode;)V

    invoke-static {v0, v1, p2}, Lorg/h2/index/TreeIndex;->set(Lorg/h2/index/TreeNode;ZLorg/h2/index/TreeNode;)V

    if-nez v3, :cond_c

    iput v2, p2, Lorg/h2/index/TreeNode;->balance:I

    neg-int p1, v2

    iput p1, v0, Lorg/h2/index/TreeNode;->balance:I

    return-void

    :cond_c
    iput v4, p2, Lorg/h2/index/TreeNode;->balance:I

    iput v4, v0, Lorg/h2/index/TreeNode;->balance:I

    move-object p2, v0

    goto :goto_9

    :cond_d
    invoke-static {v0, v1}, Lorg/h2/index/TreeIndex;->child(Lorg/h2/index/TreeNode;Z)Lorg/h2/index/TreeNode;

    move-result-object v3

    invoke-direct {p0, p2, v3}, Lorg/h2/index/TreeIndex;->replace(Lorg/h2/index/TreeNode;Lorg/h2/index/TreeNode;)V

    iget v5, v3, Lorg/h2/index/TreeNode;->balance:I

    xor-int/lit8 v6, v1, 0x1

    invoke-static {v3, v6}, Lorg/h2/index/TreeIndex;->child(Lorg/h2/index/TreeNode;Z)Lorg/h2/index/TreeNode;

    move-result-object v6

    invoke-static {v0, v1, v6}, Lorg/h2/index/TreeIndex;->set(Lorg/h2/index/TreeNode;ZLorg/h2/index/TreeNode;)V

    xor-int/lit8 v6, v1, 0x1

    invoke-static {v3, v6, v0}, Lorg/h2/index/TreeIndex;->set(Lorg/h2/index/TreeNode;ZLorg/h2/index/TreeNode;)V

    xor-int/lit8 v6, v1, 0x1

    invoke-static {v3, v1}, Lorg/h2/index/TreeIndex;->child(Lorg/h2/index/TreeNode;Z)Lorg/h2/index/TreeNode;

    move-result-object v7

    invoke-static {p2, v6, v7}, Lorg/h2/index/TreeIndex;->set(Lorg/h2/index/TreeNode;ZLorg/h2/index/TreeNode;)V

    invoke-static {v3, v1, p2}, Lorg/h2/index/TreeIndex;->set(Lorg/h2/index/TreeNode;ZLorg/h2/index/TreeNode;)V

    if-ne v5, v2, :cond_e

    neg-int v1, v2

    goto :goto_7

    :cond_e
    const/4 v1, 0x0

    :goto_7
    iput v1, p2, Lorg/h2/index/TreeNode;->balance:I

    neg-int p2, v2

    if-ne v5, p2, :cond_f

    goto :goto_8

    :cond_f
    const/4 v2, 0x0

    :goto_8
    iput v2, v0, Lorg/h2/index/TreeNode;->balance:I

    iput v4, v3, Lorg/h2/index/TreeNode;->balance:I

    move-object p2, v3

    goto :goto_9

    :cond_10
    iput v2, p2, Lorg/h2/index/TreeNode;->balance:I

    return-void

    :cond_11
    iput v4, p2, Lorg/h2/index/TreeNode;->balance:I

    :goto_9
    invoke-virtual {p2}, Lorg/h2/index/TreeNode;->isFromLeft()Z

    move-result v1

    goto/16 :goto_5

    :cond_12
    return-void

    :cond_13
    const-string p1, "not found!"

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_14
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public truncate(Lorg/h2/engine/Session;)V
    .locals 2

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/h2/index/TreeIndex;->root:Lorg/h2/index/TreeNode;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/h2/index/TreeIndex;->rowCount:J

    return-void
.end method
