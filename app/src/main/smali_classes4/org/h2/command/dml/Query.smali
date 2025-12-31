.class public abstract Lorg/h2/command/dml/Query;
.super Lorg/h2/command/Prepared;
.source "SourceFile"


# instance fields
.field private cacheableChecked:Z

.field protected distinct:Z

.field private lastEvaluated:J

.field private lastLimit:I

.field private lastParameters:[Lorg/h2/value/Value;

.field private lastResult:Lorg/h2/result/ResultInterface;

.field protected limitExpr:Lorg/h2/expression/Expression;

.field private neverLazy:Z

.field private noCache:Z

.field protected offsetExpr:Lorg/h2/expression/Expression;

.field protected randomAccessResult:Z

.field protected sampleSizeExpr:Lorg/h2/expression/Expression;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/h2/command/Prepared;-><init>(Lorg/h2/engine/Session;)V

    return-void
.end method

.method private closeLastResult()V
    .locals 1

    iget-object v0, p0, Lorg/h2/command/dml/Query;->lastResult:Lorg/h2/result/ResultInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->close()V

    :cond_0
    return-void
.end method

.method public static initOrder(Lorg/h2/engine/Session;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IZLjava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Session;",
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Expression;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lorg/h2/command/dml/SelectOrderBy;",
            ">;IZ",
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/TableFilter;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    invoke-virtual/range {p0 .. p0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/command/dml/SelectOrderBy;

    iget-object v6, v5, Lorg/h2/command/dml/SelectOrderBy;->expression:Lorg/h2/expression/Expression;

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    instance-of v8, v6, Lorg/h2/expression/ExpressionColumn;

    if-eqz v8, :cond_8

    move-object v8, v6

    check-cast v8, Lorg/h2/expression/ExpressionColumn;

    invoke-virtual {v8}, Lorg/h2/expression/ExpressionColumn;->getOriginalTableAliasName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lorg/h2/expression/ExpressionColumn;->getOriginalColumnName()Ljava/lang/String;

    move-result-object v12

    move/from16 v13, p4

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_a

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/h2/expression/Expression;

    instance-of v9, v15, Lorg/h2/expression/ExpressionColumn;

    if-eqz v9, :cond_3

    check-cast v15, Lorg/h2/expression/ExpressionColumn;

    invoke-virtual {v15}, Lorg/h2/expression/ExpressionColumn;->getColumnName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v12, v9}, Lorg/h2/engine/Database;->equalsIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    if-eqz v11, :cond_6

    invoke-virtual {v15}, Lorg/h2/expression/ExpressionColumn;->getOriginalTableAliasName()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_2

    if-eqz v2, :cond_7

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v9, :cond_7

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/h2/table/TableFilter;

    invoke-virtual/range {v16 .. v16}, Lorg/h2/table/TableFilter;->getTableAlias()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10, v11}, Lorg/h2/engine/Database;->equalsIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_4

    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v9, v11}, Lorg/h2/engine/Database;->equalsIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    goto :goto_3

    :cond_3
    instance-of v9, v15, Lorg/h2/expression/Alias;

    if-nez v9, :cond_4

    goto :goto_5

    :cond_4
    if-nez v11, :cond_5

    invoke-virtual {v15}, Lorg/h2/expression/Expression;->getAlias()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v12, v9}, Lorg/h2/engine/Database;->equalsIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v15}, Lorg/h2/expression/Expression;->getNonAliasExpression()Lorg/h2/expression/Expression;

    move-result-object v9

    instance-of v10, v9, Lorg/h2/expression/ExpressionColumn;

    if-eqz v10, :cond_7

    check-cast v9, Lorg/h2/expression/ExpressionColumn;

    invoke-virtual {v8}, Lorg/h2/expression/ExpressionColumn;->getSQL()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lorg/h2/expression/ExpressionColumn;->getSQL()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9}, Lorg/h2/expression/ExpressionColumn;->getColumnName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v12, v9}, Lorg/h2/engine/Database;->equalsIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v3, v10, v15}, Lorg/h2/engine/Database;->equalsIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    goto :goto_5

    :cond_6
    :goto_3
    if-eqz v9, :cond_7

    :goto_4
    move v7, v14

    goto :goto_7

    :cond_7
    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_8
    move/from16 v13, p4

    invoke-virtual {v6}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v8

    if-eqz v1, :cond_a

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v9, :cond_a

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v3, v11, v8}, Lorg/h2/engine/Database;->equalsIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    move v7, v10

    :goto_7
    const/4 v9, 0x1

    goto :goto_8

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_a
    const/4 v9, 0x0

    :goto_8
    if-nez v9, :cond_c

    if-nez p5, :cond_b

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_b
    const v0, 0x15fd4

    invoke-virtual {v6}, Lorg/h2/expression/Expression;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_c
    :goto_9
    add-int/lit8 v6, v7, 0x1

    invoke-static {v6}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v6

    invoke-static {v6}, Lorg/h2/expression/ValueExpression;->get(Lorg/h2/value/Value;)Lorg/h2/expression/ValueExpression;

    move-result-object v6

    iput-object v6, v5, Lorg/h2/command/dml/SelectOrderBy;->columnIndexExpr:Lorg/h2/expression/Expression;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/expression/Expression;

    invoke-virtual {v6}, Lorg/h2/expression/Expression;->getNonAliasExpression()Lorg/h2/expression/Expression;

    move-result-object v6

    iput-object v6, v5, Lorg/h2/command/dml/SelectOrderBy;->expression:Lorg/h2/expression/Expression;

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method private queryWithoutCacheLazyCheck(ILorg/h2/result/ResultTarget;)Lorg/h2/result/ResultInterface;
    .locals 4

    iget-boolean v0, p0, Lorg/h2/command/dml/Query;->neverLazy:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->isLazyQueryExecution()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3, v1}, Lorg/h2/engine/Session;->setLazyQueryExecution(Z)V

    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/h2/command/dml/Query;->queryWithoutCache(ILorg/h2/result/ResultTarget;)Lorg/h2/result/ResultInterface;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    iget-object p2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {p2, v2}, Lorg/h2/engine/Session;->setLazyQueryExecution(Z)V

    :cond_2
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_3

    iget-object p2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {p2, v2}, Lorg/h2/engine/Session;->setLazyQueryExecution(Z)V

    :cond_3
    throw p1
