.class public Lorg/h2/store/PageStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/util/CacheWriter;


# static fields
.field private static final COMPACT_BLOCK_SIZE:I = 0x600

.field private static final INCREMENT_KB:I = 0x400

.field private static final INCREMENT_PERCENT_MIN:I = 0x23

.field public static final LOG_MODE_OFF:I = 0x0

.field public static final LOG_MODE_SYNC:I = 0x2

.field private static final META_TABLE_ID:I = -0x1

.field private static final META_TYPE_BTREE_INDEX:I = 0x1

.field private static final META_TYPE_DATA_INDEX:I = 0x0

.field private static final MIN_PAGE_COUNT:I = 0x5

.field private static final PAGE_ID_FREE_LIST_ROOT:I = 0x3

.field private static final PAGE_ID_META_ROOT:I = 0x4

.field public static final PAGE_SIZE_MAX:I = 0x8000

.field public static final PAGE_SIZE_MIN:I = 0x40

.field private static final READ_VERSION:I = 0x3

.field private static final WRITE_VERSION:I = 0x3


# instance fields
.field private accessMode:Ljava/lang/String;

.field private backupLevel:I

.field private final cache:Lorg/h2/util/Cache;

.field private changeCount:J

.field private final database:Lorg/h2/engine/Database;

.field private emptyPage:Lorg/h2/store/Data;

.field private file:Lorg/h2/store/FileStore;

.field private fileLength:J

.field private final fileName:Ljava/lang/String;

.field private firstFreeListIndex:I

.field private freeListPagesPerList:I

.field private final freeLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/store/PageFreeList;",
            ">;"
        }
    .end annotation
.end field

.field private final freed:Lorg/h2/util/BitField;

.field private ignoreBigLog:Z

.field private isNew:Z

.field private lockFile:Z

.field private log:Lorg/h2/store/PageLog;

.field private logFirstDataPage:I

.field private logFirstTrunkPage:I

.field private logKey:I

.field private logMode:I

.field private logSizeBase:J

.field private maxLogSize:J

.field private metaIndex:Lorg/h2/index/PageDataIndex;

.field private final metaObjects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/h2/index/PageIndex;",
            ">;"
        }
    .end annotation
.end field

.field private final metaRootPageId:Lorg/h2/util/IntIntHashMap;

.field private metaSchema:Lorg/h2/schema/Schema;

.field private metaTable:Lorg/h2/table/RegularTable;

.field private pageCount:I

.field private pageSize:I

.field private pageSizeShift:I

.field private final pageStoreSession:Lorg/h2/engine/Session;

.field private readCount:J

.field private readMode:Z

.field private recordPageReads:Z

.field private recordedPagesIndex:Lorg/h2/util/IntIntHashMap;

.field private recordedPagesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private recoveryRunning:Z

.field private reservedPages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private statistics:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private tempObjects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/h2/index/PageIndex;",
            ">;"
        }
    .end annotation
.end field

.field private final trace:Lorg/h2/message/Trace;

.field private writeCount:J

.field private writeCountBase:J


# direct methods
.method public constructor <init>(Lorg/h2/engine/Database;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    iput v0, p0, Lorg/h2/store/PageStore;->pageSize:I

    new-instance v0, Lorg/h2/util/IntIntHashMap;

    invoke-direct {v0}, Lorg/h2/util/IntIntHashMap;-><init>()V

    iput-object v0, p0, Lorg/h2/store/PageStore;->metaRootPageId:Lorg/h2/util/IntIntHashMap;

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    const-wide/32 v0, 0x1000000

    iput-wide v0, p0, Lorg/h2/store/PageStore;->maxLogSize:J

    new-instance v0, Lorg/h2/util/BitField;

    invoke-direct {v0}, Lorg/h2/util/BitField;-><init>()V

    iput-object v0, p0, Lorg/h2/store/PageStore;->freed:Lorg/h2/util/BitField;

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/PageStore;->freeLists:Ljava/util/ArrayList;

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/h2/store/PageStore;->changeCount:J

    const/4 v0, 0x2

    iput v0, p0, Lorg/h2/store/PageStore;->logMode:I

    iput-object p2, p0, Lorg/h2/store/PageStore;->fileName:Ljava/lang/String;

    iput-object p3, p0, Lorg/h2/store/PageStore;->accessMode:Ljava/lang/String;

    iput-object p1, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Lorg/h2/engine/Database;->getTrace(I)Lorg/h2/message/Trace;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getCacheType()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p4}, Lorg/h2/util/CacheLRU;->getCache(Lorg/h2/util/CacheWriter;Ljava/lang/String;I)Lorg/h2/util/Cache;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/store/PageStore;->cache:Lorg/h2/util/Cache;

    new-instance p2, Lorg/h2/engine/Session;

    const/4 p3, 0x0

    const/4 p4, 0x0

    invoke-direct {p2, p1, p3, p4}, Lorg/h2/engine/Session;-><init>(Lorg/h2/engine/Database;Lorg/h2/engine/User;I)V

    iput-object p2, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    return-void
.end method

