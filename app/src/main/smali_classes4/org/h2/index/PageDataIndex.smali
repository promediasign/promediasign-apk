.class public Lorg/h2/index/PageDataIndex;
.super Lorg/h2/index/PageIndex;
.source "SourceFile"


# instance fields
.field private delta:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/h2/result/Row;",
            ">;"
        }
    .end annotation
.end field

.field private fastDuplicateKeyException:Lorg/h2/message/DbException;

.field private lastKey:J

.field private mainIndexColumn:I

.field private memoryCount:I

.field private memoryPerPage:I

.field private final multiVersion:Z

.field private rowCount:J

.field private rowCountDiff:I

.field private final sessionRowCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final store:Lorg/h2/store/PageStore;

.field private final tableData:Lorg/h2/table/RegularTable;


# direct methods
.method public constructor <init>(Lorg/h2/table/RegularTable;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;ZLorg/h2/engine/Session;)V
    .locals 11

    move-object v6, p0

    move-object v7, p1

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct {p0}, Lorg/h2/index/PageIndex;-><init>()V

    const/4 v0, -0x1

    iput v0, v6, Lorg/h2/index/PageDataIndex;->mainIndexColumn:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_DATA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/h2/index/BaseIndex;->initBaseIndex(Lorg/h2/table/Table;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    iget-object v0, v6, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result v0

    iput-boolean v0, v6, Lorg/h2/index/PageDataIndex;->multiVersion:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, v6, Lorg/h2/index/PageDataIndex;->sessionRowCount:Ljava/util/HashMap;

    iput-boolean v10, v6, Lorg/h2/index/BaseIndex;->isMultiVersion:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, v6, Lorg/h2/index/PageDataIndex;->sessionRowCount:Ljava/util/HashMap;

    :goto_0
    iput-object v7, v6, Lorg/h2/index/PageDataIndex;->tableData:Lorg/h2/table/RegularTable;

    iget-object v0, v6, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    iput-object v0, v6, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0, p0}, Lorg/h2/store/PageStore;->addIndex(Lorg/h2/index/PageIndex;)V

    iget-object v1, v6, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p5, :cond_1

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->allocatePage()I

    move-result v1

    iput v1, v6, Lorg/h2/index/PageIndex;->rootPageId:I

    move-object/from16 v1, p6

    invoke-virtual {v0, p0, v1}, Lorg/h2/store/PageStore;->addMeta(Lorg/h2/index/PageIndex;Lorg/h2/engine/Session;)V

    iget v1, v6, Lorg/h2/index/PageIndex;->rootPageId:I

    invoke-static {p0, v1, v9}, Lorg/h2/index/PageDataLeaf;->create(Lorg/h2/index/PageDataIndex;II)Lorg/h2/index/PageDataLeaf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    goto :goto_1

    :cond_1
    move v1, p2

    invoke-virtual {v0, p2}, Lorg/h2/store/PageStore;->getRootPageId(I)I

    move-result v1

    iput v1, v6, Lorg/h2/index/PageIndex;->rootPageId:I

    invoke-virtual {p0, v1, v9}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/index/PageData;->getLastKey()J

    move-result-wide v2

    iput-wide v2, v6, Lorg/h2/index/PageDataIndex;->lastKey:J

    invoke-virtual {v1}, Lorg/h2/index/PageData;->getRowCount()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v6, Lorg/h2/index/PageDataIndex;->rowCount:J

    :goto_1
    iget-object v1, v6, Lorg/h2/engine/DbObjectBase;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v1}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v6, Lorg/h2/engine/DbObjectBase;->trace:Lorg/h2/message/Trace;

    iget-wide v2, v6, Lorg/h2/index/PageDataIndex;->rowCount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v6, v3, v9

    aput-object v2, v3, v10

    const-string v2, "{0} opened rows: {1}"

    invoke-virtual {v1, v2, v3}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-wide v1, v6, Lorg/h2/index/PageDataIndex;->rowCount:J

    invoke-virtual {p1, v1, v2}, Lorg/h2/table/RegularTable;->setRowCount(J)V

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v0

    add-int/lit16 v0, v0, 0xf0

    shr-int/2addr v0, v8

    iput v0, v6, Lorg/h2/index/PageDataIndex;->memoryPerPage:I

    return-void

    :cond_3
    invoke-virtual {p1}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private addTry(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lorg/h2/index/PageIndex;->rootPageId:I

    invoke-virtual {p0, v2, v0}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/h2/index/PageData;->addRowTry(Lorg/h2/result/Row;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    invoke-interface {p2, v0}, Lorg/h2/result/Row;->setDeleted(Z)V

    iget-boolean v0, p0, Lorg/h2/index/PageDataIndex;->multiVersion:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->delta:Ljava/util/HashSet;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/index/PageDataIndex;->delta:Ljava/util/HashSet;

    :cond_0
    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->delta:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->delta:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getId()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lorg/h2/index/PageDataIndex;->incrementRowCount(II)V

    :cond_2
    invoke-direct {p0}, Lorg/h2/index/PageDataIndex;->invalidateRowCount()V

    iget-wide v2, p0, Lorg/h2/index/PageDataIndex;->rowCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/h2/index/PageDataIndex;->rowCount:J

    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    iget-object v2, p0, Lorg/h2/index/PageDataIndex;->tableData:Lorg/h2/table/RegularTable;

    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v2

    invoke-virtual {v0, p1, v2, p2, v1}, Lorg/h2/store/PageStore;->logAddOrRemoveRow(Lorg/h2/engine/Session;ILorg/h2/result/Row;Z)V

    return-void

    :cond_3
    iget-object v4, p0, Lorg/h2/engine/DbObjectBase;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v4}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/h2/engine/DbObjectBase;->trace:Lorg/h2/message/Trace;

    const-string v5, "{0} split"

    new-array v6, v1, [Ljava/lang/Object;

    aput-object p0, v6, v0

    invoke-virtual {v4, v5, v6}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    if-nez v3, :cond_5

    invoke-interface {p2}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v4

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v2, v4}, Lorg/h2/index/PageData;->getKey(I)J

    move-result-wide v4

    :goto_1
    invoke-virtual {v2, v3}, Lorg/h2/index/PageData;->split(I)Lorg/h2/index/PageData;

    move-result-object v3

    iget-object v6, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v6}, Lorg/h2/store/PageStore;->allocatePage()I

    move-result v6

    invoke-virtual {v2, v6}, Lorg/h2/index/PageData;->setPageId(I)V

    iget v6, p0, Lorg/h2/index/PageIndex;->rootPageId:I

    invoke-virtual {v2, v6}, Lorg/h2/index/PageData;->setParentPageId(I)V

    iget v6, p0, Lorg/h2/index/PageIndex;->rootPageId:I

    invoke-virtual {v3, v6}, Lorg/h2/index/PageData;->setParentPageId(I)V

    iget v6, p0, Lorg/h2/index/PageIndex;->rootPageId:I

    invoke-static {p0, v6, v0}, Lorg/h2/index/PageDataNode;->create(Lorg/h2/index/PageDataIndex;II)Lorg/h2/index/PageDataNode;

    move-result-object v6

    invoke-virtual {v6, v2, v4, v5, v3}, Lorg/h2/index/PageDataNode;->init(Lorg/h2/index/PageData;JLorg/h2/index/PageData;)V

    iget-object v4, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v4, v2}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    iget-object v2, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v2, v3}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    iget-object v2, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v2, v6}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    goto/16 :goto_0