.end method

.method private sameResultAsLast(Lorg/h2/engine/Session;[Lorg/h2/value/Value;[Lorg/h2/value/Value;J)Z
    .locals 7

    iget-boolean v0, p0, Lorg/h2/command/dml/Query;->cacheableChecked:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/h2/command/dml/Query;->getMaxDataModificationId()J

    move-result-wide v3

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/h2/command/dml/Query;->noCache:Z

    iput-boolean v1, p0, Lorg/h2/command/dml/Query;->cacheableChecked:Z

    :cond_1
    iget-boolean v0, p0, Lorg/h2/command/dml/Query;->noCache:Z

    if-eqz v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    const/4 v0, 0x0

    :goto_1
    array-length v3, p2

    if-ge v0, v3, :cond_5

    aget-object v3, p3, v0

    aget-object v4, p2, v0

    invoke-virtual {v3}, Lorg/h2/value/Value;->getType()I

    move-result v5

    invoke-virtual {v4}, Lorg/h2/value/Value;->getType()I

    move-result v6

    if-ne v5, v6, :cond_4

    invoke-virtual {p1, v3, v4}, Lorg/h2/engine/Database;->areEqual(Lorg/h2/value/Value;Lorg/h2/value/Value;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return v2

    :cond_5
    sget-object p2, Lorg/h2/expression/ExpressionVisitor;->DETERMINISTIC_VISITOR:Lorg/h2/expression/ExpressionVisitor;

    invoke-virtual {p0, p2}, Lorg/h2/command/dml/Query;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result p2

    if-eqz p2, :cond_8

    sget-object p2, Lorg/h2/expression/ExpressionVisitor;->INDEPENDENT_VISITOR:Lorg/h2/expression/ExpressionVisitor;

    invoke-virtual {p0, p2}, Lorg/h2/command/dml/Query;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lorg/h2/engine/Database;->getModificationDataId()J

    move-result-wide p1

    cmp-long p3, p1, p4

    if-lez p3, :cond_7

    invoke-virtual {p0}, Lorg/h2/command/dml/Query;->getMaxDataModificationId()J

    move-result-wide p1

    cmp-long p3, p1, p4

    if-lez p3, :cond_7

    return v2

    :cond_7
    return v1

    :cond_8
    :goto_3
    return v2
.end method


# virtual methods
.method public abstract addGlobalCondition(Lorg/h2/expression/Parameter;II)V
.end method

.method public addParameter(Lorg/h2/expression/Parameter;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/command/Prepared;->parameters:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/Prepared;->parameters:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lorg/h2/command/Prepared;->parameters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract allowGlobalConditions()Z
.end method

.method public disableCache()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/command/dml/Query;->noCache:Z

    return-void
.end method

.method public abstract fireBeforeSelectTriggers()V
.end method

.method public abstract getColumnCount()I
.end method

.method public abstract getCost()D
.end method

.method public getCostAsExpression()I
    .locals 4

    invoke-virtual {p0}, Lorg/h2/command/dml/Query;->getCost()D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double v0, v0, v2

    add-double/2addr v0, v2

    const-wide v2, 0x412e848000000000L    # 1000000.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public abstract getExpressions()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Expression;",
            ">;"
        }
    .end annotation
.end method

.method public getLimit()Lorg/h2/expression/Expression;
    .locals 1

    iget-object v0, p0, Lorg/h2/command/dml/Query;->limitExpr:Lorg/h2/expression/Expression;

    return-object v0
.end method

.method public final getMaxDataModificationId()J
    .locals 2

    invoke-static {}, Lorg/h2/expression/ExpressionVisitor;->getMaxModificationIdVisitor()Lorg/h2/expression/ExpressionVisitor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/command/dml/Query;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    invoke-virtual {v0}, Lorg/h2/expression/ExpressionVisitor;->getMaxDataModificationId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOffset()Lorg/h2/expression/Expression;
    .locals 1

    iget-object v0, p0, Lorg/h2/command/dml/Query;->offsetExpr:Lorg/h2/expression/Expression;

    return-object v0
.end method

.method public final getParameterValues()[Lorg/h2/value/Value;
    .locals 5

    invoke-virtual {p0}, Lorg/h2/command/Prepared;->getParameters()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Lorg/h2/value/Value;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/expression/Parameter;

    invoke-virtual {v4}, Lorg/h2/expression/Parameter;->getParamValue()Lorg/h2/value/Value;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getSampleSizeValue(Lorg/h2/engine/Session;)I
    .locals 2

    iget-object v0, p0, Lorg/h2/command/dml/Query;->sampleSizeExpr:Lorg/h2/expression/Expression;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->optimize(Lorg/h2/engine/Session;)Lorg/h2/expression/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p1

    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p1, v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Lorg/h2/value/Value;->getInt()I

    move-result p1

    return p1
.end method

.method public abstract getTables()Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lorg/h2/table/Table;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasOrder()Z
.end method

.method public abstract init()V
.end method

.method public isDistinct()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/command/dml/Query;->distinct:Z

    return v0
.end method

.method public abstract isEverything(Lorg/h2/expression/ExpressionVisitor;)Z
.end method

.method public isNeverLazy()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/command/dml/Query;->neverLazy:Z

    return v0
.end method

.method public isQuery()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTransactional()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract isUnion()Z
.end method

.method public abstract mapColumns(Lorg/h2/table/ColumnResolver;I)V
.end method

.method public abstract prepareJoinBatch()V
.end method

.method public prepareOrder(Ljava/util/ArrayList;I)Lorg/h2/result/SortOrder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/command/dml/SelectOrderBy;",
            ">;I)",
            "Lorg/h2/result/SortOrder;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [I

    new-array v2, v0, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_6

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/command/dml/SelectOrderBy;

    iget-object v6, v5, Lorg/h2/command/dml/SelectOrderBy;->columnIndexExpr:Lorg/h2/expression/Expression;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/h2/expression/Expression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v6

    sget-object v7, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne v6, v7, :cond_0

    const/4 v7, 0x0

    const/4 v8, 0x0

    goto :goto_2

    :cond_0
    invoke-virtual {v6}, Lorg/h2/value/Value;->getInt()I

    move-result v6

    if-gez v6, :cond_1

    neg-int v6, v6

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    add-int/lit8 v8, v6, -0x1

    if-ltz v8, :cond_5

    if-ge v8, p2, :cond_5

    :goto_2
    aput v8, v1, v4

    iget-boolean v6, v5, Lorg/h2/command/dml/SelectOrderBy;->descending:Z

    if-eqz v7, :cond_2

    xor-int/lit8 v6, v6, 0x1

    :cond_2
    iget-boolean v7, v5, Lorg/h2/command/dml/SelectOrderBy;->nullsFirst:Z

    if-eqz v7, :cond_3

    add-int/lit8 v6, v6, 0x2

    goto :goto_3

    :cond_3
    iget-boolean v5, v5, Lorg/h2/command/dml/SelectOrderBy;->nullsLast:Z

    if-eqz v5, :cond_4

    add-int/lit8 v6, v6, 0x4

    :cond_4
    :goto_3
    aput v6, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const p2, 0x15fd4

    invoke-static {p2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_6
    new-instance p2, Lorg/h2/result/SortOrder;

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-direct {p2, v0, v1, v2, p1}, Lorg/h2/result/SortOrder;-><init>(Lorg/h2/engine/Database;[I[ILjava/util/ArrayList;)V

    return-object p2
.end method

.method public final query(I)Lorg/h2/result/ResultInterface;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/h2/command/dml/Query;->query(ILorg/h2/result/ResultTarget;)Lorg/h2/result/ResultInterface;

    move-result-object p1

    return-object p1
.end method

.method public final query(ILorg/h2/result/ResultTarget;)Lorg/h2/result/ResultInterface;
    .locals 9

    .line 2
    invoke-virtual {p0}, Lorg/h2/command/dml/Query;->isUnion()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/h2/command/dml/Query;->queryWithoutCacheLazyCheck(ILorg/h2/result/ResultTarget;)Lorg/h2/result/ResultInterface;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/h2/command/dml/Query;->fireBeforeSelectTriggers()V

    iget-boolean v0, p0, Lorg/h2/command/dml/Query;->noCache:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getOptimizeReuseResults()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v0}, Lorg/h2/engine/Session;->isLazyQueryExecution()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/h2/command/dml/Query;->getParameterValues()[Lorg/h2/value/Value;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getModificationDataId()J

    move-result-wide v7

    sget-object v1, Lorg/h2/expression/ExpressionVisitor;->DETERMINISTIC_VISITOR:Lorg/h2/expression/ExpressionVisitor;

    invoke-virtual {p0, v1}, Lorg/h2/command/dml/Query;->isEverything(Lorg/h2/expression/ExpressionVisitor;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/h2/command/dml/Query;->lastResult:Lorg/h2/result/ResultInterface;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lorg/h2/command/dml/Query;->lastLimit:I

    if-ne p1, v1, :cond_2

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    iget-object v4, p0, Lorg/h2/command/dml/Query;->lastParameters:[Lorg/h2/value/Value;

    iget-wide v5, p0, Lorg/h2/command/dml/Query;->lastEvaluated:J

    move-object v1, p0

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lorg/h2/command/dml/Query;->sameResultAsLast(Lorg/h2/engine/Session;[Lorg/h2/value/Value;[Lorg/h2/value/Value;J)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/h2/command/dml/Query;->lastResult:Lorg/h2/result/ResultInterface;

    iget-object v2, p0, Lorg/h2/command/Prepared;->session:Lorg/h2/engine/Session;

    invoke-interface {v1, v2}, Lorg/h2/result/ResultInterface;->createShallowCopy(Lorg/h2/engine/Session;)Lorg/h2/result/ResultInterface;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/command/dml/Query;->lastResult:Lorg/h2/result/ResultInterface;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->reset()V

    iget-object p1, p0, Lorg/h2/command/dml/Query;->lastResult:Lorg/h2/result/ResultInterface;

    return-object p1

    :cond_2
    iput-object v0, p0, Lorg/h2/command/dml/Query;->lastParameters:[Lorg/h2/value/Value;

    invoke-direct {p0}, Lorg/h2/command/dml/Query;->closeLastResult()V

    invoke-direct {p0, p1, p2}, Lorg/h2/command/dml/Query;->queryWithoutCacheLazyCheck(ILorg/h2/result/ResultTarget;)Lorg/h2/result/ResultInterface;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/command/dml/Query;->lastResult:Lorg/h2/result/ResultInterface;

    iput-wide v7, p0, Lorg/h2/command/dml/Query;->lastEvaluated:J

    iput p1, p0, Lorg/h2/command/dml/Query;->lastLimit:I

    return-object p2

    :cond_3
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/h2/command/dml/Query;->queryWithoutCacheLazyCheck(ILorg/h2/result/ResultTarget;)Lorg/h2/result/ResultInterface;

    move-result-object p1

    return-object p1
.end method

.method public abstract queryWithoutCache(ILorg/h2/result/ResultTarget;)Lorg/h2/result/ResultInterface;
.end method

.method public setDistinct(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/dml/Query;->distinct:Z

    return-void
.end method

.method public abstract setEvaluatable(Lorg/h2/table/TableFilter;Z)V
.end method

.method public abstract setForUpdate(Z)V
.end method

.method public setLimit(Lorg/h2/expression/Expression;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/dml/Query;->limitExpr:Lorg/h2/expression/Expression;

    return-void
.end method

.method public setNeverLazy(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/dml/Query;->neverLazy:Z

    return-void
.end method

.method public setOffset(Lorg/h2/expression/Expression;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/dml/Query;->offsetExpr:Lorg/h2/expression/Expression;

    return-void
.end method

.method public abstract setOrder(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/command/dml/SelectOrderBy;",
            ">;)V"
        }
    .end annotation
.end method

.method public setRandomAccessResult(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/command/dml/Query;->randomAccessResult:Z

    return-void
.end method

.method public setSampleSize(Lorg/h2/expression/Expression;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/command/dml/Query;->sampleSizeExpr:Lorg/h2/expression/Expression;

    return-void
.end method

.method public abstract updateAggregate(Lorg/h2/engine/Session;)V
.end method