.method private addMeta(Lorg/h2/result/Row;Lorg/h2/engine/Session;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v4

    invoke-virtual {v4}, Lorg/h2/value/Value;->getInt()I

    move-result v9

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v5

    invoke-virtual {v5}, Lorg/h2/value/Value;->getInt()I

    move-result v5

    const/4 v6, 0x2

    invoke-interface {v1, v6}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v7

    invoke-virtual {v7}, Lorg/h2/value/Value;->getInt()I

    move-result v7

    const/4 v8, 0x3

    invoke-interface {v1, v8}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v10

    invoke-virtual {v10}, Lorg/h2/value/Value;->getInt()I

    move-result v10

    const/4 v11, 0x4

    invoke-interface {v1, v11}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v12

    invoke-virtual {v12}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x2c

    invoke-static {v12, v13, v3}, Lorg/h2/util/StringUtils;->arraySplit(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x5

    invoke-interface {v1, v14}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v14

    invoke-virtual {v14}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v13, v3}, Lorg/h2/util/StringUtils;->arraySplit(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v13

    iget-object v15, v0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v15}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v15

    if-eqz v15, :cond_0

    iget-object v15, v0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    const-string v8, "addMeta id="

    const-string v3, " type="

    const-string v4, " root="

    .line 2
    invoke-static {v8, v9, v3, v5, v4}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3
    const-string v4, " parent="

    const-string v8, " columns="

    .line 4
    invoke-static {v3, v10, v4, v7, v8}, Ls/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 5
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    if-eqz v10, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/h2/store/PageStore;->createData()Lorg/h2/store/Data;

    move-result-object v3

    invoke-virtual {v0, v10, v3}, Lorg/h2/store/PageStore;->writePage(ILorg/h2/store/Data;)V

    invoke-virtual {v0, v10}, Lorg/h2/store/PageStore;->allocatePage(I)V

    :cond_1
    iget-object v3, v0, Lorg/h2/store/PageStore;->metaRootPageId:Lorg/h2/util/IntIntHashMap;

    invoke-virtual {v3, v9, v10}, Lorg/h2/util/IntIntHashMap;->put(II)V

    if-nez v5, :cond_6

    new-instance v3, Lorg/h2/command/ddl/CreateTableData;

    invoke-direct {v3}, Lorg/h2/command/ddl/CreateTableData;-><init>()V

    sget-boolean v4, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v4, :cond_3

    if-eqz v13, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_3
    :goto_0
    array-length v1, v13

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_4

    new-instance v5, Lorg/h2/table/Column;

    const-string v7, "C"

    .line 6
    invoke-static {v4, v7}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 7
    invoke-direct {v5, v7, v11}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    iget-object v7, v3, Lorg/h2/command/ddl/CreateTableData;->columns:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, v0, Lorg/h2/store/PageStore;->metaSchema:Lorg/h2/schema/Schema;

    iput-object v1, v3, Lorg/h2/command/ddl/CreateTableData;->schema:Lorg/h2/schema/Schema;

    const-string v1, "T"

    .line 8
    invoke-static {v9, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    iput-object v1, v3, Lorg/h2/command/ddl/CreateTableData;->tableName:Ljava/lang/String;

    iput v9, v3, Lorg/h2/command/ddl/CreateTableData;->id:I

    aget-object v1, v12, v6

    const-string v4, "temp"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v3, Lorg/h2/command/ddl/CreateTableData;->temporary:Z

    const/4 v1, 0x1

    iput-boolean v1, v3, Lorg/h2/command/ddl/CreateTableData;->persistData:Z

    iput-boolean v1, v3, Lorg/h2/command/ddl/CreateTableData;->persistIndexes:Z

    const/4 v1, 0x0

    iput-boolean v1, v3, Lorg/h2/command/ddl/CreateTableData;->create:Z

    iput-object v2, v3, Lorg/h2/command/ddl/CreateTableData;->session:Lorg/h2/engine/Session;

    new-instance v4, Lorg/h2/table/RegularTable;

    invoke-direct {v4, v3}, Lorg/h2/table/RegularTable;-><init>(Lorg/h2/command/ddl/CreateTableData;)V

    sget-boolean v3, Lorg/h2/engine/SysProperties;->SORT_BINARY_UNSIGNED:Z

    array-length v5, v12

    const/4 v6, 0x3

    if-le v5, v6, :cond_5

    aget-object v3, v12, v6

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    :cond_5
    aget-object v1, v12, v1

    const/4 v5, 0x1

    aget-object v5, v12, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v1, v5, v3}, Lorg/h2/value/CompareMode;->getInstance(Ljava/lang/String;IZ)Lorg/h2/value/CompareMode;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/h2/table/RegularTable;->setCompareMode(Lorg/h2/value/CompareMode;)V

    invoke-virtual {v4, v2}, Lorg/h2/table/RegularTable;->getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;

    move-result-object v1

    goto/16 :goto_4

    :cond_6
    iget-object v3, v0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/index/Index;

    if-eqz v3, :cond_c

    invoke-interface {v3}, Lorg/h2/index/Index;->getTable()Lorg/h2/table/Table;

    move-result-object v1

    check-cast v1, Lorg/h2/table/RegularTable;

    invoke-virtual {v1}, Lorg/h2/table/Table;->getColumns()[Lorg/h2/table/Column;

    move-result-object v3

    array-length v4, v13

    new-array v5, v4, [Lorg/h2/table/IndexColumn;

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_8

    aget-object v7, v13, v6

    new-instance v8, Lorg/h2/table/IndexColumn;

    invoke-direct {v8}, Lorg/h2/table/IndexColumn;-><init>()V

    const/16 v10, 0x2f

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-ltz v10, :cond_7

    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v8, Lorg/h2/table/IndexColumn;->sortType:I

    const/4 v11, 0x0

    invoke-virtual {v7, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_7
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v7, v3, v7

    iput-object v7, v8, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    aput-object v8, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_8
    const/4 v6, 0x3

    aget-object v3, v12, v6

    const-string v6, "d"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-static {v6, v3}, Lorg/h2/index/IndexType;->createPrimaryKey(ZZ)Lorg/h2/index/IndexType;

    move-result-object v6

    invoke-virtual {v1}, Lorg/h2/table/Table;->getColumns()[Lorg/h2/table/Column;

    move-result-object v7

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v4, :cond_a

    aget-object v10, v5, v8

    iget-object v10, v10, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v10}, Lorg/h2/table/Column;->getColumnId()I

    move-result v10

    aget-object v10, v7, v10

    invoke-virtual {v10, v3}, Lorg/h2/table/Column;->setNullable(Z)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_9
    const/4 v3, 0x1

    invoke-static {v3}, Lorg/h2/index/IndexType;->createNonUnique(Z)Lorg/h2/index/IndexType;

    move-result-object v3

    move-object v6, v3

    :cond_a
    const-string v3, "I"

    .line 10
    invoke-static {v9, v3}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p2

    move v4, v9

    .line 11
    invoke-virtual/range {v1 .. v8}, Lorg/h2/table/RegularTable;->addIndex(Lorg/h2/engine/Session;Ljava/lang/String;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;ZLjava/lang/String;)Lorg/h2/index/Index;

    move-result-object v1

    :goto_4
    instance-of v2, v1, Lorg/h2/index/MultiVersionIndex;

    if-eqz v2, :cond_b

    check-cast v1, Lorg/h2/index/MultiVersionIndex;

    invoke-virtual {v1}, Lorg/h2/index/MultiVersionIndex;->getBaseIndex()Lorg/h2/index/Index;

    move-result-object v1

    :cond_b
    check-cast v1, Lorg/h2/index/PageIndex;

    iget-object v2, v0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Table not found:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " meta:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x15fae

    invoke-static {v2, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v1

    throw v1
.end method

.method private allocatePage(Lorg/h2/util/BitField;I)I
    .locals 2

    .line 2
    iget v0, p0, Lorg/h2/store/PageStore;->firstFreeListIndex:I

    :goto_0
    invoke-direct {p0, v0}, Lorg/h2/store/PageStore;->getFreeList(I)Lorg/h2/store/PageFreeList;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/h2/store/PageFreeList;->allocate(Lorg/h2/util/BitField;I)I

    move-result v1

    if-ltz v1, :cond_1

    iput v0, p0, Lorg/h2/store/PageStore;->firstFreeListIndex:I

    :goto_1
    iget p1, p0, Lorg/h2/store/PageStore;->pageCount:I

    if-lt v1, p1, :cond_0

    invoke-direct {p0}, Lorg/h2/store/PageStore;->increaseFileSize()V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    invoke-virtual {p1}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private checkOpen()V
    .locals 1

    iget-object v0, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x15ff2

    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private checksumSet([BI)V
    .locals 5

    iget v0, p0, Lorg/h2/store/PageStore;->pageSize:I

    const/4 v1, 0x0

    aget-byte v1, p1, v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    and-int/lit16 v1, v1, 0xff

    add-int/lit16 v2, v1, 0xff

    add-int/lit16 v1, v1, 0x1fe

    const/4 v3, 0x6

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    shr-int/lit8 v3, v0, 0x1

    add-int/lit8 v4, v3, -0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v2, v4

    add-int/2addr v1, v2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v3, v0, -0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v2, v0

    add-int/2addr v1, v2

    and-int/lit16 v0, v2, 0xff

    shr-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    xor-int/2addr v0, p2

    int-to-byte v0, v0

    aput-byte v0, p1, v3

    and-int/lit16 v0, v1, 0xff

    shr-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    shr-int/lit8 p2, p2, 0x8

    xor-int/2addr p2, v0

    int-to-byte p2, p2

    const/4 v0, 0x2

    aput-byte p2, p1, v0

    return-void
.end method

.method public static checksumTest([BII)Z
    .locals 5

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    add-int/lit16 v2, v1, 0xff

    add-int/lit16 v1, v1, 0x1fe

    const/4 v3, 0x6

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    shr-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, v3, -0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v2, v4

    add-int/2addr v1, v2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v3, p2, -0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    const/4 v3, 0x1

    sub-int/2addr p2, v3

    aget-byte p2, p0, p2

    and-int/lit16 p2, p2, 0xff

    add-int/2addr v2, p2

    add-int/2addr v1, v2

    aget-byte p2, p0, v3

    and-int/lit16 v4, v2, 0xff

    shr-int/lit8 v2, v2, 0x8

    add-int/2addr v4, v2

    xor-int v2, v4, p1

    int-to-byte v2, v2

    if-ne p2, v2, :cond_1

    const/4 p2, 0x2

    aget-byte p0, p0, p2

    and-int/lit16 p2, v1, 0xff

    shr-int/lit8 v1, v1, 0x8

    add-int/2addr p2, v1

    shr-int/lit8 p1, p1, 0x8

    xor-int/2addr p1, p2

    int-to-byte p1, p1

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    :goto_0
    return v0
.end method

.method private compact(II)Z
    .locals 8

    .line 2
    const-string v0, "changeCount has wrapped"

    const/4 v1, 0x5

    if-lt p1, v1, :cond_9

    const/4 v1, -0x1

    if-eq p2, v1, :cond_9

    if-ge p2, p1, :cond_9

    invoke-direct {p0, p1}, Lorg/h2/store/PageStore;->isUsed(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lorg/h2/store/PageStore;->cache:Lorg/h2/util/Cache;

    invoke-interface {v1, p2}, Lorg/h2/util/Cache;->get(I)Lorg/h2/util/CacheObject;

    move-result-object v1

    check-cast v1, Lorg/h2/store/Page;

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "not free: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_1
    invoke-virtual {p0, p1}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    move-result-object v1

    if-nez v1, :cond_2

    :goto_0
    invoke-direct {p0, p1}, Lorg/h2/store/PageStore;->freePage(I)V

    goto :goto_2

    :cond_2
    instance-of v2, v1, Lorg/h2/store/PageStreamData;

    if-nez v2, :cond_7

    instance-of v2, v1, Lorg/h2/store/PageStreamTrunk;

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    invoke-virtual {p1}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "move "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    :cond_4
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    :try_start_0
    iget-object p1, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    invoke-virtual {v1, p1, p2}, Lorg/h2/store/Page;->moveTo(Lorg/h2/engine/Session;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-wide p1, p0, Lorg/h2/store/PageStore;->changeCount:J

    add-long/2addr p1, v4

    iput-wide p1, p0, Lorg/h2/store/PageStore;->changeCount:J

    sget-boolean v1, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v1, :cond_8

    cmp-long v1, p1, v2

    if-ltz v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    iget-wide v6, p0, Lorg/h2/store/PageStore;->changeCount:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lorg/h2/store/PageStore;->changeCount:J

    sget-boolean p2, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz p2, :cond_6

    cmp-long p2, v6, v2

    if-gez p2, :cond_6

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_6
    throw p1

    :cond_7
    :goto_1
    invoke-virtual {v1}, Lorg/h2/util/CacheObject;->getPos()I

    move-result p2

    iget-object v0, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v0}, Lorg/h2/store/PageLog;->getMinPageId()I

    move-result v0

    if-ge p2, v0, :cond_8

    goto :goto_0

    :cond_8
    :goto_2
    const/4 p1, 0x1

    return p1

    :cond_9
    :goto_3
    const/4 p1, 0x0

    return p1
.end method

.method private freePage(I)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/h2/store/PageStore;->getFreeListId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/h2/store/PageStore;->getFreeList(I)Lorg/h2/store/PageFreeList;

    move-result-object v1

    iget v2, p0, Lorg/h2/store/PageStore;->firstFreeListIndex:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/h2/store/PageStore;->firstFreeListIndex:I

    invoke-virtual {v1, p1}, Lorg/h2/store/PageFreeList;->free(I)V

    return-void
.end method

.method private getFirstFree(I)I
    .locals 4

    invoke-direct {p0, p1}, Lorg/h2/store/PageStore;->getFreeListId(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, -0x1

    :goto_0
    iget v3, p0, Lorg/h2/store/PageStore;->pageCount:I

    if-ge p1, v3, :cond_1

    invoke-direct {p0, v0}, Lorg/h2/store/PageStore;->getFreeList(I)Lorg/h2/store/PageFreeList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/h2/store/PageFreeList;->getFirstFree(I)I

    move-result v2

    if-eq v2, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method

.method private getFirstUncommittedSection()I
    .locals 6

    iget-object v0, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    const-string v1, "getFirstUncommittedSection"

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->getSessions(Z)[Lorg/h2/engine/Session;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v1}, Lorg/h2/store/PageLog;->getLogSectionId()I

    move-result v1

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/h2/engine/Session;->getFirstUncommittedLog()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    if-ge v4, v1, :cond_0

    move v1, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getFreeList(I)Lorg/h2/store/PageFreeList;
    .locals 4

    iget-object v0, p0, Lorg/h2/store/PageStore;->freeLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/h2/store/PageStore;->freeLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/store/PageFreeList;

    if-eqz v0, :cond_1

    return-object v0

    :cond_0
    move-object v0, v1

    :cond_1
    iget v2, p0, Lorg/h2/store/PageStore;->freeListPagesPerList:I

    mul-int v2, v2, p1

    add-int/lit8 v2, v2, 0x3

    :goto_0
    iget v3, p0, Lorg/h2/store/PageStore;->pageCount:I

    if-lt v2, v3, :cond_2

    invoke-direct {p0}, Lorg/h2/store/PageStore;->increaseFileSize()V

    goto :goto_0

    :cond_2
    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v2}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    move-result-object v0

    check-cast v0, Lorg/h2/store/PageFreeList;

    :cond_3
    if-nez v0, :cond_4

    invoke-static {p0, v2}, Lorg/h2/store/PageFreeList;->create(Lorg/h2/store/PageStore;I)Lorg/h2/store/PageFreeList;

    move-result-object v0

    iget-object v2, p0, Lorg/h2/store/PageStore;->cache:Lorg/h2/util/Cache;

    invoke-interface {v2, v0}, Lorg/h2/util/Cache;->put(Lorg/h2/util/CacheObject;)V

    :cond_4
    :goto_1
    iget-object v2, p0, Lorg/h2/store/PageStore;->freeLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, p1, :cond_5

    iget-object v2, p0, Lorg/h2/store/PageStore;->freeLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lorg/h2/store/PageStore;->freeLists:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getFreeListForPage(I)Lorg/h2/store/PageFreeList;
    .locals 0

    invoke-direct {p0, p1}, Lorg/h2/store/PageStore;->getFreeListId(I)I

    move-result p1

    invoke-direct {p0, p1}, Lorg/h2/store/PageStore;->getFreeList(I)Lorg/h2/store/PageFreeList;

    move-result-object p1

    return-object p1
.end method

.method private getFreeListId(I)I
    .locals 1

    add-int/lit8 p1, p1, -0x3

    iget v0, p0, Lorg/h2/store/PageStore;->freeListPagesPerList:I

    div-int/2addr p1, v0

    return p1
.end method

.method private increaseFileSize()V
    .locals 2

    .line 1
    const/high16 v0, 0x100000

    iget v1, p0, Lorg/h2/store/PageStore;->pageSize:I

    div-int/2addr v0, v1

    iget v1, p0, Lorg/h2/store/PageStore;->pageCount:I

    mul-int/lit8 v1, v1, 0x23

    div-int/lit8 v1, v1, 0x64

    if-ge v0, v1, :cond_0

    div-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    mul-int v0, v0, v1

    :cond_0
    iget-object v1, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v1

    iget v1, v1, Lorg/h2/engine/DbSettings;->pageStoreMaxGrowth:I

    if-ge v1, v0, :cond_1

    move v0, v1

    :cond_1
    invoke-direct {p0, v0}, Lorg/h2/store/PageStore;->increaseFileSize(I)V

    return-void
.end method

.method private increaseFileSize(I)V
    .locals 6

    .line 2
    iget v0, p0, Lorg/h2/store/PageStore;->pageCount:I

    :goto_0
    iget v1, p0, Lorg/h2/store/PageStore;->pageCount:I

    add-int v2, v1, p1

    if-ge v0, v2, :cond_0

    iget-object v1, p0, Lorg/h2/store/PageStore;->freed:Lorg/h2/util/BitField;

    invoke-virtual {v1, v0}, Lorg/h2/util/BitField;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v1, p1

    iput v1, p0, Lorg/h2/store/PageStore;->pageCount:I

    int-to-long v0, v1

    iget p1, p0, Lorg/h2/store/PageStore;->pageSizeShift:I

    shl-long/2addr v0, p1

    iget-object p1, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    invoke-virtual {p1, v0, v1}, Lorg/h2/store/FileStore;->setLength(J)V

    iget-wide v2, p0, Lorg/h2/store/PageStore;->writeCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/h2/store/PageStore;->writeCount:J

    iput-wide v0, p0, Lorg/h2/store/PageStore;->fileLength:J

    return-void
.end method

.method private isUsed(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/h2/store/PageStore;->getFreeListForPage(I)Lorg/h2/store/PageFreeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/store/PageFreeList;->isUsed(I)Z

    move-result p1

    return p1
.end method

.method private lockFile()V
    .locals 2

    iget-boolean v0, p0, Lorg/h2/store/PageStore;->lockFile:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/FileStore;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x15fa4

    iget-object v1, p0, Lorg/h2/store/PageStore;->fileName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private openExisting()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    iget-object v1, p0, Lorg/h2/store/PageStore;->fileName:Ljava/lang/String;

    iget-object v2, p0, Lorg/h2/store/PageStore;->accessMode:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/h2/engine/Database;->openFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/store/FileStore;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lorg/h2/store/PageStore;->lockFile()V

    invoke-direct {p0}, Lorg/h2/store/PageStore;->readStaticHeader()V

    iget v0, p0, Lorg/h2/store/PageStore;->pageSize:I

    invoke-static {v0}, Lorg/h2/store/PageFreeList;->getPagesAddressed(I)I

    move-result v0

    iput v0, p0, Lorg/h2/store/PageStore;->freeListPagesPerList:I

    iget-object v0, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/FileStore;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/store/PageStore;->fileLength:J

    iget v2, p0, Lorg/h2/store/PageStore;->pageSize:I

    int-to-long v4, v2

    div-long/2addr v0, v4

    long-to-int v1, v0

    iput v1, p0, Lorg/h2/store/PageStore;->pageCount:I

    const/4 v0, 0x5

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/FileStore;->releaseLock()V

    iget-object v0, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/FileStore;->close()V

    iget-object v0, p0, Lorg/h2/store/PageStore;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/h2/store/PageStore;->openNew()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/store/PageStore;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pageCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/store/PageStore;->pageCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x15fae

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_1
    invoke-direct {p0}, Lorg/h2/store/PageStore;->readVariableHeader()V

    new-instance v0, Lorg/h2/store/PageLog;

    invoke-direct {v0, p0}, Lorg/h2/store/PageLog;-><init>(Lorg/h2/store/PageStore;)V

    iput-object v0, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    iget v1, p0, Lorg/h2/store/PageStore;->logKey:I

    iget v2, p0, Lorg/h2/store/PageStore;->logFirstTrunkPage:I

    iget v4, p0, Lorg/h2/store/PageStore;->logFirstDataPage:I

    invoke-virtual {v0, v1, v2, v4}, Lorg/h2/store/PageLog;->openForReading(III)V

    iget-object v0, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result v0

    iget-object v1, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/h2/engine/Database;->setMultiVersion(Z)V

    invoke-direct {p0}, Lorg/h2/store/PageStore;->recover()Z

    move-result v1

    iget-object v2, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2, v0}, Lorg/h2/engine/Database;->setMultiVersion(Z)V

    iget-object v0, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_3

    iput-boolean v3, p0, Lorg/h2/store/PageStore;->readMode:Z

    if-eqz v1, :cond_2

    sget-boolean v0, Lorg/h2/engine/SysProperties;->MODIFY_ON_WRITE:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/h2/store/PageStore;->tempObjects:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lorg/h2/store/PageStore;->openForWriting()V

    invoke-direct {p0}, Lorg/h2/store/PageStore;->removeOldTempIndexes()V

    :cond_3
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/h2/message/DbException;->getErrorCode()I

    move-result v1

    const v2, 0x15faf

    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "locked"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/h2/store/PageStore;->fileName:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const v2, 0x15fa4

    invoke-static {v2, v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_4
    throw v0
.end method

.method private openForWriting()V
    .locals 4

    iget-boolean v0, p0, Lorg/h2/store/PageStore;->readMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/h2/store/PageStore;->readMode:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/h2/store/PageStore;->recoveryRunning:Z

    iget-object v2, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v2}, Lorg/h2/store/PageLog;->free()V

    invoke-virtual {p0}, Lorg/h2/store/PageStore;->allocatePage()I

    move-result v2

    iput v2, p0, Lorg/h2/store/PageStore;->logFirstTrunkPage:I

    iget-object v3, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v3, v2, v0}, Lorg/h2/store/PageLog;->openForWriting(IZ)V

    iput-boolean v0, p0, Lorg/h2/store/PageStore;->recoveryRunning:Z

    iget-object v2, p0, Lorg/h2/store/PageStore;->freed:Lorg/h2/util/BitField;

    iget v3, p0, Lorg/h2/store/PageStore;->pageCount:I

    invoke-virtual {v2, v0, v3, v1}, Lorg/h2/util/BitField;->set(IIZ)V

    invoke-virtual {p0}, Lorg/h2/store/PageStore;->checkpoint()V

    :cond_1
    :goto_0
    return-void
.end method

.method private openMetaIndex()V
    .locals 11

    new-instance v0, Lorg/h2/command/ddl/CreateTableData;

    invoke-direct {v0}, Lorg/h2/command/ddl/CreateTableData;-><init>()V

    iget-object v1, v0, Lorg/h2/command/ddl/CreateTableData;->columns:Ljava/util/ArrayList;

    new-instance v2, Lorg/h2/table/Column;

    const-string v3, "ID"

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/h2/table/Column;

    const-string v3, "TYPE"

    invoke-direct {v2, v3, v4}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/h2/table/Column;

    const-string v3, "PARENT"

    invoke-direct {v2, v3, v4}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/h2/table/Column;

    const-string v3, "HEAD"

    invoke-direct {v2, v3, v4}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/h2/table/Column;

    const-string v3, "OPTIONS"

    const/16 v4, 0xd

    invoke-direct {v2, v3, v4}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/h2/table/Column;

    const-string v3, "COLUMNS"

    invoke-direct {v2, v3, v4}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/h2/schema/Schema;

    iget-object v6, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v7, 0x0

    const-string v8, ""

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lorg/h2/schema/Schema;-><init>(Lorg/h2/engine/Database;ILjava/lang/String;Lorg/h2/engine/User;Z)V

    iput-object v1, p0, Lorg/h2/store/PageStore;->metaSchema:Lorg/h2/schema/Schema;

    iput-object v1, v0, Lorg/h2/command/ddl/CreateTableData;->schema:Lorg/h2/schema/Schema;

    const-string v1, "PAGE_INDEX"

    iput-object v1, v0, Lorg/h2/command/ddl/CreateTableData;->tableName:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, v0, Lorg/h2/command/ddl/CreateTableData;->id:I

    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/h2/command/ddl/CreateTableData;->temporary:Z

    const/4 v3, 0x1

    iput-boolean v3, v0, Lorg/h2/command/ddl/CreateTableData;->persistData:Z

    iput-boolean v3, v0, Lorg/h2/command/ddl/CreateTableData;->persistIndexes:Z

    iput-boolean v2, v0, Lorg/h2/command/ddl/CreateTableData;->create:Z

    iget-object v2, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    iput-object v2, v0, Lorg/h2/command/ddl/CreateTableData;->session:Lorg/h2/engine/Session;

    new-instance v2, Lorg/h2/table/RegularTable;

    invoke-direct {v2, v0}, Lorg/h2/table/RegularTable;-><init>(Lorg/h2/command/ddl/CreateTableData;)V

    iput-object v2, p0, Lorg/h2/store/PageStore;->metaTable:Lorg/h2/table/RegularTable;

    iget-object v0, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    invoke-virtual {v2, v0}, Lorg/h2/table/RegularTable;->getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;

    move-result-object v0

    check-cast v0, Lorg/h2/index/PageDataIndex;

    iput-object v0, p0, Lorg/h2/store/PageStore;->metaIndex:Lorg/h2/index/PageDataIndex;

    iget-object v0, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/store/PageStore;->metaIndex:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private openNew()V
    .locals 4

    iget v0, p0, Lorg/h2/store/PageStore;->pageSize:I

    invoke-virtual {p0, v0}, Lorg/h2/store/PageStore;->setPageSize(I)V

    iget v0, p0, Lorg/h2/store/PageStore;->pageSize:I

    invoke-static {v0}, Lorg/h2/store/PageFreeList;->getPagesAddressed(I)I

    move-result v0

    iput v0, p0, Lorg/h2/store/PageStore;->freeListPagesPerList:I

    iget-object v0, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    iget-object v1, p0, Lorg/h2/store/PageStore;->fileName:Ljava/lang/String;

    iget-object v2, p0, Lorg/h2/store/PageStore;->accessMode:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/h2/engine/Database;->openFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/store/FileStore;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    invoke-direct {p0}, Lorg/h2/store/PageStore;->lockFile()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/store/PageStore;->recoveryRunning:Z

    invoke-direct {p0}, Lorg/h2/store/PageStore;->writeStaticHeader()V

    invoke-direct {p0}, Lorg/h2/store/PageStore;->writeVariableHeader()V

    new-instance v1, Lorg/h2/store/PageLog;

    invoke-direct {v1, p0}, Lorg/h2/store/PageLog;-><init>(Lorg/h2/store/PageStore;)V

    iput-object v1, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lorg/h2/store/PageStore;->increaseFileSize(I)V

    invoke-direct {p0}, Lorg/h2/store/PageStore;->openMetaIndex()V

    invoke-virtual {p0}, Lorg/h2/store/PageStore;->allocatePage()I

    move-result v1

    iput v1, p0, Lorg/h2/store/PageStore;->logFirstTrunkPage:I

    iget-object v2, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v2, v1, v3}, Lorg/h2/store/PageLog;->openForWriting(IZ)V

    iput-boolean v0, p0, Lorg/h2/store/PageStore;->isNew:Z

    iput-boolean v3, p0, Lorg/h2/store/PageStore;->recoveryRunning:Z

    invoke-direct {p0}, Lorg/h2/store/PageStore;->increaseFileSize()V

    return-void
.end method

.method private readMetaData()V
    .locals 5

    iget-object v0, p0, Lorg/h2/store/PageStore;->metaIndex:Lorg/h2/index/PageDataIndex;

    iget-object v1, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lorg/h2/index/PageDataIndex;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/h2/index/Cursor;->next()Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/h2/index/Cursor;->get()Lorg/h2/result/Row;

    move-result-object v1

    invoke-interface {v1, v4}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v4

    invoke-virtual {v4}, Lorg/h2/value/Value;->getInt()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    invoke-direct {p0, v1, v4, v3}, Lorg/h2/store/PageStore;->addMeta(Lorg/h2/result/Row;Lorg/h2/engine/Session;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/h2/store/PageStore;->metaIndex:Lorg/h2/index/PageDataIndex;

    iget-object v1, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    invoke-virtual {v0, v1, v2, v2}, Lorg/h2/index/PageDataIndex;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Lorg/h2/index/Cursor;->next()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lorg/h2/index/Cursor;->get()Lorg/h2/result/Row;

    move-result-object v1

    invoke-interface {v1, v4}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/value/Value;->getInt()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    invoke-direct {p0, v1, v2, v3}, Lorg/h2/store/PageStore;->addMeta(Lorg/h2/result/Row;Lorg/h2/engine/Session;Z)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private readStaticHeader()V
    .locals 5

    iget-object v0, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    const-wide/16 v1, 0x30

    invoke-virtual {v0, v1, v2}, Lorg/h2/store/FileStore;->seek(J)V

    iget-object v0, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    const/16 v1, 0x10

    new-array v2, v1, [B

    invoke-static {v0, v2}, Lorg/h2/store/Data;->create(Lorg/h2/store/DataHandler;[B)Lorg/h2/store/Data;

    move-result-object v0

    iget-object v2, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Lorg/h2/store/FileStore;->readFully([BII)V

    iget-wide v1, p0, Lorg/h2/store/PageStore;->readCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/h2/store/PageStore;->readCount:J

    invoke-virtual {v0}, Lorg/h2/store/Data;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/h2/store/PageStore;->setPageSize(I)V

    invoke-virtual {v0}, Lorg/h2/store/Data;->readByte()B

    move-result v1

    invoke-virtual {v0}, Lorg/h2/store/Data;->readByte()B

    move-result v0

    const/4 v2, 0x3

    if-gt v0, v2, :cond_1

    if-le v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/h2/store/PageStore;->close()V

    iget-object v0, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->setReadOnly(Z)V

    const-string v0, "r"

    iput-object v0, p0, Lorg/h2/store/PageStore;->accessMode:Ljava/lang/String;

    iget-object v2, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    iget-object v3, p0, Lorg/h2/store/PageStore;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lorg/h2/engine/Database;->openFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/store/FileStore;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    :cond_0
    return-void

    :cond_1
    const v0, 0x15fc0

    iget-object v1, p0, Lorg/h2/store/PageStore;->fileName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private readVariableHeader()V
    .locals 6

    invoke-virtual {p0}, Lorg/h2/store/PageStore;->createData()Lorg/h2/store/Data;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lorg/h2/store/Data;->reset()V

    invoke-virtual {p0, v1, v0}, Lorg/h2/store/PageStore;->readPage(ILorg/h2/store/Data;)V

    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v0}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v3

    iget v4, p0, Lorg/h2/store/PageStore;->pageSize:I

    const/4 v5, 0x4

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v5, v4}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v0}, Lorg/h2/store/Data;->readInt()I

    move-result v2

    if-ne v3, v2, :cond_0

    invoke-virtual {v0}, Lorg/h2/store/Data;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/h2/store/PageStore;->writeCountBase:J

    invoke-virtual {v0}, Lorg/h2/store/Data;->readInt()I

    move-result v1

    iput v1, p0, Lorg/h2/store/PageStore;->logKey:I

    invoke-virtual {v0}, Lorg/h2/store/Data;->readInt()I

    move-result v1

    iput v1, p0, Lorg/h2/store/PageStore;->logFirstTrunkPage:I

    invoke-virtual {v0}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    iput v0, p0, Lorg/h2/store/PageStore;->logFirstDataPage:I

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const v0, 0x15fae

    iget-object v1, p0, Lorg/h2/store/PageStore;->fileName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private recover()Z
    .locals 8

    iget-object v0, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    const-string v1, "log recover"

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/store/PageStore;->recoveryRunning:Z

    iget-object v1, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/h2/store/PageLog;->recover(I)Z

    move-result v1

    and-int/2addr v1, v0

    iget-object v3, p0, Lorg/h2/store/PageStore;->reservedPages:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v5}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "reserve "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v4}, Lorg/h2/store/PageStore;->allocatePage(I)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v3, v0}, Lorg/h2/store/PageLog;->recover(I)Z

    move-result v3

    and-int/2addr v1, v3

    invoke-direct {p0}, Lorg/h2/store/PageStore;->openMetaIndex()V

    invoke-direct {p0}, Lorg/h2/store/PageStore;->readMetaData()V

    iget-object v3, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lorg/h2/store/PageLog;->recover(I)Z

    move-result v3

    and-int/2addr v1, v3

    iget-object v3, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v3}, Lorg/h2/engine/Database;->isReadOnly()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v3}, Lorg/h2/store/PageLog;->getInDoubtTransactions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v3}, Lorg/h2/store/PageLog;->recoverEnd()V

    invoke-direct {p0}, Lorg/h2/store/PageStore;->getFirstUncommittedSection()I

    move-result v3

    iget-object v4, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v4, v3}, Lorg/h2/store/PageLog;->removeUntil(I)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/index/PageDataIndex;

    if-nez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    iput-boolean v4, p0, Lorg/h2/store/PageStore;->isNew:Z

    iget-object v4, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/index/PageIndex;

    invoke-virtual {v5}, Lorg/h2/index/BaseIndex;->getTable()Lorg/h2/table/Table;

    move-result-object v6

    invoke-virtual {v6}, Lorg/h2/engine/DbObjectBase;->isTemporary()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lorg/h2/store/PageStore;->tempObjects:Ljava/util/HashMap;

    if-nez v6, :cond_5

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v6

    iput-object v6, p0, Lorg/h2/store/PageStore;->tempObjects:Ljava/util/HashMap;

    :cond_5
    iget-object v6, p0, Lorg/h2/store/PageStore;->tempObjects:Ljava/util/HashMap;

    invoke-virtual {v5}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    iget-object v6, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    invoke-interface {v5, v6}, Lorg/h2/index/Index;->close(Lorg/h2/engine/Session;)V

    goto :goto_4

    :cond_7
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lorg/h2/store/PageStore;->allocatePage(I)V

    invoke-direct {p0}, Lorg/h2/store/PageStore;->writeIndexRowCounts()V

    iput-boolean v2, p0, Lorg/h2/store/PageStore;->recoveryRunning:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/h2/store/PageStore;->reservedPages:Ljava/util/HashMap;

    invoke-direct {p0}, Lorg/h2/store/PageStore;->writeBack()V

    iget-object v2, p0, Lorg/h2/store/PageStore;->cache:Lorg/h2/util/Cache;

    invoke-interface {v2}, Lorg/h2/util/Cache;->clear()V

    iget-object v2, p0, Lorg/h2/store/PageStore;->freeLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lorg/h2/store/PageStore;->metaIndex:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_8

    iget-object v2, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2, v0}, Lorg/h2/engine/Database;->setReadOnly(Z)V

    :cond_8
    iget-object v0, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    const-string v2, "log recover done"

    invoke-virtual {v0, v2}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    return v1
