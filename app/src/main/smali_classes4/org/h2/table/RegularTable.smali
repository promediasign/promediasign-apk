.class public Lorg/h2/table/RegularTable;
.super Lorg/h2/table/TableBase;
.source "SourceFile"


# instance fields
.field private changesSinceAnalyze:I

.field private containsLargeObject:Z

.field private final indexes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/index/Index;",
            ">;"
        }
    .end annotation
.end field

.field private lastModificationId:J

.field private volatile lockExclusiveSession:Lorg/h2/engine/Session;

.field private lockSharedSessions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/h2/engine/Session;",
            ">;"
        }
    .end annotation
.end field

.field private final mainIndex:Lorg/h2/index/PageDataIndex;

.field private nextAnalyze:I

.field private rowCount:J

.field private rowIdColumn:Lorg/h2/table/Column;

.field private scanIndex:Lorg/h2/index/Index;

.field private final traceLock:Lorg/h2/message/Trace;

.field private final waitingSessions:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lorg/h2/engine/Session;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/h2/command/ddl/CreateTableData;)V
    .locals 8

    invoke-direct {p0, p1}, Lorg/h2/table/TableBase;-><init>(Lorg/h2/command/ddl/CreateTableData;)V

    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/table/RegularTable;->lockSharedSessions:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lorg/h2/table/RegularTable;->waitingSessions:Ljava/util/ArrayDeque;

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    iget v0, v0, Lorg/h2/engine/DbSettings;->analyzeAuto:I

    iput v0, p0, Lorg/h2/table/RegularTable;->nextAnalyze:I

    iget-boolean v0, p1, Lorg/h2/command/ddl/CreateTableData;->isHidden:Z

    iput-boolean v0, p0, Lorg/h2/table/Table;->isHidden:Z

    invoke-virtual {p0}, Lorg/h2/table/Table;->getColumns()[Lorg/h2/table/Column;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/h2/table/Column;->getType()I

    move-result v3

    invoke-static {v3}, Lorg/h2/value/DataType;->isLargeObject(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/h2/table/RegularTable;->containsLargeObject:Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v0, p1, Lorg/h2/command/ddl/CreateTableData;->persistData:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/h2/index/PageDataIndex;

    iget v3, p1, Lorg/h2/command/ddl/CreateTableData;->id:I

    invoke-virtual {p0}, Lorg/h2/table/Table;->getColumns()[Lorg/h2/table/Column;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/table/IndexColumn;->wrap([Lorg/h2/table/Column;)[Lorg/h2/table/IndexColumn;

    move-result-object v4

    iget-boolean v1, p1, Lorg/h2/command/ddl/CreateTableData;->persistData:Z

    invoke-static {v1}, Lorg/h2/index/IndexType;->createScan(Z)Lorg/h2/index/IndexType;

    move-result-object v5

    iget-boolean v6, p1, Lorg/h2/command/ddl/CreateTableData;->create:Z

    iget-object v7, p1, Lorg/h2/command/ddl/CreateTableData;->session:Lorg/h2/engine/Session;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/h2/index/PageDataIndex;-><init>(Lorg/h2/table/RegularTable;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;ZLorg/h2/engine/Session;)V

    iput-object v0, p0, Lorg/h2/table/RegularTable;->mainIndex:Lorg/h2/index/PageDataIndex;

    :goto_1
    iput-object v0, p0, Lorg/h2/table/RegularTable;->scanIndex:Lorg/h2/index/Index;

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/table/RegularTable;->mainIndex:Lorg/h2/index/PageDataIndex;

    new-instance v0, Lorg/h2/index/ScanIndex;

    iget v1, p1, Lorg/h2/command/ddl/CreateTableData;->id:I

    invoke-virtual {p0}, Lorg/h2/table/Table;->getColumns()[Lorg/h2/table/Column;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/table/IndexColumn;->wrap([Lorg/h2/table/Column;)[Lorg/h2/table/IndexColumn;

    move-result-object v2

    iget-boolean p1, p1, Lorg/h2/command/ddl/CreateTableData;->persistData:Z

    invoke-static {p1}, Lorg/h2/index/IndexType;->createScan(Z)Lorg/h2/index/IndexType;

    move-result-object p1

    invoke-direct {v0, p0, v1, v2, p1}, Lorg/h2/index/ScanIndex;-><init>(Lorg/h2/table/RegularTable;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    goto :goto_1

    :goto_2
    iget-object p1, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/h2/table/RegularTable;->scanIndex:Lorg/h2/index/Index;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lorg/h2/engine/Database;->getTrace(I)Lorg/h2/message/Trace;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/table/RegularTable;->traceLock:Lorg/h2/message/Trace;

    return-void
.end method

.method private static addRowsToIndex(Lorg/h2/engine/Session;Ljava/util/ArrayList;Lorg/h2/index/Index;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Session;",
            "Ljava/util/ArrayList<",
            "Lorg/h2/result/Row;",
            ">;",
            "Lorg/h2/index/Index;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/h2/table/RegularTable$1;

    invoke-direct {v0, p2}, Lorg/h2/table/RegularTable$1;-><init>(Lorg/h2/index/Index;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/result/Row;

    invoke-interface {p2, p0, v1}, Lorg/h2/index/Index;->add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private analyzeIfRequired(Lorg/h2/engine/Session;)V
    .locals 3

    iget v0, p0, Lorg/h2/table/RegularTable;->nextAnalyze:I

    if-eqz v0, :cond_2

    iget v1, p0, Lorg/h2/table/RegularTable;->changesSinceAnalyze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/h2/table/RegularTable;->changesSinceAnalyze:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lorg/h2/table/RegularTable;->changesSinceAnalyze:I

    mul-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_1

    iput v0, p0, Lorg/h2/table/RegularTable;->nextAnalyze:I

    :cond_1
    invoke-virtual {p1, p0}, Lorg/h2/engine/Session;->markTableForAnalyze(Lorg/h2/table/Table;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private checkRowCount(Lorg/h2/engine/Session;Lorg/h2/index/Index;I)V
    .locals 6

    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/h2/index/PageDelegateIndex;

    if-nez v0, :cond_0

    invoke-interface {p2, p1}, Lorg/h2/index/Index;->getRowCount(Lorg/h2/engine/Session;)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/h2/table/RegularTable;->rowCount:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "rowCount expected "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lorg/h2/table/RegularTable;->rowCount:J

    add-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " got "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_0
    return-void
.end method

.method private doLock1(Lorg/h2/engine/Session;IZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const-string v3, "requesting for"

    invoke-direct {v0, v1, v2, v3}, Lorg/h2/table/RegularTable;->traceLock(Lorg/h2/engine/Session;ZLjava/lang/String;)V

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-wide v7, v3

    const/4 v6, 0x0

    :goto_0
    iget-object v9, v0, Lorg/h2/table/RegularTable;->waitingSessions:Ljava/util/ArrayDeque;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_0

    invoke-direct/range {p0 .. p3}, Lorg/h2/table/RegularTable;->doLock2(Lorg/h2/engine/Session;IZ)Z

    move-result v9

    if-eqz v9, :cond_0

    return-void

    :cond_0
    if-eqz v6, :cond_2

    const/4 v9, 0x0

    invoke-virtual {v0, v1, v9, v9}, Lorg/h2/table/RegularTable;->checkDeadlock(Lorg/h2/engine/Session;Lorg/h2/engine/Session;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v9

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    const v1, 0x9c41

    invoke-static {v9, v2}, Lorg/h2/table/RegularTable;->getDeadlockDetails(Ljava/util/ArrayList;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v1

    throw v1

    :cond_2
    const/4 v6, 0x1

    :goto_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    cmp-long v11, v7, v3

    if-nez v11, :cond_3

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getLockTimeout()I

    move-result v8

    int-to-long v11, v8

    invoke-virtual {v7, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v7

    add-long/2addr v7, v9

    goto :goto_2

    :cond_3
    cmp-long v11, v9, v7

    if-gez v11, :cond_7

    :goto_2
    :try_start_0
    const-string v11, "waiting for"

    invoke-direct {v0, v1, v2, v11}, Lorg/h2/table/RegularTable;->traceLock(Lorg/h2/engine/Session;ZLjava/lang/String;)V

    iget-object v11, v0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v11}, Lorg/h2/engine/Database;->getLockMode()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_5

    const/4 v11, 0x0

    :goto_3
    const/16 v12, 0x14

    if-ge v11, v12, :cond_5

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v12

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v14

    cmp-long v16, v12, v14

    if-nez v16, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :catch_0
    nop

    goto :goto_0

    :cond_5
    :goto_4
    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long v9, v7, v9

    invoke-virtual {v11, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    const-wide/16 v11, 0x64

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    cmp-long v11, v9, v3

    if-nez v11, :cond_6

    const-wide/16 v9, 0x1

    :cond_6
    iget-object v11, v0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v11, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "timeout after "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getLockTimeout()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/h2/table/RegularTable;->traceLock(Lorg/h2/engine/Session;ZLjava/lang/String;)V

    const v1, 0xc418

    invoke-virtual/range {p0 .. p0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v1

    throw v1
.end method

.method private doLock2(Lorg/h2/engine/Session;IZ)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    iget-object p2, p0, Lorg/h2/table/RegularTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    if-nez p2, :cond_4

    iget-object p2, p0, Lorg/h2/table/RegularTable;->lockSharedSessions:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "added for"

    invoke-direct {p0, p1, p3, p2}, Lorg/h2/table/RegularTable;->traceLock(Lorg/h2/engine/Session;ZLjava/lang/String;)V

    invoke-virtual {p1, p0}, Lorg/h2/engine/Session;->addLock(Lorg/h2/table/Table;)V

    :goto_0
    iput-object p1, p0, Lorg/h2/table/RegularTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    return v0

    :cond_0
    iget-object p2, p0, Lorg/h2/table/RegularTable;->lockSharedSessions:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result p2

    if-ne p2, v0, :cond_4

    iget-object p2, p0, Lorg/h2/table/RegularTable;->lockSharedSessions:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "add (upgraded) for "

    invoke-direct {p0, p1, p3, p2}, Lorg/h2/table/RegularTable;->traceLock(Lorg/h2/engine/Session;ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/h2/table/RegularTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    if-nez v1, :cond_4

    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    iget-object p2, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {p2}, Lorg/h2/engine/Database;->isMultiThreaded()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {p2}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result p2

    if-nez p2, :cond_2

    return v0

    :cond_2
    iget-object p2, p0, Lorg/h2/table/RegularTable;->lockSharedSessions:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "ok"

    invoke-direct {p0, p1, p3, p2}, Lorg/h2/table/RegularTable;->traceLock(Lorg/h2/engine/Session;ZLjava/lang/String;)V

    invoke-virtual {p1, p0}, Lorg/h2/engine/Session;->addLock(Lorg/h2/table/Table;)V

    iget-object p2, p0, Lorg/h2/table/RegularTable;->lockSharedSessions:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    return v0

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private static getDeadlockDetails(Ljava/util/ArrayList;Z)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/engine/Session;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/engine/Session;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getWaitForLock()Lorg/h2/table/Table;

    move-result-object v2

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getWaitForLockThread()Ljava/lang/Thread;

    move-result-object v3

    const-string v4, "\nSession "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " on thread "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is waiting to lock "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (shared)"

    const-string v3, " (exclusive)"

    if-eqz p1, :cond_0

    move-object v4, v3

    goto :goto_1

    :cond_0
    move-object v4, v2

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " while locking "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getLocks()[Lorg/h2/table/Table;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v6, v5, :cond_4

    aget-object v8, v4, v6

    add-int/lit8 v9, v7, 0x1

    if-lez v7, :cond_1

    const-string v7, ", "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v8}, Lorg/h2/engine/DbObjectBase;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v7, v8, Lorg/h2/table/RegularTable;

    if-eqz v7, :cond_3

    check-cast v8, Lorg/h2/table/RegularTable;

    iget-object v7, v8, Lorg/h2/table/RegularTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    if-ne v7, v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    move v7, v9

    goto :goto_2

    :cond_4
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getMainIndexColumn(Lorg/h2/index/IndexType;[Lorg/h2/table/IndexColumn;)I
    .locals 2

    iget-object v0, p0, Lorg/h2/table/RegularTable;->mainIndex:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getMainIndexColumn()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lorg/h2/index/IndexType;->isPrimaryKey()Z

    move-result p1

    if-eqz p1, :cond_4

    array-length p1, p2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    aget-object p1, p2, p1

    iget p2, p1, Lorg/h2/table/IndexColumn;->sortType:I

    if-eqz p2, :cond_2

    return v1

    :cond_2
    iget-object p2, p1, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {p2}, Lorg/h2/table/Column;->getType()I

    move-result p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    const/4 v0, 0x4

    if-eq p2, v0, :cond_3

    const/4 v0, 0x5

    if-eq p2, v0, :cond_3

    return v1

    :cond_3
    iget-object p1, p1, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {p1}, Lorg/h2/table/Column;->getColumnId()I

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method private traceLock(Lorg/h2/engine/Session;ZLjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lorg/h2/table/RegularTable;->traceLock:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/table/RegularTable;->traceLock:Lorg/h2/message/Trace;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p2, :cond_0

    const-string p2, "exclusive write lock"

    goto :goto_0

    :cond_0
    const-string p2, "shared read lock"

    :goto_0
    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    const/4 p1, 0x3

    aput-object v1, v2, p1

    const-string p1, "{0} {1} {2} {3}"

    invoke-virtual {v0, p1, v2}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addIndex(Lorg/h2/engine/Session;Ljava/lang/String;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;ZLjava/lang/String;)Lorg/h2/index/Index;
    .locals 21

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v0, p4

    invoke-virtual/range {p5 .. p5}, Lorg/h2/index/IndexType;->isPrimaryKey()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v12, 0x1

    if-eqz v1, :cond_1

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget-object v4, v4, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v4}, Lorg/h2/table/Column;->isNullable()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, v12}, Lorg/h2/table/Column;->setPrimaryKey(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const v0, 0x15fa7

    invoke-virtual {v4}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/h2/engine/DbObjectBase;->isTemporary()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/h2/table/TableBase;->isGlobalTemporary()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v13, 0x1

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    :goto_1
    if-nez v13, :cond_3

    iget-object v1, v10, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1, v11}, Lorg/h2/engine/Database;->lockMeta(Lorg/h2/engine/Session;)Z

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/h2/table/Table;->isPersistIndexes()Z

    move-result v1

    const-wide/16 v14, 0x0

    if-eqz v1, :cond_9

    invoke-virtual/range {p5 .. p5}, Lorg/h2/index/IndexType;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v10, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->isStarting()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_4

    iget-object v1, v10, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v1

    move/from16 v3, p3

    invoke-virtual {v1, v3}, Lorg/h2/store/PageStore;->getRootPageId(I)I

    move-result v1

    if-eqz v1, :cond_5

    :goto_2
    move-object/from16 v6, p5

    const/4 v1, -0x1

    goto :goto_3

    :cond_4
    move/from16 v3, p3

    :cond_5
    iget-object v1, v10, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->isStarting()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v10, Lorg/h2/table/RegularTable;->mainIndex:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v1, v11}, Lorg/h2/index/PageDataIndex;->getRowCount(Lorg/h2/engine/Session;)J

    move-result-wide v4

    cmp-long v1, v4, v14

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    move-object/from16 v6, p5

    invoke-direct {v10, v6, v0}, Lorg/h2/table/RegularTable;->getMainIndexColumn(Lorg/h2/index/IndexType;[Lorg/h2/table/IndexColumn;)I

    move-result v1

    :goto_3
    if-eq v1, v2, :cond_7

    iget-object v0, v10, Lorg/h2/table/RegularTable;->mainIndex:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0, v1}, Lorg/h2/index/PageDataIndex;->setMainIndexColumn(I)V

    new-instance v0, Lorg/h2/index/PageDelegateIndex;

    iget-object v7, v10, Lorg/h2/table/RegularTable;->mainIndex:Lorg/h2/index/PageDataIndex;

    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    move-object v6, v7

    move/from16 v7, p6

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lorg/h2/index/PageDelegateIndex;-><init>(Lorg/h2/table/RegularTable;ILjava/lang/String;Lorg/h2/index/IndexType;Lorg/h2/index/PageDataIndex;ZLorg/h2/engine/Session;)V

    goto/16 :goto_6

    :cond_7
    invoke-virtual/range {p5 .. p5}, Lorg/h2/index/IndexType;->isSpatial()Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v16, Lorg/h2/index/SpatialTreeIndex;

    const/4 v7, 0x1

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p6

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Lorg/h2/index/SpatialTreeIndex;-><init>(Lorg/h2/table/Table;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;ZZLorg/h2/engine/Session;)V

    goto/16 :goto_5

    :cond_8
    new-instance v9, Lorg/h2/index/PageBtreeIndex;

    move-object v1, v9

    move-object/from16 v2, p0

    move/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lorg/h2/index/PageBtreeIndex;-><init>(Lorg/h2/table/RegularTable;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;ZLorg/h2/engine/Session;)V

    move-object v0, v9

    goto/16 :goto_6

    :cond_9
    move/from16 v3, p3

    move-object/from16 v6, p5

    invoke-virtual/range {p5 .. p5}, Lorg/h2/index/IndexType;->isHash()Z

    move-result v1

    if-eqz v1, :cond_c

    array-length v1, v0

    if-ne v1, v12, :cond_b

    invoke-virtual/range {p5 .. p5}, Lorg/h2/index/IndexType;->isUnique()Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v7, Lorg/h2/index/HashIndex;

    move-object v1, v7

    move-object/from16 v2, p0

    move/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/h2/index/HashIndex;-><init>(Lorg/h2/table/RegularTable;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    :goto_4
    move-object v0, v7

    goto :goto_6

    :cond_a
    new-instance v7, Lorg/h2/index/NonUniqueHashIndex;

    move-object v1, v7

    move-object/from16 v2, p0

    move/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/h2/index/NonUniqueHashIndex;-><init>(Lorg/h2/table/RegularTable;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    goto :goto_4

    :cond_b
    const-string v0, "hash indexes may index only one column"

    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_c
    invoke-virtual/range {p5 .. p5}, Lorg/h2/index/IndexType;->isSpatial()Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v16, Lorg/h2/index/SpatialTreeIndex;

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Lorg/h2/index/SpatialTreeIndex;-><init>(Lorg/h2/table/Table;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;ZZLorg/h2/engine/Session;)V

    :goto_5
    move-object/from16 v0, v16

    goto :goto_6

    :cond_d
    new-instance v7, Lorg/h2/index/TreeIndex;

    move-object v1, v7

    move-object/from16 v2, p0

    move/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/h2/index/TreeIndex;-><init>(Lorg/h2/table/RegularTable;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    goto :goto_4

    :goto_6
    iget-object v1, v10, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v1, Lorg/h2/index/MultiVersionIndex;

    invoke-direct {v1, v0, v10}, Lorg/h2/index/MultiVersionIndex;-><init>(Lorg/h2/index/Index;Lorg/h2/table/RegularTable;)V

    goto :goto_7

    :cond_e
    move-object v1, v0

    :goto_7
    invoke-interface {v1}, Lorg/h2/index/Index;->needRebuild()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-wide v2, v10, Lorg/h2/table/RegularTable;->rowCount:J

    cmp-long v0, v2, v14

    if-lez v0, :cond_11

    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lorg/h2/table/RegularTable;->getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;

    move-result-object v0

    invoke-interface {v0, v11}, Lorg/h2/index/Index;->getRowCount(Lorg/h2/engine/Session;)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-interface {v0, v11, v4, v4}, Lorg/h2/index/Index;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object v0

    iget-wide v4, v10, Lorg/h2/table/RegularTable;->rowCount:J

    iget-object v6, v10, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v6}, Lorg/h2/engine/Database;->getMaxMemoryRows()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v5, v4

    invoke-static {v5}, Lorg/h2/util/New;->arrayList(I)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v3}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v7

    move-wide v8, v14

    :goto_8
    invoke-interface {v0}, Lorg/h2/index/Cursor;->next()Z

    move-result v16

    if-eqz v16, :cond_10

    iget-object v14, v10, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    const-wide/16 v17, 0x1

    add-long v19, v8, v17

    invoke-static {v8, v9}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v8

    invoke-virtual {v14, v12, v6, v8, v7}, Lorg/h2/engine/Database;->setProgress(ILjava/lang/String;II)V

    invoke-interface {v0}, Lorg/h2/index/Cursor;->get()Lorg/h2/result/Row;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v8, v5, :cond_f

    invoke-static {v11, v4, v1}, Lorg/h2/table/RegularTable;->addRowsToIndex(Lorg/h2/engine/Session;Ljava/util/ArrayList;Lorg/h2/index/Index;)V

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_a

    :cond_f
    :goto_9
    sub-long v2, v2, v17

    move-wide/from16 v8, v19

    const-wide/16 v14, 0x0

    goto :goto_8

    :cond_10
    invoke-static {v11, v4, v1}, Lorg/h2/table/RegularTable;->addRowsToIndex(Lorg/h2/engine/Session;Ljava/util/ArrayList;Lorg/h2/index/Index;)V

    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_11

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rowcount remaining="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Lorg/h2/schema/Schema;->freeUniqueName(Ljava/lang/String;)V

    :try_start_1
    invoke-interface {v1, v11}, Lorg/h2/index/Index;->remove(Lorg/h2/engine/Session;)V
    :try_end_1
    .catch Lorg/h2/message/DbException; {:try_start_1 .. :try_end_1} :catch_1

    throw v0

    :catch_1
    move-exception v0

    move-object v1, v0

    iget-object v0, v10, Lorg/h2/engine/DbObjectBase;->trace:Lorg/h2/message/Trace;

    const-string v2, "could not remove index"

    invoke-virtual {v0, v1, v2}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw v1

    :cond_11
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lorg/h2/engine/DbObjectBase;->isTemporary()Z

    move-result v0

    invoke-interface {v1, v0}, Lorg/h2/engine/DbObject;->setTemporary(Z)V

    invoke-interface {v1}, Lorg/h2/engine/DbObject;->getCreateSQL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    move-object/from16 v0, p7

    invoke-interface {v1, v0}, Lorg/h2/engine/DbObject;->setComment(Ljava/lang/String;)V

    if-eqz v13, :cond_12

    invoke-virtual {v11, v1}, Lorg/h2/engine/Session;->addLocalTempTableIndex(Lorg/h2/index/Index;)V

    goto :goto_c

    :cond_12
    iget-object v0, v10, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, v11, v1}, Lorg/h2/engine/Database;->addSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    :cond_13
    :goto_c
    iget-object v0, v10, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lorg/h2/engine/DbObjectBase;->setModified()V

    return-object v1
.end method

.method public addRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 7

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getNextModificationDataId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/table/RegularTable;->lastModificationId:J

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getId()I

    move-result v0

    invoke-interface {p2, v0}, Lorg/h2/result/Row;->setSessionId(I)V

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    :try_start_1
    iget-object v3, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/index/Index;

    invoke-interface {v3, p1, p2}, Lorg/h2/index/Index;->add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    const/4 v4, 0x1

    invoke-direct {p0, p1, v3, v4}, Lorg/h2/table/RegularTable;->checkRowCount(Lorg/h2/engine/Session;Lorg/h2/index/Index;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    iget-wide v3, p0, Lorg/h2/table/RegularTable;->rowCount:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/h2/table/RegularTable;->rowCount:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, p1}, Lorg/h2/table/RegularTable;->analyzeIfRequired(Lorg/h2/engine/Session;)V

    return-void

    :catchall_1
    move-exception v1

    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    :try_start_2
    iget-object v3, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/index/Index;

    invoke-interface {v3, p1, p2}, Lorg/h2/index/Index;->remove(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    invoke-direct {p0, p1, v3, v0}, Lorg/h2/table/RegularTable;->checkRowCount(Lorg/h2/engine/Session;Lorg/h2/index/Index;I)V
    :try_end_2
    .catch Lorg/h2/message/DbException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lorg/h2/engine/DbObjectBase;->trace:Lorg/h2/message/Trace;

    const-string v0, "could not undo operation"

    invoke-virtual {p2, p1, v0}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {v1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/message/DbException;->getErrorCode()I

    move-result v2

    const/16 v3, 0x5bd1

    if-ne v2, v3, :cond_5

    :goto_2
    iget-object v2, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/index/Index;

    invoke-interface {v2}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/index/IndexType;->isUnique()Z

    move-result v3

    if-eqz v3, :cond_4

    instance-of v3, v2, Lorg/h2/index/MultiVersionIndex;

    if-eqz v3, :cond_4

    move-object v3, v2

    check-cast v3, Lorg/h2/index/MultiVersionIndex;

    invoke-virtual {v3, p1, p2}, Lorg/h2/index/MultiVersionIndex;->isUncommittedFromOtherSession(Lorg/h2/engine/Session;Lorg/h2/result/Row;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    const p1, 0x16013

    invoke-interface {v2}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    throw v1
.end method

.method public canDrop()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canGetRowCount()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canTruncate()Z
    .locals 7

    invoke-virtual {p0}, Lorg/h2/table/Table;->getCheckForeignKeyConstraints()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getReferentialIntegrity()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/h2/table/Table;->getConstraints()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/constraint/Constraint;

    invoke-virtual {v4}, Lorg/h2/constraint/Constraint;->getConstraintType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "REFERENTIAL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    check-cast v4, Lorg/h2/constraint/ConstraintReferential;

    invoke-virtual {v4}, Lorg/h2/constraint/ConstraintReferential;->getRefTable()Lorg/h2/table/Table;

    move-result-object v4

    if-ne v4, p0, :cond_1

    return v2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public checkDeadlock(Lorg/h2/engine/Session;Lorg/h2/engine/Session;Ljava/util/Set;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/engine/Session;",
            "Lorg/h2/engine/Session;",
            "Ljava/util/Set<",
            "Lorg/h2/engine/Session;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lorg/h2/engine/Session;",
            ">;"
        }
    .end annotation

    const-class v0, Lorg/h2/table/RegularTable;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    :try_start_0
    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object p3

    move-object p2, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    if-ne p2, p1, :cond_1

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_1
    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    monitor-exit v0

    return-object v1

    :cond_2
    :goto_0
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/h2/table/RegularTable;->lockSharedSessions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/engine/Session;

    if-ne v3, p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Lorg/h2/engine/Session;->getWaitForLock()Lorg/h2/table/Table;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4, v3, p2, p3}, Lorg/h2/table/Table;->checkDeadlock(Lorg/h2/engine/Session;Lorg/h2/engine/Session;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-nez v1, :cond_6

    iget-object v2, p0, Lorg/h2/table/RegularTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/h2/table/RegularTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getWaitForLock()Lorg/h2/table/Table;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v1, p0, Lorg/h2/table/RegularTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    invoke-virtual {v2, v1, p2, p3}, Lorg/h2/table/Table;->checkDeadlock(Lorg/h2/engine/Session;Lorg/h2/engine/Session;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    monitor-exit v0

    return-object v1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public checkRename()V
    .locals 0

    return-void
.end method

.method public checkSupportAlter()V
    .locals 0

    return-void
.end method

.method public close(Lorg/h2/engine/Session;)V
    .locals 2

    iget-object v0, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/index/Index;

    invoke-interface {v1, p1}, Lorg/h2/index/Index;->close(Lorg/h2/engine/Session;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public commit(SLorg/h2/result/Row;)V
    .locals 3

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getNextModificationDataId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/table/RegularTable;->lastModificationId:J

    iget-object v0, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/index/Index;

    invoke-interface {v2, p1, p2}, Lorg/h2/index/Index;->commit(ILorg/h2/result/Row;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getContainsLargeObject()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/table/RegularTable;->containsLargeObject:Z

    return v0
.end method

.method public getDiskSpaceUsed()J
    .locals 2

    iget-object v0, p0, Lorg/h2/table/RegularTable;->scanIndex:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/index/Index;->getDiskSpaceUsed()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIndexes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/index/Index;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMaxDataModificationId()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/table/RegularTable;->lastModificationId:J

    return-wide v0
.end method

.method public getRow(Lorg/h2/engine/Session;J)Lorg/h2/result/Row;
    .locals 1

    iget-object v0, p0, Lorg/h2/table/RegularTable;->scanIndex:Lorg/h2/index/Index;

    invoke-interface {v0, p1, p2, p3}, Lorg/h2/index/Index;->getRow(Lorg/h2/engine/Session;J)Lorg/h2/result/Row;

    move-result-object p1

    return-object p1
.end method

.method public getRowCount(Lorg/h2/engine/Session;)J
    .locals 2

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/h2/table/RegularTable;->getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/h2/index/Index;->getRowCount(Lorg/h2/engine/Session;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/h2/table/RegularTable;->rowCount:J

    return-wide v0
.end method

.method public getRowCountApproximation()J
    .locals 2

    iget-object v0, p0, Lorg/h2/table/RegularTable;->scanIndex:Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/index/Index;->getRowCountApproximation()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRowIdColumn()Lorg/h2/table/Column;
    .locals 3

    iget-object v0, p0, Lorg/h2/table/RegularTable;->rowIdColumn:Lorg/h2/table/Column;

    if-nez v0, :cond_0

    new-instance v0, Lorg/h2/table/Column;

    const-string v1, "_ROWID_"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/h2/table/RegularTable;->rowIdColumn:Lorg/h2/table/Column;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Lorg/h2/table/Column;->setTable(Lorg/h2/table/Table;I)V

    :cond_0
    iget-object v0, p0, Lorg/h2/table/RegularTable;->rowIdColumn:Lorg/h2/table/Column;

    return-object v0
.end method

.method public getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;
    .locals 1

    iget-object p1, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/index/Index;

    return-object p1
.end method

.method public getTableType()Lorg/h2/table/TableType;
    .locals 1

    sget-object v0, Lorg/h2/table/TableType;->TABLE:Lorg/h2/table/TableType;

    return-object v0
.end method

.method public getUniqueIndex()Lorg/h2/index/Index;
    .locals 3

    iget-object v0, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/index/Index;

    invoke-interface {v1}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/index/IndexType;->isUnique()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDeterministic()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLockedExclusively()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/table/RegularTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLockedExclusivelyBy(Lorg/h2/engine/Session;)Z
    .locals 1

    iget-object v0, p0, Lorg/h2/table/RegularTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public lock(Lorg/h2/engine/Session;ZZ)Z
    .locals 4

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getLockMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object p1, p0, Lorg/h2/table/RegularTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    if-nez p3, :cond_3

    iget-object p3, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {p3}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result p3

    if-eqz p3, :cond_3

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lorg/h2/table/RegularTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    if-nez p3, :cond_3

    return v1

    :cond_3
    :goto_0
    iget-object p3, p0, Lorg/h2/table/RegularTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    if-ne p3, p1, :cond_4

    return v2

    :cond_4
    iget-object p3, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    monitor-enter p3

    :try_start_0
    iget-object v3, p0, Lorg/h2/table/RegularTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    if-ne v3, p1, :cond_5

    monitor-exit p3

    return v2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_5
    if-nez p2, :cond_6

    iget-object v3, p0, Lorg/h2/table/RegularTable;->lockSharedSessions:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    monitor-exit p3

    return v2

    :cond_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {p1, p0, v2}, Lorg/h2/engine/Session;->setWaitForLock(Lorg/h2/table/Table;Ljava/lang/Thread;)V

    iget-object v2, p0, Lorg/h2/table/RegularTable;->waitingSessions:Ljava/util/ArrayDeque;

    invoke-virtual {v2, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :try_start_1
    invoke-direct {p0, p1, v0, p2}, Lorg/h2/table/RegularTable;->doLock1(Lorg/h2/engine/Session;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p1, v2, v2}, Lorg/h2/engine/Session;->setWaitForLock(Lorg/h2/table/Table;Ljava/lang/Thread;)V

    iget-object p2, p0, Lorg/h2/table/RegularTable;->waitingSessions:Ljava/util/ArrayDeque;

    invoke-virtual {p2, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    monitor-exit p3

    return v1

    :catchall_1
    move-exception p2

    invoke-virtual {p1, v2, v2}, Lorg/h2/engine/Session;->setWaitForLock(Lorg/h2/table/Table;Ljava/lang/Thread;)V

    iget-object v0, p0, Lorg/h2/table/RegularTable;->waitingSessions:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    throw p2

    :goto_1
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public removeChildrenAndResources(Lorg/h2/engine/Session;)V
    .locals 4

    iget-boolean v0, p0, Lorg/h2/table/RegularTable;->containsLargeObject:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/h2/table/RegularTable;->truncate(Lorg/h2/engine/Session;)V

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object v0

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/h2/store/LobStorageInterface;->removeAllForTable(I)V

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, p1}, Lorg/h2/engine/Database;->lockMeta(Lorg/h2/engine/Session;)Z

    :cond_0
    invoke-super {p0, p1}, Lorg/h2/table/Table;->removeChildrenAndResources(Lorg/h2/engine/Session;)V

    :goto_0
    iget-object v0, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1, p1, v0}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    :cond_1
    iget-object v1, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, v1}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/schema/SchemaObject;

    check-cast v1, Lorg/h2/index/Index;

    invoke-interface {v1}, Lorg/h2/index/Index;->getTable()Lorg/h2/table/Table;

    move-result-object v2

    if-ne v2, p0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "index not dropped: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/h2/table/RegularTable;->scanIndex:Lorg/h2/index/Index;

    invoke-interface {v0, p1}, Lorg/h2/index/Index;->remove(Lorg/h2/engine/Session;)V

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/h2/engine/Database;->removeMeta(Lorg/h2/engine/Session;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/h2/table/RegularTable;->scanIndex:Lorg/h2/index/Index;

    iput-object p1, p0, Lorg/h2/table/RegularTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    iput-object p1, p0, Lorg/h2/table/RegularTable;->lockSharedSessions:Ljava/util/HashSet;

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->invalidate()V

    return-void
.end method

.method public removeRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 5

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Lorg/h2/result/Row;->isDeleted()Z

    move-result v0

    const v1, 0x16013

    if-nez v0, :cond_2

    invoke-interface {p2}, Lorg/h2/result/Row;->getSessionId()I

    move-result v0

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getId()I

    move-result v2

    if-nez v0, :cond_0

    invoke-interface {p2, v2}, Lorg/h2/result/Row;->setSessionId(I)V

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getNextModificationDataId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/table/RegularTable;->lastModificationId:J

    iget-object v0, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_4

    :try_start_0
    iget-object v1, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/index/Index;

    invoke-interface {v1, p1, p2}, Lorg/h2/index/Index;->remove(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    const/4 v2, -0x1

    invoke-direct {p0, p1, v1, v2}, Lorg/h2/table/RegularTable;->checkRowCount(Lorg/h2/engine/Session;Lorg/h2/index/Index;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_4
    iget-wide v1, p0, Lorg/h2/table/RegularTable;->rowCount:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lorg/h2/table/RegularTable;->rowCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lorg/h2/table/RegularTable;->analyzeIfRequired(Lorg/h2/engine/Session;)V

    return-void

    :goto_2
    add-int/lit8 v0, v0, 0x1

    :try_start_1
    iget-object v2, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/index/Index;

    invoke-interface {v2, p1, p2}, Lorg/h2/index/Index;->add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lorg/h2/table/RegularTable;->checkRowCount(Lorg/h2/engine/Session;Lorg/h2/index/Index;I)V
    :try_end_1
    .catch Lorg/h2/message/DbException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_5
    invoke-static {v1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :goto_3
    iget-object p2, p0, Lorg/h2/engine/DbObjectBase;->trace:Lorg/h2/message/Trace;

    const-string v0, "could not undo operation"

    invoke-virtual {p2, p1, v0}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw p1
.end method

.method public setCompareMode(Lorg/h2/value/CompareMode;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/table/Table;->compareMode:Lorg/h2/value/CompareMode;

    return-void
.end method

.method public setRowCount(J)V
    .locals 0

    iput-wide p1, p0, Lorg/h2/table/RegularTable;->rowCount:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncate(Lorg/h2/engine/Session;)V
    .locals 2

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getNextModificationDataId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/table/RegularTable;->lastModificationId:J

    iget-object v0, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/h2/table/RegularTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/index/Index;

    invoke-interface {v1, p1}, Lorg/h2/index/Index;->truncate(Lorg/h2/engine/Session;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/h2/table/RegularTable;->rowCount:J

    const/4 p1, 0x0

    iput p1, p0, Lorg/h2/table/RegularTable;->changesSinceAnalyze:I

    return-void
.end method

.method public unlock(Lorg/h2/engine/Session;)V
    .locals 2

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/h2/table/RegularTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "unlock"

    invoke-direct {p0, p1, v0, v1}, Lorg/h2/table/RegularTable;->traceLock(Lorg/h2/engine/Session;ZLjava/lang/String;)V

    iget-object v0, p0, Lorg/h2/table/RegularTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    if-ne v0, p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/table/RegularTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    :cond_1
    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/h2/table/RegularTable;->lockSharedSessions:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lorg/h2/table/RegularTable;->lockSharedSessions:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p1, p0, Lorg/h2/table/RegularTable;->waitingSessions:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    :cond_3
    monitor-exit v0

    goto :goto_3

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    :goto_3
    return-void
.end method
