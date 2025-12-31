.class public Lorg/h2/index/PageBtreeIndex;
.super Lorg/h2/index/PageIndex;
.source "SourceFile"


# static fields
.field private static memoryChangeRequired:I


# instance fields
.field private memoryCount:I

.field private memoryPerPage:I

.field private final needRebuild:Z

.field private rowCount:J

.field private final store:Lorg/h2/store/PageStore;

.field private final tableData:Lorg/h2/table/RegularTable;


# direct methods
.method public constructor <init>(Lorg/h2/table/RegularTable;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;ZLorg/h2/engine/Session;)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/h2/index/PageIndex;-><init>()V

    invoke-virtual/range {p0 .. p5}, Lorg/h2/index/BaseIndex;->initBaseIndex(Lorg/h2/table/Table;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    iget-object p5, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {p5}, Lorg/h2/engine/Database;->isStarting()Z

    move-result p5

    if-nez p5, :cond_0

    if-eqz p6, :cond_0

    invoke-static {p4}, Lorg/h2/index/BaseIndex;->checkIndexColumnTypes([Lorg/h2/table/IndexColumn;)V

    :cond_0
    iput-object p1, p0, Lorg/h2/index/PageBtreeIndex;->tableData:Lorg/h2/table/RegularTable;

    iget-object p1, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->isPersistent()Z

    move-result p1

    if-eqz p1, :cond_5

    if-ltz p2, :cond_5

    iget-object p1, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p1, p0}, Lorg/h2/store/PageStore;->addIndex(Lorg/h2/index/PageIndex;)V

    if-eqz p6, :cond_1

    invoke-virtual {p1}, Lorg/h2/store/PageStore;->allocatePage()I

    move-result p2

    iput p2, p0, Lorg/h2/index/PageIndex;->rootPageId:I

    invoke-virtual {p1, p0, p7}, Lorg/h2/store/PageStore;->addMeta(Lorg/h2/index/PageIndex;Lorg/h2/engine/Session;)V

    iget p2, p0, Lorg/h2/index/PageIndex;->rootPageId:I

    invoke-static {p0, p2, v2}, Lorg/h2/index/PageBtreeLeaf;->create(Lorg/h2/index/PageBtreeIndex;II)Lorg/h2/index/PageBtreeLeaf;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    invoke-virtual {p1, p2}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Lorg/h2/store/PageStore;->getRootPageId(I)I

    move-result p2

    iput p2, p0, Lorg/h2/index/PageIndex;->rootPageId:I

    invoke-virtual {p0, p2}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object p2

    invoke-virtual {p2}, Lorg/h2/index/PageBtree;->getRowCount()I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lorg/h2/index/PageBtreeIndex;->rowCount:J

    :goto_0
    if-nez p6, :cond_3

    iget-wide p2, p0, Lorg/h2/index/PageBtreeIndex;->rowCount:J

    const-wide/16 p4, 0x0

    cmp-long p6, p2, p4

    if-nez p6, :cond_2

    invoke-virtual {p1}, Lorg/h2/store/PageStore;->isRecoveryRunning()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p2, 0x1

    :goto_2
    iput-boolean p2, p0, Lorg/h2/index/PageBtreeIndex;->needRebuild:Z

    iget-object p2, p0, Lorg/h2/engine/DbObjectBase;->trace:Lorg/h2/message/Trace;

    invoke-virtual {p2}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/h2/engine/DbObjectBase;->trace:Lorg/h2/message/Trace;

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object p3

    iget-wide p4, p0, Lorg/h2/index/PageBtreeIndex;->rowCount:J

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    new-array p5, v0, [Ljava/lang/Object;

    aput-object p3, p5, v2

    aput-object p4, p5, v1

    const-string p3, "opened {0} rows: {1}"

    invoke-virtual {p2, p3, p5}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {p1}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result p1

    add-int/lit16 p1, p1, 0xb8

    shr-int/2addr p1, v0

    iput p1, p0, Lorg/h2/index/PageBtreeIndex;->memoryPerPage:I

    return-void

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private addRow(Lorg/h2/result/SearchRow;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lorg/h2/index/PageIndex;->rootPageId:I

    invoke-virtual {p0, v2}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/h2/index/PageBtree;->addRowTry(Lorg/h2/result/SearchRow;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lorg/h2/index/PageBtreeIndex;->invalidateRowCount()V

    iget-wide v0, p0, Lorg/h2/index/PageBtreeIndex;->rowCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/index/PageBtreeIndex;->rowCount:J

    return-void

    :cond_0
    iget-object v4, p0, Lorg/h2/engine/DbObjectBase;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v4}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/h2/engine/DbObjectBase;->trace:Lorg/h2/message/Trace;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v5, v6, v0

    const-string v5, "split {0}"

    invoke-virtual {v4, v5, v6}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v2, v4}, Lorg/h2/index/PageBtree;->getRow(I)Lorg/h2/result/SearchRow;

    move-result-object v4

    iget-object v5, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    iget-object v6, v2, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {v5, v2, v6}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    invoke-virtual {v2, v3}, Lorg/h2/index/PageBtree;->split(I)Lorg/h2/index/PageBtree;

    move-result-object v3

    iget-object v5, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    iget-object v5, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v5}, Lorg/h2/store/PageStore;->allocatePage()I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/h2/index/PageBtree;->setPageId(I)V

    iget v5, p0, Lorg/h2/index/PageIndex;->rootPageId:I

    invoke-virtual {v2, v5}, Lorg/h2/index/PageBtree;->setParentPageId(I)V

    iget v5, p0, Lorg/h2/index/PageIndex;->rootPageId:I

    invoke-virtual {v3, v5}, Lorg/h2/index/PageBtree;->setParentPageId(I)V

    iget v5, p0, Lorg/h2/index/PageIndex;->rootPageId:I

    invoke-static {p0, v5, v0}, Lorg/h2/index/PageBtreeNode;->create(Lorg/h2/index/PageBtreeIndex;II)Lorg/h2/index/PageBtreeNode;

    move-result-object v5

    iget-object v7, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v7, v5, v6}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    invoke-virtual {v5, v2, v4, v3}, Lorg/h2/index/PageBtreeNode;->init(Lorg/h2/index/PageBtree;Lorg/h2/result/SearchRow;Lorg/h2/index/PageBtree;)V

    iget-object v4, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v4, v2}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    iget-object v2, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v2, v3}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    iget-object v2, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v2, v5}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    goto :goto_0