.end method

.method private removeMeta(Lorg/h2/result/Row;)V
    .locals 2

    .line 2
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/value/Value;->getInt()I

    move-result p1

    iget-object v0, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/index/PageIndex;

    invoke-virtual {v0}, Lorg/h2/index/BaseIndex;->getTable()Lorg/h2/table/Table;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/h2/table/Table;->removeIndex(Lorg/h2/index/Index;)V

    instance-of v1, v0, Lorg/h2/index/PageBtreeIndex;

    if-nez v1, :cond_0

    instance-of v1, v0, Lorg/h2/index/PageDelegateIndex;

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {v0}, Lorg/h2/engine/DbObjectBase;->isTemporary()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    invoke-virtual {v1, v0}, Lorg/h2/engine/Session;->removeLocalTempTableIndex(Lorg/h2/index/Index;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/h2/schema/Schema;->remove(Lorg/h2/schema/SchemaObject;)V

    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    invoke-interface {v0, v1}, Lorg/h2/index/Index;->remove(Lorg/h2/engine/Session;)V

    iget-object v0, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private removeMetaIndex(Lorg/h2/index/Index;Lorg/h2/engine/Session;)V
    .locals 7

    invoke-interface {p1}, Lorg/h2/engine/DbObject;->getId()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/h2/store/PageStore;->metaIndex:Lorg/h2/index/PageDataIndex;

    int-to-long v2, v0

    invoke-virtual {v1, p2, v2, v3}, Lorg/h2/index/PageDataIndex;->getRow(Lorg/h2/engine/Session;J)Lorg/h2/result/Row;

    move-result-object v1

    invoke-interface {v1}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-nez v6, :cond_0

    iget-object p1, p0, Lorg/h2/store/PageStore;->metaIndex:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p1, p2, v1}, Lorg/h2/index/PageDataIndex;->remove(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    return-void

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "key: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " table: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/h2/index/Index;->getTable()Lorg/h2/table/Table;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " row: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const p2, 0x15fae

    invoke-static {p2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private removeOldTempIndexes()V
    .locals 3

    iget-object v0, p0, Lorg/h2/store/PageStore;->tempObjects:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lorg/h2/store/PageStore;->tempObjects:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/index/PageIndex;

    invoke-virtual {v1}, Lorg/h2/index/BaseIndex;->getTable()Lorg/h2/table/Table;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->isTemporary()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    invoke-interface {v1, v2}, Lorg/h2/index/Index;->truncate(Lorg/h2/engine/Session;)V

    iget-object v2, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    invoke-interface {v1, v2}, Lorg/h2/index/Index;->remove(Lorg/h2/engine/Session;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/store/PageStore;->tempObjects:Ljava/util/HashMap;

    :cond_2
    iget-object v0, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/store/PageStore;->metaIndex:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private statisticsIncrement(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/h2/store/PageStore;->statistics:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lorg/h2/store/PageStore;->statistics:Ljava/util/HashMap;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v2, v0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private swap(III)V
    .locals 4

    .line 1
    const-string v0, " and "

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-lt p1, v1, :cond_0

    .line 5
    .line 6
    if-ge p2, v1, :cond_1

    .line 7
    .line 8
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lorg/h2/store/PageStore;->isUsed(I)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v3, " "

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p2}, Lorg/h2/store/PageStore;->isUsed(I)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v2, "can\'t swap "

    .line 44
    .line 45
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 62
    .line 63
    .line 64
    :cond_1
    iget-object v1, p0, Lorg/h2/store/PageStore;->cache:Lorg/h2/util/Cache;

    .line 65
    .line 66
    invoke-interface {v1, p3}, Lorg/h2/util/Cache;->get(I)Lorg/h2/util/CacheObject;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Lorg/h2/store/Page;

    .line 71
    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v3, "not free: "

    .line 77
    .line 78
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {v1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 89
    .line 90
    .line 91
    :cond_2
    iget-object v1, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    .line 92
    .line 93
    invoke-virtual {v1}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_3

    .line 98
    .line 99
    iget-object v1, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    .line 100
    .line 101
    const-string v2, "swap "

    .line 102
    .line 103
    const-string v3, " via "

    .line 104
    .line 105
    invoke-static {v2, p1, v0, p2, v3}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v1, v0}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :cond_3
    invoke-direct {p0, p1}, Lorg/h2/store/PageStore;->isUsed(I)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_5

    .line 124
    .line 125
    invoke-virtual {p0, p1}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    if-eqz v0, :cond_4

    .line 130
    .line 131
    iget-object v1, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    .line 132
    .line 133
    invoke-virtual {v0, v1, p3}, Lorg/h2/store/Page;->moveTo(Lorg/h2/engine/Session;I)V

    .line 134
    .line 135
    .line 136
    :cond_4
    invoke-virtual {p0, p1}, Lorg/h2/store/PageStore;->free(I)V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_5
    const/4 v0, 0x0

    .line 141
    :goto_0
    if-eq p3, p2, :cond_9

    .line 142
    .line 143
    invoke-direct {p0, p2}, Lorg/h2/store/PageStore;->isUsed(I)Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-eqz v1, :cond_7

    .line 148
    .line 149
    invoke-virtual {p0, p2}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    if-eqz v1, :cond_6

    .line 154
    .line 155
    iget-object v2, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    .line 156
    .line 157
    invoke-virtual {v1, v2, p1}, Lorg/h2/store/Page;->moveTo(Lorg/h2/engine/Session;I)V

    .line 158
    .line 159
    .line 160
    :cond_6
    invoke-virtual {p0, p2}, Lorg/h2/store/PageStore;->free(I)V

    .line 161
    .line 162
    .line 163
    :cond_7
    if-eqz v0, :cond_9

    .line 164
    .line 165
    invoke-virtual {p0, p3}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    if-eqz p1, :cond_8

    .line 170
    .line 171
    iget-object v0, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    .line 172
    .line 173
    invoke-virtual {p1, v0, p2}, Lorg/h2/store/Page;->moveTo(Lorg/h2/engine/Session;I)V

    .line 174
    .line 175
    .line 176
    :cond_8
    invoke-virtual {p0, p3}, Lorg/h2/store/PageStore;->free(I)V

    .line 177
    .line 178
    .line 179
    :cond_9
    return-void
.end method

.method private writeBack()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/h2/store/PageStore;->cache:Lorg/h2/util/Cache;

    invoke-interface {v0}, Lorg/h2/util/Cache;->getAllChanged()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/util/CacheObject;

    invoke-virtual {p0, v3}, Lorg/h2/store/PageStore;->writeBack(Lorg/h2/util/CacheObject;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeIndexRowCounts()V
    .locals 2

    iget-object v0, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/index/PageIndex;

    invoke-virtual {v1}, Lorg/h2/index/PageIndex;->writeRowCount()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeStaticHeader()V
    .locals 4

    iget-object v0, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    iget v1, p0, Lorg/h2/store/PageStore;->pageSize:I

    add-int/lit8 v1, v1, -0x30

    new-array v1, v1, [B

    invoke-static {v0, v1}, Lorg/h2/store/Data;->create(Lorg/h2/store/DataHandler;[B)Lorg/h2/store/Data;

    move-result-object v0

    iget v1, p0, Lorg/h2/store/PageStore;->pageSize:I

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeInt(I)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    iget-object v1, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    const-wide/16 v2, 0x30

    invoke-virtual {v1, v2, v3}, Lorg/h2/store/FileStore;->seek(J)V

    iget-object v1, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v0

    iget v2, p0, Lorg/h2/store/PageStore;->pageSize:I

    add-int/lit8 v2, v2, -0x30

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lorg/h2/store/FileStore;->write([BII)V

    iget-wide v0, p0, Lorg/h2/store/PageStore;->writeCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/store/PageStore;->writeCount:J

    return-void
.end method

.method private writeVariableHeader()V
    .locals 6

    iget-object v0, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    const-string v1, "writeVariableHeader"

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    iget v0, p0, Lorg/h2/store/PageStore;->logMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/FileStore;->sync()V

    :cond_0
    invoke-virtual {p0}, Lorg/h2/store/PageStore;->createData()Lorg/h2/store/Data;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeInt(I)V

    invoke-virtual {p0}, Lorg/h2/store/PageStore;->getWriteCountTotal()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/h2/store/Data;->writeLong(J)V

    iget v2, p0, Lorg/h2/store/PageStore;->logKey:I

    invoke-virtual {v0, v2}, Lorg/h2/store/Data;->writeInt(I)V

    iget v2, p0, Lorg/h2/store/PageStore;->logFirstTrunkPage:I

    invoke-virtual {v0, v2}, Lorg/h2/store/Data;->writeInt(I)V

    iget v2, p0, Lorg/h2/store/PageStore;->logFirstDataPage:I

    invoke-virtual {v0, v2}, Lorg/h2/store/Data;->writeInt(I)V

    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v0}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v3

    iget v4, p0, Lorg/h2/store/PageStore;->pageSize:I

    const/4 v5, 0x4

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v5, v4}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v0, v1, v3}, Lorg/h2/store/Data;->setInt(II)V

    iget-object v2, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    iget v3, p0, Lorg/h2/store/PageStore;->pageSize:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lorg/h2/store/FileStore;->seek(J)V

    iget-object v2, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v3

    iget v4, p0, Lorg/h2/store/PageStore;->pageSize:I

    invoke-virtual {v2, v3, v1, v4}, Lorg/h2/store/FileStore;->write([BII)V

    iget-object v2, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    iget v3, p0, Lorg/h2/store/PageStore;->pageSize:I

    add-int/2addr v3, v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lorg/h2/store/FileStore;->seek(J)V

    iget-object v2, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v0

    iget v3, p0, Lorg/h2/store/PageStore;->pageSize:I

    invoke-virtual {v2, v0, v1, v3}, Lorg/h2/store/FileStore;->write([BII)V

    return-void
.end method


# virtual methods
.method public declared-synchronized addIndex(Lorg/h2/index/PageIndex;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addMeta(Lorg/h2/index/PageIndex;Lorg/h2/engine/Session;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Lorg/h2/index/BaseIndex;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    sget-boolean v1, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/h2/engine/DbObjectBase;->isTemporary()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    monitor-enter v1

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2, p2}, Lorg/h2/engine/Database;->verifyMetaLocked(Lorg/h2/engine/Session;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1

    :goto_0
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :cond_0
    :goto_1
    monitor-enter p0

    :try_start_5
    instance-of v1, p1, Lorg/h2/index/PageDataIndex;

    const/4 v2, 0x0

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    invoke-virtual {p1}, Lorg/h2/index/BaseIndex;->getIndexColumns()[Lorg/h2/table/IndexColumn;

    move-result-object v4

    new-instance v5, Lorg/h2/util/StatementBuilder;

    invoke-direct {v5}, Lorg/h2/util/StatementBuilder;-><init>()V

    array-length v6, v4

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_2

    aget-object v8, v4, v7

    const-string v9, ","

    invoke-virtual {v5, v9}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    iget-object v9, v8, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v9}, Lorg/h2/table/Column;->getColumnId()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v5, v9, v10}, Lorg/h2/util/StatementBuilder;->append(J)Lorg/h2/util/StatementBuilder;

    iget v8, v8, Lorg/h2/table/IndexColumn;->sortType:I

    if-eqz v8, :cond_1

    const/16 v9, 0x2f

    invoke-virtual {v5, v9}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    int-to-long v8, v8

    invoke-virtual {v5, v8, v9}, Lorg/h2/util/StatementBuilder;->append(J)Lorg/h2/util/StatementBuilder;

    goto :goto_3

    :catchall_2
    move-exception p1

    goto/16 :goto_4

    :cond_1
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/h2/table/Table;->getCompareMode()Lorg/h2/value/CompareMode;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lorg/h2/value/CompareMode;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/h2/value/CompareMode;->getStrength()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lorg/h2/engine/DbObjectBase;->isTemporary()Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "temp"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    instance-of v7, p1, Lorg/h2/index/PageDelegateIndex;

    if-eqz v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "d"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/h2/value/CompareMode;->isBinaryUnsigned()Z

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/h2/store/PageStore;->metaTable:Lorg/h2/table/RegularTable;

    invoke-virtual {v6}, Lorg/h2/table/Table;->getTemplateRow()Lorg/h2/result/Row;

    move-result-object v6

    invoke-virtual {p1}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v7

    invoke-static {v7}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v7

    invoke-interface {v6, v2, v7}, Lorg/h2/result/SearchRow;->setValue(ILorg/h2/value/Value;)V

    invoke-static {v1}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v1

    invoke-interface {v6, v3, v1}, Lorg/h2/result/SearchRow;->setValue(ILorg/h2/value/Value;)V

    invoke-virtual {v0}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v6, v1, v0}, Lorg/h2/result/SearchRow;->setValue(ILorg/h2/value/Value;)V

    invoke-virtual {p1}, Lorg/h2/index/PageIndex;->getRootPageId()I

    move-result v0

    invoke-static {v0}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v6, v1, v0}, Lorg/h2/result/SearchRow;->setValue(ILorg/h2/value/Value;)V

    invoke-static {v5}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v6, v1, v0}, Lorg/h2/result/SearchRow;->setValue(ILorg/h2/value/Value;)V

    invoke-static {v4}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v6, v1, v0}, Lorg/h2/result/SearchRow;->setValue(ILorg/h2/value/Value;)V

    invoke-virtual {p1}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result p1

    add-int/2addr p1, v3

    int-to-long v0, p1

    invoke-interface {v6, v0, v1}, Lorg/h2/result/SearchRow;->setKey(J)V

    iget-object p1, p0, Lorg/h2/store/PageStore;->metaIndex:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p1, p2, v6}, Lorg/h2/index/PageDataIndex;->add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1
.end method

.method public allocateIfIndexRoot(IILorg/h2/result/Row;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/4 p2, 0x3

    invoke-interface {p3, p2}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object p2

    invoke-virtual {p2}, Lorg/h2/value/Value;->getInt()I

    move-result p2

    iget-object p3, p0, Lorg/h2/store/PageStore;->reservedPages:Ljava/util/HashMap;

    if-nez p3, :cond_0

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object p3

    iput-object p3, p0, Lorg/h2/store/PageStore;->reservedPages:Ljava/util/HashMap;

    :cond_0
    iget-object p3, p0, Lorg/h2/store/PageStore;->reservedPages:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public declared-synchronized allocatePage()I
    .locals 3

    .line 1
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/h2/store/PageStore;->openForWriting()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/h2/store/PageStore;->allocatePage(Lorg/h2/util/BitField;I)I

    move-result v0

    iget-boolean v1, p0, Lorg/h2/store/PageStore;->recoveryRunning:Z

    if-nez v1, :cond_0

    iget v1, p0, Lorg/h2/store/PageStore;->logMode:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    iget-object v2, p0, Lorg/h2/store/PageStore;->emptyPage:Lorg/h2/store/Data;

    invoke-virtual {v1, v0, v2}, Lorg/h2/store/PageLog;->addUndo(ILorg/h2/store/Data;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public allocatePage(I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lorg/h2/store/PageStore;->getFreeListForPage(I)Lorg/h2/store/PageFreeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/store/PageFreeList;->allocate(I)V

    return-void
.end method

.method public allocatePages(Lorg/h2/util/IntArray;ILorg/h2/util/BitField;I)V
    .locals 1

    invoke-virtual {p1}, Lorg/h2/util/IntArray;->size()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1, v0}, Lorg/h2/util/IntArray;->ensureCapacity(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-direct {p0, p3, p4}, Lorg/h2/store/PageStore;->allocatePage(Lorg/h2/util/BitField;I)I

    move-result p4

    invoke-virtual {p1, p4}, Lorg/h2/util/IntArray;->add(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized checkpoint()V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    const-string v1, "checkpoint"

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lorg/h2/store/PageStore;->readMode:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, p0, Lorg/h2/store/PageStore;->backupLevel:I

    if-lez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->checkPowerOff()V

    invoke-direct {p0}, Lorg/h2/store/PageStore;->writeIndexRowCounts()V

    iget-object v0, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v0}, Lorg/h2/store/PageLog;->checkpoint()V

    invoke-direct {p0}, Lorg/h2/store/PageStore;->writeBack()V

    invoke-direct {p0}, Lorg/h2/store/PageStore;->getFirstUncommittedSection()I

    move-result v0

    iget-object v1, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v1, v0}, Lorg/h2/store/PageLog;->removeUntil(I)V

    invoke-direct {p0}, Lorg/h2/store/PageStore;->writeBack()V

    iget-object v0, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v0}, Lorg/h2/store/PageLog;->checkpoint()V

    iget-object v0, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    const-string v1, "writeFree"

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    :goto_0
    const/16 v0, 0x10

    new-array v1, v0, [B

    iget v2, p0, Lorg/h2/store/PageStore;->pageSize:I

    new-array v2, v2, [B

    const/4 v3, 0x3

    :goto_1
    iget v4, p0, Lorg/h2/store/PageStore;->pageCount:I

    if-ge v3, v4, :cond_6

    invoke-direct {p0, v3}, Lorg/h2/store/PageStore;->isUsed(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/h2/store/PageStore;->freed:Lorg/h2/util/BitField;

    invoke-virtual {v4, v3}, Lorg/h2/util/BitField;->clear(I)V

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lorg/h2/store/PageStore;->freed:Lorg/h2/util/BitField;

    invoke-virtual {v4, v3}, Lorg/h2/util/BitField;->get(I)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v4}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "free "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    :cond_3
    iget-object v4, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    int-to-long v5, v3

    iget v7, p0, Lorg/h2/store/PageStore;->pageSizeShift:I

    shl-long v7, v5, v7

    invoke-virtual {v4, v7, v8}, Lorg/h2/store/FileStore;->seek(J)V

    iget-object v4, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    const/4 v7, 0x0

    invoke-virtual {v4, v1, v7, v0}, Lorg/h2/store/FileStore;->readFully([BII)V

    aget-byte v4, v1, v7

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    iget v8, p0, Lorg/h2/store/PageStore;->pageSizeShift:I

    shl-long/2addr v5, v8

    invoke-virtual {v4, v5, v6}, Lorg/h2/store/FileStore;->seek(J)V

    iget-object v4, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    iget v5, p0, Lorg/h2/store/PageStore;->pageSize:I

    invoke-virtual {v4, v2, v7, v5}, Lorg/h2/store/FileStore;->write([BII)V

    iget-wide v4, p0, Lorg/h2/store/PageStore;->writeCount:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/h2/store/PageStore;->writeCount:J

    :cond_4
    iget-object v4, p0, Lorg/h2/store/PageStore;->freed:Lorg/h2/util/BitField;

    invoke-virtual {v4, v3}, Lorg/h2/util/BitField;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    monitor-exit p0

    return-void

    :cond_7
    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/h2/store/PageLog;->close()V

    iput-object v1, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lorg/h2/store/FileStore;->releaseLock()V

    iget-object v0, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/FileStore;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-object v1, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    goto :goto_1

    :catchall_1
    move-exception v0

    iput-object v1, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized commit(Lorg/h2/engine/Session;)V
    .locals 9

    const-string v0, "Transaction log could not be truncated; size: "

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/h2/store/PageStore;->checkOpen()V

    invoke-direct {p0}, Lorg/h2/store/PageStore;->openForWriting()V

    iget-object v1, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getId()I

    move-result p1

    invoke-virtual {v1, p1}, Lorg/h2/store/PageLog;->commit(I)V

    iget-object p1, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {p1}, Lorg/h2/store/PageLog;->getSize()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/h2/store/PageStore;->logSizeBase:J

    sub-long v3, v1, v3

    iget-wide v5, p0, Lorg/h2/store/PageStore;->maxLogSize:J

    const-wide/16 v7, 0x2

    div-long/2addr v5, v7

    cmp-long p1, v3, v5

    if-lez p1, :cond_4

    iget-object p1, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {p1}, Lorg/h2/store/PageLog;->getLogFirstSectionId()I

    move-result p1

    invoke-virtual {p0}, Lorg/h2/store/PageStore;->checkpoint()V

    iget-object v3, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v3}, Lorg/h2/store/PageLog;->getLogSectionId()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v3, p1

    const/4 p1, 0x2

    if-gt v3, p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object p1, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {p1}, Lorg/h2/store/PageLog;->getSize()J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-ltz p1, :cond_3

    iget-wide v5, p0, Lorg/h2/store/PageStore;->maxLogSize:J

    cmp-long p1, v1, v5

    if-gez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, Lorg/h2/store/PageStore;->ignoreBigLog:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/h2/store/PageStore;->ignoreBigLog:Z

    iget-object p1, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v5, 0x400

    div-long/2addr v3, v5

    div-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " MB"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {p1}, Lorg/h2/store/PageLog;->getSize()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/store/PageStore;->logSizeBase:J

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/h2/store/PageStore;->ignoreBigLog:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized compact(I)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    move/from16 v0, p1

    monitor-enter p0

    :try_start_0
    iget-object v2, v1, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v2

    iget-boolean v2, v2, Lorg/h2/engine/DbSettings;->pageStoreTrim:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-boolean v2, Lorg/h2/engine/SysProperties;->MODIFY_ON_WRITE:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Lorg/h2/store/PageStore;->readMode:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_12

    :cond_1
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lorg/h2/store/PageStore;->openForWriting()V

    iget v2, v1, Lorg/h2/store/PageStore;->pageCount:I

    invoke-direct {v1, v2}, Lorg/h2/store/PageStore;->getFreeListId(I)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, -0x1

    :goto_0
    if-ltz v2, :cond_3

    invoke-direct {v1, v2}, Lorg/h2/store/PageStore;->getFreeList(I)Lorg/h2/store/PageFreeList;

    move-result-object v4

    invoke-virtual {v4}, Lorg/h2/store/PageFreeList;->getLastUsed()I

    move-result v4

    if-eq v4, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-direct/range {p0 .. p0}, Lorg/h2/store/PageStore;->writeBack()V

    iget-object v2, v1, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v2}, Lorg/h2/store/PageLog;->free()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/h2/store/PageStore;->recoveryRunning:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v5, v4, 0x1

    const/4 v6, 0x0

    :try_start_3
    iput v5, v1, Lorg/h2/store/PageStore;->logFirstTrunkPage:I

    invoke-virtual {v1, v5}, Lorg/h2/store/PageStore;->allocatePage(I)V

    iget-object v5, v1, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    iget v7, v1, Lorg/h2/store/PageStore;->logFirstTrunkPage:I

    invoke-virtual {v5, v7, v2}, Lorg/h2/store/PageLog;->openForWriting(IZ)V

    iget-object v5, v1, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v5}, Lorg/h2/store/PageLog;->checkpoint()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    iput-boolean v6, v1, Lorg/h2/store/PageStore;->recoveryRunning:Z

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    const/16 v5, 0x52

    if-ne v0, v5, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    const/16 v9, 0x54

    if-ne v0, v9, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    iget-object v9, v1, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v9}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v9

    iget-boolean v9, v9, Lorg/h2/engine/DbSettings;->defragAlways:Z

    if-eqz v9, :cond_6

    const/4 v0, 0x1

    const/4 v5, 0x1

    :cond_6
    iget-object v9, v1, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v9}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v9

    iget v9, v9, Lorg/h2/engine/DbSettings;->maxCompactTime:I

    iget-object v10, v1, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v10}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v10

    iget v10, v10, Lorg/h2/engine/DbSettings;->maxCompactCount:I

    if-nez v5, :cond_7

    if-eqz v0, :cond_8

    :cond_7
    const v9, 0x7fffffff

    const v10, 0x7fffffff

    :cond_8
    if-eqz v5, :cond_9

    const/16 v5, 0x600

    goto :goto_4

    :cond_9
    const/4 v5, 0x1

    :goto_4
    const/4 v11, 0x5

    move v12, v4

    const/4 v13, 0x0

    const/4 v14, 0x5

    :goto_5
    if-le v12, v11, :cond_10

    if-ge v13, v10, :cond_10

    sub-int v15, v12, v5

    add-int/lit8 v16, v15, 0x1

    move/from16 v2, v16

    :goto_6
    if-gt v2, v12, :cond_f

    if-le v2, v11, :cond_e

    invoke-direct {v1, v2}, Lorg/h2/store/PageStore;->isUsed(I)Z

    move-result v17

    if-eqz v17, :cond_e

    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-direct {v1, v14}, Lorg/h2/store/PageStore;->getFirstFree(I)I

    move-result v14

    if-eq v14, v3, :cond_a

    if-lt v14, v2, :cond_b

    :cond_a
    move/from16 v19, v4

    goto :goto_7

    :cond_b
    invoke-direct {v1, v2, v14}, Lorg/h2/store/PageStore;->compact(II)Z

    move-result v17

    if-eqz v17, :cond_c

    add-int/lit8 v13, v13, 0x1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v17

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move/from16 v19, v4

    int-to-long v3, v9

    invoke-virtual {v11, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    add-long/2addr v3, v7

    cmp-long v11, v17, v3

    if-lez v11, :cond_d

    :goto_7
    monitor-exit p0

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_9

    :cond_c
    move/from16 v19, v4

    :cond_d
    monitor-exit p0

    goto :goto_a

    :goto_8
    move v13, v10

    goto :goto_b

    :goto_9
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    :cond_e
    move/from16 v19, v4

    :goto_a
    add-int/lit8 v2, v2, 0x1

    move/from16 v4, v19

    const/4 v3, -0x1

    const/4 v11, 0x5

    goto :goto_6

    :cond_f
    move/from16 v19, v4

    :goto_b
    move v12, v15

    move/from16 v4, v19

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v11, 0x5

    goto :goto_5

    :cond_10
    move/from16 v19, v4

    if-eqz v0, :cond_1b

    iget-object v0, v1, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v0}, Lorg/h2/store/PageLog;->checkpoint()V

    invoke-direct/range {p0 .. p0}, Lorg/h2/store/PageStore;->writeBack()V

    iget-object v0, v1, Lorg/h2/store/PageStore;->cache:Lorg/h2/util/Cache;

    invoke-interface {v0}, Lorg/h2/util/Cache;->clear()V

    iget-object v0, v1, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, v6}, Lorg/h2/engine/Database;->getAllTablesAndViews(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Lorg/h2/store/PageStore;->recordedPagesList:Ljava/util/ArrayList;

    new-instance v2, Lorg/h2/util/IntIntHashMap;

    invoke-direct {v2}, Lorg/h2/util/IntIntHashMap;-><init>()V

    iput-object v2, v1, Lorg/h2/store/PageStore;->recordedPagesIndex:Lorg/h2/util/IntIntHashMap;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/h2/store/PageStore;->recordPageReads:Z

    iget-object v2, v1, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getSystemSession()Lorg/h2/engine/Session;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/table/Table;

    invoke-virtual {v3}, Lorg/h2/engine/DbObjectBase;->isTemporary()Z

    move-result v5

    if-nez v5, :cond_11

    sget-object v5, Lorg/h2/table/TableType;->TABLE:Lorg/h2/table/TableType;

    invoke-virtual {v3}, Lorg/h2/table/Table;->getTableType()Lorg/h2/table/TableType;

    move-result-object v7

    if-ne v5, v7, :cond_11

    invoke-virtual {v3, v2}, Lorg/h2/table/Table;->getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;

    move-result-object v5

    invoke-interface {v5, v2, v4, v4}, Lorg/h2/index/Index;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object v7

    :goto_c
    invoke-interface {v7}, Lorg/h2/index/Cursor;->next()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {v7}, Lorg/h2/index/Cursor;->get()Lorg/h2/result/Row;

    goto :goto_c

    :cond_12
    invoke-virtual {v3}, Lorg/h2/table/Table;->getIndexes()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/h2/index/Index;

    if-eq v7, v5, :cond_13

    invoke-interface {v7}, Lorg/h2/index/Index;->canScan()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-interface {v7, v2, v4, v4}, Lorg/h2/index/Index;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object v7

    :goto_d
    invoke-interface {v7}, Lorg/h2/index/Cursor;->next()Z

    move-result v8

    if-eqz v8, :cond_13

    goto :goto_d

    :cond_14
    iput-boolean v6, v1, Lorg/h2/store/PageStore;->recordPageReads:Z

    iget-object v0, v1, Lorg/h2/store/PageStore;->recordedPagesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_e
    if-ge v3, v0, :cond_1a

    iget-object v7, v1, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v7}, Lorg/h2/store/PageLog;->checkpoint()V

    invoke-direct/range {p0 .. p0}, Lorg/h2/store/PageStore;->writeBack()V

    iget-object v7, v1, Lorg/h2/store/PageStore;->recordedPagesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v1, v8}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    move-result-object v9

    invoke-virtual {v9}, Lorg/h2/store/Page;->canMove()Z

    move-result v9

    if-nez v9, :cond_15

    goto :goto_f

    :cond_15
    const/4 v9, 0x1

    add-int/2addr v2, v9

    invoke-virtual {v1, v2}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    move-result-object v9

    if-eqz v9, :cond_16

    invoke-virtual {v9}, Lorg/h2/store/Page;->canMove()Z

    move-result v9

    if-eqz v9, :cond_15

    :cond_16
    if-ne v2, v8, :cond_17

    goto :goto_f

    :cond_17
    invoke-direct {v1, v5}, Lorg/h2/store/PageStore;->getFirstFree(I)I

    move-result v5

    const/4 v9, -0x1

    if-ne v5, v9, :cond_18

    const-string v9, "no free page for defrag"

    invoke-static {v9}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_18
    iget-object v9, v1, Lorg/h2/store/PageStore;->cache:Lorg/h2/util/Cache;

    invoke-interface {v9}, Lorg/h2/util/Cache;->clear()V

    invoke-direct {v1, v8, v2, v5}, Lorg/h2/store/PageStore;->swap(III)V

    iget-object v9, v1, Lorg/h2/store/PageStore;->recordedPagesIndex:Lorg/h2/util/IntIntHashMap;

    invoke-virtual {v9, v2}, Lorg/h2/util/IntIntHashMap;->get(I)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_19

    iget-object v10, v1, Lorg/h2/store/PageStore;->recordedPagesList:Ljava/util/ArrayList;

    invoke-virtual {v10, v9, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lorg/h2/store/PageStore;->recordedPagesIndex:Lorg/h2/util/IntIntHashMap;

    invoke-virtual {v7, v8, v9}, Lorg/h2/util/IntIntHashMap;->put(II)V

    :cond_19
    iget-object v7, v1, Lorg/h2/store/PageStore;->recordedPagesList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lorg/h2/store/PageStore;->recordedPagesIndex:Lorg/h2/util/IntIntHashMap;

    invoke-virtual {v7, v2, v3}, Lorg/h2/util/IntIntHashMap;->put(II)V

    :goto_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_1a
    iput-object v4, v1, Lorg/h2/store/PageStore;->recordedPagesList:Ljava/util/ArrayList;

    iput-object v4, v1, Lorg/h2/store/PageStore;->recordedPagesIndex:Lorg/h2/util/IntIntHashMap;

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lorg/h2/store/PageStore;->checkpoint()V

    iget-object v0, v1, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v0}, Lorg/h2/store/PageLog;->checkpoint()V

    invoke-direct/range {p0 .. p0}, Lorg/h2/store/PageStore;->writeIndexRowCounts()V

    iget-object v0, v1, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v0}, Lorg/h2/store/PageLog;->checkpoint()V

    invoke-direct/range {p0 .. p0}, Lorg/h2/store/PageStore;->writeBack()V

    iget-object v0, v1, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    invoke-virtual {v1, v0}, Lorg/h2/store/PageStore;->commit(Lorg/h2/engine/Session;)V

    invoke-direct/range {p0 .. p0}, Lorg/h2/store/PageStore;->writeBack()V

    iget-object v0, v1, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v0}, Lorg/h2/store/PageLog;->checkpoint()V

    iget-object v0, v1, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v0}, Lorg/h2/store/PageLog;->free()V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lorg/h2/store/PageStore;->recoveryRunning:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget v2, v1, Lorg/h2/store/PageStore;->logKey:I

    add-int/2addr v2, v0

    iput v2, v1, Lorg/h2/store/PageStore;->logKey:I

    invoke-virtual {v1, v2, v6, v6}, Lorg/h2/store/PageStore;->setLogFirstPage(III)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    iput-boolean v6, v1, Lorg/h2/store/PageStore;->recoveryRunning:Z

    invoke-direct/range {p0 .. p0}, Lorg/h2/store/PageStore;->writeBack()V

    iget v0, v1, Lorg/h2/store/PageStore;->pageCount:I

    invoke-direct {v1, v0}, Lorg/h2/store/PageStore;->getFreeListId(I)I

    move-result v0

    move/from16 v4, v19

    :goto_10
    if-ltz v0, :cond_1c

    invoke-direct {v1, v0}, Lorg/h2/store/PageStore;->getFreeList(I)Lorg/h2/store/PageFreeList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/store/PageFreeList;->getLastUsed()I

    move-result v4

    const/4 v2, -0x1

    if-eq v4, v2, :cond_1d

    :cond_1c
    const/4 v0, 0x1

    goto :goto_11

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    :goto_11
    add-int/2addr v4, v0

    iget v0, v1, Lorg/h2/store/PageStore;->pageCount:I

    if-ge v4, v0, :cond_1e

    iget-object v2, v1, Lorg/h2/store/PageStore;->freed:Lorg/h2/util/BitField;

    invoke-virtual {v2, v4, v0, v6}, Lorg/h2/util/BitField;->set(IIZ)V

    :cond_1e
    iput v4, v1, Lorg/h2/store/PageStore;->pageCount:I

    iget-object v0, v1, Lorg/h2/store/PageStore;->freeLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v1, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pageCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lorg/h2/store/PageStore;->pageCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    iget v0, v1, Lorg/h2/store/PageStore;->pageCount:I

    int-to-long v2, v0

    iget v0, v1, Lorg/h2/store/PageStore;->pageSizeShift:I

    shl-long/2addr v2, v0

    iget-object v0, v1, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/FileStore;->length()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1f

    iget-object v0, v1, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v0, v2, v3}, Lorg/h2/store/FileStore;->setLength(J)V

    iget-wide v2, v1, Lorg/h2/store/PageStore;->writeCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Lorg/h2/store/PageStore;->writeCount:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_1f
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    :try_start_9
    iput-boolean v6, v1, Lorg/h2/store/PageStore;->recoveryRunning:Z

    throw v0

    :catchall_3
    move-exception v0

    iput-boolean v6, v1, Lorg/h2/store/PageStore;->recoveryRunning:Z

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_12
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized copyDirect(ILjava/io/OutputStream;)I
    .locals 6

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/h2/store/PageStore;->pageSize:I

    new-array v0, v0, [B

    iget v1, p0, Lorg/h2/store/PageStore;->pageCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt p1, v1, :cond_0

    monitor-exit p0

    const/4 p1, -0x1

    return p1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    int-to-long v2, p1

    iget v4, p0, Lorg/h2/store/PageStore;->pageSizeShift:I

    shl-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lorg/h2/store/FileStore;->seek(J)V

    iget-object v1, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    iget v2, p0, Lorg/h2/store/PageStore;->pageSize:I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lorg/h2/store/FileStore;->readFullyDirect([BII)V

    iget-wide v1, p0, Lorg/h2/store/PageStore;->readCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v1, v4

    iput-wide v1, p0, Lorg/h2/store/PageStore;->readCount:J

    iget v1, p0, Lorg/h2/store/PageStore;->pageSize:I

    invoke-virtual {p2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 p1, p1, 0x1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public createData()Lorg/h2/store/Data;
    .locals 2

    iget-object v0, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    iget v1, p0, Lorg/h2/store/PageStore;->pageSize:I

    new-array v1, v1, [B

    invoke-static {v0, v1}, Lorg/h2/store/Data;->create(Lorg/h2/store/DataHandler;[B)Lorg/h2/store/Data;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized flushLog()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v0}, Lorg/h2/store/PageLog;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized free(I)V
    .locals 1

    .line 1
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/h2/store/PageStore;->free(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public free(IZ)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    iget-object v0, p0, Lorg/h2/store/PageStore;->cache:Lorg/h2/util/Cache;

    invoke-interface {v0, p1}, Lorg/h2/util/Cache;->remove(I)Z

    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/h2/store/PageStore;->recoveryRunning:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    iget p2, p0, Lorg/h2/store/PageStore;->logMode:I

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/h2/store/PageLog;->addUndo(ILorg/h2/store/Data;)V

    :cond_0
    invoke-direct {p0, p1}, Lorg/h2/store/PageStore;->freePage(I)V

    iget-boolean p2, p0, Lorg/h2/store/PageStore;->recoveryRunning:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lorg/h2/store/PageStore;->createData()Lorg/h2/store/Data;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/h2/store/PageStore;->writePage(ILorg/h2/store/Data;)V

    iget-object p2, p0, Lorg/h2/store/PageStore;->reservedPages:Ljava/util/HashMap;

    if-eqz p2, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/h2/store/PageStore;->reservedPages:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v0}, Lorg/h2/store/PageLog;->getLogPos()I

    move-result v0

    if-le p2, v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/h2/store/PageStore;->allocatePage(I)V

    :cond_1
    return-void
.end method

.method public freeUnused(I)V
    .locals 3

    iget-object v0, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "freeUnused "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/h2/store/PageStore;->cache:Lorg/h2/util/Cache;

    invoke-interface {v0, p1}, Lorg/h2/util/Cache;->remove(I)Z

    invoke-direct {p0, p1}, Lorg/h2/store/PageStore;->freePage(I)V

    iget-object v0, p0, Lorg/h2/store/PageStore;->freed:Lorg/h2/util/BitField;

    invoke-virtual {v0, p1}, Lorg/h2/util/BitField;->set(I)V

    return-void
.end method

.method public getCache()Lorg/h2/util/Cache;
    .locals 1

    iget-object v0, p0, Lorg/h2/store/PageStore;->cache:Lorg/h2/util/Cache;

    return-object v0
.end method

.method public getChangeCount()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/store/PageStore;->changeCount:J

    return-wide v0
.end method

.method public getDatabase()Lorg/h2/engine/Database;
    .locals 1

    iget-object v0, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    return-object v0
.end method

.method public getInDoubtTransactions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/store/InDoubtTransaction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v0}, Lorg/h2/store/PageLog;->getInDoubtTransactions()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getLogMode()I
    .locals 1

    iget v0, p0, Lorg/h2/store/PageStore;->logMode:I

    return v0
.end method

.method public getObjectIds()Lorg/h2/util/BitField;
    .locals 4

    new-instance v0, Lorg/h2/util/BitField;

    invoke-direct {v0}, Lorg/h2/util/BitField;-><init>()V

    iget-object v1, p0, Lorg/h2/store/PageStore;->metaIndex:Lorg/h2/index/PageDataIndex;

    iget-object v2, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lorg/h2/index/PageDataIndex;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Lorg/h2/index/Cursor;->next()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lorg/h2/index/Cursor;->get()Lorg/h2/result/Row;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/h2/result/SearchRow;->getValue(I)Lorg/h2/value/Value;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/value/Value;->getInt()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0, v2}, Lorg/h2/util/BitField;->set(I)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public declared-synchronized getPage(I)Lorg/h2/store/Page;
    .locals 13

    const-string v0, "page="

    const-string v1, "not a data index "

    const-string v2, "index not found "

    const-string v3, "not a data index "

    const-string v4, "index not found "

    const-string v5, "not a btree index "

    const-string v6, "index not found "

    const-string v7, "not a btree index "

    const-string v8, "index not found "

    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lorg/h2/store/PageStore;->cache:Lorg/h2/util/Cache;

    invoke-interface {v9, p1}, Lorg/h2/util/Cache;->get(I)Lorg/h2/util/CacheObject;

    move-result-object v9

    check-cast v9, Lorg/h2/store/Page;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_0

    monitor-exit p0

    return-object v9

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/h2/store/PageStore;->createData()Lorg/h2/store/Data;

    move-result-object v9

    invoke-virtual {p0, p1, v9}, Lorg/h2/store/PageStore;->readPage(ILorg/h2/store/Data;)V

    invoke-virtual {v9}, Lorg/h2/store/Data;->readByte()B

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v10, :cond_1

    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :cond_1
    :try_start_2
    invoke-virtual {v9}, Lorg/h2/store/Data;->readShortInt()S

    invoke-virtual {v9}, Lorg/h2/store/Data;->readInt()I

    invoke-virtual {v9}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v11

    iget v12, p0, Lorg/h2/store/PageStore;->pageSize:I

    invoke-static {v11, p1, v12}, Lorg/h2/store/PageStore;->checksumTest([BII)Z

    move-result v11

    const v12, 0x15fae

    if-eqz v11, :cond_f

    and-int/lit8 v11, v10, -0x11

    packed-switch v11, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " type="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v12, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :pswitch_0
    invoke-static {p0, v9, p1}, Lorg/h2/store/PageStreamData;->read(Lorg/h2/store/PageStore;Lorg/h2/store/Data;I)Lorg/h2/store/PageStreamData;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_1
    invoke-static {p0, v9, p1}, Lorg/h2/store/PageStreamTrunk;->read(Lorg/h2/store/PageStore;Lorg/h2/store/Data;I)Lorg/h2/store/PageStreamTrunk;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_2
    invoke-static {p0, v9, p1}, Lorg/h2/store/PageFreeList;->read(Lorg/h2/store/PageStore;Lorg/h2/store/Data;I)Lorg/h2/store/PageFreeList;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {v9}, Lorg/h2/store/Data;->readVarInt()I

    move-result v0

    iget-object v1, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/index/PageIndex;

    if-eqz v1, :cond_4

    instance-of v2, v1, Lorg/h2/index/PageBtreeIndex;

    if-eqz v2, :cond_3

    check-cast v1, Lorg/h2/index/PageBtreeIndex;

    iget-object v0, p0, Lorg/h2/store/PageStore;->statistics:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/h2/index/BaseIndex;->getTable()Lorg/h2/table/Table;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " read"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/store/PageStore;->statisticsIncrement(Ljava/lang/String;)V

    :cond_2
    invoke-static {v1, v9, p1}, Lorg/h2/index/PageBtreeNode;->read(Lorg/h2/index/PageBtreeIndex;Lorg/h2/store/Data;I)Lorg/h2/store/Page;

    move-result-object p1

    goto/16 :goto_0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v12, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v12, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :pswitch_4
    invoke-virtual {v9}, Lorg/h2/store/Data;->readVarInt()I

    move-result v0

    iget-object v1, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/index/PageIndex;

    if-eqz v1, :cond_7

    instance-of v2, v1, Lorg/h2/index/PageBtreeIndex;

    if-eqz v2, :cond_6

    check-cast v1, Lorg/h2/index/PageBtreeIndex;

    iget-object v0, p0, Lorg/h2/store/PageStore;->statistics:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/h2/index/BaseIndex;->getTable()Lorg/h2/table/Table;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " read"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/store/PageStore;->statisticsIncrement(Ljava/lang/String;)V

    :cond_5
    invoke-static {v1, v9, p1}, Lorg/h2/index/PageBtreeLeaf;->read(Lorg/h2/index/PageBtreeIndex;Lorg/h2/store/Data;I)Lorg/h2/store/Page;

    move-result-object p1

    goto/16 :goto_0

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v12, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v12, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :pswitch_5
    invoke-static {p0, v9, p1}, Lorg/h2/index/PageDataOverflow;->read(Lorg/h2/store/PageStore;Lorg/h2/store/Data;I)Lorg/h2/store/Page;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/store/PageStore;->statistics:Ljava/util/HashMap;

    if-eqz v0, :cond_c

    const-string v0, "overflow read"

    invoke-direct {p0, v0}, Lorg/h2/store/PageStore;->statisticsIncrement(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {v9}, Lorg/h2/store/Data;->readVarInt()I

    move-result v0

    iget-object v1, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/index/PageIndex;

    if-eqz v1, :cond_a

    instance-of v2, v1, Lorg/h2/index/PageDataIndex;

    if-eqz v2, :cond_9

    check-cast v1, Lorg/h2/index/PageDataIndex;

    iget-object v0, p0, Lorg/h2/store/PageStore;->statistics:Ljava/util/HashMap;

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/h2/index/BaseIndex;->getTable()Lorg/h2/table/Table;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " read"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/store/PageStore;->statisticsIncrement(Ljava/lang/String;)V

    :cond_8
    invoke-static {v1, v9, p1}, Lorg/h2/index/PageDataNode;->read(Lorg/h2/index/PageDataIndex;Lorg/h2/store/Data;I)Lorg/h2/store/Page;

    move-result-object p1

    goto :goto_0

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v12, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v12, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :pswitch_7
    invoke-virtual {v9}, Lorg/h2/store/Data;->readVarInt()I

    move-result v0

    iget-object v3, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/index/PageIndex;

    if-eqz v3, :cond_e

    instance-of v2, v3, Lorg/h2/index/PageDataIndex;

    if-eqz v2, :cond_d

    check-cast v3, Lorg/h2/index/PageDataIndex;

    iget-object v0, p0, Lorg/h2/store/PageStore;->statistics:Ljava/util/HashMap;

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lorg/h2/index/BaseIndex;->getTable()Lorg/h2/table/Table;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " read"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/store/PageStore;->statisticsIncrement(Ljava/lang/String;)V

    :cond_b
    invoke-static {v3, v9, p1}, Lorg/h2/index/PageDataLeaf;->read(Lorg/h2/index/PageDataIndex;Lorg/h2/store/Data;I)Lorg/h2/store/Page;

    move-result-object p1

    :cond_c
    :goto_0
    iget-object v0, p0, Lorg/h2/store/PageStore;->cache:Lorg/h2/util/Cache;

    invoke-interface {v0, p1}, Lorg/h2/util/Cache;->put(Lorg/h2/util/CacheObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_d
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v12, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v12, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_f
    const-string p1, "wrong checksum"

    invoke-static {v12, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPageCount()I
    .locals 1

    iget v0, p0, Lorg/h2/store/PageStore;->pageCount:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    iget v0, p0, Lorg/h2/store/PageStore;->pageSize:I

    return v0
.end method

.method public getPageStoreSession()Lorg/h2/engine/Session;
    .locals 1

    iget-object v0, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    return-object v0
.end method

.method public getReadCount()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/store/PageStore;->readCount:J

    return-wide v0
.end method

.method public getRootPageId(I)I
    .locals 1

    iget-object v0, p0, Lorg/h2/store/PageStore;->metaRootPageId:Lorg/h2/util/IntIntHashMap;

    invoke-virtual {v0, p1}, Lorg/h2/util/IntIntHashMap;->get(I)I

    move-result p1

    return p1
.end method

.method public getTrace()Lorg/h2/message/Trace;
    .locals 1

    iget-object v0, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    return-object v0
.end method

.method public getWriteCount()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/store/PageStore;->writeCount:J

    return-wide v0
.end method

.method public getWriteCountTotal()J
    .locals 4

    iget-wide v0, p0, Lorg/h2/store/PageStore;->writeCount:J

    iget-wide v2, p0, Lorg/h2/store/PageStore;->writeCountBase:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public incrementChangeCount()V
    .locals 5

    iget-wide v0, p0, Lorg/h2/store/PageStore;->changeCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/store/PageStore;->changeCount:J

    sget-boolean v2, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "changeCount has wrapped"

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public isNew()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/store/PageStore;->isNew:Z

    return v0
.end method

.method public isRecoveryRunning()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/store/PageStore;->recoveryRunning:Z

    return v0
.end method

.method public declared-synchronized logAddOrRemoveRow(Lorg/h2/engine/Session;ILorg/h2/result/Row;Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/h2/store/PageStore;->logMode:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/h2/store/PageStore;->recoveryRunning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/h2/store/PageLog;->logAddOrRemoveRow(Lorg/h2/engine/Session;ILorg/h2/result/Row;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized logTruncate(Lorg/h2/engine/Session;I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/h2/store/PageStore;->recoveryRunning:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/h2/store/PageStore;->openForWriting()V

    iget-object v0, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v0, p1, p2}, Lorg/h2/store/PageLog;->logTruncate(Lorg/h2/engine/Session;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/h2/store/PageStore;->logMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/h2/store/PageStore;->checkOpen()V

    iget-object v0, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->checkWritingAllowed()V

    iget-boolean v0, p0, Lorg/h2/store/PageStore;->recoveryRunning:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/h2/util/CacheObject;->getPos()I

    move-result p1

    iget-object v0, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v0, p1}, Lorg/h2/store/PageLog;->getUndo(I)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lorg/h2/store/PageStore;->readPage(I)Lorg/h2/store/Data;

    move-result-object p2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/h2/store/PageStore;->openForWriting()V

    iget-object v0, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v0, p1, p2}, Lorg/h2/store/PageLog;->addUndo(ILorg/h2/store/Data;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized open()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/store/PageStore;->metaRootPageId:Lorg/h2/util/IntIntHashMap;

    const/4 v1, -0x1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/h2/util/IntIntHashMap;->put(II)V

    iget-object v0, p0, Lorg/h2/store/PageStore;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/store/PageStore;->fileName:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->size(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x140

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    iget-object v2, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->isReadOnly()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/h2/store/PageStore;->openNew()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/h2/store/PageStore;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x15fae

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_2
    invoke-direct {p0}, Lorg/h2/store/PageStore;->openExisting()V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lorg/h2/store/PageStore;->close()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prepareCommit(Lorg/h2/engine/Session;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v0, p1, p2}, Lorg/h2/store/PageLog;->prepareCommit(Lorg/h2/engine/Session;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized readPage(I)Lorg/h2/store/Data;
    .locals 1

    .line 1
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/store/PageStore;->createData()Lorg/h2/store/Data;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/h2/store/PageStore;->readPage(ILorg/h2/store/Data;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public readPage(ILorg/h2/store/Data;)V
    .locals 3

    .line 2
    iget-boolean v0, p0, Lorg/h2/store/PageStore;->recordPageReads:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lorg/h2/store/PageStore;->recordedPagesIndex:Lorg/h2/util/IntIntHashMap;

    invoke-virtual {v0, p1}, Lorg/h2/util/IntIntHashMap;->get(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/h2/store/PageStore;->recordedPagesIndex:Lorg/h2/util/IntIntHashMap;

    iget-object v1, p0, Lorg/h2/store/PageStore;->recordedPagesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/h2/util/IntIntHashMap;->put(II)V

    iget-object v0, p0, Lorg/h2/store/PageStore;->recordedPagesList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Lorg/h2/store/PageStore;->pageCount:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    int-to-long v1, p1

    iget p1, p0, Lorg/h2/store/PageStore;->pageSizeShift:I

    shl-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/h2/store/FileStore;->seek(J)V

    iget-object p1, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    invoke-virtual {p2}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object p2

    const/4 v0, 0x0

    iget v1, p0, Lorg/h2/store/PageStore;->pageSize:I

    invoke-virtual {p1, p2, v0, v1}, Lorg/h2/store/FileStore;->readFully([BII)V

    iget-wide p1, p0, Lorg/h2/store/PageStore;->readCount:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/h2/store/PageStore;->readCount:J

    return-void

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " of "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/h2/store/PageStore;->pageCount:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const p2, 0x15fae

    invoke-static {p2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public redo(ILorg/h2/result/Row;Z)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    if-eqz p3, :cond_0

    iget-object v0, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Lorg/h2/store/PageStore;->addMeta(Lorg/h2/result/Row;Lorg/h2/engine/Session;Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lorg/h2/store/PageStore;->removeMeta(Lorg/h2/result/Row;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/index/Index;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/h2/index/Index;->getTable()Lorg/h2/table/Table;

    move-result-object p1

    if-eqz p3, :cond_2

    iget-object p3, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    invoke-virtual {p1, p3, p2}, Lorg/h2/table/Table;->addRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    invoke-virtual {p1, p3, p2}, Lorg/h2/table/Table;->removeRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    :goto_1
    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Table not found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public redoDelete(IJ)V
    .locals 4

    iget-object v0, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/index/Index;

    check-cast v0, Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0, p2, p3}, Lorg/h2/index/PageDataIndex;->getRowWithKey(J)Lorg/h2/result/Row;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v1

    cmp-long v3, v1, p2

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/h2/store/PageStore;->redo(ILorg/h2/result/Row;Z)V

    return-void

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Entry not found: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " found instead: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " - ignoring"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public redoTruncate(I)V
    .locals 1

    iget-object v0, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/index/Index;

    invoke-interface {p1}, Lorg/h2/index/Index;->getTable()Lorg/h2/table/Table;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/store/PageStore;->pageStoreSession:Lorg/h2/engine/Session;

    invoke-virtual {p1, v0}, Lorg/h2/table/Table;->truncate(Lorg/h2/engine/Session;)V

    return-void
.end method

.method public declared-synchronized removeFromCache(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/store/PageStore;->cache:Lorg/h2/util/Cache;

    invoke-interface {v0, p1}, Lorg/h2/util/Cache;->remove(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeMeta(Lorg/h2/index/Index;Lorg/h2/engine/Session;)V
    .locals 2

    .line 1
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/h2/index/Index;->getTable()Lorg/h2/table/Table;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/DbObjectBase;->isTemporary()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    monitor-enter v0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1, p2}, Lorg/h2/engine/Database;->verifyMetaLocked(Lorg/h2/engine/Session;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1

    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :cond_0
    :goto_1
    monitor-enter p0

    :try_start_5
    iget-boolean v0, p0, Lorg/h2/store/PageStore;->recoveryRunning:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/h2/store/PageStore;->removeMetaIndex(Lorg/h2/index/Index;Lorg/h2/engine/Session;)V

    iget-object p2, p0, Lorg/h2/store/PageStore;->metaObjects:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/h2/engine/DbObject;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_2
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1
.end method

.method public declared-synchronized setBackup(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/h2/store/PageStore;->backupLevel:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    add-int/2addr v0, p1

    iput v0, p0, Lorg/h2/store/PageStore;->backupLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setInDoubtTransactionState(IIZ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isReadOnly()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/h2/engine/Database;->setReadOnly(Z)V

    iget-object v1, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v1, p1, p2, p3}, Lorg/h2/store/PageLog;->setInDoubtTransactionState(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1, v0}, Lorg/h2/engine/Database;->setReadOnly(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {p2, v0}, Lorg/h2/engine/Database;->setReadOnly(Z)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public setLockFile(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/store/PageStore;->lockFile:Z

    return-void
.end method

.method public setLogFirstPage(III)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    .line 10
    .line 11
    const-string v1, "setLogFirstPage key: "

    .line 12
    .line 13
    const-string v2, " trunk: "

    .line 14
    .line 15
    const-string v3, " data: "

    .line 16
    .line 17
    invoke-static {v1, p1, v2, p2, v3}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iput p1, p0, Lorg/h2/store/PageStore;->logKey:I

    .line 32
    .line 33
    iput p2, p0, Lorg/h2/store/PageStore;->logFirstTrunkPage:I

    .line 34
    .line 35
    iput p3, p0, Lorg/h2/store/PageStore;->logFirstDataPage:I

    .line 36
    .line 37
    invoke-direct {p0}, Lorg/h2/store/PageStore;->writeVariableHeader()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public setLogMode(I)V
    .locals 0

    iput p1, p0, Lorg/h2/store/PageStore;->logMode:I

    return-void
.end method

.method public setMaxLogSize(J)V
    .locals 0

    iput-wide p1, p0, Lorg/h2/store/PageStore;->maxLogSize:J

    return-void
.end method

.method public setPageSize(I)V
    .locals 3

    const/16 v0, 0x40

    const v1, 0x15fae

    if-lt p1, v0, :cond_2

    const v0, 0x8000

    if-gt p1, v0, :cond_2

    const/4 v0, 0x1

    const/4 v2, 0x0

    :goto_0
    if-gt v0, p1, :cond_1

    if-ne p1, v0, :cond_0

    iput p1, p0, Lorg/h2/store/PageStore;->pageSize:I

    invoke-virtual {p0}, Lorg/h2/store/PageStore;->createData()Lorg/h2/store/Data;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/store/PageStore;->emptyPage:Lorg/h2/store/Data;

    iput v2, p0, Lorg/h2/store/PageStore;->pageSizeShift:I

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/h2/store/PageStore;->fileName:Ljava/lang/String;

    invoke-static {v1, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/h2/store/PageStore;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pageSize: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public statisticsEnd()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/store/PageStore;->statistics:Ljava/util/HashMap;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/h2/store/PageStore;->statistics:Ljava/util/HashMap;

    return-object v0
.end method

.method public statisticsStart()V
    .locals 1

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/PageStore;->statistics:Ljava/util/HashMap;

    return-void
.end method

.method public declared-synchronized sync()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    invoke-virtual {v0}, Lorg/h2/store/PageLog;->flush()V

    iget-object v0, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    invoke-virtual {v0}, Lorg/h2/store/FileStore;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized update(Lorg/h2/store/Page;)V
    .locals 3

    const-string v0, "updateRecord "

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v1}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/h2/util/CacheObject;->isChanged()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/h2/store/PageStore;->checkOpen()V

    iget-object v0, p0, Lorg/h2/store/PageStore;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->checkWritingAllowed()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/h2/util/CacheObject;->setChanged(Z)V

    invoke-virtual {p1}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v0

    sget-boolean v1, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/h2/store/PageStore;->recoveryRunning:Z

    if-nez v1, :cond_1

    iget v1, p0, Lorg/h2/store/PageStore;->logMode:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/h2/store/PageStore;->log:Lorg/h2/store/PageLog;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/h2/store/PageLog;->addUndo(ILorg/h2/store/Data;)V

    :cond_1
    invoke-virtual {p0, v0}, Lorg/h2/store/PageStore;->allocatePage(I)V

    iget-object v1, p0, Lorg/h2/store/PageStore;->cache:Lorg/h2/util/Cache;

    invoke-interface {v1, v0, p1}, Lorg/h2/util/Cache;->update(ILorg/h2/util/CacheObject;)Lorg/h2/util/CacheObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized writeBack(Lorg/h2/util/CacheObject;)V
    .locals 3

    .line 2
    const-string v0, "writeBack "

    monitor-enter p0

    :try_start_0
    check-cast p1, Lorg/h2/store/Page;

    iget-object v1, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v1}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/h2/store/PageStore;->trace:Lorg/h2/message/Trace;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/h2/store/Page;->write()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/h2/util/CacheObject;->setChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized writePage(ILorg/h2/store/Data;)V
    .locals 5

    const-string v0, "write to page "

    monitor-enter p0

    if-gtz p1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_0
    :goto_0
    invoke-virtual {p2}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object p2

    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    add-int/lit8 v0, p1, -0x3

    iget v2, p0, Lorg/h2/store/PageStore;->freeListPagesPerList:I

    rem-int/2addr v0, v2

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    aget-byte v3, p2, v1

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v3, :cond_4

    if-ne v0, v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_4
    :goto_3
    invoke-direct {p0, p2, p1}, Lorg/h2/store/PageStore;->checksumSet([BI)V

    iget-object v0, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    int-to-long v2, p1

    iget p1, p0, Lorg/h2/store/PageStore;->pageSizeShift:I

    shl-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/h2/store/FileStore;->seek(J)V

    iget-object p1, p0, Lorg/h2/store/PageStore;->file:Lorg/h2/store/FileStore;

    iget v0, p0, Lorg/h2/store/PageStore;->pageSize:I

    invoke-virtual {p1, p2, v1, v0}, Lorg/h2/store/FileStore;->write([BII)V

    iget-wide p1, p0, Lorg/h2/store/PageStore;->writeCount:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/h2/store/PageStore;->writeCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0

    throw p1
.end method