.end method

.method private incrementRowCount(II)V
    .locals 2

    iget-boolean v0, p0, Lorg/h2/index/PageDataIndex;->multiVersion:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->sessionRowCount:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lorg/h2/index/PageDataIndex;->sessionRowCount:Ljava/util/HashMap;

    add-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lorg/h2/index/PageDataIndex;->rowCountDiff:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/h2/index/PageDataIndex;->rowCountDiff:I

    :cond_1
    return-void
.end method

.method private invalidateRowCount()V
    .locals 2

    iget v0, p0, Lorg/h2/index/PageIndex;->rootPageId:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/h2/index/PageData;->setRowCountStored(I)V

    return-void
.end method

.method private removeAllRows()V
    .locals 3

    :try_start_0
    iget v0, p0, Lorg/h2/index/PageIndex;->rootPageId:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/index/PageData;->freeRecursive()V

    iget v0, p0, Lorg/h2/index/PageIndex;->rootPageId:I

    invoke-static {p0, v0, v1}, Lorg/h2/index/PageDataLeaf;->create(Lorg/h2/index/PageDataIndex;II)Lorg/h2/index/PageDataLeaf;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    iget v2, p0, Lorg/h2/index/PageIndex;->rootPageId:I

    invoke-virtual {v1, v2}, Lorg/h2/store/PageStore;->removeFromCache(I)V

    iget-object v1, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v1, v0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/h2/index/PageDataIndex;->rowCount:J

    iput-wide v0, p0, Lorg/h2/index/PageDataIndex;->lastKey:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->incrementChangeCount()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v1}, Lorg/h2/store/PageStore;->incrementChangeCount()V

    throw v0