.end method

.method private find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;ZLorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 2

    .line 2
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x15f97

    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    iget v0, p0, Lorg/h2/index/PageIndex;->rootPageId:I

    invoke-virtual {p0, v0}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object v0

    new-instance v1, Lorg/h2/index/PageBtreeCursor;

    invoke-direct {v1, p1, p0, p4}, Lorg/h2/index/PageBtreeCursor;-><init>(Lorg/h2/engine/Session;Lorg/h2/index/PageBtreeIndex;Lorg/h2/result/SearchRow;)V

    invoke-virtual {v0, v1, p2, p3}, Lorg/h2/index/PageBtree;->find(Lorg/h2/index/PageBtreeCursor;Lorg/h2/result/SearchRow;Z)V

    return-object v1
.end method

.method private getSearchRow(Lorg/h2/result/Row;)Lorg/h2/result/SearchRow;
    .locals 6

    iget-object v0, p0, Lorg/h2/index/BaseIndex;->table:Lorg/h2/table/Table;

    iget-object v1, p0, Lorg/h2/index/BaseIndex;->columns:[Lorg/h2/table/Column;

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Lorg/h2/table/Table;->getTemplateSimpleRow(Z)Lorg/h2/result/SearchRow;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/h2/result/SearchRow;->setKeyAndVersion(Lorg/h2/result/SearchRow;)V

    iget-object v1, p0, Lorg/h2/index/BaseIndex;->columns:[Lorg/h2/table/Column;

    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    invoke-virtual {v4}, Lorg/h2/table/Column;->getColumnId()I

    move-result v4

    invoke-interface {p1, v4}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lorg/h2/result/SearchRow;->setValue(ILorg/h2/value/Value;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private invalidateRowCount()V
    .locals 2

    iget v0, p0, Lorg/h2/index/PageIndex;->rootPageId:I

    invoke-virtual {p0, v0}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/h2/index/PageBtree;->setRowCountStored(I)V

    return-void
.end method

.method public static isMemoryChangeRequired()Z
    .locals 2

    sget v0, Lorg/h2/index/PageBtreeIndex;->memoryChangeRequired:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lorg/h2/index/PageBtreeIndex;->memoryChangeRequired:I

    if-gtz v0, :cond_0

    const/16 v0, 0xa

    sput v0, Lorg/h2/index/PageBtreeIndex;->memoryChangeRequired:I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private removeAllRows()V
    .locals 3

    :try_start_0
    iget v0, p0, Lorg/h2/index/PageIndex;->rootPageId:I

    invoke-virtual {p0, v0}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/index/PageBtree;->freeRecursive()V

    iget v0, p0, Lorg/h2/index/PageIndex;->rootPageId:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/h2/index/PageBtreeLeaf;->create(Lorg/h2/index/PageBtreeIndex;II)Lorg/h2/index/PageBtreeLeaf;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    iget v2, p0, Lorg/h2/index/PageIndex;->rootPageId:I

    invoke-virtual {v1, v2}, Lorg/h2/store/PageStore;->removeFromCache(I)V

    iget-object v1, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v1, v0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/h2/index/PageBtreeIndex;->rowCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->incrementChangeCount()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v1}, Lorg/h2/store/PageStore;->incrementChangeCount()V

    throw v0
.end method


# virtual methods
.method public add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 3

    iget-object p1, p0, Lorg/h2/engine/DbObjectBase;->trace:Lorg/h2/message/Trace;

    invoke-virtual {p1}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/h2/engine/DbObjectBase;->trace:Lorg/h2/message/Trace;

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p2, v1, v0

    const-string v0, "{0} add {1}"

    invoke-virtual {p1, v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p2}, Lorg/h2/index/PageBtreeIndex;->getSearchRow(Lorg/h2/result/Row;)Lorg/h2/result/SearchRow;

    move-result-object p1

    :try_start_0
    invoke-direct {p0, p1}, Lorg/h2/index/PageBtreeIndex;->addRow(Lorg/h2/result/SearchRow;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p1}, Lorg/h2/store/PageStore;->incrementChangeCount()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p2}, Lorg/h2/store/PageStore;->incrementChangeCount()V

    throw p1
.end method

.method public canFindNext()Z
    .locals 1

    const/4 v0, 0x1

    return v0
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
    .locals 1

    iget-object p1, p0, Lorg/h2/engine/DbObjectBase;->trace:Lorg/h2/message/Trace;

    invoke-virtual {p1}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/h2/engine/DbObjectBase;->trace:Lorg/h2/message/Trace;

    const-string v0, "close"

    invoke-virtual {p1, v0}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/index/PageBtreeIndex;->writeRowCount()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p1}, Lorg/h2/store/PageStore;->incrementChangeCount()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->incrementChangeCount()V

    throw p1
