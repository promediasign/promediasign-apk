.class public Lorg/h2/index/MultiVersionIndex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/index/Index;


# instance fields
.field private final base:Lorg/h2/index/Index;

.field private final delta:Lorg/h2/index/TreeIndex;

.field private final firstColumn:Lorg/h2/table/Column;

.field private final sync:Ljava/lang/Object;

.field private final table:Lorg/h2/table/RegularTable;


# direct methods
.method public constructor <init>(Lorg/h2/index/Index;Lorg/h2/table/RegularTable;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    iput-object p2, p0, Lorg/h2/index/MultiVersionIndex;->table:Lorg/h2/table/RegularTable;

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/h2/index/IndexType;->createNonUnique(Z)Lorg/h2/index/IndexType;

    move-result-object v6

    instance-of v1, p1, Lorg/h2/index/SpatialIndex;

    if-nez v1, :cond_0

    new-instance v7, Lorg/h2/index/TreeIndex;

    invoke-interface {p1}, Lorg/h2/index/Index;->getIndexColumns()[Lorg/h2/table/IndexColumn;

    move-result-object v5

    const/4 v3, -0x1

    const-string v4, "DELTA"

    move-object v1, v7

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lorg/h2/index/TreeIndex;-><init>(Lorg/h2/table/RegularTable;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    iput-object v7, p0, Lorg/h2/index/MultiVersionIndex;->delta:Lorg/h2/index/TreeIndex;

    const/4 p2, 0x1

    invoke-virtual {v7, p2}, Lorg/h2/index/BaseIndex;->setMultiVersion(Z)V

    invoke-interface {p1}, Lorg/h2/engine/DbObject;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/index/MultiVersionIndex;->sync:Ljava/lang/Object;

    invoke-interface {p1}, Lorg/h2/index/Index;->getColumns()[Lorg/h2/table/Column;

    move-result-object p1

    aget-object p1, p1, v0

    iput-object p1, p0, Lorg/h2/index/MultiVersionIndex;->firstColumn:Lorg/h2/table/Column;

    return-void

    :cond_0
    const p1, 0xc3b4

    const-string p2, "MVCC & spatial index"

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private removeIfExists(Lorg/h2/engine/Session;Lorg/h2/result/Row;)Z
    .locals 7

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->delta:Lorg/h2/index/TreeIndex;

    invoke-virtual {v0, p1, p2, p2}, Lorg/h2/index/TreeIndex;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/h2/index/Cursor;->next()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/h2/index/Cursor;->get()Lorg/h2/result/Row;

    move-result-object v1

    invoke-interface {v1}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v2

    invoke-interface {p2}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    invoke-interface {v1}, Lorg/h2/result/SearchRow;->getVersion()I

    move-result v2

    invoke-interface {p2}, Lorg/h2/result/SearchRow;->getVersion()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    if-eq v1, p2, :cond_1

    iget-object v3, p0, Lorg/h2/index/MultiVersionIndex;->table:Lorg/h2/table/RegularTable;

    invoke-virtual {v3, p1}, Lorg/h2/table/RegularTable;->getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;

    move-result-object v3

    invoke-interface {v3, v1, p2}, Lorg/h2/index/Index;->compareRows(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)I

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Lorg/h2/result/SearchRow;->getVersion()I

    move-result v1

    add-int/2addr v1, v2

    invoke-interface {p2, v1}, Lorg/h2/result/Row;->setVersion(I)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/h2/index/MultiVersionIndex;->delta:Lorg/h2/index/TreeIndex;

    invoke-virtual {p2, p1, v1}, Lorg/h2/index/TreeIndex;->remove(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 2

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->sync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v1, p1, p2}, Lorg/h2/index/Index;->add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    invoke-direct {p0, p1, p2}, Lorg/h2/index/MultiVersionIndex;->removeIfExists(Lorg/h2/engine/Session;Lorg/h2/result/Row;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lorg/h2/result/Row;->getSessionId()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/h2/index/MultiVersionIndex;->delta:Lorg/h2/index/TreeIndex;

    invoke-virtual {v1, p1, p2}, Lorg/h2/index/TreeIndex;->add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public canFindNext()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canGetFirstOrLast()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/index/Index;->canGetFirstOrLast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->delta:Lorg/h2/index/TreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/TreeIndex;->canGetFirstOrLast()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canScan()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/index/Index;->canScan()Z

    move-result v0

    return v0
.end method

.method public checkRename()V
    .locals 1

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/engine/DbObject;->checkRename()V

    return-void
.end method

.method public close(Lorg/h2/engine/Session;)V
    .locals 2

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->sync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v1, p1}, Lorg/h2/index/Index;->close(Lorg/h2/engine/Session;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public commit(ILorg/h2/result/Row;)V
    .locals 1

    iget-object p1, p0, Lorg/h2/index/MultiVersionIndex;->sync:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0, p2}, Lorg/h2/index/MultiVersionIndex;->removeIfExists(Lorg/h2/engine/Session;Lorg/h2/result/Row;)Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public compareRows(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)I
    .locals 1

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0, p1, p2}, Lorg/h2/index/Index;->compareRows(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)I

    move-result p1

    return p1
.end method

.method public createLookupBatch([Lorg/h2/table/TableFilter;I)Lorg/h2/index/IndexLookupBatch;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->sync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v1, p1, p2, p3}, Lorg/h2/index/Index;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object v5

    iget-object v1, p0, Lorg/h2/index/MultiVersionIndex;->delta:Lorg/h2/index/TreeIndex;

    invoke-virtual {v1, p1, p2, p3}, Lorg/h2/index/TreeIndex;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object v6

    new-instance p2, Lorg/h2/index/MultiVersionCursor;

    iget-object v7, p0, Lorg/h2/index/MultiVersionIndex;->sync:Ljava/lang/Object;

    move-object v2, p2

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lorg/h2/index/MultiVersionCursor;-><init>(Lorg/h2/engine/Session;Lorg/h2/index/MultiVersionIndex;Lorg/h2/index/Cursor;Lorg/h2/index/Cursor;Ljava/lang/Object;)V

    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public find(Lorg/h2/table/TableFilter;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 8

    .line 2
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->sync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v1, p1, p2, p3}, Lorg/h2/index/Index;->find(Lorg/h2/table/TableFilter;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object v5

    iget-object v1, p0, Lorg/h2/index/MultiVersionIndex;->delta:Lorg/h2/index/TreeIndex;

    invoke-virtual {v1, p1, p2, p3}, Lorg/h2/index/TreeIndex;->find(Lorg/h2/table/TableFilter;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object v6

    new-instance p2, Lorg/h2/index/MultiVersionCursor;

    invoke-virtual {p1}, Lorg/h2/table/TableFilter;->getSession()Lorg/h2/engine/Session;

    move-result-object v3

    iget-object v7, p0, Lorg/h2/index/MultiVersionIndex;->sync:Ljava/lang/Object;

    move-object v2, p2

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lorg/h2/index/MultiVersionCursor;-><init>(Lorg/h2/engine/Session;Lorg/h2/index/MultiVersionIndex;Lorg/h2/index/Cursor;Lorg/h2/index/Cursor;Ljava/lang/Object;)V

    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public findFirstOrLast(Lorg/h2/engine/Session;Z)Lorg/h2/index/Cursor;
    .locals 7

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Lorg/h2/index/MultiVersionIndex;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Lorg/h2/index/Cursor;->next()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Lorg/h2/index/Cursor;->getSearchRow()Lorg/h2/result/SearchRow;

    move-result-object p2

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->firstColumn:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getColumnId()I

    move-result v0

    invoke-interface {p2, v0}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object p2

    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq p2, v0, :cond_0

    :cond_1
    return-object p1

    :cond_2
    iget-object p2, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lorg/h2/index/Index;->findFirstOrLast(Lorg/h2/engine/Session;Z)Lorg/h2/index/Cursor;

    move-result-object v4

    iget-object p2, p0, Lorg/h2/index/MultiVersionIndex;->delta:Lorg/h2/index/TreeIndex;

    invoke-virtual {p2, p1, v0}, Lorg/h2/index/TreeIndex;->findFirstOrLast(Lorg/h2/engine/Session;Z)Lorg/h2/index/Cursor;

    move-result-object v5

    new-instance p2, Lorg/h2/index/MultiVersionCursor;

    iget-object v6, p0, Lorg/h2/index/MultiVersionIndex;->sync:Ljava/lang/Object;

    move-object v1, p2

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lorg/h2/index/MultiVersionCursor;-><init>(Lorg/h2/engine/Session;Lorg/h2/index/MultiVersionIndex;Lorg/h2/index/Cursor;Lorg/h2/index/Cursor;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lorg/h2/index/MultiVersionCursor;->loadCurrent()V

    :cond_3
    invoke-virtual {p2}, Lorg/h2/index/MultiVersionCursor;->previous()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Lorg/h2/index/MultiVersionCursor;->getSearchRow()Lorg/h2/result/SearchRow;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->firstColumn:Lorg/h2/table/Column;

    invoke-virtual {v0}, Lorg/h2/table/Column;->getColumnId()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object p1

    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq p1, v0, :cond_3

    :cond_5
    :goto_0
    return-object p2
.end method

.method public findNext(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getBaseIndex()Lorg/h2/index/Index;
    .locals 1

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    return-object v0
.end method

.method public getChildren()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/engine/DbObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/engine/DbObject;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getColumnIndex(Lorg/h2/table/Column;)I
    .locals 1

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0, p1}, Lorg/h2/index/Index;->getColumnIndex(Lorg/h2/table/Column;)I

    move-result p1

    return p1
.end method

.method public getColumns()[Lorg/h2/table/Column;
    .locals 1

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/index/Index;->getColumns()[Lorg/h2/table/Column;

    move-result-object v0

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/engine/DbObject;->getComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCost(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;Ljava/util/HashSet;)D
    .locals 7
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

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lorg/h2/index/Index;->getCost(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;Ljava/util/HashSet;)D

    move-result-wide p1

    return-wide p1
.end method

.method public getCreateSQL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/engine/DbObject;->getCreateSQL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreateSQLForCopy(Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0, p1, p2}, Lorg/h2/engine/DbObject;->getCreateSQLForCopy(Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDatabase()Lorg/h2/engine/Database;
    .locals 1

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/engine/DbObject;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    return-object v0
.end method

.method public getDiskSpaceUsed()J
    .locals 2

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/index/Index;->getDiskSpaceUsed()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDropSQL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/engine/DbObject;->getDropSQL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/engine/DbObject;->getId()I

    move-result v0

    return v0
.end method

.method public getIndexColumns()[Lorg/h2/table/IndexColumn;
    .locals 1

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/index/Index;->getIndexColumns()[Lorg/h2/table/IndexColumn;

    move-result-object v0

    return-object v0
.end method

.method public getIndexType()Lorg/h2/index/IndexType;
    .locals 1

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlanSQL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/index/Index;->getPlanSQL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRow(Lorg/h2/engine/Session;J)Lorg/h2/result/Row;
    .locals 1

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0, p1, p2, p3}, Lorg/h2/index/Index;->getRow(Lorg/h2/engine/Session;J)Lorg/h2/result/Row;

    move-result-object p1

    return-object p1
.end method

.method public getRowCount(Lorg/h2/engine/Session;)J
    .locals 2

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0, p1}, Lorg/h2/index/Index;->getRowCount(Lorg/h2/engine/Session;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRowCountApproximation()J
    .locals 2

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/index/Index;->getRowCountApproximation()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSQL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/engine/DbObject;->getSQL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSchema()Lorg/h2/schema/Schema;
    .locals 1

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/schema/SchemaObject;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v0

    return-object v0
.end method

.method public getTable()Lorg/h2/table/Table;
    .locals 1

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/index/Index;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/engine/DbObject;->getType()I

    move-result v0

    return v0
.end method

.method public isFirstColumn(Lorg/h2/table/Column;)Z
    .locals 1

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0, p1}, Lorg/h2/index/Index;->isFirstColumn(Lorg/h2/table/Column;)Z

    move-result p1

    return p1
.end method

.method public isHidden()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/schema/SchemaObject;->isHidden()Z

    move-result v0

    return v0
.end method

.method public isRowIdIndex()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/index/Index;->isRowIdIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->delta:Lorg/h2/index/TreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/BaseIndex;->isRowIdIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTemporary()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/engine/DbObject;->isTemporary()Z

    move-result v0

    return v0
.end method

.method public isUncommittedFromOtherSession(Lorg/h2/engine/Session;Lorg/h2/result/Row;)Z
    .locals 2

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->delta:Lorg/h2/index/TreeIndex;

    invoke-virtual {v0, p1, p2, p2}, Lorg/h2/index/TreeIndex;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object p2

    invoke-interface {p2}, Lorg/h2/index/Cursor;->next()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lorg/h2/index/Cursor;->get()Lorg/h2/result/Row;

    move-result-object p2

    invoke-interface {p2}, Lorg/h2/result/Row;->getSessionId()I

    move-result p2

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getId()I

    move-result p1

    if-eq p2, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public needRebuild()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/index/Index;->needRebuild()Z

    move-result v0

    return v0
.end method

.method public remove(Lorg/h2/engine/Session;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->sync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v1, p1}, Lorg/h2/index/Index;->remove(Lorg/h2/engine/Session;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public remove(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->sync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v1, p1, p2}, Lorg/h2/index/Index;->remove(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    invoke-direct {p0, p1, p2}, Lorg/h2/index/MultiVersionIndex;->removeIfExists(Lorg/h2/engine/Session;Lorg/h2/result/Row;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/h2/index/MultiVersionIndex;->delta:Lorg/h2/index/TreeIndex;

    invoke-virtual {v1, p1, p2}, Lorg/h2/index/TreeIndex;->add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeChildrenAndResources(Lorg/h2/engine/Session;)V
    .locals 2

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->sync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/h2/index/MultiVersionIndex;->table:Lorg/h2/table/RegularTable;

    invoke-virtual {v1, p0}, Lorg/h2/table/Table;->removeIndex(Lorg/h2/index/Index;)V

    invoke-virtual {p0, p1}, Lorg/h2/index/MultiVersionIndex;->remove(Lorg/h2/engine/Session;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public rename(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0, p1}, Lorg/h2/engine/DbObject;->rename(Ljava/lang/String;)V

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0, p1}, Lorg/h2/engine/DbObject;->setComment(Ljava/lang/String;)V

    return-void
.end method

.method public setSortedInsertMode(Z)V
    .locals 1

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0, p1}, Lorg/h2/index/Index;->setSortedInsertMode(Z)V

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->delta:Lorg/h2/index/TreeIndex;

    invoke-virtual {v0, p1}, Lorg/h2/index/BaseIndex;->setSortedInsertMode(Z)V

    return-void
.end method

.method public setTemporary(Z)V
    .locals 1

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v0, p1}, Lorg/h2/engine/DbObject;->setTemporary(Z)V

    return-void
.end method

.method public truncate(Lorg/h2/engine/Session;)V
    .locals 2

    iget-object v0, p0, Lorg/h2/index/MultiVersionIndex;->sync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/h2/index/MultiVersionIndex;->delta:Lorg/h2/index/TreeIndex;

    invoke-virtual {v1, p1}, Lorg/h2/index/TreeIndex;->truncate(Lorg/h2/engine/Session;)V

    iget-object v1, p0, Lorg/h2/index/MultiVersionIndex;->base:Lorg/h2/index/Index;

    invoke-interface {v1, p1}, Lorg/h2/index/Index;->truncate(Lorg/h2/engine/Session;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