.end method


# virtual methods
.method public add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const/4 v0, 0x1

    iget v3, v1, Lorg/h2/index/PageDataIndex;->mainIndexColumn:I

    const/4 v4, -0x1

    const-wide/16 v5, 0x1

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    if-eq v3, v4, :cond_0

    invoke-interface {v2, v3}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/value/Value;->getLong()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lorg/h2/result/SearchRow;->setKey(J)V

    goto :goto_0

    :cond_0
    invoke-interface/range {p2 .. p2}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v3

    cmp-long v10, v3, v7

    if-nez v10, :cond_1

    iget-wide v3, v1, Lorg/h2/index/PageDataIndex;->lastKey:J

    add-long/2addr v3, v5

    iput-wide v3, v1, Lorg/h2/index/PageDataIndex;->lastKey:J

    long-to-int v4, v3

    int-to-long v3, v4

    invoke-interface {v2, v3, v4}, Lorg/h2/result/SearchRow;->setKey(J)V

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x0

    :goto_1
    iget-object v4, v1, Lorg/h2/index/PageDataIndex;->tableData:Lorg/h2/table/RegularTable;

    invoke-virtual {v4}, Lorg/h2/table/RegularTable;->getContainsLargeObject()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface/range {p2 .. p2}, Lorg/h2/result/SearchRow;->getColumnCount()I

    move-result v4

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v4, :cond_4

    invoke-interface {v2, v10}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v11

    iget-object v12, v1, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual/range {p0 .. p0}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lorg/h2/value/Value;->copy(Lorg/h2/store/DataHandler;I)Lorg/h2/value/Value;

    move-result-object v12

    invoke-virtual {v12}, Lorg/h2/value/Value;->isLinkedToTable()Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v13, p1

    invoke-virtual {v13, v12}, Lorg/h2/engine/Session;->removeAtCommitStop(Lorg/h2/value/Value;)V

    goto :goto_3

    :cond_2
    move-object/from16 v13, p1

    :goto_3
    if-eq v11, v12, :cond_3

    invoke-interface {v2, v10, v12}, Lorg/h2/result/SearchRow;->setValue(ILorg/h2/value/Value;)V

    :cond_3
    add-int/2addr v10, v0

    goto :goto_2

    :cond_4
    move-object/from16 v13, p1

    iget-object v4, v1, Lorg/h2/engine/DbObjectBase;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v4}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v1, Lorg/h2/engine/DbObjectBase;->trace:Lorg/h2/message/Trace;

    invoke-virtual/range {p0 .. p0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v10, v11, v9

    aput-object v2, v11, v0

    const-string v0, "{0} add {1}"

    invoke-virtual {v4, v0, v11}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    move-wide v9, v7

    :goto_4
    :try_start_0
    invoke-direct/range {p0 .. p2}, Lorg/h2/index/PageDataIndex;->addTry(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->incrementChangeCount()V

    iget-wide v3, v1, Lorg/h2/index/PageDataIndex;->lastKey:J

    invoke-interface/range {p2 .. p2}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/h2/index/PageDataIndex;->lastKey:J

    return-void

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v4, v0

    :try_start_1
    iget-object v0, v1, Lorg/h2/index/PageDataIndex;->fastDuplicateKeyException:Lorg/h2/message/DbException;

    if-ne v4, v0, :cond_8

    if-eqz v3, :cond_7

    cmp-long v0, v9, v7

    if-nez v0, :cond_6

    invoke-interface/range {p2 .. p2}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v11

    long-to-double v11, v11

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v14

    const-wide v16, 0x40c3880000000000L    # 10000.0

    mul-double v14, v14, v16

    add-double/2addr v14, v11

    double-to-long v11, v14

    invoke-interface {v2, v11, v12}, Lorg/h2/result/SearchRow;->setKey(J)V

    goto :goto_5

    :cond_6
    invoke-interface/range {p2 .. p2}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v11

    add-long/2addr v11, v9

    invoke-interface {v2, v11, v12}, Lorg/h2/result/SearchRow;->setKey(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    add-long/2addr v9, v5

    iget-object v0, v1, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->incrementChangeCount()V

    goto :goto_4

    :cond_7
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lorg/h2/index/PageDataIndex;->getNewDuplicateKeyException()Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_8
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_6
    iget-object v2, v1, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v2}, Lorg/h2/store/PageStore;->incrementChangeCount()V

    throw v0
.end method

.method public canGetFirstOrLast()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public checkRename()V
    .locals 1

    const-string v0, "PAGE"

    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public close(Lorg/h2/engine/Session;)V
    .locals 3

    const/4 p1, 0x0

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->trace:Lorg/h2/message/Trace;

    const-string v1, "{0} close"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->delta:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :cond_1
    iput p1, p0, Lorg/h2/index/PageDataIndex;->rowCountDiff:I

    iget-object p1, p0, Lorg/h2/index/PageDataIndex;->sessionRowCount:Ljava/util/HashMap;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :cond_2
    invoke-virtual {p0}, Lorg/h2/index/PageDataIndex;->writeRowCount()V

    return-void
.end method

.method public commit(ILorg/h2/result/Row;)V
    .locals 1

    iget-boolean v0, p0, Lorg/h2/index/PageDataIndex;->multiVersion:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->delta:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {p2}, Lorg/h2/result/Row;->getSessionId()I

    move-result p2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    invoke-direct {p0, p2, v0}, Lorg/h2/index/PageDataIndex;->incrementRowCount(II)V

    :cond_2
    return-void
.end method

.method public find(Lorg/h2/engine/Session;JJZ)Lorg/h2/index/Cursor;
    .locals 9

    .line 1
    iget v0, p0, Lorg/h2/index/PageIndex;->rootPageId:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v2

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Lorg/h2/index/PageData;->find(Lorg/h2/engine/Session;JJZ)Lorg/h2/index/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;
    .locals 9

    .line 2
    if-nez p2, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    :goto_0
    move-wide v4, v0

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v0

    goto :goto_0

    :goto_1
    if-nez p3, :cond_1

    const-wide p2, 0x7fffffffffffffffL

    :goto_2
    move-wide v6, p2

    goto :goto_3

    :cond_1
    invoke-interface {p3}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide p2

    goto :goto_2

    :goto_3
    iget p2, p0, Lorg/h2/index/PageIndex;->rootPageId:I

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v2

    iget-boolean v8, p0, Lorg/h2/index/BaseIndex;->isMultiVersion:Z

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lorg/h2/index/PageData;->find(Lorg/h2/engine/Session;JJZ)Lorg/h2/index/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public findFirstOrLast(Lorg/h2/engine/Session;Z)Lorg/h2/index/Cursor;
    .locals 0

    invoke-virtual {p0}, Lorg/h2/index/PageDataIndex;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getColumnIndex(Lorg/h2/table/Column;)I
    .locals 0

    const/4 p1, -0x1

    return p1
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

    iget-object p1, p0, Lorg/h2/index/PageDataIndex;->tableData:Lorg/h2/table/RegularTable;

    invoke-virtual {p1}, Lorg/h2/table/RegularTable;->getRowCountApproximation()J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    add-long/2addr p1, p3

    const-wide/16 p3, 0xa

    mul-long p1, p1, p3

    long-to-double p1, p1

    return-wide p1
.end method

.method public getCreateSQL()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDelta()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/h2/result/Row;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->delta:Ljava/util/HashSet;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getDiskSpaceUsed()J
    .locals 2

    iget v0, p0, Lorg/h2/index/PageIndex;->rootPageId:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/index/PageData;->getDiskSpaceUsed()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuplicateKeyException(Ljava/lang/String;)Lorg/h2/message/DbException;
    .locals 0

    iget-object p1, p0, Lorg/h2/index/PageDataIndex;->fastDuplicateKeyException:Lorg/h2/message/DbException;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lorg/h2/index/BaseIndex;->getDuplicateKeyException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/index/PageDataIndex;->fastDuplicateKeyException:Lorg/h2/message/DbException;

    :cond_0
    iget-object p1, p0, Lorg/h2/index/PageDataIndex;->fastDuplicateKeyException:Lorg/h2/message/DbException;

    return-object p1
.end method

.method public getKey(Lorg/h2/result/SearchRow;JJ)J
    .locals 0

    if-nez p1, :cond_0

    return-wide p2

    :cond_0
    iget p2, p0, Lorg/h2/index/PageDataIndex;->mainIndexColumn:I

    invoke-interface {p1, p2}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object p2

    if-eqz p2, :cond_2

    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p2, p1, :cond_1

    return-wide p4

    :cond_1
    invoke-virtual {p2}, Lorg/h2/value/Value;->getLong()J

    move-result-wide p1

    return-wide p1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getLastKey()J
    .locals 2

    iget v0, p0, Lorg/h2/index/PageIndex;->rootPageId:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/index/PageData;->getLastKey()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMainIndexColumn()I
    .locals 1

    iget v0, p0, Lorg/h2/index/PageDataIndex;->mainIndexColumn:I

    return v0
.end method

.method public getMemoryPerPage()I
    .locals 1

    iget v0, p0, Lorg/h2/index/PageDataIndex;->memoryPerPage:I

    return v0
.end method

.method public getNewDuplicateKeyException()Lorg/h2/message/DbException;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PRIMARY KEY ON "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/h2/index/BaseIndex;->table:Lorg/h2/table/Table;

    .line 9
    .line 10
    invoke-virtual {v1}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget v1, p0, Lorg/h2/index/PageDataIndex;->mainIndexColumn:I

    .line 22
    .line 23
    if-ltz v1, :cond_0

    .line 24
    .line 25
    iget-object v2, p0, Lorg/h2/index/BaseIndex;->indexColumns:[Lorg/h2/table/IndexColumn;

    .line 26
    .line 27
    array-length v2, v2

    .line 28
    if-ge v1, v2, :cond_0

    .line 29
    .line 30
    const-string v1, "("

    .line 31
    .line 32
    invoke-static {v0, v1}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lorg/h2/index/BaseIndex;->indexColumns:[Lorg/h2/table/IndexColumn;

    .line 37
    .line 38
    iget v2, p0, Lorg/h2/index/PageDataIndex;->mainIndexColumn:I

    .line 39
    .line 40
    aget-object v1, v1, v2

    .line 41
    .line 42
    invoke-virtual {v1}, Lorg/h2/table/IndexColumn;->getSQL()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v1, ")"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :cond_0
    const/16 v1, 0x5bd1

    .line 59
    .line 60
    invoke-static {v1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0, p0}, Lorg/h2/message/DbException;->setSource(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    return-object v0
.end method

.method public getPage(II)Lorg/h2/index/PageData;
    .locals 2

    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0, p1}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0, p1, p2}, Lorg/h2/index/PageDataLeaf;->create(Lorg/h2/index/PageDataIndex;II)Lorg/h2/index/PageDataLeaf;

    move-result-object p1

    iget-object p2, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    iget-object p2, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p2, p1}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    return-object p1

    :cond_0
    instance-of p1, v0, Lorg/h2/index/PageData;

    if-eqz p1, :cond_3

    check-cast v0, Lorg/h2/index/PageData;

    const/4 p1, -0x1

    if-eq p2, p1, :cond_2

    invoke-virtual {v0}, Lorg/h2/index/PageData;->getParentPageId()I

    move-result p1

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " parent "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/h2/index/PageData;->getParentPageId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " expected "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const p2, 0x15fae

    invoke-static {p2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public getPageOverflow(I)Lorg/h2/index/PageDataOverflow;
    .locals 1

    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0, p1}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    move-result-object p1

    instance-of v0, p1, Lorg/h2/index/PageDataOverflow;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/h2/index/PageDataOverflow;

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "null"

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const v0, 0x15fae

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public getPageStore()Lorg/h2/store/PageStore;
    .locals 1

    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    return-object v0
.end method

.method public getPlanSQL()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/index/BaseIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {v1}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".tableScan"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRow(Lorg/h2/engine/Session;J)Lorg/h2/result/Row;
    .locals 0

    invoke-virtual {p0, p2, p3}, Lorg/h2/index/PageDataIndex;->getRowWithKey(J)Lorg/h2/result/Row;

    move-result-object p1

    return-object p1
.end method

.method public getRowCount(Lorg/h2/engine/Session;)J
    .locals 4

    iget-boolean v0, p0, Lorg/h2/index/PageDataIndex;->multiVersion:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->sessionRowCount:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    :goto_0
    iget-wide v2, p0, Lorg/h2/index/PageDataIndex;->rowCount:J

    add-long/2addr v0, v2

    iget p1, p0, Lorg/h2/index/PageDataIndex;->rowCountDiff:I

    int-to-long v2, p1

    sub-long/2addr v0, v2

    return-wide v0

    :cond_1
    iget-wide v0, p0, Lorg/h2/index/PageDataIndex;->rowCount:J

    return-wide v0
.end method

.method public getRowCountApproximation()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/index/PageDataIndex;->rowCount:J

    return-wide v0
.end method

.method public getRowWithKey(J)Lorg/h2/result/Row;
    .locals 2

    iget v0, p0, Lorg/h2/index/PageIndex;->rootPageId:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/h2/index/PageData;->getRowWithKey(J)Lorg/h2/result/Row;

    move-result-object p1

    return-object p1
.end method

.method public isFirstColumn(Lorg/h2/table/Column;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isRowIdIndex()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public memoryChange(I)V
    .locals 3

    iget v0, p0, Lorg/h2/index/PageDataIndex;->memoryCount:I

    const/4 v1, 0x1

    const/16 v2, 0x40

    if-ge v0, v2, :cond_0

    iget v2, p0, Lorg/h2/index/PageDataIndex;->memoryPerPage:I

    sub-int/2addr p1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/h2/index/PageDataIndex;->memoryCount:I

    div-int/2addr p1, v0

    add-int/2addr p1, v2

    :goto_0
    iput p1, p0, Lorg/h2/index/PageDataIndex;->memoryPerPage:I

    goto :goto_2

    :cond_0
    iget v0, p0, Lorg/h2/index/PageDataIndex;->memoryPerPage:I

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

    const/4 v0, 0x0

    return v0
.end method

.method public remove(Lorg/h2/engine/Session;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->trace:Lorg/h2/message/Trace;

    const-string v1, "{0} remove"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lorg/h2/index/PageDataIndex;->removeAllRows()V

    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    iget v1, p0, Lorg/h2/index/PageIndex;->rootPageId:I

    invoke-virtual {v0, v1}, Lorg/h2/store/PageStore;->free(I)V

    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0, p0, p1}, Lorg/h2/store/PageStore;->removeMeta(Lorg/h2/index/Index;Lorg/h2/engine/Session;)V

    return-void
.end method

.method public remove(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 7

    .line 2
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/h2/index/PageDataIndex;->tableData:Lorg/h2/table/RegularTable;

    invoke-virtual {v1}, Lorg/h2/table/RegularTable;->getContainsLargeObject()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p2}, Lorg/h2/result/SearchRow;->getColumnCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-interface {p2, v3}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v4

    invoke-virtual {v4}, Lorg/h2/value/Value;->isLinkedToTable()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1, v4}, Lorg/h2/engine/Session;->removeAtCommitStop(Lorg/h2/value/Value;)V

    :cond_0
    add-int/2addr v3, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/h2/engine/DbObjectBase;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v1}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/h2/engine/DbObjectBase;->trace:Lorg/h2/message/Trace;

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v2

    aput-object p2, v4, v0

    const-string v3, "{0} remove {1}"

    invoke-virtual {v1, v3, v4}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-wide v3, p0, Lorg/h2/index/PageDataIndex;->rowCount:J

    const-wide/16 v5, 0x1

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    invoke-direct {p0}, Lorg/h2/index/PageDataIndex;->removeAllRows()V

    goto :goto_1

    :cond_3
    :try_start_0
    invoke-interface {p2}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v3

    iget v1, p0, Lorg/h2/index/PageIndex;->rootPageId:I

    invoke-virtual {p0, v1, v2}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lorg/h2/index/PageData;->remove(J)Z

    invoke-direct {p0}, Lorg/h2/index/PageDataIndex;->invalidateRowCount()V

    iget-wide v3, p0, Lorg/h2/index/PageDataIndex;->rowCount:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lorg/h2/index/PageDataIndex;->rowCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v1}, Lorg/h2/store/PageStore;->incrementChangeCount()V

    :goto_1
    iget-boolean v1, p0, Lorg/h2/index/PageDataIndex;->multiVersion:Z

    if-eqz v1, :cond_6

    invoke-interface {p2, v0}, Lorg/h2/result/Row;->setDeleted(Z)V

    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->delta:Ljava/util/HashSet;

    if-nez v0, :cond_4

    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/index/PageDataIndex;->delta:Ljava/util/HashSet;

    :cond_4
    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->delta:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->delta:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getId()I

    move-result v0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/h2/index/PageDataIndex;->incrementRowCount(II)V

    :cond_6
    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    iget-object v1, p0, Lorg/h2/index/PageDataIndex;->tableData:Lorg/h2/table/RegularTable;

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2, v2}, Lorg/h2/store/PageStore;->logAddOrRemoveRow(Lorg/h2/engine/Session;ILorg/h2/result/Row;Z)V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p2}, Lorg/h2/store/PageStore;->incrementChangeCount()V

    throw p1
