.class public Lorg/h2/engine/Session;
.super Lorg/h2/engine/SessionWithState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/engine/Session$TimeoutValue;,
        Lorg/h2/engine/Session$Savepoint;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final LOG_WRITTEN:I = -0x1

.field private static final SYSTEM_IDENTIFIER_PREFIX:Ljava/lang/String; = "_"

.field private static nextSerialId:I


# instance fields
.field private allowLiterals:Z

.field private autoCommit:Z

.field private autoCommitAtTransactionEnd:Z

.field private volatile cancelAtNs:J

.field private closed:Z

.field private commitOrRollbackDisabled:Z

.field private connectionInfo:Lorg/h2/engine/ConnectionInfo;

.field private currentCommand:Lorg/h2/command/Command;

.field private currentCommandStart:J

.field private currentSchemaName:Ljava/lang/String;

.field private currentTransactionName:Ljava/lang/String;

.field private final database:Lorg/h2/engine/Database;

.field private firstUncommittedLog:I

.field private firstUncommittedPos:I

.field private forceJoinOrder:Z

.field private final id:I

.field private joinBatchEnabled:Z

.field private lastIdentity:Lorg/h2/value/Value;

.field private lastScopeIdentity:Lorg/h2/value/Value;

.field private lastThrottle:J

.field private lastTriggerIdentity:Lorg/h2/value/Value;

.field private lazyQueryExecution:Z

.field private localTempTableConstraints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/constraint/Constraint;",
            ">;"
        }
    .end annotation
.end field

.field private localTempTableIndexes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/index/Index;",
            ">;"
        }
    .end annotation
.end field

.field private localTempTables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/table/Table;",
            ">;"
        }
    .end annotation
.end field

.field private lockTimeout:I

.field private final locks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/Table;",
            ">;"
        }
    .end annotation
.end field

.field private modificationId:I

.field private modificationMetaID:J

.field private objectId:I

.field private parsingView:I

.field private preparingQueryExpression:I

.field private procedures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/engine/Procedure;",
            ">;"
        }
    .end annotation
.end field

.field private queryCache:Lorg/h2/util/SmallLRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/util/SmallLRUCache<",
            "Ljava/lang/String;",
            "Lorg/h2/command/Command;",
            ">;"
        }
    .end annotation
.end field

.field private final queryCacheSize:I

.field private queryTimeout:I

.field private random:Ljava/util/Random;

.field private redoLogBinary:Z

.field private removeLobMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/value/Value;",
            ">;"
        }
    .end annotation
.end field

.field private savepoints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/engine/Session$Savepoint;",
            ">;"
        }
    .end annotation
.end field

.field private schemaSearchPath:[Ljava/lang/String;

.field private final serialId:I

.field private final sessionStart:J

.field private startStatement:J

.field private subQueryIndexCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lorg/h2/index/ViewIndex;",
            ">;"
        }
    .end annotation
.end field

.field private subQueryInfo:Lorg/h2/table/SubQueryInfo;

.field private systemIdentifier:I

.field private tablesToAnalyze:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/h2/table/Table;",
            ">;"
        }
    .end annotation
.end field

.field private temporaryLobs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/value/Value;",
            ">;"
        }
    .end annotation
.end field

.field private temporaryResultLobs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/h2/engine/Session$TimeoutValue;",
            ">;"
        }
    .end annotation
.end field

.field private temporaryResults:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/h2/result/ResultInterface;",
            ">;"
        }
    .end annotation
.end field

.field private throttleNs:J

.field private trace:Lorg/h2/message/Trace;

.field private transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

.field private transactionStart:J

.field private final undoLog:Lorg/h2/engine/UndoLog;

.field private undoLogEnabled:Z

.field private final user:Lorg/h2/engine/User;

.field private variables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/value/Value;",
            ">;"
        }
    .end annotation
.end field

.field private volatile viewIndexCache:Lorg/h2/util/SmallLRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/util/SmallLRUCache<",
            "Ljava/lang/Object;",
            "Lorg/h2/index/ViewIndex;",
            ">;"
        }
    .end annotation
.end field

.field private waitForLock:Lorg/h2/table/Table;

.field private waitForLockThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lorg/h2/engine/Database;Lorg/h2/engine/User;I)V
    .locals 4

    invoke-direct {p0}, Lorg/h2/engine/SessionWithState;-><init>()V

    sget v0, Lorg/h2/engine/Session;->nextSerialId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/h2/engine/Session;->nextSerialId:I

    iput v0, p0, Lorg/h2/engine/Session;->serialId:I

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Session;->locks:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/engine/Session;->autoCommit:Z

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v3

    iput-object v3, p0, Lorg/h2/engine/Session;->lastIdentity:Lorg/h2/value/Value;

    invoke-static {v1, v2}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/engine/Session;->lastScopeIdentity:Lorg/h2/value/Value;

    const/4 v1, -0x1

    iput v1, p0, Lorg/h2/engine/Session;->firstUncommittedLog:I

    iput v1, p0, Lorg/h2/engine/Session;->firstUncommittedPos:I

    iput-boolean v0, p0, Lorg/h2/engine/Session;->undoLogEnabled:Z

    iput-boolean v0, p0, Lorg/h2/engine/Session;->redoLogBinary:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/engine/Session;->sessionStart:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/h2/engine/Session;->modificationMetaID:J

    iput-wide v0, p0, Lorg/h2/engine/Session;->startStatement:J

    iput-object p1, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    iget v0, v0, Lorg/h2/engine/DbSettings;->maxQueryTimeout:I

    iput v0, p0, Lorg/h2/engine/Session;->queryTimeout:I

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    iget v0, v0, Lorg/h2/engine/DbSettings;->queryCacheSize:I

    iput v0, p0, Lorg/h2/engine/Session;->queryCacheSize:I

    new-instance v0, Lorg/h2/engine/UndoLog;

    invoke-direct {v0, p0}, Lorg/h2/engine/UndoLog;-><init>(Lorg/h2/engine/Session;)V

    iput-object v0, p0, Lorg/h2/engine/Session;->undoLog:Lorg/h2/engine/UndoLog;

    iput-object p2, p0, Lorg/h2/engine/Session;->user:Lorg/h2/engine/User;

    iput p3, p0, Lorg/h2/engine/Session;->id:I

    const/4 p2, 0x6

    invoke-static {p2}, Lorg/h2/command/dml/SetTypes;->getTypeName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/h2/engine/Database;->findSetting(Ljava/lang/String;)Lorg/h2/engine/Setting;

    move-result-object p1

    if-nez p1, :cond_0

    const/16 p1, 0x7d0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/h2/engine/Setting;->getIntValue()I

    move-result p1

    :goto_0
    iput p1, p0, Lorg/h2/engine/Session;->lockTimeout:I

    const-string p1, "PUBLIC"

    iput-object p1, p0, Lorg/h2/engine/Session;->currentSchemaName:Ljava/lang/String;

    return-void
.end method

