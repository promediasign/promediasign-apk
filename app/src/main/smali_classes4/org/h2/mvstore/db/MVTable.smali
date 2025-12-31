.class public Lorg/h2/mvstore/db/MVTable;
.super Lorg/h2/table/TableBase;
.source "SourceFile"


# static fields
.field public static final EXCLUSIVE_LOCKS:Lorg/h2/util/DebuggingThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/util/DebuggingThreadLocal<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final SHARED_LOCKS:Lorg/h2/util/DebuggingThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/util/DebuggingThreadLocal<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final WAITING_FOR_LOCK:Lorg/h2/util/DebuggingThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/util/DebuggingThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


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

.field private final lockSharedSessions:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Lorg/h2/engine/Session;",
            "Lorg/h2/engine/Session;",
            ">;"
        }
    .end annotation
.end field

.field private nextAnalyze:I

.field private primaryIndex:Lorg/h2/mvstore/db/MVPrimaryIndex;

.field private rowIdColumn:Lorg/h2/table/Column;

.field private final store:Lorg/h2/mvstore/db/MVTableEngine$Store;

.field private final traceLock:Lorg/h2/message/Trace;

.field private final transactionStore:Lorg/h2/mvstore/db/TransactionStore;

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
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lorg/h2/engine/SysProperties;->THREAD_DEADLOCK_DETECTOR:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/h2/util/DebuggingThreadLocal;

    invoke-direct {v0}, Lorg/h2/util/DebuggingThreadLocal;-><init>()V

    sput-object v0, Lorg/h2/mvstore/db/MVTable;->WAITING_FOR_LOCK:Lorg/h2/util/DebuggingThreadLocal;

    new-instance v0, Lorg/h2/util/DebuggingThreadLocal;

    invoke-direct {v0}, Lorg/h2/util/DebuggingThreadLocal;-><init>()V

    sput-object v0, Lorg/h2/mvstore/db/MVTable;->EXCLUSIVE_LOCKS:Lorg/h2/util/DebuggingThreadLocal;

    new-instance v0, Lorg/h2/util/DebuggingThreadLocal;

    invoke-direct {v0}, Lorg/h2/util/DebuggingThreadLocal;-><init>()V

    :goto_0
    sput-object v0, Lorg/h2/mvstore/db/MVTable;->SHARED_LOCKS:Lorg/h2/util/DebuggingThreadLocal;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lorg/h2/mvstore/db/MVTable;->WAITING_FOR_LOCK:Lorg/h2/util/DebuggingThreadLocal;

    sput-object v0, Lorg/h2/mvstore/db/MVTable;->EXCLUSIVE_LOCKS:Lorg/h2/util/DebuggingThreadLocal;

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>(Lorg/h2/command/ddl/CreateTableData;Lorg/h2/mvstore/db/MVTableEngine$Store;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/h2/table/TableBase;-><init>(Lorg/h2/command/ddl/CreateTableData;)V

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/mvstore/db/MVTable;->indexes:Ljava/util/ArrayList;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/h2/mvstore/db/MVTable;->lockSharedSessions:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lorg/h2/mvstore/db/MVTable;->waitingSessions:Ljava/util/ArrayDeque;

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    iget v0, v0, Lorg/h2/engine/DbSettings;->analyzeAuto:I

    iput v0, p0, Lorg/h2/mvstore/db/MVTable;->nextAnalyze:I

    iput-object p2, p0, Lorg/h2/mvstore/db/MVTable;->store:Lorg/h2/mvstore/db/MVTableEngine$Store;

    invoke-virtual {p2}, Lorg/h2/mvstore/db/MVTableEngine$Store;->getTransactionStore()Lorg/h2/mvstore/db/TransactionStore;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/mvstore/db/MVTable;->transactionStore:Lorg/h2/mvstore/db/TransactionStore;

    iget-boolean p1, p1, Lorg/h2/command/ddl/CreateTableData;->isHidden:Z

    iput-boolean p1, p0, Lorg/h2/table/Table;->isHidden:Z

    invoke-virtual {p0}, Lorg/h2/table/Table;->getColumns()[Lorg/h2/table/Column;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lorg/h2/table/Column;->getType()I

    move-result v1

    invoke-static {v1}, Lorg/h2/value/DataType;->isLargeObject(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/h2/mvstore/db/MVTable;->containsLargeObject:Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Lorg/h2/engine/Database;->getTrace(I)Lorg/h2/message/Trace;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/mvstore/db/MVTable;->traceLock:Lorg/h2/message/Trace;

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

    invoke-static {p1, p2}, Lorg/h2/mvstore/db/MVTable;->sortRows(Ljava/util/ArrayList;Lorg/h2/index/Index;)V

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

    iget v0, p0, Lorg/h2/mvstore/db/MVTable;->nextAnalyze:I

    if-eqz v0, :cond_2

    iget v1, p0, Lorg/h2/mvstore/db/MVTable;->changesSinceAnalyze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/h2/mvstore/db/MVTable;->changesSinceAnalyze:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lorg/h2/mvstore/db/MVTable;->changesSinceAnalyze:I

    mul-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_1

    iput v0, p0, Lorg/h2/mvstore/db/MVTable;->nextAnalyze:I

    :cond_1
    invoke-virtual {p1, p0}, Lorg/h2/engine/Session;->markTableForAnalyze(Lorg/h2/table/Table;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private doLock1(Lorg/h2/engine/Session;IZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const-string v3, "requesting for"

    invoke-direct {v0, v1, v2, v3}, Lorg/h2/mvstore/db/MVTable;->traceLock(Lorg/h2/engine/Session;ZLjava/lang/String;)V

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-wide v7, v3

    const/4 v6, 0x0

    :goto_0
    iget-object v9, v0, Lorg/h2/mvstore/db/MVTable;->waitingSessions:Ljava/util/ArrayDeque;

    invoke-virtual {v9}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_0

    invoke-direct/range {p0 .. p3}, Lorg/h2/mvstore/db/MVTable;->doLock2(Lorg/h2/engine/Session;IZ)Z

    move-result v9

    if-eqz v9, :cond_0

    return-void

    :cond_0
    if-eqz v6, :cond_2

    const/4 v9, 0x0

    invoke-virtual {v0, v1, v9, v9}, Lorg/h2/mvstore/db/MVTable;->checkDeadlock(Lorg/h2/engine/Session;Lorg/h2/engine/Session;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v9

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    const v1, 0x9c41

    invoke-static {v9, v2}, Lorg/h2/mvstore/db/MVTable;->getDeadlockDetails(Ljava/util/ArrayList;Z)Ljava/lang/String;

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

    invoke-direct {v0, v1, v2, v11}, Lorg/h2/mvstore/db/MVTable;->traceLock(Lorg/h2/engine/Session;ZLjava/lang/String;)V

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
    invoke-direct/range {p0 .. p0}, Lorg/h2/mvstore/db/MVTable;->getLockSyncObject()Ljava/lang/Object;

    move-result-object v11

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

    invoke-direct {v0, v1, v2, v3}, Lorg/h2/mvstore/db/MVTable;->traceLock(Lorg/h2/engine/Session;ZLjava/lang/String;)V

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

    if-eqz p3, :cond_5

    iget-object p2, p0, Lorg/h2/mvstore/db/MVTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    if-nez p2, :cond_9

    iget-object p2, p0, Lorg/h2/mvstore/db/MVTable;->lockSharedSessions:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lj$/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "added for"

    invoke-direct {p0, p1, p3, p2}, Lorg/h2/mvstore/db/MVTable;->traceLock(Lorg/h2/engine/Session;ZLjava/lang/String;)V

    invoke-virtual {p1, p0}, Lorg/h2/engine/Session;->addLock(Lorg/h2/table/Table;)V

    iput-object p1, p0, Lorg/h2/mvstore/db/MVTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    sget-boolean p1, Lorg/h2/engine/SysProperties;->THREAD_DEADLOCK_DETECTOR:Z

    if-eqz p1, :cond_1

    sget-object p1, Lorg/h2/mvstore/db/MVTable;->EXCLUSIVE_LOCKS:Lorg/h2/util/DebuggingThreadLocal;

    invoke-virtual {p1}, Lorg/h2/util/DebuggingThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Lorg/h2/util/DebuggingThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lorg/h2/util/DebuggingThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return v0

    :cond_2
    iget-object p2, p0, Lorg/h2/mvstore/db/MVTable;->lockSharedSessions:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lj$/util/concurrent/ConcurrentHashMap;->size()I

    move-result p2

    if-ne p2, v0, :cond_9

    iget-object p2, p0, Lorg/h2/mvstore/db/MVTable;->lockSharedSessions:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    const-string p2, "add (upgraded) for "

    invoke-direct {p0, p1, p3, p2}, Lorg/h2/mvstore/db/MVTable;->traceLock(Lorg/h2/engine/Session;ZLjava/lang/String;)V

    iput-object p1, p0, Lorg/h2/mvstore/db/MVTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    sget-boolean p1, Lorg/h2/engine/SysProperties;->THREAD_DEADLOCK_DETECTOR:Z

    if-eqz p1, :cond_4

    sget-object p1, Lorg/h2/mvstore/db/MVTable;->EXCLUSIVE_LOCKS:Lorg/h2/util/DebuggingThreadLocal;

    invoke-virtual {p1}, Lorg/h2/util/DebuggingThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_3

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Lorg/h2/util/DebuggingThreadLocal;->set(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p1}, Lorg/h2/util/DebuggingThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return v0

    :cond_5
    iget-object v1, p0, Lorg/h2/mvstore/db/MVTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    if-nez v1, :cond_9

    const/4 v1, 0x3

    if-ne p2, v1, :cond_6

    iget-object p2, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {p2}, Lorg/h2/engine/Database;->isMultiThreaded()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {p2}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result p2

    if-nez p2, :cond_6

    return v0

    :cond_6
    iget-object p2, p0, Lorg/h2/mvstore/db/MVTable;->lockSharedSessions:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "ok"

    invoke-direct {p0, p1, p3, p2}, Lorg/h2/mvstore/db/MVTable;->traceLock(Lorg/h2/engine/Session;ZLjava/lang/String;)V

    invoke-virtual {p1, p0}, Lorg/h2/engine/Session;->addLock(Lorg/h2/table/Table;)V

    iget-object p2, p0, Lorg/h2/mvstore/db/MVTable;->lockSharedSessions:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, p1}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p1, Lorg/h2/engine/SysProperties;->THREAD_DEADLOCK_DETECTOR:Z

    if-eqz p1, :cond_8

    sget-object p1, Lorg/h2/mvstore/db/MVTable;->SHARED_LOCKS:Lorg/h2/util/DebuggingThreadLocal;

    invoke-virtual {p1}, Lorg/h2/util/DebuggingThreadLocal;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_7

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Lorg/h2/util/DebuggingThreadLocal;->set(Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {p1}, Lorg/h2/util/DebuggingThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    return v0

    :cond_9
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

    instance-of v7, v8, Lorg/h2/mvstore/db/MVTable;

    if-eqz v7, :cond_3

    check-cast v8, Lorg/h2/mvstore/db/MVTable;

    iget-object v7, v8, Lorg/h2/mvstore/db/MVTable;->lockExclusiveSession:Lorg/h2/engine/Session;

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

.method private getLockSyncObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isMultiThreaded()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    return-object v0
.end method

.method private getMainIndexColumn(Lorg/h2/index/IndexType;[Lorg/h2/table/IndexColumn;)I
    .locals 2

    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->primaryIndex:Lorg/h2/mvstore/db/MVPrimaryIndex;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getMainIndexColumn()I

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

.method private rebuildIndex(Lorg/h2/engine/Session;Lorg/h2/mvstore/db/MVIndex;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v0, p2, Lorg/h2/mvstore/db/MVSpatialIndex;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/h2/mvstore/db/MVTable;->rebuildIndexBlockMerge(Lorg/h2/engine/Session;Lorg/h2/mvstore/db/MVIndex;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/h2/mvstore/db/MVTable;->rebuildIndexBuffered(Lorg/h2/engine/Session;Lorg/h2/index/Index;)V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :goto_2
    invoke-virtual {p0}, Lorg/h2/schema/SchemaObjectBase;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/h2/schema/Schema;->freeUniqueName(Ljava/lang/String;)V

    :try_start_1
    invoke-interface {p2, p1}, Lorg/h2/index/Index;->remove(Lorg/h2/engine/Session;)V
    :try_end_1
    .catch Lorg/h2/message/DbException; {:try_start_1 .. :try_end_1} :catch_1

    throw v0

    :catch_1
    move-exception p1

    iget-object p2, p0, Lorg/h2/engine/DbObjectBase;->trace:Lorg/h2/message/Trace;

    const-string p3, "could not remove index"

    invoke-virtual {p2, p1, p3}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw p1
.end method

.method private rebuildIndexBlockMerge(Lorg/h2/engine/Session;Lorg/h2/mvstore/db/MVIndex;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    instance-of v3, v2, Lorg/h2/mvstore/db/MVSpatialIndex;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    invoke-direct/range {p0 .. p2}, Lorg/h2/mvstore/db/MVTable;->rebuildIndexBuffered(Lorg/h2/engine/Session;Lorg/h2/index/Index;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lorg/h2/mvstore/db/MVTable;->getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-interface {v3, v1}, Lorg/h2/index/Index;->getRowCount(Lorg/h2/engine/Session;)J

    .line 19
    .line 20
    .line 21
    move-result-wide v4

    .line 22
    const/4 v6, 0x0

    .line 23
    invoke-interface {v3, v1, v6, v6}, Lorg/h2/index/Index;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual/range {p1 .. p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-virtual {v6}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    iget-object v7, v0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    .line 36
    .line 37
    invoke-virtual {v7}, Lorg/h2/engine/Database;->getMaxMemoryRows()I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    div-int/lit8 v7, v7, 0x2

    .line 42
    .line 43
    invoke-static {v7}, Lorg/h2/util/New;->arrayList(I)Ljava/util/ArrayList;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    new-instance v9, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual/range {p0 .. p0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v10, ":"

    .line 60
    .line 61
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-interface/range {p2 .. p2}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v10

    .line 68
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    invoke-static {v4, v5}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    .line 76
    .line 77
    .line 78
    move-result v10

    .line 79
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    .line 80
    .line 81
    .line 82
    move-result-object v11

    .line 83
    const-wide/16 v14, 0x0

    .line 84
    .line 85
    :goto_0
    invoke-interface {v3}, Lorg/h2/index/Cursor;->next()Z

    .line 86
    .line 87
    .line 88
    move-result v16

    .line 89
    if-eqz v16, :cond_2

    .line 90
    .line 91
    invoke-interface {v3}, Lorg/h2/index/Cursor;->get()Lorg/h2/result/Row;

    .line 92
    .line 93
    .line 94
    move-result-object v12

    .line 95
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    iget-object v12, v0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    .line 99
    .line 100
    const-wide/16 v17, 0x1

    .line 101
    .line 102
    add-long v19, v14, v17

    .line 103
    .line 104
    invoke-static {v14, v15}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    .line 105
    .line 106
    .line 107
    move-result v13

    .line 108
    const/4 v14, 0x1

    .line 109
    invoke-virtual {v12, v14, v9, v13, v10}, Lorg/h2/engine/Database;->setProgress(ILjava/lang/String;II)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 113
    .line 114
    .line 115
    move-result v12

    .line 116
    if-lt v12, v7, :cond_1

    .line 117
    .line 118
    invoke-static {v8, v2}, Lorg/h2/mvstore/db/MVTable;->sortRows(Ljava/util/ArrayList;Lorg/h2/index/Index;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6}, Lorg/h2/mvstore/db/MVTableEngine$Store;->nextTemporaryMapName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v12

    .line 125
    invoke-interface {v2, v8, v12}, Lorg/h2/mvstore/db/MVIndex;->addRowsToBuffer(Ljava/util/List;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 132
    .line 133
    .line 134
    :cond_1
    sub-long v4, v4, v17

    .line 135
    .line 136
    move-wide/from16 v14, v19

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_2
    invoke-static {v8, v2}, Lorg/h2/mvstore/db/MVTable;->sortRows(Ljava/util/ArrayList;Lorg/h2/index/Index;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    if-lez v3, :cond_3

    .line 147
    .line 148
    invoke-virtual {v6}, Lorg/h2/mvstore/db/MVTableEngine$Store;->nextTemporaryMapName()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-interface {v2, v8, v1}, Lorg/h2/mvstore/db/MVIndex;->addRowsToBuffer(Ljava/util/List;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 159
    .line 160
    .line 161
    invoke-interface {v2, v11}, Lorg/h2/mvstore/db/MVIndex;->addBufferedRows(Ljava/util/List;)V

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_3
    invoke-static {v1, v8, v2}, Lorg/h2/mvstore/db/MVTable;->addRowsToIndex(Lorg/h2/engine/Session;Ljava/util/ArrayList;Lorg/h2/index/Index;)V

    .line 166
    .line 167
    .line 168
    :goto_1
    sget-boolean v1, Lorg/h2/engine/SysProperties;->CHECK:Z

    .line 169
    .line 170
    if-eqz v1, :cond_4

    .line 171
    .line 172
    const-wide/16 v1, 0x0

    .line 173
    .line 174
    cmp-long v3, v4, v1

    .line 175
    .line 176
    if-eqz v3, :cond_4

    .line 177
    .line 178
    const-string v1, "rowcount remaining="

    .line 179
    .line 180
    const-string v2, " "

    .line 181
    .line 182
    invoke-static {v1, v4, v5, v2}, Ls/a;->e(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual/range {p0 .. p0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-static {v1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 198
    .line 199
    .line 200
    :cond_4
    return-void
.end method

.method private rebuildIndexBuffered(Lorg/h2/engine/Session;Lorg/h2/index/Index;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p1}, Lorg/h2/mvstore/db/MVTable;->getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-interface {v3, v1}, Lorg/h2/index/Index;->getRowCount(Lorg/h2/engine/Session;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    const/4 v6, 0x0

    .line 16
    invoke-interface {v3, v1, v6, v6}, Lorg/h2/index/Index;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    iget-object v6, v0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    .line 21
    .line 22
    invoke-virtual {v6}, Lorg/h2/engine/Database;->getMaxMemoryRows()I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    int-to-long v6, v6

    .line 27
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 28
    .line 29
    .line 30
    move-result-wide v6

    .line 31
    long-to-int v7, v6

    .line 32
    invoke-static {v7}, Lorg/h2/util/New;->arrayList(I)Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    new-instance v8, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual/range {p0 .. p0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v9, ":"

    .line 49
    .line 50
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-interface/range {p2 .. p2}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    invoke-static {v4, v5}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    const-wide/16 v10, 0x0

    .line 69
    .line 70
    move-wide v12, v10

    .line 71
    :goto_0
    invoke-interface {v3}, Lorg/h2/index/Cursor;->next()Z

    .line 72
    .line 73
    .line 74
    move-result v14

    .line 75
    if-eqz v14, :cond_1

    .line 76
    .line 77
    invoke-interface {v3}, Lorg/h2/index/Cursor;->get()Lorg/h2/result/Row;

    .line 78
    .line 79
    .line 80
    move-result-object v14

    .line 81
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    iget-object v14, v0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    .line 85
    .line 86
    const-wide/16 v15, 0x1

    .line 87
    .line 88
    add-long v17, v12, v15

    .line 89
    .line 90
    invoke-static {v12, v13}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    .line 91
    .line 92
    .line 93
    move-result v12

    .line 94
    const/4 v13, 0x1

    .line 95
    invoke-virtual {v14, v13, v8, v12, v9}, Lorg/h2/engine/Database;->setProgress(ILjava/lang/String;II)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 99
    .line 100
    .line 101
    move-result v12

    .line 102
    if-lt v12, v7, :cond_0

    .line 103
    .line 104
    invoke-static {v1, v6, v2}, Lorg/h2/mvstore/db/MVTable;->addRowsToIndex(Lorg/h2/engine/Session;Ljava/util/ArrayList;Lorg/h2/index/Index;)V

    .line 105
    .line 106
    .line 107
    :cond_0
    sub-long/2addr v4, v15

    .line 108
    move-wide/from16 v12, v17

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_1
    invoke-static {v1, v6, v2}, Lorg/h2/mvstore/db/MVTable;->addRowsToIndex(Lorg/h2/engine/Session;Ljava/util/ArrayList;Lorg/h2/index/Index;)V

    .line 112
    .line 113
    .line 114
    sget-boolean v1, Lorg/h2/engine/SysProperties;->CHECK:Z

    .line 115
    .line 116
    if-eqz v1, :cond_2

    .line 117
    .line 118
    cmp-long v1, v4, v10

    .line 119
    .line 120
    if-eqz v1, :cond_2

    .line 121
    .line 122
    const-string v1, "rowcount remaining="

    .line 123
    .line 124
    const-string v2, " "

    .line 125
    .line 126
    invoke-static {v1, v4, v5, v2}, Ls/a;->e(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual/range {p0 .. p0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-static {v1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 142
    .line 143
    .line 144
    :cond_2
    return-void
.end method

.method private static sortRows(Ljava/util/ArrayList;Lorg/h2/index/Index;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/result/Row;",
            ">;",
            "Lorg/h2/index/Index;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/h2/mvstore/db/MVTable$1;

    invoke-direct {v0, p1}, Lorg/h2/mvstore/db/MVTable$1;-><init>(Lorg/h2/index/Index;)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private traceLock(Lorg/h2/engine/Session;ZLjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->traceLock:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->traceLock:Lorg/h2/message/Trace;

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
    .locals 14

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v5, p4

    invoke-virtual/range {p5 .. p5}, Lorg/h2/index/IndexType;->isPrimaryKey()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    array-length v0, v5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, v5, v3

    iget-object v4, v4, Lorg/h2/table/IndexColumn;->column:Lorg/h2/table/Column;

    invoke-virtual {v4}, Lorg/h2/table/Column;->isNullable()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4, v2}, Lorg/h2/table/Column;->setPrimaryKey(Z)V

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
    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->isTemporary()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/h2/table/TableBase;->isGlobalTemporary()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    if-nez v9, :cond_3

    iget-object v0, v7, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, p1}, Lorg/h2/engine/Database;->lockMeta(Lorg/h2/engine/Session;)Z

    :cond_3
    move-object/from16 v6, p5

    invoke-direct {p0, v6, v5}, Lorg/h2/mvstore/db/MVTable;->getMainIndexColumn(Lorg/h2/index/IndexType;[Lorg/h2/table/IndexColumn;)I

    move-result v0

    iget-object v1, v7, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->isStarting()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_4

    iget-object v1, v7, Lorg/h2/mvstore/db/MVTable;->transactionStore:Lorg/h2/mvstore/db/TransactionStore;

    iget-object v1, v1, Lorg/h2/mvstore/db/TransactionStore;->store:Lorg/h2/mvstore/MVStore;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "index."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/h2/mvstore/MVStore;->hasMap(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_2
    const/4 v0, -0x1

    goto :goto_3

    :cond_4
    move/from16 v4, p3

    iget-object v1, v7, Lorg/h2/mvstore/db/MVTable;->primaryIndex:Lorg/h2/mvstore/db/MVPrimaryIndex;

    invoke-virtual {v1}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getRowCountMax()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v1, v10, v12

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    if-eq v0, v2, :cond_6

    iget-object v1, v7, Lorg/h2/mvstore/db/MVTable;->primaryIndex:Lorg/h2/mvstore/db/MVPrimaryIndex;

    invoke-virtual {v1, v0}, Lorg/h2/mvstore/db/MVPrimaryIndex;->setMainIndexColumn(I)V

    new-instance v10, Lorg/h2/mvstore/db/MVDelegateIndex;

    iget-object v5, v7, Lorg/h2/mvstore/db/MVTable;->primaryIndex:Lorg/h2/mvstore/db/MVPrimaryIndex;

    move-object v0, v10

    move-object v1, p0

    move/from16 v2, p3

    move-object/from16 v3, p2

    move-object v4, v5

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/h2/mvstore/db/MVDelegateIndex;-><init>(Lorg/h2/mvstore/db/MVTable;ILjava/lang/String;Lorg/h2/mvstore/db/MVPrimaryIndex;Lorg/h2/index/IndexType;)V

    goto :goto_4

    :cond_6
    invoke-virtual/range {p5 .. p5}, Lorg/h2/index/IndexType;->isSpatial()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v10, Lorg/h2/mvstore/db/MVSpatialIndex;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v1

    move-object v0, v10

    move-object v2, p0

    move/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/h2/mvstore/db/MVSpatialIndex;-><init>(Lorg/h2/engine/Database;Lorg/h2/mvstore/db/MVTable;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    goto :goto_4

    :cond_7
    new-instance v10, Lorg/h2/mvstore/db/MVSecondaryIndex;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v1

    move-object v0, v10

    move-object v2, p0

    move/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/h2/mvstore/db/MVSecondaryIndex;-><init>(Lorg/h2/engine/Database;Lorg/h2/mvstore/db/MVTable;ILjava/lang/String;[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    :goto_4
    invoke-interface {v10}, Lorg/h2/index/Index;->needRebuild()Z

    move-result v0

    if-eqz v0, :cond_8

    move-object/from16 v0, p2

    invoke-direct {p0, p1, v10, v0}, Lorg/h2/mvstore/db/MVTable;->rebuildIndex(Lorg/h2/engine/Session;Lorg/h2/mvstore/db/MVIndex;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->isTemporary()Z

    move-result v0

    invoke-interface {v10, v0}, Lorg/h2/engine/DbObject;->setTemporary(Z)V

    invoke-interface {v10}, Lorg/h2/engine/DbObject;->getCreateSQL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    move-object/from16 v0, p7

    invoke-interface {v10, v0}, Lorg/h2/engine/DbObject;->setComment(Ljava/lang/String;)V

    if-eqz v9, :cond_9

    invoke-virtual {p1, v10}, Lorg/h2/engine/Session;->addLocalTempTableIndex(Lorg/h2/index/Index;)V

    goto :goto_5

    :cond_9
    iget-object v0, v7, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, p1, v10}, Lorg/h2/engine/Database;->addSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    :cond_a
    :goto_5
    iget-object v0, v7, Lorg/h2/mvstore/db/MVTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->setModified()V

    return-object v10
.end method

.method public addRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 7

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getNextModificationDataId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/mvstore/db/MVTable;->lastModificationId:J

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVTable;->getTransaction(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->setSavepoint()J

    move-result-wide v1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lorg/h2/mvstore/db/MVTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    iget-object v6, p0, Lorg/h2/mvstore/db/MVTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/index/Index;

    invoke-interface {v6, p1, p2}, Lorg/h2/index/Index;->add(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception v4

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lorg/h2/mvstore/db/MVTable;->analyzeIfRequired(Lorg/h2/engine/Session;)V

    return-void

    :goto_1
    invoke-virtual {v0, v1, v2}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->rollbackToSavepoint(J)V

    invoke-static {v4}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/message/DbException;->getErrorCode()I

    move-result v1

    const/16 v2, 0x5bd1

    if-ne v1, v2, :cond_3

    :goto_2
    iget-object v1, p0, Lorg/h2/mvstore/db/MVTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_3

    iget-object v1, p0, Lorg/h2/mvstore/db/MVTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/index/Index;

    invoke-interface {v1}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/index/IndexType;->isUnique()Z

    move-result v2

    if-eqz v2, :cond_2

    instance-of v2, v1, Lorg/h2/index/MultiVersionIndex;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lorg/h2/index/MultiVersionIndex;

    invoke-virtual {v2, p1, p2}, Lorg/h2/index/MultiVersionIndex;->isUncommittedFromOtherSession(Lorg/h2/engine/Session;Lorg/h2/result/Row;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    const p1, 0x16013

    invoke-interface {v1}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    throw v0
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

    const-class v0, Lorg/h2/mvstore/db/MVTable;

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

    iget-object v2, p0, Lorg/h2/mvstore/db/MVTable;->lockSharedSessions:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lj$/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

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
    iget-object v2, p0, Lorg/h2/mvstore/db/MVTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    if-nez v1, :cond_6

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lorg/h2/engine/Session;->getWaitForLock()Lorg/h2/table/Table;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3, v2, p2, p3}, Lorg/h2/table/Table;->checkDeadlock(Lorg/h2/engine/Session;Lorg/h2/engine/Session;Ljava/util/Set;)Ljava/util/ArrayList;

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
    .locals 0

    return-void
.end method

.method public commit()V
    .locals 2

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getNextModificationDataId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/mvstore/db/MVTable;->lastModificationId:J

    :cond_0
    return-void
.end method

.method public convertException(Ljava/lang/IllegalStateException;)Lorg/h2/message/DbException;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->getErrorCode(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->store:Lorg/h2/mvstore/db/MVTableEngine$Store;

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/db/MVTableEngine$Store;->convertIllegalStateException(Ljava/lang/IllegalStateException;)Lorg/h2/message/DbException;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x16013

    invoke-static {v1, p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public getContainsLargeObject()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/mvstore/db/MVTable;->containsLargeObject:Z

    return v0
.end method

.method public getDiskSpaceUsed()J
    .locals 2

    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->primaryIndex:Lorg/h2/mvstore/db/MVPrimaryIndex;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getDiskSpaceUsed()J

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

    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->indexes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMapName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->primaryIndex:Lorg/h2/mvstore/db/MVPrimaryIndex;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getMapName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxDataModificationId()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/mvstore/db/MVTable;->lastModificationId:J

    return-wide v0
.end method

.method public getRow(Lorg/h2/engine/Session;J)Lorg/h2/result/Row;
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->primaryIndex:Lorg/h2/mvstore/db/MVPrimaryIndex;

    invoke-virtual {v0, p1, p2, p3}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getRow(Lorg/h2/engine/Session;J)Lorg/h2/result/Row;

    move-result-object p1

    return-object p1
.end method

.method public getRowCount(Lorg/h2/engine/Session;)J
    .locals 2

    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->primaryIndex:Lorg/h2/mvstore/db/MVPrimaryIndex;

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getRowCount(Lorg/h2/engine/Session;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRowCountApproximation()J
    .locals 2

    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->primaryIndex:Lorg/h2/mvstore/db/MVPrimaryIndex;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVPrimaryIndex;->getRowCountApproximation()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRowIdColumn()Lorg/h2/table/Column;
    .locals 3

    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->rowIdColumn:Lorg/h2/table/Column;

    if-nez v0, :cond_0

    new-instance v0, Lorg/h2/table/Column;

    const-string v1, "_ROWID_"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/h2/mvstore/db/MVTable;->rowIdColumn:Lorg/h2/table/Column;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Lorg/h2/table/Column;->setTable(Lorg/h2/table/Table;I)V

    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->rowIdColumn:Lorg/h2/table/Column;

    return-object v0
.end method

.method public getScanIndex(Lorg/h2/engine/Session;)Lorg/h2/index/Index;
    .locals 0

    iget-object p1, p0, Lorg/h2/mvstore/db/MVTable;->primaryIndex:Lorg/h2/mvstore/db/MVPrimaryIndex;

    return-object p1
.end method

.method public getTableType()Lorg/h2/table/TableType;
    .locals 1

    sget-object v0, Lorg/h2/table/TableType;->TABLE:Lorg/h2/table/TableType;

    return-object v0
.end method

.method public getTransaction(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$Transaction;
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/h2/mvstore/db/MVTable;->transactionStore:Lorg/h2/mvstore/db/TransactionStore;

    invoke-virtual {p1}, Lorg/h2/mvstore/db/TransactionStore;->begin()Lorg/h2/mvstore/db/TransactionStore$Transaction;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getTransaction()Lorg/h2/mvstore/db/TransactionStore$Transaction;

    move-result-object p1

    return-object p1
.end method

.method public getUniqueIndex()Lorg/h2/index/Index;
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->primaryIndex:Lorg/h2/mvstore/db/MVPrimaryIndex;

    return-object v0
.end method

.method public init(Lorg/h2/engine/Session;)V
    .locals 7

    new-instance v6, Lorg/h2/mvstore/db/MVPrimaryIndex;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v1

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v3

    invoke-virtual {p0}, Lorg/h2/table/Table;->getColumns()[Lorg/h2/table/Column;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/table/IndexColumn;->wrap([Lorg/h2/table/Column;)[Lorg/h2/table/IndexColumn;

    move-result-object v4

    const/4 p1, 0x1

    invoke-static {p1}, Lorg/h2/index/IndexType;->createScan(Z)Lorg/h2/index/IndexType;

    move-result-object v5

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/h2/mvstore/db/MVPrimaryIndex;-><init>(Lorg/h2/engine/Database;Lorg/h2/mvstore/db/MVTable;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;)V

    iput-object v6, p0, Lorg/h2/mvstore/db/MVTable;->primaryIndex:Lorg/h2/mvstore/db/MVPrimaryIndex;

    iget-object p1, p0, Lorg/h2/mvstore/db/MVTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isDeterministic()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLockedExclusively()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->lockExclusiveSession:Lorg/h2/engine/Session;

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

    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isMVStore()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public lock(Lorg/h2/engine/Session;ZZ)Z
    .locals 5

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getLockMode()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p3, :cond_2

    iget-object p3, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {p3}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result p3

    if-eqz p3, :cond_2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lorg/h2/mvstore/db/MVTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    if-nez p3, :cond_2

    return v1

    :cond_2
    :goto_0
    iget-object p3, p0, Lorg/h2/mvstore/db/MVTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    const/4 v2, 0x1

    if-ne p3, p1, :cond_3

    return v2

    :cond_3
    if-nez p2, :cond_4

    iget-object p3, p0, Lorg/h2/mvstore/db/MVTable;->lockSharedSessions:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p1}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    return v2

    :cond_4
    invoke-direct {p0}, Lorg/h2/mvstore/db/MVTable;->getLockSyncObject()Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3

    if-nez p2, :cond_5

    :try_start_0
    iget-object v3, p0, Lorg/h2/mvstore/db/MVTable;->lockSharedSessions:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    monitor-exit p3

    return v2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {p1, p0, v2}, Lorg/h2/engine/Session;->setWaitForLock(Lorg/h2/table/Table;Ljava/lang/Thread;)V

    sget-boolean v2, Lorg/h2/engine/SysProperties;->THREAD_DEADLOCK_DETECTOR:Z

    if-eqz v2, :cond_6

    sget-object v3, Lorg/h2/mvstore/db/MVTable;->WAITING_FOR_LOCK:Lorg/h2/util/DebuggingThreadLocal;

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/h2/util/DebuggingThreadLocal;->set(Ljava/lang/Object;)V

    :cond_6
    iget-object v3, p0, Lorg/h2/mvstore/db/MVTable;->waitingSessions:Ljava/util/ArrayDeque;

    invoke-virtual {v3, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    :try_start_1
    invoke-direct {p0, p1, v0, p2}, Lorg/h2/mvstore/db/MVTable;->doLock1(Lorg/h2/engine/Session;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p1, v3, v3}, Lorg/h2/engine/Session;->setWaitForLock(Lorg/h2/table/Table;Ljava/lang/Thread;)V

    if-eqz v2, :cond_7

    sget-object p2, Lorg/h2/mvstore/db/MVTable;->WAITING_FOR_LOCK:Lorg/h2/util/DebuggingThreadLocal;

    invoke-virtual {p2}, Lorg/h2/util/DebuggingThreadLocal;->remove()V

    :cond_7
    iget-object p2, p0, Lorg/h2/mvstore/db/MVTable;->waitingSessions:Ljava/util/ArrayDeque;

    invoke-virtual {p2, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    monitor-exit p3

    return v1

    :catchall_1
    move-exception p2

    invoke-virtual {p1, v3, v3}, Lorg/h2/engine/Session;->setWaitForLock(Lorg/h2/table/Table;Ljava/lang/Thread;)V

    sget-boolean v0, Lorg/h2/engine/SysProperties;->THREAD_DEADLOCK_DETECTOR:Z

    if-eqz v0, :cond_8

    sget-object v0, Lorg/h2/mvstore/db/MVTable;->WAITING_FOR_LOCK:Lorg/h2/util/DebuggingThreadLocal;

    invoke-virtual {v0}, Lorg/h2/util/DebuggingThreadLocal;->remove()V

    :cond_8
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->waitingSessions:Ljava/util/ArrayDeque;

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

    iget-boolean v0, p0, Lorg/h2/mvstore/db/MVTable;->containsLargeObject:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVTable;->truncate(Lorg/h2/engine/Session;)V

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object v0

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/h2/store/LobStorageInterface;->removeAllForTable(I)V

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, p1}, Lorg/h2/engine/Database;->lockMeta(Lorg/h2/engine/Session;)Z

    :cond_0
    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/h2/mvstore/db/MVTableEngine$Store;->removeTable(Lorg/h2/mvstore/db/MVTable;)V

    invoke-super {p0, p1}, Lorg/h2/table/Table;->removeChildrenAndResources(Lorg/h2/engine/Session;)V

    :goto_0
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1, p1, v0}, Lorg/h2/engine/Database;->removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V

    :cond_1
    iget-object v1, p0, Lorg/h2/mvstore/db/MVTable;->indexes:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->primaryIndex:Lorg/h2/mvstore/db/MVPrimaryIndex;

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/db/MVPrimaryIndex;->remove(Lorg/h2/engine/Session;)V

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/h2/engine/Database;->removeMeta(Lorg/h2/engine/Session;I)V

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVTable;->close(Lorg/h2/engine/Session;)V

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->invalidate()V

    return-void
.end method

.method public removeRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    .locals 5

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getNextModificationDataId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/mvstore/db/MVTable;->lastModificationId:J

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVTable;->getTransaction(Lorg/h2/engine/Session;)Lorg/h2/mvstore/db/TransactionStore$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->setSavepoint()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lorg/h2/mvstore/db/MVTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_0

    iget-object v4, p0, Lorg/h2/mvstore/db/MVTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/index/Index;

    invoke-interface {v4, p1, p2}, Lorg/h2/index/Index;->remove(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lorg/h2/mvstore/db/MVTable;->analyzeIfRequired(Lorg/h2/engine/Session;)V

    return-void

    :goto_1
    invoke-virtual {v0, v1, v2}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->rollbackToSavepoint(J)V

    invoke-static {p1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
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

    iput-wide v0, p0, Lorg/h2/mvstore/db/MVTable;->lastModificationId:J

    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/h2/mvstore/db/MVTable;->indexes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/index/Index;

    invoke-interface {v1, p1}, Lorg/h2/index/Index;->truncate(Lorg/h2/engine/Session;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lorg/h2/mvstore/db/MVTable;->changesSinceAnalyze:I

    return-void
.end method

.method public unlock(Lorg/h2/engine/Session;)V
    .locals 2

    iget-object v0, p0, Lorg/h2/engine/DbObjectBase;->database:Lorg/h2/engine/Database;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "unlock"

    invoke-direct {p0, p1, v0, v1}, Lorg/h2/mvstore/db/MVTable;->traceLock(Lorg/h2/engine/Session;ZLjava/lang/String;)V

    iget-object v0, p0, Lorg/h2/mvstore/db/MVTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    if-ne v0, p1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/mvstore/db/MVTable;->lockExclusiveSession:Lorg/h2/engine/Session;

    sget-boolean v0, Lorg/h2/engine/SysProperties;->THREAD_DEADLOCK_DETECTOR:Z

    if-eqz v0, :cond_1

    sget-object v0, Lorg/h2/mvstore/db/MVTable;->EXCLUSIVE_LOCKS:Lorg/h2/util/DebuggingThreadLocal;

    invoke-virtual {v0}, Lorg/h2/util/DebuggingThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/h2/util/DebuggingThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {p0}, Lorg/h2/mvstore/db/MVTable;->getLockSyncObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/h2/mvstore/db/MVTable;->lockSharedSessions:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lorg/h2/mvstore/db/MVTable;->lockSharedSessions:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p1, Lorg/h2/engine/SysProperties;->THREAD_DEADLOCK_DETECTOR:Z

    if-eqz p1, :cond_2

    sget-object p1, Lorg/h2/mvstore/db/MVTable;->SHARED_LOCKS:Lorg/h2/util/DebuggingThreadLocal;

    invoke-virtual {p1}, Lorg/h2/util/DebuggingThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/h2/util/DebuggingThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p1, p0, Lorg/h2/mvstore/db/MVTable;->waitingSessions:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0}, Lorg/h2/mvstore/db/MVTable;->getLockSyncObject()Ljava/lang/Object;

    move-result-object p1

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