.end method

.method public find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/h2/index/PageBtreeIndex;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;ZLorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public findFirstOrLast(Lorg/h2/engine/Session;Z)Lorg/h2/index/Cursor;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    invoke-direct {p0, p1, v1, v0, v1}, Lorg/h2/index/PageBtreeIndex;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;ZLorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

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
    iget p2, p0, Lorg/h2/index/PageIndex;->rootPageId:I

    invoke-virtual {p0, p2}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object p2

    new-instance v2, Lorg/h2/index/PageBtreeCursor;

    invoke-direct {v2, p1, p0, v1}, Lorg/h2/index/PageBtreeCursor;-><init>(Lorg/h2/engine/Session;Lorg/h2/index/PageBtreeIndex;Lorg/h2/result/SearchRow;)V

    invoke-virtual {p2, v2}, Lorg/h2/index/PageBtree;->last(Lorg/h2/index/PageBtreeCursor;)V

    invoke-virtual {v2}, Lorg/h2/index/PageBtreeCursor;->previous()Z

    :cond_3
    invoke-virtual {v2}, Lorg/h2/index/PageBtreeCursor;->getSearchRow()Lorg/h2/result/SearchRow;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lorg/h2/index/BaseIndex;->columnIds:[I

    aget p2, p2, v0

    invoke-interface {p1, p2}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object p1

    sget-object p2, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-eq p1, p2, :cond_5

    return-object v2

    :cond_5
    invoke-virtual {v2}, Lorg/h2/index/PageBtreeCursor;->previous()Z

    move-result p1

    if-nez p1, :cond_3

    :goto_0
    return-object v2
.end method

.method public findNext(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/h2/index/PageBtreeIndex;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;ZLorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public getCost(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;Ljava/util/HashSet;)D
    .locals 10
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

    move-object v9, p0

    iget-object v0, v9, Lorg/h2/index/PageBtreeIndex;->tableData:Lorg/h2/table/RegularTable;

    move-object v1, p1

    invoke-virtual {v0, p1}, Lorg/h2/table/RegularTable;->getRowCount(Lorg/h2/engine/Session;)J

    move-result-wide v2

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lorg/h2/index/BaseIndex;->getCostRangeIndex([IJ[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;ZLjava/util/HashSet;)J

    move-result-wide v0

    const-wide/16 v2, 0xa

    mul-long v0, v0, v2

    long-to-double v0, v0

    return-wide v0
.end method

.method public getDiskSpaceUsed()J
    .locals 2

    iget-object v0, p0, Lorg/h2/index/PageBtreeIndex;->tableData:Lorg/h2/table/RegularTable;

    invoke-virtual {v0}, Lorg/h2/table/RegularTable;->getDiskSpaceUsed()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMemoryPerPage()I
    .locals 1

    iget v0, p0, Lorg/h2/index/PageBtreeIndex;->memoryPerPage:I

    return v0
.end method

.method public getPage(I)Lorg/h2/index/PageBtree;
    .locals 2

    iget-object v0, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0, p1}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/h2/index/PageBtreeLeaf;->create(Lorg/h2/index/PageBtreeIndex;II)Lorg/h2/index/PageBtreeLeaf;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    iget-object v0, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0, p1}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    return-object p1

    :cond_0
    instance-of p1, v0, Lorg/h2/index/PageBtree;

    if-eqz p1, :cond_1

    check-cast v0, Lorg/h2/index/PageBtree;

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x15fae

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public getPageStore()Lorg/h2/store/PageStore;
    .locals 1

    iget-object v0, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    return-object v0
.end method

.method public getRow(Lorg/h2/engine/Session;J)Lorg/h2/result/Row;
    .locals 1

    iget-object v0, p0, Lorg/h2/index/PageBtreeIndex;->tableData:Lorg/h2/table/RegularTable;

    invoke-virtual {v0, p1, p2, p3}, Lorg/h2/table/RegularTable;->getRow(Lorg/h2/engine/Session;J)Lorg/h2/result/Row;

    move-result-object p1

    return-object p1
.end method

.method public getRowCount(Lorg/h2/engine/Session;)J
    .locals 2

    iget-wide v0, p0, Lorg/h2/index/PageBtreeIndex;->rowCount:J

    return-wide v0
.end method

.method public getRowCountApproximation()J
    .locals 2

    iget-object v0, p0, Lorg/h2/index/PageBtreeIndex;->tableData:Lorg/h2/table/RegularTable;

    invoke-virtual {v0}, Lorg/h2/table/RegularTable;->getRowCountApproximation()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRowSize(Lorg/h2/store/Data;Lorg/h2/result/SearchRow;Z)I
    .locals 4

    invoke-interface {p2}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/store/Data;->getVarLongLen(J)I

    move-result v0

    if-nez p3, :cond_0

    iget-object p3, p0, Lorg/h2/index/BaseIndex;->columns:[Lorg/h2/table/Column;

    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p3, v2

    invoke-virtual {v3}, Lorg/h2/table/Column;->getColumnId()I

    move-result v3

    invoke-interface {p2, v3}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/h2/store/Data;->getValueLen(Lorg/h2/value/Value;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public hasData(Lorg/h2/result/SearchRow;)Z
    .locals 2

    iget-object v0, p0, Lorg/h2/index/BaseIndex;->columns:[Lorg/h2/table/Column;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/h2/table/Column;->getColumnId()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public memoryChange(I)V
    .locals 3

    iget v0, p0, Lorg/h2/index/PageBtreeIndex;->memoryCount:I

    const/4 v1, 0x1

    const/16 v2, 0x40

    if-ge v0, v2, :cond_0

    iget v2, p0, Lorg/h2/index/PageBtreeIndex;->memoryPerPage:I

    sub-int/2addr p1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/h2/index/PageBtreeIndex;->memoryCount:I

    div-int/2addr p1, v0

    add-int/2addr p1, v2

    :goto_0
    iput p1, p0, Lorg/h2/index/PageBtreeIndex;->memoryPerPage:I

    goto :goto_2

    :cond_0
    iget v0, p0, Lorg/h2/index/PageBtreeIndex;->memoryPerPage:I

    if-le p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    :goto_1
    sub-int/2addr p1, v0

    div-int/2addr p1, v2

    add-int/2addr p1, v1

    add-int/2addr p1, v0

    goto :goto_0

    :goto_2
    return-void
.end method

.method public needRebuild()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/index/PageBtreeIndex;->needRebuild:Z

    return v0
.end method

.method public readRow(J)Lorg/h2/result/SearchRow;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/h2/index/PageBtreeIndex;->tableData:Lorg/h2/table/RegularTable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lorg/h2/table/RegularTable;->getRow(Lorg/h2/engine/Session;J)Lorg/h2/result/Row;

    move-result-object p1

    return-object p1
.end method

.method public readRow(Lorg/h2/store/Data;IZZ)Lorg/h2/result/SearchRow;
    .locals 3

    .line 2
    monitor-enter p1

    :try_start_0
    invoke-virtual {p1, p2}, Lorg/h2/store/Data;->setPos(I)V

    invoke-virtual {p1}, Lorg/h2/store/Data;->readVarLong()J

    move-result-wide v0

    const/4 p2, 0x1

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    iget-object p2, p0, Lorg/h2/index/PageBtreeIndex;->tableData:Lorg/h2/table/RegularTable;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, v0, v1}, Lorg/h2/table/RegularTable;->getRow(Lorg/h2/engine/Session;J)Lorg/h2/result/Row;

    move-result-object p2

    monitor-exit p1

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_0
    iget-object p3, p0, Lorg/h2/index/BaseIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {p3, p2}, Lorg/h2/table/Table;->getTemplateSimpleRow(Z)Lorg/h2/result/SearchRow;

    move-result-object p2

    invoke-interface {p2, v0, v1}, Lorg/h2/result/SearchRow;->setKey(J)V

    monitor-exit p1

    return-object p2

    :cond_1
    iget-object p3, p0, Lorg/h2/index/BaseIndex;->table:Lorg/h2/table/Table;

    iget-object p4, p0, Lorg/h2/index/BaseIndex;->columns:[Lorg/h2/table/Column;

    array-length p4, p4

    const/4 v2, 0x0

    if-ne p4, p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p3, p2}, Lorg/h2/table/Table;->getTemplateSimpleRow(Z)Lorg/h2/result/SearchRow;

    move-result-object p2

    invoke-interface {p2, v0, v1}, Lorg/h2/result/SearchRow;->setKey(J)V

    iget-object p3, p0, Lorg/h2/index/BaseIndex;->columns:[Lorg/h2/table/Column;

    array-length p4, p3

    :goto_1
    if-ge v2, p4, :cond_3

    aget-object v0, p3, v2

    invoke-virtual {v0}, Lorg/h2/table/Column;->getColumnId()I

    move-result v0

    invoke-virtual {p1}, Lorg/h2/store/Data;->readValue()Lorg/h2/value/Value;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/h2/result/SearchRow;->setValue(ILorg/h2/value/Value;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    monitor-exit p1

    return-object p2

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public remove(Lorg/h2/engine/Session;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->trace:Lorg/h2/message/Trace;

    const-string v1, "remove"

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lorg/h2/index/PageBtreeIndex;->removeAllRows()V

    iget-object v0, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    iget v1, p0, Lorg/h2/index/PageIndex;->rootPageId:I

    invoke-virtual {v0, v1}, Lorg/h2/store/PageStore;->free(I)V

    iget-object v0, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0, p0, p1}, Lorg/h2/store/PageStore;->removeMeta(Lorg/h2/index/Index;Lorg/h2/engine/Session;)V

    return-void
.end method

.method public remove(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 4

    .line 2
    iget-object p1, p0, Lorg/h2/engine/DbObjectBase;->trace:Lorg/h2/message/Trace;

    invoke-virtual {p1}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/h2/engine/DbObjectBase;->trace:Lorg/h2/message/Trace;

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p2, v1, v0

    const-string v0, "{0} remove {1}"

    invoke-virtual {p1, v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-wide v0, p0, Lorg/h2/index/PageBtreeIndex;->rowCount:J

    const-wide/16 v2, 0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    invoke-direct {p0}, Lorg/h2/index/PageBtreeIndex;->removeAllRows()V

    goto :goto_0

    :cond_1
    :try_start_0
    iget p1, p0, Lorg/h2/index/PageIndex;->rootPageId:I

    invoke-virtual {p0, p1}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/h2/index/PageBtree;->remove(Lorg/h2/result/SearchRow;)Lorg/h2/result/SearchRow;

    invoke-direct {p0}, Lorg/h2/index/PageBtreeIndex;->invalidateRowCount()V

    iget-wide p1, p0, Lorg/h2/index/PageBtreeIndex;->rowCount:J

    sub-long/2addr p1, v2

    iput-wide p1, p0, Lorg/h2/index/PageBtreeIndex;->rowCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p1}, Lorg/h2/store/PageStore;->incrementChangeCount()V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p2}, Lorg/h2/store/PageStore;->incrementChangeCount()V

    throw p1
.end method

.method public setRootPageId(Lorg/h2/engine/Session;I)V
    .locals 1

    iget-object v0, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0, p0, p1}, Lorg/h2/store/PageStore;->removeMeta(Lorg/h2/index/Index;Lorg/h2/engine/Session;)V

    iput p2, p0, Lorg/h2/index/PageIndex;->rootPageId:I

    iget-object p2, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p2, p0, p1}, Lorg/h2/store/PageStore;->addMeta(Lorg/h2/index/PageIndex;Lorg/h2/engine/Session;)V

    iget-object p1, p0, Lorg/h2/index/PageBtreeIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p1, p0}, Lorg/h2/store/PageStore;->addIndex(Lorg/h2/index/PageIndex;)V

    return-void
.end method

.method public truncate(Lorg/h2/engine/Session;)V
    .locals 2

    iget-object p1, p0, Lorg/h2/engine/DbObjectBase;->trace:Lorg/h2/message/Trace;

    invoke-virtual {p1}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/h2/engine/DbObjectBase;->trace:Lorg/h2/message/Trace;

    const-string v0, "truncate"

    invoke-virtual {p1, v0}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lorg/h2/index/PageBtreeIndex;->removeAllRows()V

    iget-object p1, p0, Lorg/h2/index/PageBtreeIndex;->tableData:Lorg/h2/table/RegularTable;

    invoke-virtual {p1}, Lorg/h2/table/RegularTable;->getContainsLargeObject()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/index/BaseIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/h2/store/LobStorageInterface;->removeAllForTable(I)V

    :cond_1
    iget-object p1, p0, Lorg/h2/index/PageBtreeIndex;->tableData:Lorg/h2/table/RegularTable;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/h2/table/RegularTable;->setRowCount(J)V

    return-void
.end method

.method public writeRow(Lorg/h2/store/Data;ILorg/h2/result/SearchRow;Z)V
    .locals 2

    invoke-virtual {p1, p2}, Lorg/h2/store/Data;->setPos(I)V

    invoke-interface {p3}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/h2/store/Data;->writeVarLong(J)V

    if-nez p4, :cond_0

    iget-object p2, p0, Lorg/h2/index/BaseIndex;->columns:[Lorg/h2/table/Column;

    array-length p4, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    aget-object v1, p2, v0

    invoke-virtual {v1}, Lorg/h2/table/Column;->getColumnId()I

    move-result v1

    invoke-interface {p3, v1}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/h2/store/Data;->writeValue(Lorg/h2/value/Value;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeRowCount()V
    .locals 3

    sget-boolean v0, Lorg/h2/engine/SysProperties;->MODIFY_ON_WRITE:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/h2/index/PageIndex;->rootPageId:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/h2/index/PageIndex;->rootPageId:I

    invoke-virtual {p0, v0}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object v0

    iget-wide v1, p0, Lorg/h2/index/PageBtreeIndex;->rowCount:J

    invoke-static {v1, v2}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/h2/index/PageBtree;->setRowCountStored(I)V

    return-void
.end method