.method private checkCommitRollback()V
    .locals 1

    iget-boolean v0, p0, Lorg/h2/engine/Session;->commitOrRollbackDisabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/engine/Session;->locks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x15fca

    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private cleanTempTables(Z)V
    .locals 4

    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTables:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/h2/engine/Session;->localTempTables:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/table/Table;

    if-nez p1, :cond_2

    invoke-virtual {v2}, Lorg/h2/table/Table;->getOnCommitDrop()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lorg/h2/table/Table;->getOnCommitTruncate()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p0}, Lorg/h2/table/Table;->truncate(Lorg/h2/engine/Session;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    iget v3, p0, Lorg/h2/engine/Session;->modificationId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/h2/engine/Session;->modificationId:I

    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->setModified()V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v2, p0}, Lorg/h2/table/Table;->removeChildrenAndResources(Lorg/h2/engine/Session;)V

    if-eqz p1, :cond_0

    iget-object v2, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2, p0}, Lorg/h2/engine/Database;->commit(Lorg/h2/engine/Session;)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1, p0}, Lorg/h2/engine/Database;->unlockMeta(Lorg/h2/engine/Session;)V

    :cond_4
    monitor-exit v0

    goto :goto_3

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    :goto_3
    return-void
.end method

.method private closeTemporaryResults()V
    .locals 2

    iget-object v0, p0, Lorg/h2/engine/Session;->temporaryResults:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/result/ResultInterface;

    invoke-interface {v1}, Lorg/h2/result/ResultInterface;->close()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/engine/Session;->temporaryResults:Ljava/util/HashSet;

    :cond_1
    return-void
.end method

.method private endTransaction()V
    .locals 2

    iget-object v0, p0, Lorg/h2/engine/Session;->removeLobMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->flush()V

    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Session;->removeLobMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/value/Value;

    invoke-virtual {v1}, Lorg/h2/value/Value;->remove()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/engine/Session;->removeLobMap:Ljava/util/HashMap;

    :cond_2
    invoke-direct {p0}, Lorg/h2/engine/Session;->unlockAll()V

    return-void
.end method

.method private initVariables()V
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Session;->variables:Ljava/util/HashMap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->newStringMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Session;->variables:Ljava/util/HashMap;

    :cond_0
    return-void
.end method

.method private removeTemporaryLobs(Z)V
    .locals 5

    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK2:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getLobSession()Lorg/h2/engine/Session;

    move-result-object v0

    if-ne p0, v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/h2/engine/Session;->temporaryLobs:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/value/Value;

    invoke-virtual {v1}, Lorg/h2/value/Value;->isLinkedToTable()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lorg/h2/value/Value;->remove()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/h2/engine/Session;->temporaryLobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_4
    iget-object v0, p0, Lorg/h2/engine/Session;->temporaryResultLobs:Ljava/util/LinkedList;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_7

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v3}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v3

    iget v3, v3, Lorg/h2/engine/DbSettings;->lobTimeout:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    :cond_5
    :goto_2
    iget-object v2, p0, Lorg/h2/engine/Session;->temporaryResultLobs:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_7

    iget-object v2, p0, Lorg/h2/engine/Session;->temporaryResultLobs:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/engine/Session$TimeoutValue;

    if-eqz p1, :cond_6

    iget-wide v2, v2, Lorg/h2/engine/Session$TimeoutValue;->created:J

    cmp-long v4, v2, v0

    if-ltz v4, :cond_6

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lorg/h2/engine/Session;->temporaryResultLobs:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/engine/Session$TimeoutValue;

    iget-object v2, v2, Lorg/h2/engine/Session$TimeoutValue;->value:Lorg/h2/value/Value;

    invoke-virtual {v2}, Lorg/h2/value/Value;->isLinkedToTable()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lorg/h2/value/Value;->remove()V

    goto :goto_2

    :cond_7
    :goto_3
    return-void
.end method