.end method

.method public setMainIndexColumn(I)V
    .locals 0

    iput p1, p0, Lorg/h2/index/PageDataIndex;->mainIndexColumn:I

    return-void
.end method

.method public setRootPageId(Lorg/h2/engine/Session;I)V
    .locals 1

    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0, p0, p1}, Lorg/h2/store/PageStore;->removeMeta(Lorg/h2/index/Index;Lorg/h2/engine/Session;)V

    iput p2, p0, Lorg/h2/index/PageIndex;->rootPageId:I

    iget-object p2, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p2, p0, p1}, Lorg/h2/store/PageStore;->addMeta(Lorg/h2/index/PageIndex;Lorg/h2/engine/Session;)V

    iget-object p1, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p1, p0}, Lorg/h2/store/PageStore;->addIndex(Lorg/h2/index/PageIndex;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncate(Lorg/h2/engine/Session;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/h2/engine/DbObjectBase;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v1}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/h2/engine/DbObjectBase;->trace:Lorg/h2/message/Trace;

    const-string v2, "{0} truncate"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    iget-object v2, p0, Lorg/h2/index/PageDataIndex;->tableData:Lorg/h2/table/RegularTable;

    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lorg/h2/store/PageStore;->logTruncate(Lorg/h2/engine/Session;I)V

    invoke-direct {p0}, Lorg/h2/index/PageDataIndex;->removeAllRows()V

    iget-object v1, p0, Lorg/h2/index/PageDataIndex;->tableData:Lorg/h2/table/RegularTable;

    invoke-virtual {v1}, Lorg/h2/table/RegularTable;->getContainsLargeObject()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/h2/index/PageDataIndex;->tableData:Lorg/h2/table/RegularTable;

    invoke-virtual {v1}, Lorg/h2/table/Table;->isPersistData()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lorg/h2/engine/Session;->commit(Z)V

    iget-object p1, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/index/BaseIndex;->table:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/h2/store/LobStorageInterface;->removeAllForTable(I)V

    :cond_1
    iget-boolean p1, p0, Lorg/h2/index/PageDataIndex;->multiVersion:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/h2/index/PageDataIndex;->sessionRowCount:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :cond_2
    iget-object p1, p0, Lorg/h2/index/PageDataIndex;->tableData:Lorg/h2/table/RegularTable;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/h2/table/RegularTable;->setRowCount(J)V

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
    :try_start_0
    iget v0, p0, Lorg/h2/index/PageIndex;->rootPageId:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v0

    iget-wide v1, p0, Lorg/h2/index/PageDataIndex;->rowCount:J

    invoke-static {v1, v2}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/h2/index/PageData;->setRowCountStored(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->incrementChangeCount()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/h2/index/PageDataIndex;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v1}, Lorg/h2/store/PageStore;->incrementChangeCount()V

    throw v0
.end method
