.class public Lorg/h2/index/ViewIndex;
.super Lorg/h2/index/BaseIndex;
.source "SourceFile"

# interfaces
.implements Lorg/h2/index/SpatialIndex;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MAX_AGE_NANOS:J


# instance fields
.field private final createSession:Lorg/h2/engine/Session;

.field private final evaluatedAt:J

.field private final indexMasks:[I

.field private final originalParameters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Parameter;",
            ">;"
        }
    .end annotation
.end field

.field private query:Lorg/h2/command/dml/Query;

.field private final querySQL:Ljava/lang/String;

.field private recursive:Z

.field private final view:Lorg/h2/table/TableView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lorg/h2/index/ViewIndex;->MAX_AGE_NANOS:J

    return-void
.end method

.method public constructor <init>(Lorg/h2/table/TableView;Ljava/lang/String;Ljava/util/ArrayList;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/table/TableView;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Parameter;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/h2/index/BaseIndex;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/h2/index/IndexType;->createNonUnique(Z)Lorg/h2/index/IndexType;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/h2/index/BaseIndex;->initBaseIndex(Lorg/h2/table/Table;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    iput-object p1, p0, Lorg/h2/index/ViewIndex;->view:Lorg/h2/table/TableView;

    iput-object p2, p0, Lorg/h2/index/ViewIndex;->querySQL:Ljava/lang/String;

    iput-object p3, p0, Lorg/h2/index/ViewIndex;->originalParameters:Ljava/util/ArrayList;

    iput-boolean p4, p0, Lorg/h2/index/ViewIndex;->recursive:Z

    new-array p1, v0, [Lorg/h2/table/Column;

    iput-object p1, p0, Lorg/h2/index/BaseIndex;->columns:[Lorg/h2/table/Column;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/h2/index/ViewIndex;->createSession:Lorg/h2/engine/Session;

    iput-object p1, p0, Lorg/h2/index/ViewIndex;->indexMasks:[I

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lorg/h2/index/ViewIndex;->evaluatedAt:J

    return-void
.end method

.method public constructor <init>(Lorg/h2/table/TableView;Lorg/h2/index/ViewIndex;Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;)V
    .locals 7

    .line 2
    invoke-direct {p0}, Lorg/h2/index/BaseIndex;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/h2/index/IndexType;->createNonUnique(Z)Lorg/h2/index/IndexType;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/h2/index/BaseIndex;->initBaseIndex(Lorg/h2/table/Table;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    iput-object p1, p0, Lorg/h2/index/ViewIndex;->view:Lorg/h2/table/TableView;

    iget-object v1, p2, Lorg/h2/index/ViewIndex;->querySQL:Ljava/lang/String;

    iput-object v1, p0, Lorg/h2/index/ViewIndex;->querySQL:Ljava/lang/String;

    iget-object v1, p2, Lorg/h2/index/ViewIndex;->originalParameters:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/h2/index/ViewIndex;->originalParameters:Ljava/util/ArrayList;

    iget-boolean p2, p2, Lorg/h2/index/ViewIndex;->recursive:Z

    iput-boolean p2, p0, Lorg/h2/index/ViewIndex;->recursive:Z

    iput-object p4, p0, Lorg/h2/index/ViewIndex;->indexMasks:[I

    iput-object p3, p0, Lorg/h2/index/ViewIndex;->createSession:Lorg/h2/engine/Session;

    new-array v0, v0, [Lorg/h2/table/Column;

    iput-object v0, p0, Lorg/h2/index/BaseIndex;->columns:[Lorg/h2/table/Column;

    if-nez p2, :cond_0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/h2/index/ViewIndex;->getQuery(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;)Lorg/h2/command/dml/Query;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/index/ViewIndex;->query:Lorg/h2/command/dml/Query;

    :cond_0
    iget-boolean p2, p0, Lorg/h2/index/ViewIndex;->recursive:Z

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lorg/h2/table/TableView;->getTopQuery()Lorg/h2/command/dml/Query;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    goto :goto_1

    :cond_2
    :goto_0
    const-wide p1, 0x7fffffffffffffffL

    :goto_1
    iput-wide p1, p0, Lorg/h2/index/ViewIndex;->evaluatedAt:J

    return-void
.end method

.method private find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 1

    .line 2
    iget-boolean v0, p0, Lorg/h2/index/ViewIndex;->recursive:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p3}, Lorg/h2/index/ViewIndex;->findRecursive(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/h2/index/ViewIndex;->setupQueryParameters(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)V

    iget-object p1, p0, Lorg/h2/index/ViewIndex;->query:Lorg/h2/command/dml/Query;

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Lorg/h2/command/dml/Query;->query(I)Lorg/h2/result/ResultInterface;

    move-result-object p1

    new-instance p4, Lorg/h2/index/ViewCursor;

    invoke-direct {p4, p0, p1, p2, p3}, Lorg/h2/index/ViewCursor;-><init>(Lorg/h2/index/ViewIndex;Lorg/h2/result/ResultInterface;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)V

    return-object p4
.end method

.method private findRecursive(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 6

    iget-object v0, p0, Lorg/h2/index/ViewIndex;->view:Lorg/h2/table/TableView;

    invoke-virtual {v0}, Lorg/h2/table/TableView;->getRecursiveResult()Lorg/h2/result/ResultInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->reset()V

    new-instance v1, Lorg/h2/index/ViewCursor;

    invoke-direct {v1, p0, v0, p1, p2}, Lorg/h2/index/ViewCursor;-><init>(Lorg/h2/index/ViewIndex;Lorg/h2/result/ResultInterface;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/h2/index/ViewIndex;->query:Lorg/h2/command/dml/Query;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    new-instance v0, Lorg/h2/command/Parser;

    iget-object v2, p0, Lorg/h2/index/ViewIndex;->createSession:Lorg/h2/engine/Session;

    invoke-direct {v0, v2}, Lorg/h2/command/Parser;-><init>(Lorg/h2/engine/Session;)V

    invoke-virtual {v0, v1}, Lorg/h2/command/Parser;->setRightsChecked(Z)V

    iget-object v2, p0, Lorg/h2/index/ViewIndex;->originalParameters:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lorg/h2/command/Parser;->setSuppliedParameterList(Ljava/util/ArrayList;)V

    iget-object v2, p0, Lorg/h2/index/ViewIndex;->querySQL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/h2/command/Parser;->prepare(Ljava/lang/String;)Lorg/h2/command/Prepared;

    move-result-object v0

    check-cast v0, Lorg/h2/command/dml/Query;

    iput-object v0, p0, Lorg/h2/index/ViewIndex;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v0, v1}, Lorg/h2/command/dml/Query;->setNeverLazy(Z)V

    :cond_1
    iget-object v0, p0, Lorg/h2/index/ViewIndex;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->isUnion()Z

    move-result v0

    const-string v2, "recursive queries without UNION ALL"

    const v3, 0xa411

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/h2/index/ViewIndex;->query:Lorg/h2/command/dml/Query;

    check-cast v0, Lorg/h2/command/dml/SelectUnion;

    invoke-virtual {v0}, Lorg/h2/command/dml/SelectUnion;->getUnionType()I

    move-result v4

    if-ne v4, v1, :cond_5

    invoke-virtual {v0}, Lorg/h2/command/dml/SelectUnion;->getLeft()Lorg/h2/command/dml/Query;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/command/dml/Query;->disableCache()V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lorg/h2/command/dml/Query;->query(I)Lorg/h2/result/ResultInterface;

    move-result-object v1

    invoke-virtual {v0}, Lorg/h2/command/dml/SelectUnion;->getEmptyResult()Lorg/h2/result/LocalResult;

    move-result-object v5

    const v2, 0x7fffffff

    invoke-virtual {v5, v2}, Lorg/h2/result/LocalResult;->setMaxMemoryRows(I)V

    :goto_0
    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->next()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    move-result-object v2

    invoke-virtual {v5, v2}, Lorg/h2/result/LocalResult;->addRow([Lorg/h2/value/Value;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/h2/command/dml/SelectUnion;->getRight()Lorg/h2/command/dml/Query;

    move-result-object v0

    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->reset()V

    iget-object v2, p0, Lorg/h2/index/ViewIndex;->view:Lorg/h2/table/TableView;

    invoke-virtual {v2, v1}, Lorg/h2/table/TableView;->setRecursiveResult(Lorg/h2/result/ResultInterface;)V

    invoke-virtual {v0}, Lorg/h2/command/dml/Query;->disableCache()V

    :goto_1
    invoke-virtual {v0, v4}, Lorg/h2/command/dml/Query;->query(I)Lorg/h2/result/ResultInterface;

    move-result-object v1

    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v0, p0, Lorg/h2/index/ViewIndex;->view:Lorg/h2/table/TableView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/table/TableView;->setRecursiveResult(Lorg/h2/result/ResultInterface;)V

    invoke-virtual {v5}, Lorg/h2/result/LocalResult;->done()V

    new-instance v0, Lorg/h2/index/ViewCursor;

    invoke-direct {v0, p0, v5, p1, p2}, Lorg/h2/index/ViewCursor;-><init>(Lorg/h2/index/ViewIndex;Lorg/h2/result/ResultInterface;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)V

    return-object v0

    :cond_3
    :goto_2
    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->next()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    move-result-object v2

    invoke-virtual {v5, v2}, Lorg/h2/result/LocalResult;->addRow([Lorg/h2/value/Value;)V

    goto :goto_2

    :cond_4
    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->reset()V

    iget-object v2, p0, Lorg/h2/index/ViewIndex;->view:Lorg/h2/table/TableView;

    invoke-virtual {v2, v1}, Lorg/h2/table/TableView;->setRecursiveResult(Lorg/h2/result/ResultInterface;)V

    goto :goto_1

    :cond_5
    invoke-static {v3, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_6
    invoke-static {v3, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private getQuery(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;)Lorg/h2/command/dml/Query;
    .locals 14

    .line 2
    move-object v0, p0

    move-object/from16 v7, p2

    iget-object v1, v0, Lorg/h2/index/ViewIndex;->querySQL:Ljava/lang/String;

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lorg/h2/index/ViewIndex;->prepareSubQuery(Ljava/lang/String;Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;)Lorg/h2/command/dml/Query;

    move-result-object v1

    if-nez v7, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v1}, Lorg/h2/command/dml/Query;->allowGlobalConditions()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    iget-object v2, v0, Lorg/h2/index/ViewIndex;->view:Lorg/h2/table/TableView;

    iget-object v3, v0, Lorg/h2/index/ViewIndex;->originalParameters:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lorg/h2/table/TableView;->getParameterOffset(Ljava/util/ArrayList;)I

    move-result v2

    new-instance v3, Lorg/h2/util/IntArray;

    invoke-direct {v3}, Lorg/h2/util/IntArray;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    array-length v8, v7

    if-ge v5, v8, :cond_4

    aget v8, v7, v5

    if-nez v8, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->bitCount(I)I

    move-result v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_3

    invoke-virtual {v3, v5}, Lorg/h2/util/IntArray;->add(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Lorg/h2/util/IntArray;->size()I

    move-result v5

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v8

    const/4 v9, 0x0

    :cond_5
    :goto_3
    if-ge v9, v5, :cond_9

    invoke-virtual {v3, v9}, Lorg/h2/util/IntArray;->get(I)I

    move-result v10

    iget-object v11, v0, Lorg/h2/index/BaseIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {v11, v10}, Lorg/h2/table/Table;->getColumn(I)Lorg/h2/table/Column;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget v11, v7, v10

    and-int/lit8 v12, v11, 0x1

    if-eqz v12, :cond_6

    new-instance v12, Lorg/h2/expression/Parameter;

    add-int v13, v2, v9

    invoke-direct {v12, v13}, Lorg/h2/expression/Parameter;-><init>(I)V

    const/16 v13, 0x10

    invoke-virtual {v1, v12, v10, v13}, Lorg/h2/command/dml/Query;->addGlobalCondition(Lorg/h2/expression/Parameter;II)V

    add-int/lit8 v9, v9, 0x1

    :cond_6
    and-int/lit8 v12, v11, 0x2

    if-eqz v12, :cond_7

    new-instance v12, Lorg/h2/expression/Parameter;

    add-int v13, v2, v9

    invoke-direct {v12, v13}, Lorg/h2/expression/Parameter;-><init>(I)V

    const/4 v13, 0x1

    invoke-virtual {v1, v12, v10, v13}, Lorg/h2/command/dml/Query;->addGlobalCondition(Lorg/h2/expression/Parameter;II)V

    add-int/lit8 v9, v9, 0x1

    :cond_7
    and-int/lit8 v12, v11, 0x4

    if-eqz v12, :cond_8

    new-instance v12, Lorg/h2/expression/Parameter;

    add-int v13, v2, v9

    invoke-direct {v12, v13}, Lorg/h2/expression/Parameter;-><init>(I)V

    const/4 v13, 0x3

    invoke-virtual {v1, v12, v10, v13}, Lorg/h2/command/dml/Query;->addGlobalCondition(Lorg/h2/expression/Parameter;II)V

    add-int/lit8 v9, v9, 0x1

    :cond_8
    and-int/lit8 v11, v11, 0x10

    if-eqz v11, :cond_5

    new-instance v11, Lorg/h2/expression/Parameter;

    add-int v12, v2, v9

    invoke-direct {v11, v12}, Lorg/h2/expression/Parameter;-><init>(I)V

    const/16 v12, 0xb

    invoke-virtual {v1, v11, v10, v12}, Lorg/h2/command/dml/Query;->addGlobalCondition(Lorg/h2/expression/Parameter;II)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_9
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/h2/table/Column;

    iput-object v2, v0, Lorg/h2/index/BaseIndex;->columns:[Lorg/h2/table/Column;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-array v2, v6, [Lorg/h2/table/IndexColumn;

    iput-object v2, v0, Lorg/h2/index/BaseIndex;->indexColumns:[Lorg/h2/table/IndexColumn;

    new-array v2, v6, [I

    iput-object v2, v0, Lorg/h2/index/BaseIndex;->columnIds:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_4
    const/4 v5, 0x2

    if-ge v2, v5, :cond_e

    const/4 v5, 0x0

    :goto_5
    array-length v6, v7

    if-ge v5, v6, :cond_d

    aget v6, v7, v5

    if-nez v6, :cond_a

    goto :goto_6

    :cond_a
    and-int/lit8 v6, v6, 0x1

    if-nez v2, :cond_b

    if-nez v6, :cond_c

    goto :goto_6

    :cond_b
    if-eqz v6, :cond_c

    goto :goto_6

    :cond_c
    new-instance v6, Lorg/h2/table/IndexColumn;

    invoke-direct {v6}, Lorg/h2/table/IndexColumn;-><init>()V

    iget-object v8, v0, Lorg/h2/index/BaseIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {v8, v5}, Lorg/h2/table/Table;->getColumn(I)Lorg/h2/table/Column;

    move-result-object v8

    iput-object v8, v6, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    iget-object v9, v0, Lorg/h2/index/BaseIndex;->indexColumns:[Lorg/h2/table/IndexColumn;

    aput-object v6, v9, v3

    iget-object v6, v0, Lorg/h2/index/BaseIndex;->columnIds:[I

    invoke-virtual {v8}, Lorg/h2/table/Column;->getColumnId()I

    move-result v8

    aput v8, v6, v3

    add-int/lit8 v3, v3, 0x1

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    invoke-virtual {v1}, Lorg/h2/command/Prepared;->getPlanSQL()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lorg/h2/index/ViewIndex;->prepareSubQuery(Ljava/lang/String;Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;)Lorg/h2/command/dml/Query;

    move-result-object v1

    return-object v1
.end method

.method private static prepareSubQuery(Ljava/lang/String;Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;)Lorg/h2/command/dml/Query;
    .locals 0

    invoke-virtual {p1, p2, p3, p4, p5}, Lorg/h2/engine/Session;->pushSubQueryInfo([I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;)V

    const/4 p2, 0x1

    :try_start_0
    invoke-virtual {p1, p0, p2}, Lorg/h2/engine/Session;->prepare(Ljava/lang/String;Z)Lorg/h2/command/Prepared;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lorg/h2/engine/Session;->popSubQueryInfo()V

    check-cast p0, Lorg/h2/command/dml/Query;

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Lorg/h2/engine/Session;->popSubQueryInfo()V

    throw p0
.end method

.method private static setParameter(Ljava/util/ArrayList;ILorg/h2/value/Value;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/expression/Parameter;",
            ">;I",
            "Lorg/h2/value/Value;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/h2/expression/Parameter;

    invoke-virtual {p0, p2}, Lorg/h2/expression/Parameter;->setValue(Lorg/h2/value/Value;)V

    return-void
.end method


# virtual methods
.method public add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 0

    const-string p1, "VIEW"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public canGetFirstOrLast()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public checkRename()V
    .locals 1

    const-string v0, "VIEW"

    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public close(Lorg/h2/engine/Session;)V
    .locals 0

    return-void
.end method

.method public createLookupBatch([Lorg/h2/table/TableFilter;I)Lorg/h2/index/IndexLookupBatch;
    .locals 0

    iget-boolean p1, p0, Lorg/h2/index/ViewIndex;->recursive:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p0}, Lorg/h2/table/JoinBatch;->createViewIndexLookupBatch(Lorg/h2/index/ViewIndex;)Lorg/h2/index/IndexLookupBatch;

    move-result-object p1

    return-object p1
.end method

.method public find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/h2/index/ViewIndex;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public findByGeometry(Lorg/h2/table/TableFilter;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 0

    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getSession()Lorg/h2/engine/Session;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/h2/index/ViewIndex;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public findFirstOrLast(Lorg/h2/engine/Session;Z)Lorg/h2/index/Cursor;
    .locals 0

    const-string p1, "VIEW"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public getCost(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;Ljava/util/HashSet;)D
    .locals 0
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

    iget-boolean p1, p0, Lorg/h2/index/ViewIndex;->recursive:Z

    if-eqz p1, :cond_0

    const-wide p1, 0x408f400000000000L    # 1000.0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/h2/index/ViewIndex;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {p1}, Lorg/h2/command/dml/Query;->getCost()D

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method public getDiskSpaceUsed()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPlanSQL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/index/ViewIndex;->query:Lorg/h2/command/dml/Query;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/h2/command/Prepared;->getPlanSQL()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getQuery()Lorg/h2/command/dml/Query;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/h2/index/ViewIndex;->query:Lorg/h2/command/dml/Query;

    return-object v0
.end method

.method public getRowCount(Lorg/h2/engine/Session;)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getRowCountApproximation()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSession()Lorg/h2/engine/Session;
    .locals 1

    iget-object v0, p0, Lorg/h2/index/ViewIndex;->createSession:Lorg/h2/engine/Session;

    return-object v0
.end method

.method public isExpired()Z
    .locals 5

    iget-boolean v0, p0, Lorg/h2/index/ViewIndex;->recursive:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/index/ViewIndex;->view:Lorg/h2/table/TableView;

    invoke-virtual {v0}, Lorg/h2/table/TableView;->getTopQuery()Lorg/h2/command/dml/Query;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/h2/index/ViewIndex;->evaluatedAt:J

    sub-long/2addr v0, v2

    sget-wide v2, Lorg/h2/index/ViewIndex;->MAX_AGE_NANOS:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRecursive()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/index/ViewIndex;->recursive:Z

    return v0
.end method

.method public needRebuild()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public remove(Lorg/h2/engine/Session;)V
    .locals 0

    .line 1
    const-string p1, "VIEW"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public remove(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 0

    .line 2
    const-string p1, "VIEW"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public setRecursive(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/index/ViewIndex;->recursive:Z

    return-void
.end method

.method public setupQueryParameters(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)V
    .locals 6

    iget-object v0, p0, Lorg/h2/index/ViewIndex;->query:Lorg/h2/command/dml/Query;

    invoke-virtual {v0}, Lorg/h2/command/Prepared;->getParameters()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/index/ViewIndex;->originalParameters:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lorg/h2/index/ViewIndex;->originalParameters:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/expression/Parameter;

    invoke-virtual {v4}, Lorg/h2/expression/Parameter;->getIndex()I

    move-result v5

    invoke-virtual {v4, p1}, Lorg/h2/expression/Parameter;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object v4

    invoke-static {v0, v5, v4}, Lorg/h2/index/ViewIndex;->setParameter(Ljava/util/ArrayList;ILorg/h2/value/Value;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lorg/h2/result/SearchRow;->getColumnCount()I

    move-result p1

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    invoke-interface {p3}, Lorg/h2/result/SearchRow;->getColumnCount()I

    move-result p1

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_3

    invoke-interface {p4}, Lorg/h2/result/SearchRow;->getColumnCount()I

    move-result p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    iget-object v1, p0, Lorg/h2/index/ViewIndex;->view:Lorg/h2/table/TableView;

    iget-object v3, p0, Lorg/h2/index/ViewIndex;->originalParameters:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Lorg/h2/table/TableView;->getParameterOffset(Ljava/util/ArrayList;)I

    move-result v1

    :goto_2
    if-ge v2, p1, :cond_8

    iget-object v3, p0, Lorg/h2/index/ViewIndex;->indexMasks:[I

    aget v3, v3, v2

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_4

    add-int/lit8 v4, v1, 0x1

    invoke-interface {p2, v2}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lorg/h2/index/ViewIndex;->setParameter(Ljava/util/ArrayList;ILorg/h2/value/Value;)V

    move v1, v4

    :cond_4
    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_5

    add-int/lit8 v4, v1, 0x1

    invoke-interface {p2, v2}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lorg/h2/index/ViewIndex;->setParameter(Ljava/util/ArrayList;ILorg/h2/value/Value;)V

    move v1, v4

    :cond_5
    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_6

    add-int/lit8 v4, v1, 0x1

    invoke-interface {p3, v2}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lorg/h2/index/ViewIndex;->setParameter(Ljava/util/ArrayList;ILorg/h2/value/Value;)V

    move v1, v4

    :cond_6
    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_7

    add-int/lit8 v3, v1, 0x1

    invoke-interface {p4, v2}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lorg/h2/index/ViewIndex;->setParameter(Ljava/util/ArrayList;ILorg/h2/value/Value;)V

    move v1, v3

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    return-void
.end method

.method public truncate(Lorg/h2/engine/Session;)V
    .locals 0

    const-string p1, "VIEW"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method