.method private unlockAll()V
    .locals 3

    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/engine/Session;->undoLog:Lorg/h2/engine/UndoLog;

    invoke-virtual {v0}, Lorg/h2/engine/UndoLog;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Session;->locks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/h2/engine/Session;->locks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lorg/h2/engine/Session;->locks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/table/Table;

    invoke-virtual {v2, p0}, Lorg/h2/table/Table;->unlock(Lorg/h2/engine/Session;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/h2/engine/Session;->locks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/engine/Session;->savepoints:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/engine/SessionWithState;->sessionStateChanged:Z

    return-void
.end method


# virtual methods
.method public addLocalTempTable(Lorg/h2/table/Table;)V
    .locals 2

    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTables:Ljava/util/HashMap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->newStringMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Session;->localTempTables:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTables:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/h2/engine/Session;->modificationId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/h2/engine/Session;->modificationId:I

    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTables:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    const v0, 0xa475

    invoke-virtual {p1}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public addLocalTempTableConstraint(Lorg/h2/constraint/Constraint;)V
    .locals 2

    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTableConstraints:Ljava/util/HashMap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->newStringMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Session;->localTempTableConstraints:Ljava/util/HashMap;

    :cond_0
    invoke-virtual {p1}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/engine/Session;->localTempTableConstraints:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/h2/engine/Session;->localTempTableConstraints:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    const v0, 0x15fbd

    invoke-virtual {p1}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public addLocalTempTableIndex(Lorg/h2/index/Index;)V
    .locals 2

    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTableIndexes:Ljava/util/HashMap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->newStringMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Session;->localTempTableIndexes:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTableIndexes:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTableIndexes:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    const v0, 0xa47f

    invoke-interface {p1}, Lorg/h2/engine/DbObject;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public addLock(Lorg/h2/table/Table;)V
    .locals 1

    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/engine/Session;->locks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/h2/engine/DbObjectBase;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Session;->locks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addLogPos(II)V
    .locals 2

    iget v0, p0, Lorg/h2/engine/Session;->firstUncommittedLog:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iput p1, p0, Lorg/h2/engine/Session;->firstUncommittedLog:I

    iput p2, p0, Lorg/h2/engine/Session;->firstUncommittedPos:I

    :cond_0
    return-void
.end method

.method public addProcedure(Lorg/h2/engine/Procedure;)V
    .locals 2

    iget-object v0, p0, Lorg/h2/engine/Session;->procedures:Ljava/util/HashMap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->newStringMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Session;->procedures:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Session;->procedures:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/h2/engine/Procedure;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addSavepoint(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/h2/engine/Session;->savepoints:Ljava/util/HashMap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->newStringMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Session;->savepoints:Ljava/util/HashMap;

    :cond_0
    new-instance v0, Lorg/h2/engine/Session$Savepoint;

    invoke-direct {v0}, Lorg/h2/engine/Session$Savepoint;-><init>()V

    iget-object v1, p0, Lorg/h2/engine/Session;->undoLog:Lorg/h2/engine/UndoLog;

    invoke-virtual {v1}, Lorg/h2/engine/UndoLog;->size()I

    move-result v1

    iput v1, v0, Lorg/h2/engine/Session$Savepoint;->logIndex:I

    iget-object v1, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/h2/engine/Session;->getStatementSavepoint()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/h2/engine/Session$Savepoint;->transactionSavepoint:J

    :cond_1
    iget-object v1, p0, Lorg/h2/engine/Session;->savepoints:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addTemporaryLob(Lorg/h2/value/Value;)V
    .locals 2

    invoke-virtual {p1}, Lorg/h2/value/Value;->getType()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/h2/value/Value;->getType()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/h2/value/Value;->getTableId()I

    move-result v0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Lorg/h2/value/Value;->getTableId()I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/h2/engine/Session;->temporaryLobs:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/h2/engine/Session;->temporaryLobs:Ljava/util/ArrayList;

    :cond_2
    iget-object v0, p0, Lorg/h2/engine/Session;->temporaryLobs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/h2/engine/Session;->temporaryResultLobs:Ljava/util/LinkedList;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/h2/engine/Session;->temporaryResultLobs:Ljava/util/LinkedList;

    :cond_4
    iget-object v0, p0, Lorg/h2/engine/Session;->temporaryResultLobs:Ljava/util/LinkedList;

    new-instance v1, Lorg/h2/engine/Session$TimeoutValue;

    invoke-direct {v1, p1}, Lorg/h2/engine/Session$TimeoutValue;-><init>(Lorg/h2/value/Value;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method public addTemporaryResult(Lorg/h2/result/ResultInterface;)V
    .locals 2

    invoke-interface {p1}, Lorg/h2/result/ResultInterface;->needToClose()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Session;->temporaryResults:Ljava/util/HashSet;

    if-nez v0, :cond_1

    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Session;->temporaryResults:Ljava/util/HashSet;

    :cond_1
    iget-object v0, p0, Lorg/h2/engine/Session;->temporaryResults:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lorg/h2/engine/Session;->temporaryResults:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public afterWriting()V
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->afterWriting()V

    return-void
.end method

.method public begin()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/engine/Session;->autoCommitAtTransactionEnd:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/h2/engine/Session;->autoCommit:Z

    return-void
.end method

.method public cancel()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/engine/Session;->cancelAtNs:J

    return-void
.end method

.method public checkCanceled()V
    .locals 7

    invoke-virtual {p0}, Lorg/h2/engine/Session;->throttle()V

    iget-wide v0, p0, Lorg/h2/engine/Session;->cancelAtNs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v4, p0, Lorg/h2/engine/Session;->cancelAtNs:J

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    return-void

    :cond_1
    iput-wide v2, p0, Lorg/h2/engine/Session;->cancelAtNs:J

    const v0, 0xdeb6

    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public clearViewIndexCache()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/engine/Session;->viewIndexCache:Lorg/h2/util/SmallLRUCache;

    return-void
.end method

.method public close()V
    .locals 2

    iget-boolean v0, p0, Lorg/h2/engine/Session;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->checkPowerOff()V

    invoke-virtual {p0}, Lorg/h2/engine/Session;->rollback()V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/h2/engine/Session;->removeTemporaryLobs(Z)V

    invoke-direct {p0, v0}, Lorg/h2/engine/Session;->cleanTempTables(Z)V

    iget-object v1, p0, Lorg/h2/engine/Session;->undoLog:Lorg/h2/engine/UndoLog;

    invoke-virtual {v1}, Lorg/h2/engine/UndoLog;->clear()V

    iget-object v1, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1, p0}, Lorg/h2/engine/Database;->removeSession(Lorg/h2/engine/Session;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lorg/h2/engine/Session;->closed:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lorg/h2/engine/Session;->closed:Z

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public commit(Z)V
    .locals 8

    invoke-direct {p0}, Lorg/h2/engine/Session;->checkCommitRollback()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/engine/Session;->currentTransactionName:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/h2/engine/Session;->transactionStart:J

    iget-object v1, p0, Lorg/h2/engine/Session;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/h2/engine/Session;->locks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/h2/engine/Session;->locks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lorg/h2/engine/Session;->locks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/table/Table;

    instance-of v5, v4, Lorg/h2/mvstore/db/MVTable;

    if-eqz v5, :cond_0

    check-cast v4, Lorg/h2/mvstore/db/MVTable;

    invoke-virtual {v4}, Lorg/h2/mvstore/db/MVTable;->commit()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/h2/engine/Session;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    invoke-virtual {v1}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->commit()V

    iput-object v0, p0, Lorg/h2/engine/Session;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    :cond_2
    invoke-virtual {p0}, Lorg/h2/engine/Session;->containsUncommitted()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1, p0}, Lorg/h2/engine/Database;->commit(Lorg/h2/engine/Session;)V

    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/h2/engine/Session;->removeTemporaryLobs(Z)V

    iget-object v3, p0, Lorg/h2/engine/Session;->undoLog:Lorg/h2/engine/UndoLog;

    invoke-virtual {v3}, Lorg/h2/engine/UndoLog;->size()I

    move-result v3

    if-lez v3, :cond_7

    iget-object v3, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v3}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    monitor-enter v4

    :goto_1
    :try_start_0
    iget-object v5, p0, Lorg/h2/engine/Session;->undoLog:Lorg/h2/engine/UndoLog;

    invoke-virtual {v5}, Lorg/h2/engine/UndoLog;->size()I

    move-result v5

    if-lez v5, :cond_4

    iget-object v5, p0, Lorg/h2/engine/Session;->undoLog:Lorg/h2/engine/UndoLog;

    invoke-virtual {v5}, Lorg/h2/engine/UndoLog;->getLast()Lorg/h2/engine/UndoLogRecord;

    move-result-object v5

    invoke-virtual {v5}, Lorg/h2/engine/UndoLogRecord;->commit()V

    invoke-virtual {v5}, Lorg/h2/engine/UndoLogRecord;->getRow()Lorg/h2/result/Row;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lorg/h2/engine/Session;->undoLog:Lorg/h2/engine/UndoLog;

    invoke-virtual {v5, v2}, Lorg/h2/engine/UndoLog;->removeLast(Z)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_5

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/h2/result/Row;

    invoke-interface {v7}, Lorg/h2/result/Row;->commit()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    monitor-exit v4

    goto :goto_4

    :goto_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_6
    :goto_4
    iget-object v3, p0, Lorg/h2/engine/Session;->undoLog:Lorg/h2/engine/UndoLog;

    invoke-virtual {v3}, Lorg/h2/engine/UndoLog;->clear()V

    :cond_7
    if-nez p1, :cond_8

    invoke-direct {p0, v2}, Lorg/h2/engine/Session;->cleanTempTables(Z)V

    iget-boolean p1, p0, Lorg/h2/engine/Session;->autoCommitAtTransactionEnd:Z

    if-eqz p1, :cond_8

    iput-boolean v1, p0, Lorg/h2/engine/Session;->autoCommit:Z

    iput-boolean v2, p0, Lorg/h2/engine/Session;->autoCommitAtTransactionEnd:Z

    :cond_8
    invoke-direct {p0}, Lorg/h2/engine/Session;->endTransaction()V

    invoke-virtual {p0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object p1

    iget p1, p1, Lorg/h2/engine/DbSettings;->analyzeSample:I

    div-int/lit8 p1, p1, 0xa

    iget-object v1, p0, Lorg/h2/engine/Session;->tablesToAnalyze:Ljava/util/HashSet;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/table/Table;

    invoke-static {p0, v3, p1, v2}, Lorg/h2/command/ddl/Analyze;->analyzeTable(Lorg/h2/engine/Session;Lorg/h2/table/Table;IZ)V

    goto :goto_5

    :cond_9
    iput-object v0, p0, Lorg/h2/engine/Session;->tablesToAnalyze:Ljava/util/HashSet;

    return-void
.end method

.method public containsUncommitted()Z
    .locals 4

    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/engine/Session;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Lorg/h2/engine/Session;->firstUncommittedLog:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public createConnection(Z)Lorg/h2/jdbc/JdbcConnection;
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "jdbc:columnlist:connection"

    goto :goto_0

    :cond_0
    const-string p1, "jdbc:default:connection"

    :goto_0
    new-instance v0, Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {p0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lorg/h2/jdbc/JdbcConnection;-><init>(Lorg/h2/engine/SessionInterface;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createRow([Lorg/h2/value/Value;I)Lorg/h2/result/Row;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, p1, p2}, Lorg/h2/engine/Database;->createRow([Lorg/h2/value/Value;I)Lorg/h2/result/Row;

    move-result-object p1

    return-object p1
.end method

.method public endStatement()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/h2/engine/Session;->startStatement:J

    invoke-direct {p0}, Lorg/h2/engine/Session;->closeTemporaryResults()V

    return-void
.end method

.method public findLocalTempTable(Ljava/lang/String;)Lorg/h2/table/Table;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTables:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/table/Table;

    return-object p1
.end method

.method public findLocalTempTableConstraint(Ljava/lang/String;)Lorg/h2/constraint/Constraint;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTableConstraints:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/constraint/Constraint;

    return-object p1
.end method

.method public findLocalTempTableIndex(Ljava/lang/String;)Lorg/h2/index/Index;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTableIndexes:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/index/Index;

    return-object p1
.end method

.method public getAllowLiterals()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/engine/Session;->allowLiterals:Z

    return v0
.end method

.method public getAutoCommit()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/engine/Session;->autoCommit:Z

    return v0
.end method

.method public getCancel()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/engine/Session;->cancelAtNs:J

    return-wide v0
.end method

.method public getClusterServers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getCurrentCommand()Lorg/h2/command/Command;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Session;->currentCommand:Lorg/h2/command/Command;

    return-object v0
.end method

.method public getCurrentCommandStart()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/engine/Session;->currentCommandStart:J

    return-wide v0
.end method

.method public getCurrentSchemaName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Session;->currentSchemaName:Ljava/lang/String;

    return-object v0
.end method

.method public getDataHandler()Lorg/h2/store/DataHandler;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    return-object v0
.end method

.method public getDatabase()Lorg/h2/engine/Database;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    return-object v0
.end method

.method public getFirstUncommittedLog()I
    .locals 1

    iget v0, p0, Lorg/h2/engine/Session;->firstUncommittedLog:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lorg/h2/engine/Session;->id:I

    return v0
.end method

.method public getLastIdentity()Lorg/h2/value/Value;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Session;->lastIdentity:Lorg/h2/value/Value;

    return-object v0
.end method

.method public getLastScopeIdentity()Lorg/h2/value/Value;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Session;->lastScopeIdentity:Lorg/h2/value/Value;

    return-object v0
.end method

.method public getLastTriggerIdentity()Lorg/h2/value/Value;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Session;->lastTriggerIdentity:Lorg/h2/value/Value;

    return-object v0
.end method

.method public getLocalTempTableConstraints()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/constraint/Constraint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTableConstraints:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLocalTempTableIndexes()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/index/Index;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTableIndexes:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLocalTempTables()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/Table;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTables:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getLockTimeout()I
    .locals 1

    iget v0, p0, Lorg/h2/engine/Session;->lockTimeout:I

    return v0
.end method

.method public getLocks()[Lorg/h2/table/Table;
    .locals 3

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/h2/engine/Session;->locks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lorg/h2/engine/Session;->locks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/h2/table/Table;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v1
.end method

.method public getModificationId()I
    .locals 1

    iget v0, p0, Lorg/h2/engine/Session;->modificationId:I

    return v0
.end method

.method public getNextSystemIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/h2/engine/Session;->systemIdentifier:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/h2/engine/Session;->systemIdentifier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0
.end method

.method public getPowerOffCount()I
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getPowerOffCount()I

    move-result v0

    return v0
.end method

.method public getProcedure(Ljava/lang/String;)Lorg/h2/engine/Procedure;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Session;->procedures:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/engine/Procedure;

    return-object p1
.end method

.method public getQueryTimeout()I
    .locals 1

    iget v0, p0, Lorg/h2/engine/Session;->queryTimeout:I

    return v0
.end method

.method public getRandom()Ljava/util/Random;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Session;->random:Ljava/util/Random;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/h2/engine/Session;->random:Ljava/util/Random;

    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Session;->random:Ljava/util/Random;

    return-object v0
.end method

.method public getSchemaSearchPath()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Session;->schemaSearchPath:[Ljava/lang/String;

    return-object v0
.end method

.method public getSessionStart()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/engine/Session;->sessionStart:J

    return-wide v0
.end method

.method public getStatementSavepoint()J
    .locals 5

    iget-wide v0, p0, Lorg/h2/engine/Session;->startStatement:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lorg/h2/engine/Session;->getTransaction()Lorg/h2/mvstore/db/TransactionStore$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->setSavepoint()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/engine/Session;->startStatement:J

    :cond_0
    iget-wide v0, p0, Lorg/h2/engine/Session;->startStatement:J

    return-wide v0
.end method

.method public getSubQueryInfo()Lorg/h2/table/SubQueryInfo;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Session;->subQueryInfo:Lorg/h2/table/SubQueryInfo;

    return-object v0
.end method

.method public getTrace()Lorg/h2/message/Trace;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/h2/engine/Session;->trace:Lorg/h2/message/Trace;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lorg/h2/engine/Session;->closed:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "jdbc["

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget v1, p0, Lorg/h2/engine/Session;->id:I

    .line 18
    .line 19
    const-string v2, "]"

    .line 20
    .line 21
    invoke-static {v2, v1, v0}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-boolean v1, p0, Lorg/h2/engine/Session;->closed:Z

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    new-instance v1, Lorg/h2/message/TraceSystem;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-direct {v1, v2}, Lorg/h2/message/TraceSystem;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v0}, Lorg/h2/message/TraceSystem;->getTrace(Ljava/lang/String;)Lorg/h2/message/Trace;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0

    .line 40
    :cond_1
    iget-object v1, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    .line 41
    .line 42
    invoke-virtual {v1}, Lorg/h2/engine/Database;->getTraceSystem()Lorg/h2/message/TraceSystem;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1, v0}, Lorg/h2/message/TraceSystem;->getTrace(Ljava/lang/String;)Lorg/h2/message/Trace;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lorg/h2/engine/Session;->trace:Lorg/h2/message/Trace;

    .line 51
    .line 52
    return-object v0
.end method

.method public getTransaction()Lorg/h2/mvstore/db/TransactionStore$Transaction;
    .locals 2

    iget-object v0, p0, Lorg/h2/engine/Session;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTableEngine$Store;->getStore()Lorg/h2/mvstore/MVStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTableEngine$Store;->getTransactionStore()Lorg/h2/mvstore/db/TransactionStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/mvstore/db/TransactionStore;->begin()Lorg/h2/mvstore/db/TransactionStore$Transaction;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Session;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/h2/engine/Session;->startStatement:J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->shutdownImmediately()V

    const v0, 0x15ff2

    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/h2/engine/Session;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    return-object v0
.end method

.method public getTransactionId()Lorg/h2/value/Value;
    .locals 3

    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/engine/Session;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    if-nez v0, :cond_0

    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/h2/engine/Session;->getTransaction()Lorg/h2/mvstore/db/TransactionStore$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->getId()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/h2/engine/Session;->undoLog:Lorg/h2/engine/UndoLog;

    invoke-virtual {v0}, Lorg/h2/engine/UndoLog;->size()I

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/h2/engine/Session;->firstUncommittedLog:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/h2/engine/Session;->firstUncommittedPos:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/engine/Session;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTransactionStart()J
    .locals 5

    iget-wide v0, p0, Lorg/h2/engine/Session;->transactionStart:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/engine/Session;->transactionStart:J

    :cond_0
    iget-wide v0, p0, Lorg/h2/engine/Session;->transactionStart:J

    return-wide v0
.end method

.method public getUser()Lorg/h2/engine/User;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Session;->user:Lorg/h2/engine/User;

    return-object v0
.end method

.method public getVariable(Ljava/lang/String;)Lorg/h2/value/Value;
    .locals 1

    invoke-direct {p0}, Lorg/h2/engine/Session;->initVariables()V

    iget-object v0, p0, Lorg/h2/engine/Session;->variables:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/value/Value;

    if-nez p1, :cond_0

    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    :cond_0
    return-object p1
.end method

.method public getVariableNames()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/h2/engine/Session;->variables:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lorg/h2/engine/Session;->variables:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getViewIndexCache(Z)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lorg/h2/index/ViewIndex;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/h2/engine/Session;->subQueryIndexCache:Ljava/util/HashMap;

    if-nez p1, :cond_0

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/engine/Session;->subQueryIndexCache:Ljava/util/HashMap;

    :cond_0
    iget-object p1, p0, Lorg/h2/engine/Session;->subQueryIndexCache:Ljava/util/HashMap;

    return-object p1

    :cond_1
    iget-object p1, p0, Lorg/h2/engine/Session;->viewIndexCache:Lorg/h2/util/SmallLRUCache;

    if-nez p1, :cond_2

    const/16 p1, 0x40

    invoke-static {p1}, Lorg/h2/util/SmallLRUCache;->newInstance(I)Lorg/h2/util/SmallLRUCache;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/engine/Session;->viewIndexCache:Lorg/h2/util/SmallLRUCache;

    :cond_2
    return-object p1
.end method

.method public getWaitForLock()Lorg/h2/table/Table;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Session;->waitForLock:Lorg/h2/table/Table;

    return-object v0
.end method

.method public getWaitForLockThread()Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Session;->waitForLockThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public hasPendingTransaction()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Session;->undoLog:Lorg/h2/engine/UndoLog;

    invoke-virtual {v0}, Lorg/h2/engine/UndoLog;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/h2/engine/Session;->serialId:I

    return v0
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/engine/Session;->closed:Z

    return v0
.end method

.method public isForceJoinOrder()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/engine/Session;->forceJoinOrder:Z

    return v0
.end method

.method public isJoinBatchEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/engine/Session;->joinBatchEnabled:Z

    return v0
.end method

.method public isLazyQueryExecution()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/engine/Session;->lazyQueryExecution:Z

    return v0
.end method

.method public isParsingView()Z
    .locals 1

    iget v0, p0, Lorg/h2/engine/Session;->parsingView:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPreparingQueryExpression()Z
    .locals 1

    iget v0, p0, Lorg/h2/engine/Session;->preparingQueryExpression:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReconnectNeeded(Z)Z
    .locals 2

    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isReconnectNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->beforeWriting()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    return v0
.end method

.method public isRedoLogBinaryEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/engine/Session;->redoLogBinary:Z

    return v0
.end method

.method public isRemote()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUndoLogEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/engine/Session;->undoLogEnabled:Z

    return v0
.end method

.method public log(Lorg/h2/table/Table;SLorg/h2/result/Row;)V
    .locals 3

    invoke-virtual {p1}, Lorg/h2/table/Table;->isMVStore()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/h2/engine/Session;->undoLogEnabled:Z

    if-eqz v0, :cond_2

    new-instance v0, Lorg/h2/engine/UndoLogRecord;

    invoke-direct {v0, p1, p2, p3}, Lorg/h2/engine/UndoLogRecord;-><init>(Lorg/h2/table/Table;SLorg/h2/result/Row;)V

    sget-boolean p1, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getLockMode()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lorg/h2/engine/UndoLogRecord;->getTable()Lorg/h2/table/Table;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/table/Table;->getTableType()Lorg/h2/table/TableType;

    move-result-object p1

    iget-object p2, p0, Lorg/h2/engine/Session;->locks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/h2/engine/UndoLogRecord;->getTable()Lorg/h2/table/Table;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-gez p2, :cond_1

    sget-object p2, Lorg/h2/table/TableType;->TABLE_LINK:Lorg/h2/table/TableType;

    if-eq p2, p1, :cond_1

    sget-object p2, Lorg/h2/table/TableType;->EXTERNAL_TABLE_ENGINE:Lorg/h2/table/TableType;

    if-eq p2, p1, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_1
    iget-object p1, p0, Lorg/h2/engine/Session;->undoLog:Lorg/h2/engine/UndoLog;

    invoke-virtual {p1, v0}, Lorg/h2/engine/UndoLog;->add(Lorg/h2/engine/UndoLogRecord;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/h2/table/Table;->getIndexes()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/index/Index;

    invoke-interface {v2, p2, p3}, Lorg/h2/index/Index;->commit(ILorg/h2/result/Row;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {p3}, Lorg/h2/result/Row;->commit()V

    :cond_4
    :goto_1
    return-void
.end method

.method public markTableForAnalyze(Lorg/h2/table/Table;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Session;->tablesToAnalyze:Ljava/util/HashSet;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Session;->tablesToAnalyze:Ljava/util/HashSet;

    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Session;->tablesToAnalyze:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public nextObjectId()I
    .locals 2

    iget v0, p0, Lorg/h2/engine/Session;->objectId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/h2/engine/Session;->objectId:I

    return v0
.end method

.method public optimizeQueryExpression(Lorg/h2/command/dml/Query;)V
    .locals 2

    iget-object v0, p0, Lorg/h2/engine/Session;->subQueryInfo:Lorg/h2/table/SubQueryInfo;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/h2/engine/Session;->subQueryInfo:Lorg/h2/table/SubQueryInfo;

    iget v1, p0, Lorg/h2/engine/Session;->preparingQueryExpression:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/h2/engine/Session;->preparingQueryExpression:I

    :try_start_0
    invoke-virtual {p1}, Lorg/h2/command/Prepared;->prepare()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lorg/h2/engine/Session;->subQueryInfo:Lorg/h2/table/SubQueryInfo;

    iget p1, p0, Lorg/h2/engine/Session;->preparingQueryExpression:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/h2/engine/Session;->preparingQueryExpression:I

    return-void

    :catchall_0
    move-exception p1

    iput-object v0, p0, Lorg/h2/engine/Session;->subQueryInfo:Lorg/h2/table/SubQueryInfo;

    iget v0, p0, Lorg/h2/engine/Session;->preparingQueryExpression:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/h2/engine/Session;->preparingQueryExpression:I

    throw p1
.end method

.method public popSubQueryInfo()V
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Session;->subQueryInfo:Lorg/h2/table/SubQueryInfo;

    invoke-virtual {v0}, Lorg/h2/table/SubQueryInfo;->getUpper()Lorg/h2/table/SubQueryInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Session;->subQueryInfo:Lorg/h2/table/SubQueryInfo;

    return-void
.end method

.method public prepare(Ljava/lang/String;)Lorg/h2/command/Prepared;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/h2/engine/Session;->prepare(Ljava/lang/String;Z)Lorg/h2/command/Prepared;

    move-result-object p1

    return-object p1
.end method

.method public prepare(Ljava/lang/String;Z)Lorg/h2/command/Prepared;
    .locals 1

    .line 2
    new-instance v0, Lorg/h2/command/Parser;

    invoke-direct {v0, p0}, Lorg/h2/command/Parser;-><init>(Lorg/h2/engine/Session;)V

    invoke-virtual {v0, p2}, Lorg/h2/command/Parser;->setRightsChecked(Z)V

    invoke-virtual {v0, p1}, Lorg/h2/command/Parser;->prepare(Ljava/lang/String;)Lorg/h2/command/Prepared;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized prepareCommand(Ljava/lang/String;I)Lorg/h2/command/CommandInterface;
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/h2/engine/Session;->prepareLocal(Ljava/lang/String;)Lorg/h2/command/Command;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public prepareCommit(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Session;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, p0, p1}, Lorg/h2/engine/Database;->prepareCommit(Lorg/h2/engine/Session;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lorg/h2/engine/Session;->containsUncommitted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, p0, p1}, Lorg/h2/engine/Database;->prepareCommit(Lorg/h2/engine/Session;Ljava/lang/String;)V

    :cond_1
    iput-object p1, p0, Lorg/h2/engine/Session;->currentTransactionName:Ljava/lang/String;

    return-void
.end method

.method public prepareLocal(Ljava/lang/String;)Lorg/h2/command/Command;
    .locals 5

    iget-boolean v0, p0, Lorg/h2/engine/Session;->closed:Z

    if-nez v0, :cond_4

    iget v0, p0, Lorg/h2/engine/Session;->queryCacheSize:I

    if-lez v0, :cond_2

    iget-object v1, p0, Lorg/h2/engine/Session;->queryCache:Lorg/h2/util/SmallLRUCache;

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/h2/util/SmallLRUCache;->newInstance(I)Lorg/h2/util/SmallLRUCache;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Session;->queryCache:Lorg/h2/util/SmallLRUCache;

    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getModificationMetaId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/engine/Session;->modificationMetaID:J

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getModificationMetaId()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/h2/engine/Session;->modificationMetaID:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-object v2, p0, Lorg/h2/engine/Session;->queryCache:Lorg/h2/util/SmallLRUCache;

    invoke-virtual {v2}, Ljava/util/AbstractMap;->clear()V

    iput-wide v0, p0, Lorg/h2/engine/Session;->modificationMetaID:J

    :cond_1
    iget-object v0, p0, Lorg/h2/engine/Session;->queryCache:Lorg/h2/util/SmallLRUCache;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/command/Command;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/h2/command/Command;->canReuse()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/h2/command/Command;->reuse()V

    return-object v0

    :cond_2
    :goto_0
    new-instance v0, Lorg/h2/command/Parser;

    invoke-direct {v0, p0}, Lorg/h2/command/Parser;-><init>(Lorg/h2/engine/Session;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1}, Lorg/h2/command/Parser;->prepareCommand(Ljava/lang/String;)Lorg/h2/command/Command;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lorg/h2/engine/Session;->subQueryIndexCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Lorg/h2/command/Command;->prepareJoinBatch()V

    iget-object v1, p0, Lorg/h2/engine/Session;->queryCache:Lorg/h2/util/SmallLRUCache;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lorg/h2/command/Command;->isCacheable()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/h2/engine/Session;->queryCache:Lorg/h2/util/SmallLRUCache;

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0

    :catchall_0
    move-exception p1

    iput-object v1, p0, Lorg/h2/engine/Session;->subQueryIndexCache:Ljava/util/HashMap;

    throw p1

    :cond_4
    const p1, 0x15fd3

    const-string v0, "session closed"

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public pushSubQueryInfo([I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;)V
    .locals 7

    new-instance v6, Lorg/h2/table/SubQueryInfo;

    iget-object v1, p0, Lorg/h2/engine/Session;->subQueryInfo:Lorg/h2/table/SubQueryInfo;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/h2/table/SubQueryInfo;-><init>(Lorg/h2/table/SubQueryInfo;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;)V

    iput-object v6, p0, Lorg/h2/engine/Session;->subQueryInfo:Lorg/h2/table/SubQueryInfo;

    return-void
.end method

.method public bridge synthetic readSessionState()V
    .locals 0

    invoke-super {p0}, Lorg/h2/engine/SessionWithState;->readSessionState()V

    return-void
.end method

.method public reconnect(Z)Lorg/h2/engine/SessionInterface;
    .locals 2

    invoke-virtual {p0}, Lorg/h2/engine/Session;->readSessionState()V

    invoke-virtual {p0}, Lorg/h2/engine/Session;->close()V

    invoke-static {}, Lorg/h2/engine/Engine;->getInstance()Lorg/h2/engine/Engine;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/engine/Session;->connectionInfo:Lorg/h2/engine/ConnectionInfo;

    invoke-virtual {v0, v1}, Lorg/h2/engine/Engine;->createSession(Lorg/h2/engine/ConnectionInfo;)Lorg/h2/engine/Session;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/engine/SessionWithState;->sessionState:Ljava/util/ArrayList;

    iput-object v1, v0, Lorg/h2/engine/SessionWithState;->sessionState:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/h2/engine/SessionWithState;->recreateSessionState()V

    if-eqz p1, :cond_0

    :goto_0
    iget-object p1, v0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->beforeWriting()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public removeAtCommit(Lorg/h2/value/Value;)V
    .locals 2

    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/h2/value/Value;->isLinkedToTable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/h2/value/Value;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Session;->removeLobMap:Ljava/util/HashMap;

    if-nez v0, :cond_1

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Session;->removeLobMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/h2/value/Value;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public removeAtCommitStop(Lorg/h2/value/Value;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Session;->removeLobMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/h2/value/Value;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public removeLocalTempTable(Lorg/h2/table/Table;)V
    .locals 2

    iget v0, p0, Lorg/h2/engine/Session;->modificationId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/h2/engine/Session;->modificationId:I

    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTables:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1, p0}, Lorg/h2/table/Table;->removeChildrenAndResources(Lorg/h2/engine/Session;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeLocalTempTableConstraint(Lorg/h2/constraint/Constraint;)V
    .locals 2

    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTableConstraints:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1, p0}, Lorg/h2/engine/DbObjectBase;->removeChildrenAndResources(Lorg/h2/engine/Session;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public removeLocalTempTableIndex(Lorg/h2/index/Index;)V
    .locals 2

    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTableIndexes:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    monitor-enter v0

    :try_start_0
    invoke-interface {p1, p0}, Lorg/h2/engine/DbObject;->removeChildrenAndResources(Lorg/h2/engine/Session;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public removeProcedure(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Session;->procedures:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public rollback()V
    .locals 5

    invoke-direct {p0}, Lorg/h2/engine/Session;->checkCommitRollback()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/engine/Session;->currentTransactionName:Ljava/lang/String;

    iget-object v1, p0, Lorg/h2/engine/Session;->undoLog:Lorg/h2/engine/UndoLog;

    invoke-virtual {v1}, Lorg/h2/engine/UndoLog;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    invoke-virtual {p0, v0, v3}, Lorg/h2/engine/Session;->rollbackTo(Lorg/h2/engine/Session$Savepoint;Z)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lorg/h2/engine/Session;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    if-eqz v4, :cond_1

    invoke-virtual {p0, v0, v3}, Lorg/h2/engine/Session;->rollbackTo(Lorg/h2/engine/Session$Savepoint;Z)V

    iget-object v1, p0, Lorg/h2/engine/Session;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    invoke-virtual {v1}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->commit()V

    iput-object v0, p0, Lorg/h2/engine/Session;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    const/4 v1, 0x1

    :cond_1
    iget-object v0, p0, Lorg/h2/engine/Session;->locks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, p0}, Lorg/h2/engine/Database;->commit(Lorg/h2/engine/Session;)V

    :cond_3
    invoke-direct {p0, v3}, Lorg/h2/engine/Session;->cleanTempTables(Z)V

    iget-boolean v0, p0, Lorg/h2/engine/Session;->autoCommitAtTransactionEnd:Z

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lorg/h2/engine/Session;->autoCommit:Z

    iput-boolean v3, p0, Lorg/h2/engine/Session;->autoCommitAtTransactionEnd:Z

    :cond_4
    invoke-direct {p0}, Lorg/h2/engine/Session;->endTransaction()V

    return-void
.end method

.method public rollbackTo(Lorg/h2/engine/Session$Savepoint;Z)V
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget v1, p1, Lorg/h2/engine/Session$Savepoint;->logIndex:I

    :goto_0
    iget-object v2, p0, Lorg/h2/engine/Session;->undoLog:Lorg/h2/engine/UndoLog;

    invoke-virtual {v2}, Lorg/h2/engine/UndoLog;->size()I

    move-result v2

    if-le v2, v1, :cond_1

    iget-object v2, p0, Lorg/h2/engine/Session;->undoLog:Lorg/h2/engine/UndoLog;

    invoke-virtual {v2}, Lorg/h2/engine/UndoLog;->getLast()Lorg/h2/engine/UndoLogRecord;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/h2/engine/UndoLogRecord;->undo(Lorg/h2/engine/Session;)V

    iget-object v2, p0, Lorg/h2/engine/Session;->undoLog:Lorg/h2/engine/UndoLog;

    invoke-virtual {v2, p2}, Lorg/h2/engine/UndoLog;->removeLast(Z)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/h2/engine/Session;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    if-eqz p2, :cond_5

    if-nez p1, :cond_2

    const-wide/16 p1, 0x0

    goto :goto_1

    :cond_2
    iget-wide p1, p1, Lorg/h2/engine/Session$Savepoint;->transactionSavepoint:J

    :goto_1
    iget-object v2, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/mvstore/db/MVTableEngine$Store;->getTables()Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/engine/Session;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    invoke-virtual {v3, p1, p2}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->getChanges(J)Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/h2/mvstore/db/TransactionStore$Change;

    iget-object v3, p2, Lorg/h2/mvstore/db/TransactionStore$Change;->mapName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/mvstore/db/MVTable;

    if-eqz v3, :cond_3

    iget-object v4, p2, Lorg/h2/mvstore/db/TransactionStore$Change;->key:Ljava/lang/Object;

    check-cast v4, Lorg/h2/value/ValueLong;

    invoke-virtual {v4}, Lorg/h2/value/ValueLong;->getLong()J

    move-result-wide v4

    iget-object p2, p2, Lorg/h2/mvstore/db/TransactionStore$Change;->value:Ljava/lang/Object;

    check-cast p2, Lorg/h2/value/ValueArray;

    if-nez p2, :cond_4

    invoke-virtual {v3, p0, v4, v5}, Lorg/h2/mvstore/db/MVTable;->getRow(Lorg/h2/engine/Session;J)Lorg/h2/result/Row;

    move-result-object p2

    const/4 v6, 0x0

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Lorg/h2/value/ValueArray;->getList()[Lorg/h2/value/Value;

    move-result-object p2

    const/4 v6, -0x1

    invoke-virtual {p0, p2, v6}, Lorg/h2/engine/Session;->createRow([Lorg/h2/value/Value;I)Lorg/h2/result/Row;

    move-result-object p2

    const/4 v6, 0x1

    :goto_3
    invoke-interface {p2, v4, v5}, Lorg/h2/result/SearchRow;->setKey(J)V

    new-instance v4, Lorg/h2/engine/UndoLogRecord;

    invoke-direct {v4, v3, v6, p2}, Lorg/h2/engine/UndoLogRecord;-><init>(Lorg/h2/table/Table;SLorg/h2/result/Row;)V

    invoke-virtual {v4, p0}, Lorg/h2/engine/UndoLogRecord;->undo(Lorg/h2/engine/Session;)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lorg/h2/engine/Session;->savepoints:Ljava/util/HashMap;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    new-array p2, p1, [Ljava/lang/String;

    iget-object v2, p0, Lorg/h2/engine/Session;->savepoints:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :goto_4
    if-ge v0, p1, :cond_7

    aget-object v2, p2, v0

    iget-object v3, p0, Lorg/h2/engine/Session;->savepoints:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/engine/Session$Savepoint;

    iget v3, v3, Lorg/h2/engine/Session$Savepoint;->logIndex:I

    if-le v3, v1, :cond_6

    iget-object v3, p0, Lorg/h2/engine/Session;->savepoints:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    return-void
.end method

.method public rollbackToSavepoint(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lorg/h2/engine/Session;->checkCommitRollback()V

    iget-object v0, p0, Lorg/h2/engine/Session;->savepoints:Ljava/util/HashMap;

    const v1, 0x15fcf

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/engine/Session$Savepoint;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/h2/engine/Session;->rollbackTo(Lorg/h2/engine/Session$Savepoint;Z)V

    return-void

    :cond_0
    invoke-static {v1, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {v1, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public setAllCommitted()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lorg/h2/engine/Session;->firstUncommittedLog:I

    iput v0, p0, Lorg/h2/engine/Session;->firstUncommittedPos:I

    return-void
.end method

.method public setAllowLiterals(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/engine/Session;->allowLiterals:Z

    return-void
.end method

.method public setAutoCommit(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/engine/Session;->autoCommit:Z

    return-void
.end method

.method public setCommitOrRollbackDisabled(Z)Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/engine/Session;->commitOrRollbackDisabled:Z

    iput-boolean p1, p0, Lorg/h2/engine/Session;->commitOrRollbackDisabled:Z

    return v0
.end method

.method public setConnectionInfo(Lorg/h2/engine/ConnectionInfo;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/engine/Session;->connectionInfo:Lorg/h2/engine/ConnectionInfo;

    return-void
.end method

.method public setCurrentCommand(Lorg/h2/command/Command;)V
    .locals 4

    iput-object p1, p0, Lorg/h2/engine/Session;->currentCommand:Lorg/h2/command/Command;

    iget v0, p0, Lorg/h2/engine/Session;->queryTimeout:I

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/engine/Session;->currentCommandStart:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget v2, p0, Lorg/h2/engine/Session;->queryTimeout:I

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/h2/engine/Session;->cancelAtNs:J

    :cond_0
    return-void
.end method

.method public setCurrentSchema(Lorg/h2/schema/Schema;)V
    .locals 1

    iget v0, p0, Lorg/h2/engine/Session;->modificationId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/h2/engine/Session;->modificationId:I

    invoke-virtual {p1}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/engine/Session;->currentSchemaName:Ljava/lang/String;

    return-void
.end method

.method public setCurrentSchemaName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, p1}, Lorg/h2/engine/Database;->getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/engine/Session;->setCurrentSchema(Lorg/h2/schema/Schema;)V

    return-void
.end method

.method public setForceJoinOrder(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/engine/Session;->forceJoinOrder:Z

    return-void
.end method

.method public setJoinBatchEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/engine/Session;->joinBatchEnabled:Z

    return-void
.end method

.method public setLastIdentity(Lorg/h2/value/Value;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/engine/Session;->lastIdentity:Lorg/h2/value/Value;

    iput-object p1, p0, Lorg/h2/engine/Session;->lastScopeIdentity:Lorg/h2/value/Value;

    return-void
.end method

.method public setLastScopeIdentity(Lorg/h2/value/Value;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/engine/Session;->lastScopeIdentity:Lorg/h2/value/Value;

    return-void
.end method

.method public setLastTriggerIdentity(Lorg/h2/value/Value;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/engine/Session;->lastTriggerIdentity:Lorg/h2/value/Value;

    return-void
.end method

.method public setLazyQueryExecution(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/engine/Session;->lazyQueryExecution:Z

    return-void
.end method

.method public setLockTimeout(I)V
    .locals 0

    iput p1, p0, Lorg/h2/engine/Session;->lockTimeout:I

    return-void
.end method

.method public setParsingView(Z)V
    .locals 1

    iget v0, p0, Lorg/h2/engine/Session;->parsingView:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    add-int/2addr v0, p1

    iput v0, p0, Lorg/h2/engine/Session;->parsingView:I

    return-void
.end method

.method public setPowerOffCount(I)V
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, p1}, Lorg/h2/engine/Database;->setPowerOffCount(I)V

    return-void
.end method

.method public setPreparedTransaction(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lorg/h2/engine/Session;->currentTransactionName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/h2/engine/Session;->commit(Z)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/h2/engine/Session;->rollback()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getInDoubtTransactions()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x2

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/store/InDoubtTransaction;

    invoke-interface {v1}, Lorg/h2/store/InDoubtTransaction;->getTransactionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1, p2}, Lorg/h2/store/InDoubtTransaction;->setState(I)V

    :goto_1
    return-void

    :cond_4
    const p2, 0x16011

    invoke-static {p2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public setQueryTimeout(I)V
    .locals 2

    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    iget v0, v0, Lorg/h2/engine/DbSettings;->maxQueryTimeout:I

    if-eqz v0, :cond_1

    if-lt v0, p1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move p1, v0

    :cond_1
    iput p1, p0, Lorg/h2/engine/Session;->queryTimeout:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/h2/engine/Session;->cancelAtNs:J

    return-void
.end method

.method public setRedoLogBinary(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/engine/Session;->redoLogBinary:Z

    return-void
.end method

.method public setSavepoint()Lorg/h2/engine/Session$Savepoint;
    .locals 3

    new-instance v0, Lorg/h2/engine/Session$Savepoint;

    invoke-direct {v0}, Lorg/h2/engine/Session$Savepoint;-><init>()V

    iget-object v1, p0, Lorg/h2/engine/Session;->undoLog:Lorg/h2/engine/UndoLog;

    invoke-virtual {v1}, Lorg/h2/engine/UndoLog;->size()I

    move-result v1

    iput v1, v0, Lorg/h2/engine/Session$Savepoint;->logIndex:I

    iget-object v1, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/h2/engine/Session;->getStatementSavepoint()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/h2/engine/Session$Savepoint;->transactionSavepoint:J

    :cond_0
    return-object v0
.end method

.method public setSchemaSearchPath([Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lorg/h2/engine/Session;->modificationId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/h2/engine/Session;->modificationId:I

    iput-object p1, p0, Lorg/h2/engine/Session;->schemaSearchPath:[Ljava/lang/String;

    return-void
.end method

.method public setThrottle(I)V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/engine/Session;->throttleNs:J

    return-void
.end method

.method public setUndoLogEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/engine/Session;->undoLogEnabled:Z

    return-void
.end method

.method public setVariable(Ljava/lang/String;Lorg/h2/value/Value;)V
    .locals 2

    invoke-direct {p0}, Lorg/h2/engine/Session;->initVariables()V

    iget v0, p0, Lorg/h2/engine/Session;->modificationId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/h2/engine/Session;->modificationId:I

    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lorg/h2/engine/Session;->variables:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lorg/h2/value/Value;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Lorg/h2/value/Value;->copy(Lorg/h2/store/DataHandler;I)Lorg/h2/value/Value;

    move-result-object p2

    iget-object v0, p0, Lorg/h2/engine/Session;->variables:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :goto_1
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/h2/value/Value;->remove()V

    :cond_1
    return-void
.end method

.method public setWaitForLock(Lorg/h2/table/Table;Ljava/lang/Thread;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/engine/Session;->waitForLock:Lorg/h2/table/Table;

    iput-object p2, p0, Lorg/h2/engine/Session;->waitForLockThread:Ljava/lang/Thread;

    return-void
.end method

.method public startStatementWithinTransaction()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/h2/engine/Session;->startStatement:J

    return-void
.end method

.method public throttle()V
    .locals 7

    iget-wide v0, p0, Lorg/h2/engine/Session;->currentCommandStart:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/engine/Session;->currentCommandStart:J

    :cond_0
    iget-wide v0, p0, Lorg/h2/engine/Session;->throttleNs:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/h2/engine/Session;->lastThrottle:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x32

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    add-long/2addr v4, v2

    cmp-long v2, v4, v0

    if-lez v2, :cond_2

    return-void

    :cond_2
    iget-wide v2, p0, Lorg/h2/engine/Session;->throttleNs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/engine/Session;->lastThrottle:J

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/h2/engine/Session;->serialId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " (user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/engine/Session;->user:Lorg/h2/engine/User;

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unlock(Lorg/h2/table/Table;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Session;->locks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unlockReadLocks()V
    .locals 3

    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/h2/engine/Session;->locks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/h2/engine/Session;->locks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/table/Table;

    invoke-virtual {v1}, Lorg/h2/table/Table;->isLockedExclusively()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v1, p0}, Lorg/h2/table/Table;->unlock(Lorg/h2/engine/Session;)V

    iget-object v1, p0, Lorg/h2/engine/Session;->locks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    monitor-exit v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public waitIfExclusiveModeEnabled()V
    .locals 2

    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getLobSession()Lorg/h2/engine/Session;

    move-result-object v0

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getExclusiveSession()Lorg/h2/engine/Session;

    move-result-object v0

    if-eqz v0, :cond_3

    if-ne v0, p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
