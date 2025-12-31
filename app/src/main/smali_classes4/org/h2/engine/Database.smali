.class public Lorg/h2/engine/Database;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/store/DataHandler;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final SYSTEM_USER_NAME:Ljava/lang/String; = "DBA"

.field private static initialPowerOffCount:I


# instance fields
.field private final accessModeData:Ljava/lang/String;

.field private final aggregates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/engine/UserAggregate;",
            ">;"
        }
    .end annotation
.end field

.field private allowLiterals:I

.field private final autoServerMode:Z

.field private final autoServerPort:I

.field private backgroundException:Lorg/h2/message/DbException;

.field private cacheSize:I

.field private final cacheType:Ljava/lang/String;

.field private volatile checkpointAllowed:I

.field private volatile checkpointRunning:Z

.field private final cipher:Ljava/lang/String;

.field private closeDelay:I

.field private closeOnExit:Lorg/h2/engine/DatabaseCloser;

.field private volatile closing:Z

.field private cluster:Ljava/lang/String;

.field private final comments:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/engine/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private compactMode:I

.field private compareMode:Lorg/h2/value/CompareMode;

.field private compiler:Lorg/h2/util/SourceCompiler;

.field private final databaseName:Ljava/lang/String;

.field private final databaseShortName:Ljava/lang/String;

.field private final databaseURL:Ljava/lang/String;

.field private final dbSettings:Lorg/h2/engine/DbSettings;

.field private defaultTableType:I

.field private delayedCloser:Lorg/h2/engine/DatabaseCloser;

.field private deleteFilesOnDisconnect:Z

.field private eventListener:Lorg/h2/api/DatabaseEventListener;

.field private exclusiveSession:Lorg/h2/engine/Session;

.field private final fileEncryptionKey:[B

.field private final fileLockMethod:I

.field private final filePasswordHash:[B

.field private flushOnEachCommit:Z

.field private ignoreCase:Z

.field private infoSchema:Lorg/h2/schema/Schema;

.field private javaObjectSerializer:Lorg/h2/api/JavaObjectSerializer;

.field private volatile javaObjectSerializerInitialized:Z

.field private javaObjectSerializerName:Ljava/lang/String;

.field private linkConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/h2/table/TableLinkConnection;",
            "Lorg/h2/table/TableLinkConnection;",
            ">;"
        }
    .end annotation
.end field

.field private lobCompressionAlgorithm:Ljava/lang/String;

.field private lobFileListCache:Lorg/h2/util/SmallLRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/util/SmallLRUCache<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lobSession:Lorg/h2/engine/Session;

.field private lobStorage:Lorg/h2/store/LobStorageInterface;

.field private final lobSyncObject:Ljava/lang/Object;

.field private lock:Lorg/h2/store/FileLock;

.field private lockMode:I

.field private logMode:I

.field private mainSchema:Lorg/h2/schema/Schema;

.field private maxLengthInplaceLob:I

.field private maxMemoryRows:I

.field private maxMemoryUndo:I

.field private maxOperationMemory:I

.field private meta:Lorg/h2/table/Table;

.field private metaIdIndex:Lorg/h2/index/Index;

.field private volatile metaTablesInitialized:Z

.field private mode:Lorg/h2/engine/Mode;

.field private modificationDataId:J

.field private modificationMetaId:J

.field private multiThreaded:Z

.field private multiVersion:Z

.field private mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

.field private nextSessionId:I

.field private nextTempTableId:I

.field private final objectIds:Lorg/h2/util/BitField;

.field private optimizeReuseResults:Z

.field private final pageSize:I

.field private pageStore:Lorg/h2/store/PageStore;

.field private final persistent:Z

.field private powerOffCount:I

.field private publicRole:Lorg/h2/engine/Role;

.field private queryStatistics:Z

.field private queryStatisticsData:Lorg/h2/engine/QueryStatisticsData;

.field private queryStatisticsMaxEntries:I

.field private readOnly:Z

.field private volatile reconnectChangePending:Z

.field private final reconnectCheckDelayNs:J

.field private volatile reconnectCheckNext:J

.field private reconnectLastLock:Ljava/util/Properties;

.field private final reconnectSync:Ljava/lang/Object;

.field private referentialIntegrity:Z

.field private retentionTime:I

.field private final rights:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/engine/Right;",
            ">;"
        }
    .end annotation
.end field

.field private final roles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/engine/Role;",
            ">;"
        }
    .end annotation
.end field

.field private rowFactory:Lorg/h2/result/RowFactory;

.field private final schemas:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/schema/Schema;",
            ">;"
        }
    .end annotation
.end field

.field private server:Lorg/h2/tools/Server;

.field private final settings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/engine/Setting;",
            ">;"
        }
    .end annotation
.end field

.field private starting:Z

.field private systemSession:Lorg/h2/engine/Session;

.field private systemUser:Lorg/h2/engine/User;

.field private final tableEngines:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/api/TableEngine;",
            ">;"
        }
    .end annotation
.end field

.field private final tempFileDeleter:Lorg/h2/util/TempFileDeleter;

.field private trace:Lorg/h2/message/Trace;

.field private traceSystem:Lorg/h2/message/TraceSystem;

.field private final userDataTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/engine/UserDataType;",
            ">;"
        }
    .end annotation
.end field

.field private final userSessions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/h2/engine/Session;",
            ">;"
        }
    .end annotation
.end field

.field private final users:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/engine/User;",
            ">;"
        }
    .end annotation
.end field

.field private writeDelay:I

.field private writer:Lorg/h2/store/WriterThread;


# direct methods
.method public constructor <init>(Lorg/h2/engine/ConnectionInfo;Ljava/lang/String;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Database;->roles:Ljava/util/HashMap;

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Database;->users:Ljava/util/HashMap;

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Database;->settings:Ljava/util/HashMap;

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Database;->schemas:Ljava/util/HashMap;

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Database;->rights:Ljava/util/HashMap;

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Database;->userDataTypes:Ljava/util/HashMap;

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Database;->aggregates:Ljava/util/HashMap;

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Database;->comments:Ljava/util/HashMap;

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Database;->tableEngines:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Database;->userSessions:Ljava/util/Set;

    new-instance v0, Lorg/h2/util/BitField;

    invoke-direct {v0}, Lorg/h2/util/BitField;-><init>()V

    iput-object v0, p0, Lorg/h2/engine/Database;->objectIds:Lorg/h2/util/BitField;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/h2/engine/Database;->lobSyncObject:Ljava/lang/Object;

    const-string v0, "\'\'"

    iput-object v0, p0, Lorg/h2/engine/Database;->cluster:Ljava/lang/String;

    const/16 v0, 0x1f4

    iput v0, p0, Lorg/h2/engine/Database;->writeDelay:I

    sget v0, Lorg/h2/engine/SysProperties;->MAX_MEMORY_ROWS:I

    iput v0, p0, Lorg/h2/engine/Database;->maxMemoryRows:I

    const v0, 0xc350

    iput v0, p0, Lorg/h2/engine/Database;->maxMemoryUndo:I

    const/4 v0, 0x3

    iput v0, p0, Lorg/h2/engine/Database;->lockMode:I

    const/4 v1, 0x2

    iput v1, p0, Lorg/h2/engine/Database;->allowLiterals:I

    sget v2, Lorg/h2/engine/Database;->initialPowerOffCount:I

    iput v2, p0, Lorg/h2/engine/Database;->powerOffCount:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/h2/engine/Database;->optimizeReuseResults:Z

    iput-boolean v2, p0, Lorg/h2/engine/Database;->referentialIntegrity:Z

    const-string v3, "REGULAR"

    invoke-static {v3}, Lorg/h2/engine/Mode;->getInstance(Ljava/lang/String;)Lorg/h2/engine/Mode;

    move-result-object v3

    iput-object v3, p0, Lorg/h2/engine/Database;->mode:Lorg/h2/engine/Mode;

    const v3, 0x186a0

    iput v3, p0, Lorg/h2/engine/Database;->maxOperationMemory:I

    invoke-static {}, Lorg/h2/util/TempFileDeleter;->getInstance()Lorg/h2/util/TempFileDeleter;

    move-result-object v3

    iput-object v3, p0, Lorg/h2/engine/Database;->tempFileDeleter:Lorg/h2/util/TempFileDeleter;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lorg/h2/engine/Database;->reconnectSync:Ljava/lang/Object;

    const/4 v3, 0x0

    iput v3, p0, Lorg/h2/engine/Database;->defaultTableType:I

    const/16 v4, 0x64

    iput v4, p0, Lorg/h2/engine/Database;->queryStatisticsMaxEntries:I

    sget-object v4, Lorg/h2/result/RowFactory;->DEFAULT:Lorg/h2/result/RowFactory;

    iput-object v4, p0, Lorg/h2/engine/Database;->rowFactory:Lorg/h2/result/RowFactory;

    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getDbSettings()Lorg/h2/engine/DbSettings;

    move-result-object v5

    iput-object v5, p0, Lorg/h2/engine/Database;->dbSettings:Lorg/h2/engine/DbSettings;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget v7, v5, Lorg/h2/engine/DbSettings;->reconnectCheckDelay:I

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/h2/engine/Database;->reconnectCheckDelayNs:J

    const/4 v6, 0x0

    invoke-static {v6, v3}, Lorg/h2/value/CompareMode;->getInstance(Ljava/lang/String;I)Lorg/h2/value/CompareMode;

    move-result-object v7

    iput-object v7, p0, Lorg/h2/engine/Database;->compareMode:Lorg/h2/value/CompareMode;

    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->isPersistent()Z

    move-result v7

    iput-boolean v7, p0, Lorg/h2/engine/Database;->persistent:Z

    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getFilePasswordHash()[B

    move-result-object v7

    iput-object v7, p0, Lorg/h2/engine/Database;->filePasswordHash:[B

    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getFileEncryptionKey()[B

    move-result-object v7

    iput-object v7, p0, Lorg/h2/engine/Database;->fileEncryptionKey:[B

    iput-object v4, p0, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    invoke-direct {p0}, Lorg/h2/engine/Database;->parseDatabaseShortName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/h2/engine/Database;->databaseShortName:Ljava/lang/String;

    const/16 v4, 0x100

    iput v4, p0, Lorg/h2/engine/Database;->maxLengthInplaceLob:I

    iput-object p2, p0, Lorg/h2/engine/Database;->cipher:Ljava/lang/String;

    const-string p2, "FILE_LOCK"

    invoke-virtual {p1, p2, v6}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v4, "ACCESS_MODE_DATA"

    const-string v7, "rw"

    invoke-virtual {p1, v4, v7}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/h2/util/StringUtils;->toLowerEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/h2/engine/Database;->accessModeData:Ljava/lang/String;

    const-string v7, "AUTO_SERVER"

    invoke-virtual {p1, v7, v3}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lorg/h2/engine/Database;->autoServerMode:Z

    const-string v8, "AUTO_SERVER_PORT"

    invoke-virtual {p1, v8, v3}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lorg/h2/engine/Database;->autoServerPort:I

    const/high16 v8, 0x10000

    invoke-static {v8}, Lorg/h2/util/Utils;->scaleForAvailableMemory(I)I

    move-result v8

    const-string v9, "CACHE_SIZE"

    invoke-virtual {p1, v9, v8}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lorg/h2/engine/Database;->cacheSize:I

    const-string v8, "PAGE_SIZE"

    const/16 v9, 0x1000

    invoke-virtual {p1, v8, v9}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lorg/h2/engine/Database;->pageSize:I

    const-string v8, "r"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iput-boolean v2, p0, Lorg/h2/engine/Database;->readOnly:Z

    :cond_0
    iget-boolean v4, v5, Lorg/h2/engine/DbSettings;->mvStore:Z

    if-eqz v4, :cond_2

    if-nez p2, :cond_2

    if-eqz v7, :cond_1

    iput v2, p0, Lorg/h2/engine/Database;->fileLockMethod:I

    goto :goto_1

    :cond_1
    const/4 p2, 0x4

    :goto_0
    iput p2, p0, Lorg/h2/engine/Database;->fileLockMethod:I

    goto :goto_1

    :cond_2
    invoke-static {p2}, Lorg/h2/store/FileLock;->getFileLockMethod(Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :goto_1
    iget-boolean p2, v5, Lorg/h2/engine/DbSettings;->mvStore:Z

    if-eqz p2, :cond_4

    iget p2, p0, Lorg/h2/engine/Database;->fileLockMethod:I

    if-eq p2, v0, :cond_3

    goto :goto_2

    :cond_3
    const-string p1, "MV_STORE combined with FILE_LOCK=SERIALIZED"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_4
    :goto_2
    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getURL()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/engine/Database;->databaseURL:Ljava/lang/String;

    const-string p2, "DATABASE_EVENT_LISTENER"

    invoke-virtual {p1, p2, v6}, Lorg/h2/engine/ConnectionInfo;->removeProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    const-string v0, "\'"

    invoke-static {p2, v2, v2, v0}, Lorg/h2/util/StringUtils;->trim(Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/h2/engine/Database;->setEventListenerClass(Ljava/lang/String;)V

    :cond_5
    const-string p2, "MODE"

    invoke-virtual {p1, p2, v6}, Lorg/h2/engine/ConnectionInfo;->removeProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-static {p2}, Lorg/h2/engine/Mode;->getInstance(Ljava/lang/String;)Lorg/h2/engine/Mode;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/engine/Database;->mode:Lorg/h2/engine/Mode;

    :cond_6
    const-string p2, "MVCC"

    iget-boolean v0, v5, Lorg/h2/engine/DbSettings;->mvStore:Z

    invoke-virtual {p1, p2, v0}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lorg/h2/engine/Database;->multiVersion:Z

    const-string p2, "LOG"

    invoke-virtual {p1, p2, v1}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lorg/h2/engine/Database;->logMode:I

    const-string p2, "JAVA_OBJECT_SERIALIZER"

    invoke-virtual {p1, p2, v6}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/engine/Database;->javaObjectSerializerName:Ljava/lang/String;

    const-string p2, "MULTI_THREADED"

    invoke-virtual {p1, p2, v3}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lorg/h2/engine/Database;->multiThreaded:Z

    iget-boolean p2, v5, Lorg/h2/engine/DbSettings;->dbCloseOnExit:Z

    const/16 v0, 0xa

    invoke-virtual {p1, v0, v2}, Lorg/h2/engine/ConnectionInfo;->getIntProperty(II)I

    move-result v0

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v3}, Lorg/h2/engine/ConnectionInfo;->getIntProperty(II)I

    move-result v1

    const-string v2, "CACHE_TYPE"

    const-string v3, "LRU"

    invoke-virtual {p1, v2, v3}, Lorg/h2/engine/ConnectionInfo;->removeProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/engine/Database;->cacheType:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p2}, Lorg/h2/engine/Database;->openDatabase(IIZ)V

    return-void
.end method

.method private declared-synchronized addMeta(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-interface {p2}, Lorg/h2/engine/DbObject;->getId()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v1, p0, Lorg/h2/engine/Database;->starting:Z

    if-nez v1, :cond_1

    invoke-interface {p2}, Lorg/h2/engine/DbObject;->isTemporary()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/h2/engine/Database;->meta:Lorg/h2/table/Table;

    invoke-virtual {v1}, Lorg/h2/table/Table;->getTemplateRow()Lorg/h2/result/Row;

    move-result-object v1

    new-instance v2, Lorg/h2/engine/MetaRecord;

    invoke-direct {v2, p2}, Lorg/h2/engine/MetaRecord;-><init>(Lorg/h2/engine/DbObject;)V

    invoke-virtual {v2, v1}, Lorg/h2/engine/MetaRecord;->setRecord(Lorg/h2/result/SearchRow;)V

    iget-object p2, p0, Lorg/h2/engine/Database;->objectIds:Lorg/h2/util/BitField;

    invoke-virtual {p2, v0}, Lorg/h2/util/BitField;->set(I)V

    sget-boolean p2, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/h2/engine/Database;->verifyMetaLocked(Lorg/h2/engine/Session;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p2, p0, Lorg/h2/engine/Database;->meta:Lorg/h2/table/Table;

    invoke-virtual {p2, p1, v1}, Lorg/h2/table/Table;->addRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    invoke-virtual {p0}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/h2/engine/Database;->meta:Lorg/h2/table/Table;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lorg/h2/engine/Session;->log(Lorg/h2/table/Table;SLorg/h2/result/Row;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private checkMetaFree(Lorg/h2/engine/Session;I)V
    .locals 2

    iget-object v0, p0, Lorg/h2/engine/Database;->meta:Lorg/h2/table/Table;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/table/Table;->getTemplateSimpleRow(Z)Lorg/h2/result/SearchRow;

    move-result-object v0

    invoke-static {p2}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lorg/h2/result/SearchRow;->setValue(ILorg/h2/value/Value;)V

    iget-object p2, p0, Lorg/h2/engine/Database;->metaIdIndex:Lorg/h2/index/Index;

    invoke-interface {p2, p1, v0, v0}, Lorg/h2/index/Index;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object p1

    invoke-interface {p1}, Lorg/h2/index/Cursor;->next()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    :cond_0
    return-void
.end method

.method private declared-synchronized closeAllSessionsException(Lorg/h2/engine/Session;)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/h2/engine/Database;->userSessions:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v3, v2, [Lorg/h2/engine/Session;

    iget-object v4, p0, Lorg/h2/engine/Database;->userSessions:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v3, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v5, p1, :cond_0

    :try_start_1
    invoke-virtual {v5}, Lorg/h2/engine/Session;->rollback()V

    invoke-virtual {v5}, Lorg/h2/engine/Session;->close()V
    :try_end_1
    .catch Lorg/h2/message/DbException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v6

    :try_start_2
    iget-object v7, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v8, "disconnecting session #{0}"

    invoke-virtual {v5}, Lorg/h2/engine/Session;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v9, v0, [Ljava/lang/Object;

    aput-object v5, v9, v1

    invoke-virtual {v7, v6, v8, v9}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_1
    add-int/2addr v4, v0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized closeFiles()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTableEngine$Store;->closeImmediately()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_1
    iget-object v1, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v2, "close"

    invoke-virtual {v1, v0, v2}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized closeOpenFilesAndUnlock(Z)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/h2/engine/Database;->stopWriter()V

    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lorg/h2/store/PageStore;->checkpoint()V

    iget-boolean p1, p0, Lorg/h2/engine/Database;->readOnly:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    invoke-virtual {p1}, Lorg/h2/store/PageStore;->getPageStoreSession()Lorg/h2/engine/Session;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/engine/Database;->lockMeta(Lorg/h2/engine/Session;)Z

    iget-object p1, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    iget v0, p0, Lorg/h2/engine/Database;->compactMode:I

    invoke-virtual {p1, v0}, Lorg/h2/store/PageStore;->compact(I)V
    :try_end_1
    .catch Lorg/h2/message/DbException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :goto_0
    :try_start_2
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK2:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catchall_1
    move-exception p1

    goto/16 :goto_8

    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v1, "close"

    :goto_2
    invoke-virtual {v0, p1, v1}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK2:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/h2/message/DbException;->getErrorCode()I

    move-result v0

    const v1, 0x15ff2

    if-eq v0, v1, :cond_1

    const v1, 0xc418

    if-eq v0, v1, :cond_1

    const v1, 0x15faf

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    iget-object v0, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v1, "close"

    goto :goto_2

    :cond_2
    :goto_4
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/h2/engine/Database;->reconnectModified(Z)Z

    iget-object p1, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    if-eqz p1, :cond_6

    iget-object v0, p0, Lorg/h2/engine/Database;->dbSettings:Lorg/h2/engine/DbSettings;

    iget v0, v0, Lorg/h2/engine/DbSettings;->maxCompactTime:I

    int-to-long v1, v0

    iget v3, p0, Lorg/h2/engine/Database;->compactMode:I

    const/16 v4, 0x52

    if-ne v3, v4, :cond_3

    int-to-long v3, v0

    invoke-virtual {p1, v3, v4}, Lorg/h2/mvstore/db/MVTableEngine$Store;->compactFile(J)V

    goto :goto_6

    :cond_3
    const/16 p1, 0x54

    const-wide v4, 0x7fffffffffffffffL

    if-ne v3, p1, :cond_4

    :goto_5
    move-wide v1, v4

    goto :goto_6

    :cond_4
    invoke-virtual {p0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object p1

    iget-boolean p1, p1, Lorg/h2/engine/DbSettings;->defragAlways:Z

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    :goto_6
    iget-object p1, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    invoke-virtual {p1, v1, v2}, Lorg/h2/mvstore/db/MVTableEngine$Store;->close(J)V

    :cond_6
    invoke-direct {p0}, Lorg/h2/engine/Database;->closeFiles()V

    iget-boolean p1, p0, Lorg/h2/engine/Database;->persistent:Z

    if-eqz p1, :cond_7

    iget-object v0, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    if-nez v0, :cond_7

    iget v0, p0, Lorg/h2/engine/Database;->fileLockMethod:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_7

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    if-eqz p1, :cond_8

    :try_start_3
    invoke-direct {p0}, Lorg/h2/engine/Database;->deleteOldTempFiles()V

    :cond_8
    iget-object p1, p0, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lorg/h2/engine/Session;->close()V

    iput-object v0, p0, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    :cond_9
    iget-object p1, p0, Lorg/h2/engine/Database;->lobSession:Lorg/h2/engine/Session;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lorg/h2/engine/Session;->close()V

    iput-object v0, p0, Lorg/h2/engine/Database;->lobSession:Lorg/h2/engine/Session;

    :cond_a
    iget-object p1, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    if-eqz p1, :cond_c

    iget v1, p0, Lorg/h2/engine/Database;->fileLockMethod:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_b

    invoke-virtual {p1}, Lorg/h2/store/FileLock;->load()Ljava/util/Properties;

    move-result-object p1

    const-string v1, "changePending"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_b

    :try_start_4
    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lorg/h2/engine/Database;->reconnectCheckDelayNs:J

    long-to-double v1, v1

    const-wide v3, 0x3ff199999999999aL    # 1.1

    mul-double v1, v1, v3

    double-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_7

    :catch_1
    move-exception p1

    :try_start_5
    iget-object v1, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v2, "close"

    invoke-virtual {v1, p1, v2}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_b
    :goto_7
    iget-object p1, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    invoke-virtual {p1}, Lorg/h2/store/FileLock;->unlock()V

    iput-object v0, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_c
    monitor-exit p0

    return-void

    :goto_8
    monitor-exit p0

    throw p1
.end method

.method private deleteOldTempFiles()V
    .locals 3

    iget-object v0, p0, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->newDirectoryStream(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ".temp.db"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lorg/h2/store/fs/FileUtils;->tryDelete(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static exists(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".h2.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".mv.db"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private flushSequences()V
    .locals 2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/schema/SchemaObject;

    check-cast v1, Lorg/h2/schema/Sequence;

    invoke-virtual {v1}, Lorg/h2/schema/Sequence;->flushWithoutMargin()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getMap(I)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/engine/DbObject;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/16 v0, 0xa

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :pswitch_0
    iget-object p1, p0, Lorg/h2/engine/Database;->aggregates:Ljava/util/HashMap;

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lorg/h2/engine/Database;->comments:Ljava/util/HashMap;

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lorg/h2/engine/Database;->userDataTypes:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/h2/engine/Database;->rights:Ljava/util/HashMap;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/h2/engine/Database;->roles:Ljava/util/HashMap;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/h2/engine/Database;->settings:Ljava/util/HashMap;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lorg/h2/engine/Database;->schemas:Ljava/util/HashMap;

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lorg/h2/engine/Database;->users:Ljava/util/HashMap;

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initJavaObjectSerializer()V
    .locals 2

    iget-boolean v0, p0, Lorg/h2/engine/Database;->javaObjectSerializerInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/h2/engine/Database;->javaObjectSerializerInitialized:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/h2/engine/Database;->javaObjectSerializerName:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    :try_start_1
    invoke-static {v0}, Lorg/h2/util/JdbcUtils;->loadUserClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/api/JavaObjectSerializer;

    iput-object v0, p0, Lorg/h2/engine/Database;->javaObjectSerializer:Lorg/h2/api/JavaObjectSerializer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/engine/Database;->javaObjectSerializerInitialized:Z

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private initMetaTables()V
    .locals 6

    iget-boolean v0, p0, Lorg/h2/engine/Database;->metaTablesInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Database;->infoSchema:Lorg/h2/schema/Schema;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lorg/h2/engine/Database;->metaTablesInitialized:Z

    if-nez v1, :cond_2

    invoke-static {}, Lorg/h2/table/MetaTable;->getMetaTableTypeCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    new-instance v3, Lorg/h2/table/MetaTable;

    iget-object v4, p0, Lorg/h2/engine/Database;->infoSchema:Lorg/h2/schema/Schema;

    rsub-int/lit8 v5, v2, -0x1

    invoke-direct {v3, v4, v5, v2}, Lorg/h2/table/MetaTable;-><init>(Lorg/h2/schema/Schema;II)V

    iget-object v4, p0, Lorg/h2/engine/Database;->infoSchema:Lorg/h2/schema/Schema;

    invoke-virtual {v4, v3}, Lorg/h2/schema/Schema;->add(Lorg/h2/schema/SchemaObject;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/h2/engine/Database;->metaTablesInitialized:Z

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private declared-synchronized open(II)V
    .locals 21

    move-object/from16 v7, p0

    move/from16 v0, p1

    const/4 v1, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v2, "Lock file exists: "

    const-string v3, "/h2_"

    const-string v4, " - please convert the database to a SQL script and re-create it."

    const-string v5, "Old database: "

    monitor-enter p0

    :try_start_0
    iget-boolean v6, v7, Lorg/h2/engine/Database;->persistent:Z

    const/16 v10, 0xc4

    const/4 v12, 0x0

    if-eqz v6, :cond_11

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v7, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ".data.db"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v7, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ".h2.db"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v7, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".mv.db"

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v15

    invoke-static {v11}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v17

    if-eqz v13, :cond_1

    if-nez v15, :cond_1

    if-eqz v17, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x15fc0

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :cond_1
    :goto_0
    if-eqz v15, :cond_2

    invoke-static {v14}, Lorg/h2/store/fs/FileUtils;->canWrite(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iput-boolean v9, v7, Lorg/h2/engine/Database;->readOnly:Z

    :cond_2
    if-eqz v17, :cond_3

    invoke-static {v11}, Lorg/h2/store/fs/FileUtils;->canWrite(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    iput-boolean v9, v7, Lorg/h2/engine/Database;->readOnly:Z

    :cond_3
    if-eqz v15, :cond_4

    if-nez v17, :cond_4

    iget-object v4, v7, Lorg/h2/engine/Database;->dbSettings:Lorg/h2/engine/DbSettings;

    iput-boolean v8, v4, Lorg/h2/engine/DbSettings;->mvStore:Z

    :cond_4
    iget-boolean v4, v7, Lorg/h2/engine/Database;->readOnly:Z

    const/4 v5, 0x3

    if-eqz v4, :cond_6

    if-lt v0, v5, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "java.io.tmpdir"

    const-string v11, "."

    invoke-static {v6, v11}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/h2/message/TraceSystem;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".trace.db"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/h2/message/TraceSystem;-><init>(Ljava/lang/String;)V

    iput-object v4, v7, Lorg/h2/engine/Database;->traceSystem:Lorg/h2/message/TraceSystem;

    goto :goto_2

    :cond_5
    new-instance v3, Lorg/h2/message/TraceSystem;

    invoke-direct {v3, v12}, Lorg/h2/message/TraceSystem;-><init>(Ljava/lang/String;)V

    :goto_1
    iput-object v3, v7, Lorg/h2/engine/Database;->traceSystem:Lorg/h2/message/TraceSystem;

    goto :goto_2

    :cond_6
    new-instance v3, Lorg/h2/message/TraceSystem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v7, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".trace.db"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/h2/message/TraceSystem;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_2
    iget-object v3, v7, Lorg/h2/engine/Database;->traceSystem:Lorg/h2/message/TraceSystem;

    invoke-virtual {v3, v0}, Lorg/h2/message/TraceSystem;->setLevelFile(I)V

    iget-object v0, v7, Lorg/h2/engine/Database;->traceSystem:Lorg/h2/message/TraceSystem;

    move/from16 v3, p2

    invoke-virtual {v0, v3}, Lorg/h2/message/TraceSystem;->setLevelSystemOut(I)V

    iget-object v0, v7, Lorg/h2/engine/Database;->traceSystem:Lorg/h2/message/TraceSystem;

    invoke-virtual {v0, v1}, Lorg/h2/message/TraceSystem;->getTrace(I)Lorg/h2/message/Trace;

    move-result-object v0

    iput-object v0, v7, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v3, "opening {0} (build {1})"

    iget-object v4, v7, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v8

    aput-object v6, v1, v9

    invoke-virtual {v0, v3, v1}, Lorg/h2/message/Trace;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, v7, Lorg/h2/engine/Database;->autoServerMode:Z

    if-eqz v0, :cond_8

    iget-boolean v0, v7, Lorg/h2/engine/Database;->readOnly:Z

    if-nez v0, :cond_7

    iget v0, v7, Lorg/h2/engine/Database;->fileLockMethod:I

    if-eqz v0, :cond_7

    if-eq v0, v5, :cond_7

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    iget-boolean v0, v7, Lorg/h2/engine/Database;->persistent:Z

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    const-string v0, "autoServerMode && (readOnly || fileLockMethod == NO || fileLockMethod == SERIALIZED || fileLockMethod == FS || inMemory)"

    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_8
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v7, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".lock.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, v7, Lorg/h2/engine/Database;->readOnly:Z

    if-eqz v1, :cond_a

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_4

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x15fa4

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_a
    :goto_4
    iget-boolean v1, v7, Lorg/h2/engine/Database;->readOnly:Z

    if-nez v1, :cond_b

    iget v1, v7, Lorg/h2/engine/Database;->fileLockMethod:I

    if-eqz v1, :cond_b

    const/4 v2, 0x4

    if-eq v1, v2, :cond_b

    new-instance v1, Lorg/h2/store/FileLock;

    iget-object v2, v7, Lorg/h2/engine/Database;->traceSystem:Lorg/h2/message/TraceSystem;

    const/16 v3, 0x3e8

    invoke-direct {v1, v2, v0, v3}, Lorg/h2/store/FileLock;-><init>(Lorg/h2/message/TraceSystem;Ljava/lang/String;I)V

    iput-object v1, v7, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    iget v0, v7, Lorg/h2/engine/Database;->fileLockMethod:I

    invoke-virtual {v1, v0}, Lorg/h2/store/FileLock;->lock(I)V

    iget-boolean v0, v7, Lorg/h2/engine/Database;->autoServerMode:Z

    if-eqz v0, :cond_b

    iget-object v0, v7, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    invoke-virtual {v0}, Lorg/h2/store/FileLock;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lorg/h2/engine/Database;->startServer(Ljava/lang/String;)V

    :cond_b
    sget-boolean v0, Lorg/h2/engine/SysProperties;->MODIFY_ON_WRITE:Z

    if-eqz v0, :cond_c

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lorg/h2/engine/Database;->isReconnectNeeded()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_5

    :cond_c
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lorg/h2/engine/Database;->isReconnectNeeded()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual/range {p0 .. p0}, Lorg/h2/engine/Database;->beforeWriting()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_6

    :cond_d
    invoke-direct/range {p0 .. p0}, Lorg/h2/engine/Database;->deleteOldTempFiles()V

    iput-boolean v9, v7, Lorg/h2/engine/Database;->starting:Z

    sget-boolean v0, Lorg/h2/engine/SysProperties;->MODIFY_ON_WRITE:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_e

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/h2/engine/Database;->getPageStore()Lorg/h2/store/PageStore;
    :try_end_1
    .catch Lorg/h2/message/DbException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_2
    invoke-virtual {v1}, Lorg/h2/message/DbException;->getErrorCode()I

    move-result v0

    const v2, 0x15ff1

    if-ne v0, v2, :cond_f

    iput-object v12, v7, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lorg/h2/engine/Database;->beforeWriting()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_7

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lorg/h2/engine/Database;->getPageStore()Lorg/h2/store/PageStore;

    goto :goto_8

    :cond_f
    throw v1

    :goto_8
    iput-boolean v8, v7, Lorg/h2/engine/Database;->starting:Z

    iget-object v0, v7, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    if-nez v0, :cond_10

    iget v0, v7, Lorg/h2/engine/Database;->writeDelay:I

    invoke-static {v7, v0}, Lorg/h2/store/WriterThread;->create(Lorg/h2/engine/Database;I)Lorg/h2/store/WriterThread;

    move-result-object v0

    iput-object v0, v7, Lorg/h2/engine/Database;->writer:Lorg/h2/store/WriterThread;

    goto :goto_9

    :cond_10
    iget v0, v7, Lorg/h2/engine/Database;->writeDelay:I

    invoke-virtual {v7, v0}, Lorg/h2/engine/Database;->setWriteDelay(I)V

    goto :goto_9

    :cond_11
    iget-boolean v0, v7, Lorg/h2/engine/Database;->autoServerMode:Z

    if-nez v0, :cond_1b

    new-instance v0, Lorg/h2/message/TraceSystem;

    invoke-direct {v0, v12}, Lorg/h2/message/TraceSystem;-><init>(Ljava/lang/String;)V

    iput-object v0, v7, Lorg/h2/engine/Database;->traceSystem:Lorg/h2/message/TraceSystem;

    invoke-virtual {v0, v1}, Lorg/h2/message/TraceSystem;->getTrace(I)Lorg/h2/message/Trace;

    move-result-object v0

    iput-object v0, v7, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    iget-object v0, v7, Lorg/h2/engine/Database;->dbSettings:Lorg/h2/engine/DbSettings;

    iget-boolean v0, v0, Lorg/h2/engine/DbSettings;->mvStore:Z

    if-eqz v0, :cond_12

    invoke-virtual/range {p0 .. p0}, Lorg/h2/engine/Database;->getPageStore()Lorg/h2/store/PageStore;

    :cond_12
    :goto_9
    new-instance v5, Lorg/h2/engine/User;

    const-string v0, "DBA"

    invoke-direct {v5, v7, v8, v0, v9}, Lorg/h2/engine/User;-><init>(Lorg/h2/engine/Database;ILjava/lang/String;Z)V

    iput-object v5, v7, Lorg/h2/engine/Database;->systemUser:Lorg/h2/engine/User;

    new-instance v0, Lorg/h2/schema/Schema;

    const-string v4, "PUBLIC"

    const/4 v6, 0x1

    const/4 v3, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/h2/schema/Schema;-><init>(Lorg/h2/engine/Database;ILjava/lang/String;Lorg/h2/engine/User;Z)V

    iput-object v0, v7, Lorg/h2/engine/Database;->mainSchema:Lorg/h2/schema/Schema;

    new-instance v0, Lorg/h2/schema/Schema;

    const-string v4, "INFORMATION_SCHEMA"

    iget-object v5, v7, Lorg/h2/engine/Database;->systemUser:Lorg/h2/engine/User;

    const/4 v6, 0x1

    const/4 v3, -0x1

    move-object v1, v0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/h2/schema/Schema;-><init>(Lorg/h2/engine/Database;ILjava/lang/String;Lorg/h2/engine/User;Z)V

    iput-object v0, v7, Lorg/h2/engine/Database;->infoSchema:Lorg/h2/schema/Schema;

    iget-object v0, v7, Lorg/h2/engine/Database;->schemas:Ljava/util/HashMap;

    iget-object v1, v7, Lorg/h2/engine/Database;->mainSchema:Lorg/h2/schema/Schema;

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lorg/h2/engine/Database;->mainSchema:Lorg/h2/schema/Schema;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v7, Lorg/h2/engine/Database;->schemas:Ljava/util/HashMap;

    iget-object v1, v7, Lorg/h2/engine/Database;->infoSchema:Lorg/h2/schema/Schema;

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lorg/h2/engine/Database;->infoSchema:Lorg/h2/schema/Schema;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/h2/engine/Role;

    const-string v1, "PUBLIC"

    invoke-direct {v0, v7, v8, v1, v9}, Lorg/h2/engine/Role;-><init>(Lorg/h2/engine/Database;ILjava/lang/String;Z)V

    iput-object v0, v7, Lorg/h2/engine/Database;->publicRole:Lorg/h2/engine/Role;

    iget-object v1, v7, Lorg/h2/engine/Database;->roles:Ljava/util/HashMap;

    const-string v2, "PUBLIC"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v7, Lorg/h2/engine/Database;->systemUser:Lorg/h2/engine/User;

    invoke-virtual {v0, v9}, Lorg/h2/engine/User;->setAdmin(Z)V

    new-instance v0, Lorg/h2/engine/Session;

    iget-object v1, v7, Lorg/h2/engine/Database;->systemUser:Lorg/h2/engine/User;

    iget v2, v7, Lorg/h2/engine/Database;->nextSessionId:I

    add-int/2addr v2, v9

    iput v2, v7, Lorg/h2/engine/Database;->nextSessionId:I

    invoke-direct {v0, v7, v1, v2}, Lorg/h2/engine/Session;-><init>(Lorg/h2/engine/Database;Lorg/h2/engine/User;I)V

    iput-object v0, v7, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    new-instance v0, Lorg/h2/engine/Session;

    iget-object v1, v7, Lorg/h2/engine/Database;->systemUser:Lorg/h2/engine/User;

    iget v2, v7, Lorg/h2/engine/Database;->nextSessionId:I

    add-int/2addr v2, v9

    iput v2, v7, Lorg/h2/engine/Database;->nextSessionId:I

    invoke-direct {v0, v7, v1, v2}, Lorg/h2/engine/Session;-><init>(Lorg/h2/engine/Database;Lorg/h2/engine/User;I)V

    iput-object v0, v7, Lorg/h2/engine/Database;->lobSession:Lorg/h2/engine/Session;

    new-instance v0, Lorg/h2/command/ddl/CreateTableData;

    invoke-direct {v0}, Lorg/h2/command/ddl/CreateTableData;-><init>()V

    iget-object v1, v0, Lorg/h2/command/ddl/CreateTableData;->columns:Ljava/util/ArrayList;

    new-instance v2, Lorg/h2/table/Column;

    const-string v3, "ID"

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v8}, Lorg/h2/table/Column;->setNullable(Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/h2/table/Column;

    const-string v5, "HEAD"

    invoke-direct {v3, v5, v4}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/h2/table/Column;

    const-string v5, "TYPE"

    invoke-direct {v3, v5, v4}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/h2/table/Column;

    const-string v4, "SQL"

    const/16 v5, 0xd

    invoke-direct {v3, v4, v5}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v7, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lorg/h2/store/PageStore;->isNew()Z

    move-result v1

    goto :goto_a

    :cond_13
    const/4 v1, 0x1

    :goto_a
    const-string v3, "SYS"

    iput-object v3, v0, Lorg/h2/command/ddl/CreateTableData;->tableName:Ljava/lang/String;

    iput v8, v0, Lorg/h2/command/ddl/CreateTableData;->id:I

    iput-boolean v8, v0, Lorg/h2/command/ddl/CreateTableData;->temporary:Z

    iget-boolean v3, v7, Lorg/h2/engine/Database;->persistent:Z

    iput-boolean v3, v0, Lorg/h2/command/ddl/CreateTableData;->persistData:Z

    iput-boolean v3, v0, Lorg/h2/command/ddl/CreateTableData;->persistIndexes:Z

    iput-boolean v1, v0, Lorg/h2/command/ddl/CreateTableData;->create:Z

    iput-boolean v9, v0, Lorg/h2/command/ddl/CreateTableData;->isHidden:Z

    iget-object v1, v7, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    iput-object v1, v0, Lorg/h2/command/ddl/CreateTableData;->session:Lorg/h2/engine/Session;

    iget-object v1, v7, Lorg/h2/engine/Database;->mainSchema:Lorg/h2/schema/Schema;

    invoke-virtual {v1, v0}, Lorg/h2/schema/Schema;->createTable(Lorg/h2/command/ddl/CreateTableData;)Lorg/h2/table/Table;

    move-result-object v0

    iput-object v0, v7, Lorg/h2/engine/Database;->meta:Lorg/h2/table/Table;

    new-array v0, v9, [Lorg/h2/table/Column;

    aput-object v2, v0, v8

    invoke-static {v0}, Lorg/h2/table/IndexColumn;->wrap([Lorg/h2/table/Column;)[Lorg/h2/table/IndexColumn;

    move-result-object v17

    iget-object v13, v7, Lorg/h2/engine/Database;->meta:Lorg/h2/table/Table;

    iget-object v14, v7, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    const-string v15, "SYS_ID"

    invoke-static {v8, v8}, Lorg/h2/index/IndexType;->createPrimaryKey(ZZ)Lorg/h2/index/IndexType;

    move-result-object v18

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v20}, Lorg/h2/table/Table;->addIndex(Lorg/h2/engine/Session;Ljava/lang/String;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;ZLjava/lang/String;)Lorg/h2/index/Index;

    move-result-object v0

    iput-object v0, v7, Lorg/h2/engine/Database;->metaIdIndex:Lorg/h2/index/Index;

    iget-object v0, v7, Lorg/h2/engine/Database;->objectIds:Lorg/h2/util/BitField;

    invoke-virtual {v0, v8}, Lorg/h2/util/BitField;->set(I)V

    iput-boolean v9, v7, Lorg/h2/engine/Database;->starting:Z

    iget-object v0, v7, Lorg/h2/engine/Database;->metaIdIndex:Lorg/h2/index/Index;

    iget-object v1, v7, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    invoke-interface {v0, v1, v12, v12}, Lorg/h2/index/Index;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object v0

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    :goto_b
    invoke-interface {v0}, Lorg/h2/index/Cursor;->next()Z

    move-result v2

    if-eqz v2, :cond_14

    new-instance v2, Lorg/h2/engine/MetaRecord;

    invoke-interface {v0}, Lorg/h2/index/Cursor;->get()Lorg/h2/result/Row;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/h2/engine/MetaRecord;-><init>(Lorg/h2/result/SearchRow;)V

    iget-object v3, v7, Lorg/h2/engine/Database;->objectIds:Lorg/h2/util/BitField;

    invoke-virtual {v2}, Lorg/h2/engine/MetaRecord;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/h2/util/BitField;->set(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_14
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v2, v7, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/engine/MetaRecord;

    iget-object v3, v7, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    iget-object v4, v7, Lorg/h2/engine/Database;->eventListener:Lorg/h2/api/DatabaseEventListener;

    invoke-virtual {v1, v7, v3, v4}, Lorg/h2/engine/MetaRecord;->execute(Lorg/h2/engine/Database;Lorg/h2/engine/Session;Lorg/h2/api/DatabaseEventListener;)V

    goto :goto_c

    :catchall_1
    move-exception v0

    goto/16 :goto_e

    :cond_15
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, v7, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTableEngine$Store;->initTransactions()V

    iget-object v0, v7, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    iget-object v1, v7, Lorg/h2/engine/Database;->objectIds:Lorg/h2/util/BitField;

    invoke-virtual {v0, v1}, Lorg/h2/mvstore/db/MVTableEngine$Store;->removeTemporaryMaps(Lorg/h2/util/BitField;)V

    :cond_16
    iget-object v0, v7, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    invoke-direct {v7, v0}, Lorg/h2/engine/Database;->recompileInvalidViews(Lorg/h2/engine/Session;)V

    iput-boolean v8, v7, Lorg/h2/engine/Database;->starting:Z

    iget-boolean v0, v7, Lorg/h2/engine/Database;->readOnly:Z

    if-nez v0, :cond_19

    const/16 v0, 0x22

    invoke-static {v0}, Lorg/h2/command/dml/SetTypes;->getTypeName(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v7, Lorg/h2/engine/Database;->settings:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_17

    new-instance v1, Lorg/h2/engine/Setting;

    invoke-virtual/range {p0 .. p0}, Lorg/h2/engine/Database;->allocateObjectId()I

    move-result v2

    invoke-direct {v1, v7, v2, v0}, Lorg/h2/engine/Setting;-><init>(Lorg/h2/engine/Database;ILjava/lang/String;)V

    invoke-virtual {v1, v10}, Lorg/h2/engine/Setting;->setIntValue(I)V

    iget-object v0, v7, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    invoke-virtual {v7, v0}, Lorg/h2/engine/Database;->lockMeta(Lorg/h2/engine/Session;)Z

    iget-object v0, v7, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    invoke-virtual {v7, v0, v1}, Lorg/h2/engine/Database;->addDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    :cond_17
    iget-object v0, v7, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getObjectIds()Lorg/h2/util/BitField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/util/BitField;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_19

    invoke-virtual {v0, v2}, Lorg/h2/util/BitField;->get(I)Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object v3, v7, Lorg/h2/engine/Database;->objectIds:Lorg/h2/util/BitField;

    invoke-virtual {v3, v2}, Lorg/h2/util/BitField;->get(I)Z

    move-result v3

    if-nez v3, :cond_18

    iget-object v3, v7, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unused object id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/h2/message/Trace;->info(Ljava/lang/String;)V

    iget-object v3, v7, Lorg/h2/engine/Database;->objectIds:Lorg/h2/util/BitField;

    invoke-virtual {v3, v2}, Lorg/h2/util/BitField;->set(I)V

    :cond_18
    add-int/2addr v2, v9

    goto :goto_d

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lorg/h2/engine/Database;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/h2/store/LobStorageInterface;->init()V

    iget-object v0, v7, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    invoke-virtual {v0, v9}, Lorg/h2/engine/Session;->commit(Z)V

    iget-object v0, v7, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v1, "opened {0}"

    iget-object v2, v7, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v2, v3, v8

    invoke-virtual {v0, v1, v3}, Lorg/h2/message/Trace;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, v7, Lorg/h2/engine/Database;->checkpointAllowed:I

    if-lez v0, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lorg/h2/engine/Database;->afterWriting()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1a
    monitor-exit p0

    return-void

    :goto_e
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    :cond_1b
    const-string v0, "autoServerMode && inMemory"

    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_f
    monitor-exit p0

    throw v0
.end method

.method private openDatabase(IIZ)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/h2/engine/Database;->open(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_0

    :try_start_1
    new-instance p1, Lorg/h2/engine/DatabaseCloser;

    invoke-direct {p1, p0, v1, v0}, Lorg/h2/engine/DatabaseCloser;-><init>(Lorg/h2/engine/Database;IZ)V

    iput-object p1, p0, Lorg/h2/engine/Database;->closeOnExit:Lorg/h2/engine/DatabaseCloser;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    iget-object p2, p0, Lorg/h2/engine/Database;->closeOnExit:Lorg/h2/engine/DatabaseCloser;

    invoke-virtual {p1, p2}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :cond_0
    :goto_0
    return-void

    :goto_1
    instance-of p2, p1, Ljava/lang/OutOfMemoryError;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    :cond_1
    iget-object p2, p0, Lorg/h2/engine/Database;->traceSystem:Lorg/h2/message/TraceSystem;

    if-eqz p2, :cond_3

    instance-of p2, p1, Ljava/sql/SQLException;

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Ljava/sql/SQLException;

    invoke-virtual {p2}, Ljava/sql/SQLException;->getErrorCode()I

    move-result p2

    const p3, 0x15fa4

    if-eq p2, p3, :cond_2

    iget-object p2, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    iget-object p3, p0, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p3, v0, v1

    const-string p3, "opening {0}"

    invoke-virtual {p2, p1, p3, v0}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object p2, p0, Lorg/h2/engine/Database;->traceSystem:Lorg/h2/message/TraceSystem;

    invoke-virtual {p2}, Lorg/h2/message/TraceSystem;->close()V

    :cond_3
    invoke-direct {p0, v1}, Lorg/h2/engine/Database;->closeOpenFilesAndUnlock(Z)V

    invoke-static {p1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private parseDatabaseShortName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "/\\:,;"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string v0, "unnamed"

    :cond_3
    iget-object v1, p0, Lorg/h2/engine/Database;->dbSettings:Lorg/h2/engine/DbSettings;

    iget-boolean v1, v1, Lorg/h2/engine/DbSettings;->databaseToUpper:Z

    if-eqz v1, :cond_4

    invoke-static {v0}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method private recompileInvalidViews(Lorg/h2/engine/Session;)V
    .locals 5

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/h2/engine/Database;->getAllTablesAndViews(Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/table/Table;

    instance-of v4, v3, Lorg/h2/table/TableView;

    if-eqz v4, :cond_1

    check-cast v3, Lorg/h2/table/TableView;

    invoke-virtual {v3}, Lorg/h2/table/TableView;->isInvalid()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4, v0}, Lorg/h2/table/TableView;->recompile(Lorg/h2/engine/Session;ZZ)Lorg/h2/message/DbException;

    invoke-virtual {v3}, Lorg/h2/table/TableView;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    if-nez v2, :cond_0

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/table/TableView;->clearIndexCaches(Lorg/h2/engine/Database;)V

    return-void
.end method

.method private declared-synchronized reconnectModified(Z)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "true-"

    const-string v3, ""

    const-string v4, ""

    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Lorg/h2/engine/Database;->readOnly:Z

    if-nez v5, :cond_b

    iget-object v5, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    if-eqz v5, :cond_b

    iget v5, p0, Lorg/h2/engine/Database;->fileLockMethod:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    goto/16 :goto_5

    :cond_0
    :try_start_1
    iget-boolean v5, p0, Lorg/h2/engine/Database;->reconnectChangePending:Z

    const/4 v6, 0x0

    if-ne p1, v5, :cond_4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v7, p0, Lorg/h2/engine/Database;->reconnectCheckNext:J

    cmp-long v5, v2, v7

    if-lez v5, :cond_3

    if-eqz p1, :cond_2

    iget-object v5, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    invoke-virtual {v4}, Lorg/h2/store/PageStore;->getWriteCountTotal()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    iget-object v4, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    const-string v5, "logPos"

    invoke-virtual {v4, v5, v6}, Lorg/h2/store/FileLock;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    invoke-virtual {v4}, Lorg/h2/store/FileLock;->save()Ljava/util/Properties;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :catch_0
    move-exception v2

    goto/16 :goto_4

    :cond_2
    :goto_1
    iget-wide v4, p0, Lorg/h2/engine/Database;->reconnectCheckDelayNs:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/h2/engine/Database;->reconnectCheckNext:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return v1

    :cond_4
    :try_start_2
    iget-object v4, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    invoke-virtual {v4}, Lorg/h2/store/FileLock;->load()Ljava/util/Properties;

    move-result-object v4

    const-wide v7, 0x3ff199999999999aL    # 1.1

    if-eqz p1, :cond_6

    const-string v5, "changePending"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_5

    monitor-exit p0

    return v0

    :cond_5
    :try_start_3
    iget-object v5, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v9, "wait before writing"

    invoke-virtual {v5, v9}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v9, p0, Lorg/h2/engine/Database;->reconnectCheckDelayNs:J

    long-to-double v9, v9

    mul-double v9, v9, v7

    double-to-long v9, v9

    invoke-virtual {v5, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    iget-object v5, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    invoke-virtual {v5}, Lorg/h2/store/FileLock;->load()Ljava/util/Properties;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v4, :cond_6

    monitor-exit p0

    return v0

    :cond_6
    :try_start_4
    iget-object v4, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    if-nez v4, :cond_7

    move-object v3, v6

    goto :goto_2

    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    invoke-virtual {v3}, Lorg/h2/store/PageStore;->getWriteCountTotal()J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    iget-object v4, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    const-string v5, "logPos"

    invoke-virtual {v4, v5, v3}, Lorg/h2/store/FileLock;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_8

    iget-object v3, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    const-string v4, "changePending"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/h2/store/FileLock;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    iget-object v2, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    const-string v3, "changePending"

    invoke-virtual {v2, v3, v6}, Lorg/h2/store/FileLock;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/h2/engine/Database;->reconnectCheckDelayNs:J

    const-wide/16 v9, 0x2

    mul-long v4, v4, v9

    add-long/2addr v4, v2

    iput-wide v4, p0, Lorg/h2/engine/Database;->reconnectCheckNext:J

    iget-object v2, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    invoke-virtual {v2}, Lorg/h2/store/FileLock;->save()Ljava/util/Properties;

    move-result-object v2

    if-eqz p1, :cond_9

    iget-object v3, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v4, "wait before writing again"

    invoke-virtual {v3, v4}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p0, Lorg/h2/engine/Database;->reconnectCheckDelayNs:J

    long-to-double v4, v4

    mul-double v4, v4, v7

    double-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    iget-object v3, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    invoke-virtual {v3}, Lorg/h2/store/FileLock;->load()Ljava/util/Properties;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v3, :cond_a

    monitor-exit p0

    return v0

    :cond_9
    const-wide/16 v3, 0x1

    :try_start_5
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    :cond_a
    iput-object v2, p0, Lorg/h2/engine/Database;->reconnectLastLock:Ljava/util/Properties;

    iput-boolean p1, p0, Lorg/h2/engine/Database;->reconnectChangePending:Z

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/h2/engine/Database;->reconnectCheckDelayNs:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/h2/engine/Database;->reconnectCheckNext:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v1

    :goto_4
    :try_start_6
    iget-object v3, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v4, "pending {0}"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {v3, v2, v4, v1}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return v0

    :cond_b
    :goto_5
    monitor-exit p0

    return v1

    :goto_6
    monitor-exit p0

    throw p1
.end method

.method private removeOrphanedLobs()V
    .locals 4

    iget-boolean v0, p0, Lorg/h2/engine/Database;->persistent:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Database;->infoSchema:Lorg/h2/schema/Schema;

    iget-object v1, p0, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    const-string v2, "LOB_DATA"

    invoke-virtual {v0, v1, v2}, Lorg/h2/schema/Schema;->findTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    or-int/2addr v0, v1

    if-nez v0, :cond_3

    return-void

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/engine/Database;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    iget-object v0, p0, Lorg/h2/engine/Database;->lobStorage:Lorg/h2/store/LobStorageInterface;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lorg/h2/store/LobStorageInterface;->removeAllForTable(I)V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v2, "close"

    invoke-virtual {v1, v0, v2}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static setInitialPowerOffCount(I)V
    .locals 0

    sput p0, Lorg/h2/engine/Database;->initialPowerOffCount:I

    return-void
.end method

.method private startServer(Ljava/lang/String;)V
    .locals 7

    .line 1
    :try_start_0
    const-string v0, "-tcpPort"

    .line 2
    .line 3
    iget v1, p0, Lorg/h2/engine/Database;->autoServerPort:I

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "-tcpAllowOthers"

    .line 10
    .line 11
    const-string v3, "-tcpDaemon"

    .line 12
    .line 13
    const-string v4, "-key"

    .line 14
    .line 15
    iget-object v6, p0, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    .line 16
    .line 17
    move-object v5, p1

    .line 18
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lorg/h2/tools/Server;->createTcpServer([Ljava/lang/String;)Lorg/h2/tools/Server;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lorg/h2/engine/Database;->server:Lorg/h2/tools/Server;

    .line 27
    .line 28
    invoke-virtual {p1}, Lorg/h2/tools/Server;->start()Lorg/h2/tools/Server;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lorg/h2/util/NetUtils;->getLocalAddress()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v0, ":"

    .line 36
    .line 37
    invoke-static {p1, v0}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lorg/h2/engine/Database;->server:Lorg/h2/tools/Server;

    .line 42
    .line 43
    invoke-virtual {v1}, Lorg/h2/tools/Server;->getPort()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v1, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    .line 55
    .line 56
    const-string v2, "server"

    .line 57
    .line 58
    invoke-virtual {v1, v2, v0}, Lorg/h2/store/FileLock;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-static {p1}, Lorg/h2/util/NetUtils;->getHostName(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iget-object v0, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    .line 66
    .line 67
    const-string v1, "hostName"

    .line 68
    .line 69
    invoke-virtual {v0, v1, p1}, Lorg/h2/store/FileLock;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    .line 73
    .line 74
    invoke-virtual {p1}, Lorg/h2/store/FileLock;->save()Ljava/util/Properties;

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :catch_0
    move-exception p1

    .line 79
    invoke-static {p1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    throw p1
.end method

.method private stopServer()V
    .locals 2

    iget-object v0, p0, Lorg/h2/engine/Database;->server:Lorg/h2/tools/Server;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/h2/engine/Database;->server:Lorg/h2/tools/Server;

    invoke-virtual {v0}, Lorg/h2/tools/Server;->stop()V

    :cond_0
    return-void
.end method

.method private stopWriter()V
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Database;->writer:Lorg/h2/store/WriterThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/h2/store/WriterThread;->stopThread()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/engine/Database;->writer:Lorg/h2/store/WriterThread;

    :cond_0
    return-void
.end method

.method private throwLastBackgroundException()V
    .locals 3

    iget-object v0, p0, Lorg/h2/engine/Database;->backgroundException:Lorg/h2/message/DbException;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/h2/engine/Database;->backgroundException:Lorg/h2/message/DbException;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/h2/message/DbException;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized updateMetaAndFirstLevelChildren(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-interface {p2}, Lorg/h2/engine/DbObject;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/h2/engine/Database;->findComment(Lorg/h2/engine/DbObject;)Lorg/h2/engine/Comment;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/h2/engine/Database;->updateMeta(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/engine/DbObject;

    invoke-interface {v0}, Lorg/h2/engine/DbObject;->getCreateSQL()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, v0}, Lorg/h2/engine/Database;->updateMeta(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized addDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-interface {p2}, Lorg/h2/engine/DbObject;->getId()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lorg/h2/engine/Database;->starting:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/h2/engine/Database;->checkWritingAllowed()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/h2/engine/DbObject;->getType()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/h2/engine/Database;->getMap(I)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {p2}, Lorg/h2/engine/DbObject;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    move-object v1, p2

    check-cast v1, Lorg/h2/engine/User;

    invoke-virtual {v1}, Lorg/h2/engine/User;->isAdmin()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/h2/engine/Database;->systemUser:Lorg/h2/engine/User;

    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DBA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/h2/engine/Database;->systemUser:Lorg/h2/engine/User;

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/h2/engine/DbObjectBase;->rename(Ljava/lang/String;)V

    :cond_1
    invoke-interface {p2}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "object already exists"

    invoke-static {v2}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_2
    invoke-virtual {p0, p1}, Lorg/h2/engine/Database;->lockMeta(Lorg/h2/engine/Session;)Z

    invoke-direct {p0, p1, p2}, Lorg/h2/engine/Database;->addMeta(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public addSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V
    .locals 1

    invoke-interface {p2}, Lorg/h2/engine/DbObject;->getId()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lorg/h2/engine/Database;->starting:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/h2/engine/Database;->checkWritingAllowed()V

    :cond_0
    invoke-virtual {p0, p1}, Lorg/h2/engine/Database;->lockMeta(Lorg/h2/engine/Session;)Z

    monitor-enter p0

    :try_start_0
    invoke-interface {p2}, Lorg/h2/schema/SchemaObject;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/h2/schema/Schema;->add(Lorg/h2/schema/SchemaObject;)V

    invoke-direct {p0, p1, p2}, Lorg/h2/engine/Database;->addMeta(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public afterWriting()V
    .locals 2

    iget v0, p0, Lorg/h2/engine/Database;->fileLockMethod:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Database;->reconnectSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/h2/engine/Database;->checkpointAllowed:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/h2/engine/Database;->checkpointAllowed:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/h2/engine/Database;->checkpointAllowed:I

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/h2/engine/Database;->checkpointAllowed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized allocateObjectId()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/engine/Database;->objectIds:Lorg/h2/util/BitField;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/util/BitField;->nextClearBit(I)I

    move-result v0

    iget-object v1, p0, Lorg/h2/engine/Database;->objectIds:Lorg/h2/util/BitField;

    invoke-virtual {v1, v0}, Lorg/h2/util/BitField;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public areEqual(Lorg/h2/value/Value;Lorg/h2/value/Value;)Z
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Database;->compareMode:Lorg/h2/value/CompareMode;

    invoke-virtual {p1, p2, v0}, Lorg/h2/value/Value;->compareTo(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public beforeWriting()Z
    .locals 5

    iget v0, p0, Lorg/h2/engine/Database;->fileLockMethod:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lorg/h2/engine/Database;->checkpointRunning:Z

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    mul-double v0, v0, v3

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0xa

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/h2/engine/Database;->reconnectSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    invoke-direct {p0, v2}, Lorg/h2/engine/Database;->reconnectModified(Z)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lorg/h2/engine/Database;->checkpointAllowed:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/h2/engine/Database;->checkpointAllowed:I

    sget-boolean v1, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lorg/h2/engine/Database;->checkpointAllowed:I

    const/16 v3, 0x14

    if-gt v1, v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/h2/engine/Database;->checkpointAllowed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_3
    :goto_1
    monitor-exit v0

    return v2

    :cond_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/engine/Database;->reconnectCheckNext:J

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/engine/Database;->reconnectLastLock:Ljava/util/Properties;

    const/4 v0, 0x0

    return v0

    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public checkPowerOff()V
    .locals 3

    iget v0, p0, Lorg/h2/engine/Database;->powerOffCount:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/h2/engine/Database;->powerOffCount:I

    return-void

    :cond_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    :try_start_0
    iput v1, p0, Lorg/h2/engine/Database;->powerOffCount:I

    invoke-direct {p0}, Lorg/h2/engine/Database;->stopWriter()V

    iget-object v0, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTableEngine$Store;->closeImmediately()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v0}, Lorg/h2/store/PageStore;->close()V
    :try_end_1
    .catch Lorg/h2/message/DbException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    iput-object v1, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    :cond_3
    iget-object v0, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lorg/h2/engine/Database;->stopServer()V

    iget v0, p0, Lorg/h2/engine/Database;->fileLockMethod:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    invoke-virtual {v0}, Lorg/h2/store/FileLock;->unlock()V

    :cond_4
    iput-object v1, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    :cond_5
    iget-object v0, p0, Lorg/h2/engine/Database;->traceSystem:Lorg/h2/message/TraceSystem;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/h2/message/TraceSystem;->close()V
    :try_end_2
    .catch Lorg/h2/message/DbException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {v0}, Lorg/h2/message/DbException;->traceThrowable(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    invoke-static {}, Lorg/h2/engine/Engine;->getInstance()Lorg/h2/engine/Engine;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/h2/engine/Engine;->close(Ljava/lang/String;)V

    const v0, 0x15ff2

    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public checkWritingAllowed()V
    .locals 3

    iget-boolean v0, p0, Lorg/h2/engine/Database;->readOnly:Z

    const v1, 0x15ff1

    if-nez v0, :cond_2

    iget v0, p0, Lorg/h2/engine/Database;->fileLockMethod:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lorg/h2/engine/Database;->reconnectChangePending:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {v1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public checkpoint()V
    .locals 1

    iget-boolean v0, p0, Lorg/h2/engine/Database;->persistent:Z

    if-eqz v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->checkpoint()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTableEngine$Store;->flush()V

    goto :goto_2

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_2
    invoke-virtual {p0}, Lorg/h2/engine/Database;->getTempFileDeleter()Lorg/h2/util/TempFileDeleter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/util/TempFileDeleter;->deleteUnused()V

    return-void
.end method

.method public checkpointIfRequired()V
    .locals 6

    .line 1
    iget v0, p0, Lorg/h2/engine/Database;->fileLockMethod:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_3

    .line 5
    .line 6
    iget-boolean v0, p0, Lorg/h2/engine/Database;->readOnly:Z

    .line 7
    .line 8
    if-nez v0, :cond_3

    .line 9
    .line 10
    iget-boolean v0, p0, Lorg/h2/engine/Database;->reconnectChangePending:Z

    .line 11
    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    iget-boolean v0, p0, Lorg/h2/engine/Database;->closing:Z

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iget-wide v2, p0, Lorg/h2/engine/Database;->reconnectCheckNext:J

    .line 24
    .line 25
    iget-wide v4, p0, Lorg/h2/engine/Database;->reconnectCheckDelayNs:J

    .line 26
    .line 27
    add-long/2addr v2, v4

    .line 28
    cmp-long v4, v0, v2

    .line 29
    .line 30
    if-lez v4, :cond_3

    .line 31
    .line 32
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget v0, p0, Lorg/h2/engine/Database;->checkpointAllowed:I

    .line 37
    .line 38
    if-gez v0, :cond_1

    .line 39
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v1, ""

    .line 43
    .line 44
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget v1, p0, Lorg/h2/engine/Database;->checkpointAllowed:I

    .line 48
    .line 49
    invoke-static {v0, v1}, Lorg/apache/ftpserver/main/a;->A(Ljava/lang/StringBuilder;I)V

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object v0, p0, Lorg/h2/engine/Database;->reconnectSync:Ljava/lang/Object;

    .line 53
    .line 54
    monitor-enter v0

    .line 55
    :try_start_0
    iget v1, p0, Lorg/h2/engine/Database;->checkpointAllowed:I

    .line 56
    .line 57
    if-lez v1, :cond_2

    .line 58
    .line 59
    monitor-exit v0

    .line 60
    return-void

    .line 61
    :catchall_0
    move-exception v1

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    const/4 v1, 0x1

    .line 64
    iput-boolean v1, p0, Lorg/h2/engine/Database;->checkpointRunning:Z

    .line 65
    .line 66
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-enter p0

    .line 68
    :try_start_1
    iget-object v0, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    .line 69
    .line 70
    const-string v1, "checkpoint start"

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-direct {p0}, Lorg/h2/engine/Database;->flushSequences()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lorg/h2/engine/Database;->checkpoint()V

    .line 79
    .line 80
    .line 81
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, v0}, Lorg/h2/engine/Database;->reconnectModified(Z)Z

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    .line 86
    .line 87
    const-string v2, "checkpoint end"

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 93
    iget-object v1, p0, Lorg/h2/engine/Database;->reconnectSync:Ljava/lang/Object;

    .line 94
    .line 95
    monitor-enter v1

    .line 96
    :try_start_2
    iput-boolean v0, p0, Lorg/h2/engine/Database;->checkpointRunning:Z

    .line 97
    .line 98
    monitor-exit v1

    .line 99
    goto :goto_1

    .line 100
    :catchall_1
    move-exception v0

    .line 101
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 102
    throw v0

    .line 103
    :catchall_2
    move-exception v0

    .line 104
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 105
    throw v0

    .line 106
    :goto_0
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 107
    throw v1

    .line 108
    :cond_3
    :goto_1
    return-void
.end method

.method public close(Z)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lorg/h2/engine/Database;->closing:Z

    if-eqz v2, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_0
    invoke-direct {p0}, Lorg/h2/engine/Database;->throwLastBackgroundException()V

    iget v2, p0, Lorg/h2/engine/Database;->fileLockMethod:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Lorg/h2/engine/Database;->reconnectChangePending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :try_start_1
    invoke-direct {p0, v1}, Lorg/h2/engine/Database;->closeOpenFilesAndUnlock(Z)V
    :try_end_1
    .catch Lorg/h2/message/DbException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    iget-object p1, p0, Lorg/h2/engine/Database;->traceSystem:Lorg/h2/message/TraceSystem;

    invoke-virtual {p1}, Lorg/h2/message/TraceSystem;->close()V

    invoke-static {}, Lorg/h2/engine/Engine;->getInstance()Lorg/h2/engine/Engine;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/h2/engine/Engine;->close(Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :cond_1
    iput-boolean v0, p0, Lorg/h2/engine/Database;->closing:Z

    invoke-direct {p0}, Lorg/h2/engine/Database;->stopServer()V

    iget-object v2, p0, Lorg/h2/engine/Database;->userSessions:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v4, 0x0

    if-lez v2, :cond_3

    if-nez p1, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    iget-object p1, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v2, "closing {0} from shutdown hook"

    iget-object v5, p0, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v5, v6, v1

    invoke-virtual {p1, v2, v6}, Lorg/h2/message/Trace;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v4}, Lorg/h2/engine/Database;->closeAllSessionsException(Lorg/h2/engine/Session;)V

    :cond_3
    iget-object p1, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v2, "closing {0}"

    iget-object v5, p0, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v5, v6, v1

    invoke-virtual {p1, v2, v6}, Lorg/h2/message/Trace;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/h2/engine/Database;->eventListener:Lorg/h2/api/DatabaseEventListener;

    if-eqz p1, :cond_5

    iput-boolean v1, p0, Lorg/h2/engine/Database;->closing:Z

    iget-object p1, p0, Lorg/h2/engine/Database;->eventListener:Lorg/h2/api/DatabaseEventListener;

    iput-object v4, p0, Lorg/h2/engine/Database;->eventListener:Lorg/h2/api/DatabaseEventListener;

    invoke-interface {p1}, Lorg/h2/api/DatabaseEventListener;->closingDatabase()V

    iget-object p1, p0, Lorg/h2/engine/Database;->userSessions:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_4

    monitor-exit p0

    return-void

    :cond_4
    iput-boolean v0, p0, Lorg/h2/engine/Database;->closing:Z

    :cond_5
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0}, Lorg/h2/engine/Database;->removeOrphanedLobs()V

    :try_start_3
    iget-object p1, p0, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    if-eqz p1, :cond_a

    iget p1, p0, Lorg/h2/engine/Database;->powerOffCount:I

    const/4 v2, -0x1

    if-eq p1, v2, :cond_8

    invoke-virtual {p0, v1}, Lorg/h2/engine/Database;->getAllTablesAndViews(Z)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/table/Table;

    invoke-virtual {v5}, Lorg/h2/table/Table;->isGlobalTemporary()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    invoke-virtual {v5, v6}, Lorg/h2/table/Table;->removeChildrenAndResources(Lorg/h2/engine/Session;)V

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_6
    iget-object v6, p0, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    invoke-virtual {v5, v6}, Lorg/h2/table/Table;->close(Lorg/h2/engine/Session;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0, v3}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/schema/SchemaObject;

    check-cast v3, Lorg/h2/schema/Sequence;

    invoke-virtual {v3}, Lorg/h2/schema/Sequence;->close()V

    goto :goto_1

    :cond_8
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/schema/SchemaObject;

    check-cast v3, Lorg/h2/schema/TriggerObject;
    :try_end_3
    .catch Lorg/h2/message/DbException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-virtual {v3}, Lorg/h2/schema/TriggerObject;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/h2/message/DbException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_2
    move-exception v3

    :try_start_5
    iget-object v5, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v6, "close"

    invoke-virtual {v5, v3, v6}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    iget p1, p0, Lorg/h2/engine/Database;->powerOffCount:I

    if-eq p1, v2, :cond_a

    iget-object p1, p0, Lorg/h2/engine/Database;->meta:Lorg/h2/table/Table;

    iget-object v2, p0, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    invoke-virtual {p1, v2}, Lorg/h2/table/Table;->close(Lorg/h2/engine/Session;)V

    iget-object p1, p0, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    invoke-virtual {p1, v0}, Lorg/h2/engine/Session;->commit(Z)V
    :try_end_5
    .catch Lorg/h2/message/DbException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    :goto_3
    iget-object v2, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v3, "close"

    invoke-virtual {v2, p1, v3}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_a
    :goto_4
    iget-object p1, p0, Lorg/h2/engine/Database;->tempFileDeleter:Lorg/h2/util/TempFileDeleter;

    invoke-virtual {p1}, Lorg/h2/util/TempFileDeleter;->deleteAll()V

    :try_start_6
    invoke-direct {p0, v0}, Lorg/h2/engine/Database;->closeOpenFilesAndUnlock(Z)V
    :try_end_6
    .catch Lorg/h2/message/DbException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    iget-object v2, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v3, "close"

    invoke-virtual {v2, p1, v3}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_5
    iget-object p1, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v2, "closed"

    invoke-virtual {p1, v2}, Lorg/h2/message/Trace;->info(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/h2/engine/Database;->traceSystem:Lorg/h2/message/TraceSystem;

    invoke-virtual {p1}, Lorg/h2/message/TraceSystem;->close()V

    iget-object p1, p0, Lorg/h2/engine/Database;->closeOnExit:Lorg/h2/engine/DatabaseCloser;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lorg/h2/engine/DatabaseCloser;->reset()V

    :try_start_7
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    iget-object v2, p0, Lorg/h2/engine/Database;->closeOnExit:Lorg/h2/engine/DatabaseCloser;

    invoke-virtual {p1, v2}, Ljava/lang/Runtime;->removeShutdownHook(Ljava/lang/Thread;)Z
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_4

    :catch_4
    iput-object v4, p0, Lorg/h2/engine/Database;->closeOnExit:Lorg/h2/engine/DatabaseCloser;

    :cond_b
    invoke-static {}, Lorg/h2/engine/Engine;->getInstance()Lorg/h2/engine/Engine;

    move-result-object p1

    iget-object v2, p0, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/h2/engine/Engine;->close(Ljava/lang/String;)V

    iget-boolean p1, p0, Lorg/h2/engine/Database;->deleteFilesOnDisconnect:Z

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lorg/h2/engine/Database;->persistent:Z

    if-eqz p1, :cond_c

    iput-boolean v1, p0, Lorg/h2/engine/Database;->deleteFilesOnDisconnect:Z

    :try_start_8
    iget-object p1, p0, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    invoke-static {p1}, Lorg/h2/store/fs/FileUtils;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/store/fs/FileUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lorg/h2/tools/DeleteDbFiles;->execute(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :catch_5
    :cond_c
    return-void

    :goto_6
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw p1
.end method

.method public declared-synchronized commit(Lorg/h2/engine/Session;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/h2/engine/Database;->throwLastBackgroundException()V

    iget-boolean v0, p0, Lorg/h2/engine/Database;->readOnly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/h2/store/PageStore;->commit(Lorg/h2/engine/Session;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/h2/engine/Session;->setAllCommitted()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public compare(Lorg/h2/value/Value;Lorg/h2/value/Value;)I
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Database;->compareMode:Lorg/h2/value/CompareMode;

    invoke-virtual {p1, p2, v0}, Lorg/h2/value/Value;->compareTo(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I

    move-result p1

    return p1
.end method

.method public compareTypeSafe(Lorg/h2/value/Value;Lorg/h2/value/Value;)I
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Database;->compareMode:Lorg/h2/value/CompareMode;

    invoke-virtual {p1, p2, v0}, Lorg/h2/value/Value;->compareTypeSafe(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I

    move-result p1

    return p1
.end method

.method public createRow([Lorg/h2/value/Value;I)Lorg/h2/result/Row;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Database;->rowFactory:Lorg/h2/result/RowFactory;

    invoke-virtual {v0, p1, p2}, Lorg/h2/result/RowFactory;->createRow([Lorg/h2/value/Value;I)Lorg/h2/result/Row;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized createSession(Lorg/h2/engine/User;)Lorg/h2/engine/Session;
    .locals 8

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lorg/h2/engine/Database;->closing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/h2/engine/Database;->exclusiveSession:Lorg/h2/engine/Session;

    if-nez v1, :cond_2

    new-instance v1, Lorg/h2/engine/Session;

    iget v3, p0, Lorg/h2/engine/Database;->nextSessionId:I

    add-int/2addr v3, v0

    iput v3, p0, Lorg/h2/engine/Database;->nextSessionId:I

    invoke-direct {v1, p0, p1, v3}, Lorg/h2/engine/Session;-><init>(Lorg/h2/engine/Database;Lorg/h2/engine/User;I)V

    iget-object p1, p0, Lorg/h2/engine/Database;->userSessions:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v3, "connecting session #{0} to {1}"

    invoke-virtual {v1}, Lorg/h2/engine/Session;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    aput-object v5, v6, v0

    invoke-virtual {p1, v3, v6}, Lorg/h2/message/Trace;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/h2/engine/Database;->delayedCloser:Lorg/h2/engine/DatabaseCloser;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/h2/engine/DatabaseCloser;->reset()V

    iput-object v2, p0, Lorg/h2/engine/Database;->delayedCloser:Lorg/h2/engine/DatabaseCloser;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_2
    const p1, 0x16017

    :try_start_2
    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public createTempFile()Ljava/lang/String;
    .locals 4

    const-string v0, "memFS:"

    :try_start_0
    iget-boolean v1, p0, Lorg/h2/engine/Database;->readOnly:Z

    iget-object v2, p0, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/h2/engine/Database;->persistent:Z

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const-string v0, ".temp.db"

    const/4 v3, 0x1

    invoke-static {v2, v0, v3, v1}, Lorg/h2/store/fs/FileUtils;->createTempFile(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    iget-object v1, p0, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public equalsIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, p2, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/h2/engine/Database;->dbSettings:Lorg/h2/engine/DbSettings;

    iget-boolean v1, v1, Lorg/h2/engine/DbSettings;->databaseToUpper:Z

    if-nez v1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public exceptionThrown(Ljava/sql/SQLException;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Database;->eventListener:Lorg/h2/api/DatabaseEventListener;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2}, Lorg/h2/api/DatabaseEventListener;->exceptionThrown(Ljava/sql/SQLException;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public findAggregate(Ljava/lang/String;)Lorg/h2/engine/UserAggregate;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Database;->aggregates:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/engine/UserAggregate;

    return-object p1
.end method

.method public findComment(Lorg/h2/engine/DbObject;)Lorg/h2/engine/Comment;
    .locals 2

    invoke-interface {p1}, Lorg/h2/engine/DbObject;->getType()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Lorg/h2/engine/Comment;->getKey(Lorg/h2/engine/DbObject;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/engine/Database;->comments:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/engine/Comment;

    return-object p1
.end method

.method public findRole(Ljava/lang/String;)Lorg/h2/engine/Role;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Database;->roles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/engine/Role;

    return-object p1
.end method

.method public findSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Database;->schemas:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/schema/Schema;

    iget-object v0, p0, Lorg/h2/engine/Database;->infoSchema:Lorg/h2/schema/Schema;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lorg/h2/engine/Database;->initMetaTables()V

    :cond_0
    return-object p1
.end method

.method public findSetting(Ljava/lang/String;)Lorg/h2/engine/Setting;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Database;->settings:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/engine/Setting;

    return-object p1
.end method

.method public findUser(Ljava/lang/String;)Lorg/h2/engine/User;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Database;->users:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/engine/User;

    return-object p1
.end method

.method public findUserDataType(Ljava/lang/String;)Lorg/h2/engine/UserDataType;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Database;->userDataTypes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/engine/UserDataType;

    return-object p1
.end method

.method public declared-synchronized flush()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/h2/engine/Database;->readOnly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->flushLog()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTableEngine$Store;->flush()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/engine/Database;->backgroundException:Lorg/h2/message/DbException;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public getAllAggregates()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/engine/UserAggregate;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/engine/Database;->aggregates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllComments()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/engine/Comment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/engine/Database;->comments:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllRights()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/engine/Right;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/engine/Database;->rights:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllRoles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/engine/Role;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/engine/Database;->roles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllSchemaObjects()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/schema/SchemaObject;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/h2/engine/Database;->initMetaTables()V

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/engine/Database;->schemas:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/schema/Schema;

    invoke-virtual {v2}, Lorg/h2/schema/Schema;->getAll()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getAllSchemaObjects(I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lorg/h2/schema/SchemaObject;",
            ">;"
        }
    .end annotation

    .line 2
    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/h2/engine/Database;->initMetaTables()V

    :cond_0
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/engine/Database;->schemas:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/schema/Schema;

    invoke-virtual {v2, p1}, Lorg/h2/schema/Schema;->getAll(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getAllSchemas()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/schema/Schema;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/h2/engine/Database;->initMetaTables()V

    iget-object v0, p0, Lorg/h2/engine/Database;->schemas:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllSettings()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/engine/Setting;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/engine/Database;->settings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllTablesAndViews(Z)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/Table;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/h2/engine/Database;->initMetaTables()V

    :cond_0
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/engine/Database;->schemas:Ljava/util/HashMap;

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

    check-cast v1, Lorg/h2/schema/Schema;

    invoke-virtual {v1}, Lorg/h2/schema/Schema;->getAllTablesAndViews()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public getAllUserDataTypes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/engine/UserDataType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/engine/Database;->userDataTypes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllUsers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/engine/User;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/engine/Database;->users:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllowLiterals()I
    .locals 1

    iget-boolean v0, p0, Lorg/h2/engine/Database;->starting:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    iget v0, p0, Lorg/h2/engine/Database;->allowLiterals:I

    return v0
.end method

.method public getCacheType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Database;->cacheType:Ljava/lang/String;

    return-object v0
.end method

.method public getCluster()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Database;->cluster:Ljava/lang/String;

    return-object v0
.end method

.method public getCompareMode()Lorg/h2/value/CompareMode;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Database;->compareMode:Lorg/h2/value/CompareMode;

    return-object v0
.end method

.method public getCompiler()Lorg/h2/util/SourceCompiler;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Database;->compiler:Lorg/h2/util/SourceCompiler;

    if-nez v0, :cond_0

    new-instance v0, Lorg/h2/util/SourceCompiler;

    invoke-direct {v0}, Lorg/h2/util/SourceCompiler;-><init>()V

    iput-object v0, p0, Lorg/h2/engine/Database;->compiler:Lorg/h2/util/SourceCompiler;

    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Database;->compiler:Lorg/h2/util/SourceCompiler;

    return-object v0
.end method

.method public getDatabasePath()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lorg/h2/engine/Database;->persistent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->toRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultTableType()I
    .locals 1

    iget v0, p0, Lorg/h2/engine/Database;->defaultTableType:I

    return v0
.end method

.method public getDependentTable(Lorg/h2/schema/SchemaObject;Lorg/h2/table/Table;)Lorg/h2/table/Table;
    .locals 6

    invoke-interface {p1}, Lorg/h2/engine/DbObject;->getType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/h2/engine/Database;->getAllTablesAndViews(Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/table/Table;

    if-ne p2, v3, :cond_1

    goto :goto_0

    :cond_1
    sget-object v4, Lorg/h2/table/TableType;->VIEW:Lorg/h2/table/TableType;

    invoke-virtual {v3}, Lorg/h2/table/Table;->getTableType()Lorg/h2/table/TableType;

    move-result-object v5

    if-ne v4, v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    invoke-virtual {v3, v0}, Lorg/h2/table/Table;->addDependencies(Ljava/util/HashSet;)V

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_3
    return-object v2
.end method

.method public getExclusiveSession()Lorg/h2/engine/Session;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Database;->exclusiveSession:Lorg/h2/engine/Session;

    return-object v0
.end method

.method public getFileEncryptionKey()[B
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Database;->fileEncryptionKey:[B

    return-object v0
.end method

.method public getFirstUserTable()Lorg/h2/table/Table;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/h2/engine/Database;->getAllTablesAndViews(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/table/Table;

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getCreateSQL()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/h2/table/Table;->isHidden()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFlushOnEachCommit()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/engine/Database;->flushOnEachCommit:Z

    return v0
.end method

.method public getIgnoreCase()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/engine/Database;->starting:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lorg/h2/engine/Database;->ignoreCase:Z

    return v0
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

    iget-object v0, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTableEngine$Store;->getInDoubtTransactions()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getInDoubtTransactions()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getJavaObjectSerializer()Lorg/h2/api/JavaObjectSerializer;
    .locals 1

    invoke-direct {p0}, Lorg/h2/engine/Database;->initJavaObjectSerializer()V

    iget-object v0, p0, Lorg/h2/engine/Database;->javaObjectSerializer:Lorg/h2/api/JavaObjectSerializer;

    return-object v0
.end method

.method public getLinkConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/h2/table/TableLinkConnection;
    .locals 7

    iget-object v0, p0, Lorg/h2/engine/Database;->linkConnections:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Database;->linkConnections:Ljava/util/HashMap;

    :cond_0
    iget-object v1, p0, Lorg/h2/engine/Database;->linkConnections:Ljava/util/HashMap;

    iget-object v0, p0, Lorg/h2/engine/Database;->dbSettings:Lorg/h2/engine/DbSettings;

    iget-boolean v6, v0, Lorg/h2/engine/DbSettings;->shareLinkedConnections:Z

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lorg/h2/table/TableLinkConnection;->open(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/table/TableLinkConnection;

    move-result-object p1

    return-object p1
.end method

.method public getLobCompressionAlgorithm(I)Ljava/lang/String;
    .locals 0

    iget-object p1, p0, Lorg/h2/engine/Database;->lobCompressionAlgorithm:Ljava/lang/String;

    return-object p1
.end method

.method public getLobConnectionForInit()Lorg/h2/jdbc/JdbcConnection;
    .locals 4

    new-instance v0, Lorg/h2/jdbc/JdbcConnection;

    iget-object v1, p0, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    iget-object v2, p0, Lorg/h2/engine/Database;->systemUser:Lorg/h2/engine/User;

    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "jdbc:default:connection"

    invoke-direct {v0, v1, v2, v3}, Lorg/h2/jdbc/JdbcConnection;-><init>(Lorg/h2/engine/SessionInterface;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/jdbc/JdbcConnection;->setTraceLevel(I)V

    return-object v0
.end method

.method public getLobConnectionForRegularUse()Lorg/h2/jdbc/JdbcConnection;
    .locals 4

    new-instance v0, Lorg/h2/jdbc/JdbcConnection;

    iget-object v1, p0, Lorg/h2/engine/Database;->lobSession:Lorg/h2/engine/Session;

    iget-object v2, p0, Lorg/h2/engine/Database;->systemUser:Lorg/h2/engine/User;

    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "jdbc:default:connection"

    invoke-direct {v0, v1, v2, v3}, Lorg/h2/jdbc/JdbcConnection;-><init>(Lorg/h2/engine/SessionInterface;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/jdbc/JdbcConnection;->setTraceLevel(I)V

    return-object v0
.end method

.method public getLobFileListCache()Lorg/h2/util/SmallLRUCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/h2/util/SmallLRUCache<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/engine/Database;->lobFileListCache:Lorg/h2/util/SmallLRUCache;

    if-nez v0, :cond_0

    const/16 v0, 0x80

    invoke-static {v0}, Lorg/h2/util/SmallLRUCache;->newInstance(I)Lorg/h2/util/SmallLRUCache;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Database;->lobFileListCache:Lorg/h2/util/SmallLRUCache;

    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Database;->lobFileListCache:Lorg/h2/util/SmallLRUCache;

    return-object v0
.end method

.method public getLobSession()Lorg/h2/engine/Session;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Database;->lobSession:Lorg/h2/engine/Session;

    return-object v0
.end method

.method public getLobStorage()Lorg/h2/store/LobStorageInterface;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Database;->lobStorage:Lorg/h2/store/LobStorageInterface;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/h2/engine/Database;->dbSettings:Lorg/h2/engine/DbSettings;

    iget-boolean v0, v0, Lorg/h2/engine/DbSettings;->mvStore:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/h2/store/LobStorageMap;

    invoke-direct {v0, p0}, Lorg/h2/store/LobStorageMap;-><init>(Lorg/h2/engine/Database;)V

    :goto_0
    iput-object v0, p0, Lorg/h2/engine/Database;->lobStorage:Lorg/h2/store/LobStorageInterface;

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/h2/store/LobStorageBackend;

    invoke-direct {v0, p0}, Lorg/h2/store/LobStorageBackend;-><init>(Lorg/h2/engine/Database;)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/h2/engine/Database;->lobStorage:Lorg/h2/store/LobStorageInterface;

    return-object v0
.end method

.method public getLobSyncObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Database;->lobSyncObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getLockMode()I
    .locals 1

    iget v0, p0, Lorg/h2/engine/Database;->lockMode:I

    return v0
.end method

.method public getLogMode()I
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getLogMode()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/h2/engine/Database;->logMode:I

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxLengthInplaceLob()I
    .locals 1

    iget v0, p0, Lorg/h2/engine/Database;->maxLengthInplaceLob:I

    return v0
.end method

.method public getMaxMemoryRows()I
    .locals 1

    iget v0, p0, Lorg/h2/engine/Database;->maxMemoryRows:I

    return v0
.end method

.method public getMaxMemoryUndo()I
    .locals 1

    iget v0, p0, Lorg/h2/engine/Database;->maxMemoryUndo:I

    return v0
.end method

.method public getMaxOperationMemory()I
    .locals 1

    iget v0, p0, Lorg/h2/engine/Database;->maxOperationMemory:I

    return v0
.end method

.method public getMode()Lorg/h2/engine/Mode;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Database;->mode:Lorg/h2/engine/Mode;

    return-object v0
.end method

.method public getModificationDataId()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/engine/Database;->modificationDataId:J

    return-wide v0
.end method

.method public getModificationMetaId()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/engine/Database;->modificationMetaId:J

    return-wide v0
.end method

.method public getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    return-object v0
.end method

.method public getNextModificationDataId()J
    .locals 4

    iget-wide v0, p0, Lorg/h2/engine/Database;->modificationDataId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/engine/Database;->modificationDataId:J

    return-wide v0
.end method

.method public getNextModificationMetaId()J
    .locals 4

    iget-wide v0, p0, Lorg/h2/engine/Database;->modificationDataId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/engine/Database;->modificationDataId:J

    iget-wide v0, p0, Lorg/h2/engine/Database;->modificationMetaId:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/h2/engine/Database;->modificationMetaId:J

    return-wide v0
.end method

.method public getOptimizeReuseResults()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/engine/Database;->optimizeReuseResults:Z

    return v0
.end method

.method public getPageSize()I
    .locals 1

    iget v0, p0, Lorg/h2/engine/Database;->pageSize:I

    return v0
.end method

.method public getPageStore()Lorg/h2/store/PageStore;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/h2/engine/Database;->dbSettings:Lorg/h2/engine/DbSettings;

    .line 2
    .line 3
    iget-boolean v0, v0, Lorg/h2/engine/DbSettings;->mvStore:Z

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {p0}, Lorg/h2/mvstore/db/MVTableEngine;->init(Lorg/h2/engine/Database;)Lorg/h2/mvstore/db/MVTableEngine$Store;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    .line 16
    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return-object v0

    .line 19
    :cond_1
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    .line 20
    .line 21
    if-nez v0, :cond_4

    .line 22
    .line 23
    new-instance v0, Lorg/h2/store/PageStore;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    .line 31
    .line 32
    const-string v3, ".h2.db"

    .line 33
    .line 34
    invoke-static {v2, v3, v1}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-object v2, p0, Lorg/h2/engine/Database;->accessModeData:Ljava/lang/String;

    .line 39
    .line 40
    iget v3, p0, Lorg/h2/engine/Database;->cacheSize:I

    .line 41
    .line 42
    invoke-direct {v0, p0, v1, v2, v3}, Lorg/h2/store/PageStore;-><init>(Lorg/h2/engine/Database;Ljava/lang/String;Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    .line 46
    .line 47
    iget v1, p0, Lorg/h2/engine/Database;->pageSize:I

    .line 48
    .line 49
    const/16 v2, 0x1000

    .line 50
    .line 51
    if-eq v1, v2, :cond_2

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lorg/h2/store/PageStore;->setPageSize(I)V

    .line 54
    .line 55
    .line 56
    :cond_2
    iget-boolean v0, p0, Lorg/h2/engine/Database;->readOnly:Z

    .line 57
    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    iget v0, p0, Lorg/h2/engine/Database;->fileLockMethod:I

    .line 61
    .line 62
    const/4 v1, 0x4

    .line 63
    if-ne v0, v1, :cond_3

    .line 64
    .line 65
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    invoke-virtual {v0, v1}, Lorg/h2/store/PageStore;->setLockFile(Z)V

    .line 69
    .line 70
    .line 71
    :cond_3
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    .line 72
    .line 73
    iget v1, p0, Lorg/h2/engine/Database;->logMode:I

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lorg/h2/store/PageStore;->setLogMode(I)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    .line 79
    .line 80
    invoke-virtual {v0}, Lorg/h2/store/PageStore;->open()V

    .line 81
    .line 82
    .line 83
    :cond_4
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    .line 84
    .line 85
    return-object v0
.end method

.method public getPowerOffCount()I
    .locals 1

    iget v0, p0, Lorg/h2/engine/Database;->powerOffCount:I

    return v0
.end method

.method public getPublicRole()Lorg/h2/engine/Role;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Database;->publicRole:Lorg/h2/engine/Role;

    return-object v0
.end method

.method public getQueryStatistics()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/engine/Database;->queryStatistics:Z

    return v0
.end method

.method public getQueryStatisticsData()Lorg/h2/engine/QueryStatisticsData;
    .locals 2

    iget-boolean v0, p0, Lorg/h2/engine/Database;->queryStatistics:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Database;->queryStatisticsData:Lorg/h2/engine/QueryStatisticsData;

    if-nez v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/engine/Database;->queryStatisticsData:Lorg/h2/engine/QueryStatisticsData;

    if-nez v0, :cond_1

    new-instance v0, Lorg/h2/engine/QueryStatisticsData;

    iget v1, p0, Lorg/h2/engine/Database;->queryStatisticsMaxEntries:I

    invoke-direct {v0, v1}, Lorg/h2/engine/QueryStatisticsData;-><init>(I)V

    iput-object v0, p0, Lorg/h2/engine/Database;->queryStatisticsData:Lorg/h2/engine/QueryStatisticsData;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/h2/engine/Database;->queryStatisticsData:Lorg/h2/engine/QueryStatisticsData;

    return-object v0
.end method

.method public getReferentialIntegrity()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/engine/Database;->referentialIntegrity:Z

    return v0
.end method

.method public getRetentionTime()I
    .locals 1

    iget v0, p0, Lorg/h2/engine/Database;->retentionTime:I

    return v0
.end method

.method public getRowFactory()Lorg/h2/result/RowFactory;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Database;->rowFactory:Lorg/h2/result/RowFactory;

    return-object v0
.end method

.method public getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/h2/engine/Database;->findSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const v0, 0x15fdf

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public getSessionCount()I
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Database;->userSessions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getSessions(Z)[Lorg/h2/engine/Session;
    .locals 3

    iget-object v0, p0, Lorg/h2/engine/Database;->userSessions:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/h2/engine/Database;->userSessions:Ljava/util/Set;

    invoke-static {v1}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    iget-object v2, p0, Lorg/h2/engine/Database;->lobSession:Lorg/h2/engine/Session;

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p1, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lorg/h2/engine/Session;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getSettings()Lorg/h2/engine/DbSettings;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Database;->dbSettings:Lorg/h2/engine/DbSettings;

    return-object v0
.end method

.method public getShortName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Database;->databaseShortName:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemSession()Lorg/h2/engine/Session;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    return-object v0
.end method

.method public getTableEngine(Ljava/lang/String;)Lorg/h2/api/TableEngine;
    .locals 2

    iget-object v0, p0, Lorg/h2/engine/Database;->tableEngines:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/api/TableEngine;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p1}, Lorg/h2/util/JdbcUtils;->loadUserClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/api/TableEngine;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lorg/h2/engine/Database;->tableEngines:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_0
    :goto_0
    return-object v0
.end method

.method public getTableOrViewByName(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/Table;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/engine/Database;->schemas:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/schema/Schema;

    invoke-virtual {v2, p1}, Lorg/h2/schema/Schema;->getTableOrViewByName(Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getTempFileDeleter()Lorg/h2/util/TempFileDeleter;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Database;->tempFileDeleter:Lorg/h2/util/TempFileDeleter;

    return-object v0
.end method

.method public declared-synchronized getTempTableName(Ljava/lang/String;Lorg/h2/engine/Session;)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_COPY_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/h2/engine/Session;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/engine/Database;->nextTempTableId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/h2/engine/Database;->nextTempTableId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/engine/Database;->mainSchema:Lorg/h2/schema/Schema;

    invoke-virtual {v1, p2, v0}, Lorg/h2/schema/Schema;->findTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getTrace(I)Lorg/h2/message/Trace;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Database;->traceSystem:Lorg/h2/message/TraceSystem;

    invoke-virtual {v0, p1}, Lorg/h2/message/TraceSystem;->getTrace(I)Lorg/h2/message/Trace;

    move-result-object p1

    return-object p1
.end method

.method public getTraceSystem()Lorg/h2/message/TraceSystem;
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Database;->traceSystem:Lorg/h2/message/TraceSystem;

    return-object v0
.end method

.method public getUser(Ljava/lang/String;)Lorg/h2/engine/User;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/h2/engine/Database;->findUser(Ljava/lang/String;)Lorg/h2/engine/User;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const v0, 0x15fb0

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public isClosing()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/engine/Database;->closing:Z

    return v0
.end method

.method public isFileLockSerialized()Z
    .locals 2

    iget v0, p0, Lorg/h2/engine/Database;->fileLockMethod:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMultiThreaded()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/engine/Database;->multiThreaded:Z

    return v0
.end method

.method public isMultiVersion()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/engine/Database;->multiVersion:Z

    return v0
.end method

.method public isPersistent()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/engine/Database;->persistent:Z

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/engine/Database;->readOnly:Z

    return v0
.end method

.method public isReconnectNeeded()Z
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "changePending"

    .line 3
    .line 4
    iget v2, p0, Lorg/h2/engine/Database;->fileLockMethod:I

    .line 5
    .line 6
    const/4 v3, 0x3

    .line 7
    const/4 v4, 0x0

    .line 8
    if-eq v2, v3, :cond_0

    .line 9
    .line 10
    return v4

    .line 11
    :cond_0
    iget-boolean v2, p0, Lorg/h2/engine/Database;->reconnectChangePending:Z

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    return v4

    .line 16
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    iget-wide v5, p0, Lorg/h2/engine/Database;->reconnectCheckNext:J

    .line 21
    .line 22
    cmp-long v7, v2, v5

    .line 23
    .line 24
    if-gez v7, :cond_2

    .line 25
    .line 26
    return v4

    .line 27
    :cond_2
    iget-wide v5, p0, Lorg/h2/engine/Database;->reconnectCheckDelayNs:J

    .line 28
    .line 29
    add-long/2addr v5, v2

    .line 30
    iput-wide v5, p0, Lorg/h2/engine/Database;->reconnectCheckNext:J

    .line 31
    .line 32
    iget-object v5, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    .line 33
    .line 34
    if-nez v5, :cond_3

    .line 35
    .line 36
    new-instance v5, Lorg/h2/store/FileLock;

    .line 37
    .line 38
    iget-object v6, p0, Lorg/h2/engine/Database;->traceSystem:Lorg/h2/message/TraceSystem;

    .line 39
    .line 40
    new-instance v7, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    iget-object v8, p0, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    .line 46
    .line 47
    const-string v9, ".lock.db"

    .line 48
    .line 49
    invoke-static {v8, v9, v7}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    const/16 v8, 0x3e8

    .line 54
    .line 55
    invoke-direct {v5, v6, v7, v8}, Lorg/h2/store/FileLock;-><init>(Lorg/h2/message/TraceSystem;Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    iput-object v5, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    .line 59
    .line 60
    :cond_3
    :try_start_0
    iget-object v5, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    .line 61
    .line 62
    invoke-virtual {v5}, Lorg/h2/store/FileLock;->load()Ljava/util/Properties;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    move-object v6, v5

    .line 67
    :goto_0
    iget-object v7, p0, Lorg/h2/engine/Database;->reconnectLastLock:Ljava/util/Properties;

    .line 68
    .line 69
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-eqz v7, :cond_4

    .line 74
    .line 75
    return v4

    .line 76
    :cond_4
    const/4 v7, 0x0

    .line 77
    invoke-virtual {v6, v1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    if-nez v8, :cond_5

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 85
    .line 86
    .line 87
    move-result-wide v8

    .line 88
    iget-wide v10, p0, Lorg/h2/engine/Database;->reconnectCheckDelayNs:J

    .line 89
    .line 90
    const-wide/16 v12, 0xa

    .line 91
    .line 92
    mul-long v10, v10, v12

    .line 93
    .line 94
    add-long/2addr v10, v2

    .line 95
    cmp-long v12, v8, v10

    .line 96
    .line 97
    if-lez v12, :cond_6

    .line 98
    .line 99
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    if-eqz v8, :cond_6

    .line 104
    .line 105
    iget-object v2, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    .line 106
    .line 107
    invoke-virtual {v2, v1, v7}, Lorg/h2/store/FileLock;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    .line 111
    .line 112
    invoke-virtual {v1}, Lorg/h2/store/FileLock;->save()Ljava/util/Properties;

    .line 113
    .line 114
    .line 115
    :goto_1
    iput-object v6, p0, Lorg/h2/engine/Database;->reconnectLastLock:Ljava/util/Properties;

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :catch_0
    move-exception v1

    .line 119
    goto :goto_2

    .line 120
    :cond_6
    iget-object v6, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    .line 121
    .line 122
    const-string v7, "delay (change pending)"

    .line 123
    .line 124
    invoke-virtual {v6, v7}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 128
    .line 129
    iget-wide v7, p0, Lorg/h2/engine/Database;->reconnectCheckDelayNs:J

    .line 130
    .line 131
    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 132
    .line 133
    .line 134
    move-result-wide v6

    .line 135
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 136
    .line 137
    .line 138
    iget-object v6, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    .line 139
    .line 140
    invoke-virtual {v6}, Lorg/h2/store/FileLock;->load()Ljava/util/Properties;

    .line 141
    .line 142
    .line 143
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    goto :goto_0

    .line 145
    :goto_2
    iget-object v2, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    .line 146
    .line 147
    iget-boolean v3, p0, Lorg/h2/engine/Database;->readOnly:Z

    .line 148
    .line 149
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    new-array v5, v0, [Ljava/lang/Object;

    .line 154
    .line 155
    aput-object v3, v5, v4

    .line 156
    .line 157
    const-string v3, "readOnly {0}"

    .line 158
    .line 159
    invoke-virtual {v2, v1, v3, v5}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    :goto_3
    return v0
.end method

.method public isStarting()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/engine/Database;->starting:Z

    return v0
.end method

.method public isSysTableLocked()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Database;->meta:Lorg/h2/table/Table;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/h2/table/Table;->isLockedExclusively()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSysTableLockedBy(Lorg/h2/engine/Session;)Z
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Database;->meta:Lorg/h2/table/Table;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/h2/table/Table;->isLockedExclusivelyBy(Lorg/h2/engine/Session;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public lockMeta(Lorg/h2/engine/Session;)Z
    .locals 2

    iget-object v0, p0, Lorg/h2/engine/Database;->meta:Lorg/h2/table/Table;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, p1, v1, v1}, Lorg/h2/table/Table;->lock(Lorg/h2/engine/Session;ZZ)Z

    move-result p1

    return p1
.end method

.method public newConcurrentStringMap()Lj$/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/engine/Database;->dbSettings:Lorg/h2/engine/DbSettings;

    iget-boolean v0, v0, Lorg/h2/engine/DbSettings;->databaseToUpper:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/h2/value/NullableKeyConcurrentMap;

    invoke-direct {v0}, Lorg/h2/value/NullableKeyConcurrentMap;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/h2/value/CaseInsensitiveConcurrentMap;

    invoke-direct {v0}, Lorg/h2/value/CaseInsensitiveConcurrentMap;-><init>()V

    :goto_0
    return-object v0
.end method

.method public newStringMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/engine/Database;->dbSettings:Lorg/h2/engine/DbSettings;

    iget-boolean v0, v0, Lorg/h2/engine/DbSettings;->databaseToUpper:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/h2/value/CaseInsensitiveMap;

    invoke-direct {v0}, Lorg/h2/value/CaseInsensitiveMap;-><init>()V

    :goto_0
    return-object v0
.end method

.method public openFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/store/FileStore;
    .locals 1

    if-eqz p3, :cond_1

    invoke-static {p1}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x1600c

    invoke-static {p2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    iget-object p3, p0, Lorg/h2/engine/Database;->cipher:Ljava/lang/String;

    iget-object v0, p0, Lorg/h2/engine/Database;->filePasswordHash:[B

    invoke-static {p0, p1, p2, p3, v0}, Lorg/h2/store/FileStore;->open(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lorg/h2/store/FileStore;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Lorg/h2/store/FileStore;->init()V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    invoke-virtual {p1}, Lorg/h2/store/FileStore;->closeSilently()V

    throw p2
.end method

.method public opened()V
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Database;->eventListener:Lorg/h2/api/DatabaseEventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/h2/api/DatabaseEventListener;->opened()V

    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Database;->writer:Lorg/h2/store/WriterThread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/h2/store/WriterThread;->startThread()V

    :cond_1
    return-void
.end method

.method public declared-synchronized prepareCommit(Lorg/h2/engine/Session;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/h2/engine/Database;->readOnly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lorg/h2/mvstore/db/MVTableEngine$Store;->prepareCommit(Lorg/h2/engine/Session;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->flushLog()V

    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    invoke-virtual {v0, p1, p2}, Lorg/h2/store/PageStore;->prepareCommit(Lorg/h2/engine/Session;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public readLob(J[BJ[BII)I
    .locals 0

    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public declared-synchronized removeDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V
    .locals 4

    const-string v0, "not found: "

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/engine/Database;->checkWritingAllowed()V

    invoke-interface {p2}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lorg/h2/engine/DbObject;->getType()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/h2/engine/Database;->getMap(I)Ljava/util/HashMap;

    move-result-object v2

    sget-boolean v3, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0, p2}, Lorg/h2/engine/Database;->findComment(Lorg/h2/engine/DbObject;)Lorg/h2/engine/Comment;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/h2/engine/Database;->lockMeta(Lorg/h2/engine/Session;)Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, v0}, Lorg/h2/engine/Database;->removeDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    :cond_1
    invoke-interface {p2}, Lorg/h2/engine/DbObject;->getId()I

    move-result v0

    invoke-interface {p2, p1}, Lorg/h2/engine/DbObject;->removeChildrenAndResources(Lorg/h2/engine/Session;)V

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lorg/h2/engine/Database;->removeMeta(Lorg/h2/engine/Session;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeMeta(Lorg/h2/engine/Session;I)V
    .locals 4

    monitor-enter p0

    if-lez p2, :cond_5

    :try_start_0
    iget-boolean v0, p0, Lorg/h2/engine/Database;->starting:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/h2/engine/Database;->meta:Lorg/h2/table/Table;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/table/Table;->getTemplateSimpleRow(Z)Lorg/h2/result/SearchRow;

    move-result-object v0

    invoke-static {p2}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/h2/result/SearchRow;->setValue(ILorg/h2/value/Value;)V

    invoke-virtual {p0, p1}, Lorg/h2/engine/Database;->lockMeta(Lorg/h2/engine/Session;)Z

    move-result v1

    iget-object v2, p0, Lorg/h2/engine/Database;->metaIdIndex:Lorg/h2/index/Index;

    invoke-interface {v2, p1, v0, v0}, Lorg/h2/index/Index;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object v0

    invoke-interface {v0}, Lorg/h2/index/Cursor;->next()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-boolean v2, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v2, :cond_1

    iget v3, p0, Lorg/h2/engine/Database;->lockMode:I

    if-eqz v3, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    invoke-interface {v0}, Lorg/h2/index/Cursor;->get()Lorg/h2/result/Row;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/engine/Database;->meta:Lorg/h2/table/Table;

    invoke-virtual {v1, p1, v0}, Lorg/h2/table/Table;->removeRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    invoke-virtual {p0}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/h2/engine/Database;->meta:Lorg/h2/table/Table;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v3, v0}, Lorg/h2/engine/Session;->log(Lorg/h2/table/Table;SLorg/h2/result/Row;)V

    :cond_2
    if-eqz v2, :cond_4

    invoke-direct {p0, p1, p2}, Lorg/h2/engine/Database;->checkMetaFree(Lorg/h2/engine/Session;I)V

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    iget-object v0, p0, Lorg/h2/engine/Database;->meta:Lorg/h2/table/Table;

    invoke-virtual {v0, p1}, Lorg/h2/table/Table;->unlock(Lorg/h2/engine/Session;)V

    iget-object v0, p0, Lorg/h2/engine/Database;->meta:Lorg/h2/table/Table;

    invoke-virtual {p1, v0}, Lorg/h2/engine/Session;->unlock(Lorg/h2/table/Table;)V

    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/h2/engine/Database;->objectIds:Lorg/h2/util/BitField;

    invoke-virtual {p1, p2}, Lorg/h2/util/BitField;->clear(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    monitor-exit p0

    throw p1

    :cond_5
    :goto_3
    monitor-exit p0

    return-void
.end method

.method public removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V
    .locals 3

    invoke-interface {p2}, Lorg/h2/engine/DbObject;->getType()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/engine/DbObjectBase;->isTemporary()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/h2/table/Table;->isGlobalTemporary()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v0}, Lorg/h2/engine/Session;->removeLocalTempTable(Lorg/h2/table/Table;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move-object v0, p2

    check-cast v0, Lorg/h2/index/Index;

    invoke-interface {v0}, Lorg/h2/index/Index;->getTable()Lorg/h2/table/Table;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->isTemporary()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lorg/h2/table/Table;->isGlobalTemporary()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v0}, Lorg/h2/engine/Session;->removeLocalTempTableIndex(Lorg/h2/index/Index;)V

    return-void

    :cond_1
    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    move-object v0, p2

    check-cast v0, Lorg/h2/constraint/Constraint;

    invoke-virtual {v0}, Lorg/h2/constraint/Constraint;->getTable()Lorg/h2/table/Table;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->isTemporary()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lorg/h2/table/Table;->isGlobalTemporary()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v0}, Lorg/h2/engine/Session;->removeLocalTempTableConstraint(Lorg/h2/constraint/Constraint;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lorg/h2/engine/Database;->checkWritingAllowed()V

    invoke-virtual {p0, p1}, Lorg/h2/engine/Database;->lockMeta(Lorg/h2/engine/Session;)Z

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2}, Lorg/h2/engine/Database;->findComment(Lorg/h2/engine/DbObject;)Lorg/h2/engine/Comment;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, v0}, Lorg/h2/engine/Database;->removeDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_0
    invoke-interface {p2}, Lorg/h2/schema/SchemaObject;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/h2/schema/Schema;->remove(Lorg/h2/schema/SchemaObject;)V

    invoke-interface {p2}, Lorg/h2/engine/DbObject;->getId()I

    move-result v0

    iget-boolean v1, p0, Lorg/h2/engine/Database;->starting:Z

    if-nez v1, :cond_5

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Lorg/h2/engine/Database;->getDependentTable(Lorg/h2/schema/SchemaObject;Lorg/h2/table/Table;)Lorg/h2/table/Table;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-interface {p2, p1}, Lorg/h2/engine/DbObject;->removeChildrenAndResources(Lorg/h2/engine/Session;)V

    goto :goto_1

    :cond_4
    invoke-interface {p2}, Lorg/h2/schema/SchemaObject;->getSchema()Lorg/h2/schema/Schema;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/h2/schema/Schema;->add(Lorg/h2/schema/SchemaObject;)V

    invoke-interface {p2}, Lorg/h2/engine/DbObject;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    const p2, 0x15ffb

    invoke-static {p2, p1}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_5
    :goto_1
    invoke-virtual {p0, p1, v0}, Lorg/h2/engine/Database;->removeMeta(Lorg/h2/engine/Session;I)V

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized removeSession(Lorg/h2/engine/Session;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "H2 Close Delay "

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v3, p0, Lorg/h2/engine/Database;->exclusiveSession:Lorg/h2/engine/Session;

    if-ne v3, p1, :cond_0

    const/4 v3, 0x0

    iput-object v3, p0, Lorg/h2/engine/Database;->exclusiveSession:Lorg/h2/engine/Session;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/h2/engine/Database;->userSessions:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    if-eq p1, v3, :cond_1

    iget-object v3, p0, Lorg/h2/engine/Database;->lobSession:Lorg/h2/engine/Session;

    if-eq p1, v3, :cond_1

    iget-object v3, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v4, "disconnecting session #{0}"

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v5, v6, v0

    invoke-virtual {v3, v4, v6}, Lorg/h2/message/Trace;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v3, p0, Lorg/h2/engine/Database;->userSessions:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    if-eq p1, v3, :cond_4

    iget-object v3, p0, Lorg/h2/engine/Database;->lobSession:Lorg/h2/engine/Session;

    if-eq p1, v3, :cond_4

    iget v3, p0, Lorg/h2/engine/Database;->closeDelay:I

    if-nez v3, :cond_2

    invoke-virtual {p0, v0}, Lorg/h2/engine/Database;->close(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    if-gez v3, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    new-instance v3, Lorg/h2/engine/DatabaseCloser;

    iget v4, p0, Lorg/h2/engine/Database;->closeDelay:I

    mul-int/lit16 v4, v4, 0x3e8

    invoke-direct {v3, p0, v4, v0}, Lorg/h2/engine/DatabaseCloser;-><init>(Lorg/h2/engine/Database;IZ)V

    iput-object v3, p0, Lorg/h2/engine/Database;->delayedCloser:Lorg/h2/engine/DatabaseCloser;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/engine/Database;->getShortName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/h2/engine/Database;->delayedCloser:Lorg/h2/engine/DatabaseCloser;

    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v2, p0, Lorg/h2/engine/Database;->delayedCloser:Lorg/h2/engine/DatabaseCloser;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_4
    :goto_1
    iget-object v2, p0, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    if-eq p1, v2, :cond_5

    iget-object v2, p0, Lorg/h2/engine/Database;->lobSession:Lorg/h2/engine/Session;

    if-eq p1, v2, :cond_5

    if-eqz p1, :cond_5

    iget-object v2, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v3, "disconnected session #{0}"

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {v2, v3, v1}, Lorg/h2/message/Trace;->info(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized renameDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;Ljava/lang/String;)V
    .locals 4

    const-string v0, "object already exists: "

    const-string v1, "not found: "

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/engine/Database;->checkWritingAllowed()V

    invoke-interface {p2}, Lorg/h2/engine/DbObject;->getType()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/h2/engine/Database;->getMap(I)Ljava/util/HashMap;

    move-result-object v2

    sget-boolean v3, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v3, :cond_2

    invoke-interface {p2}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_2
    invoke-interface {p2}, Lorg/h2/engine/DbObject;->checkRename()V

    invoke-interface {p2}, Lorg/h2/engine/DbObject;->getId()I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/h2/engine/Database;->lockMeta(Lorg/h2/engine/Session;)Z

    invoke-virtual {p0, p1, v0}, Lorg/h2/engine/Database;->removeMeta(Lorg/h2/engine/Session;I)V

    invoke-interface {p2}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, p3}, Lorg/h2/engine/DbObject;->rename(Ljava/lang/String;)V

    invoke-virtual {v2, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/h2/engine/Database;->updateMetaAndFirstLevelChildren(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized renameSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/engine/Database;->checkWritingAllowed()V

    invoke-interface {p2}, Lorg/h2/schema/SchemaObject;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/h2/schema/Schema;->rename(Lorg/h2/schema/SchemaObject;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lorg/h2/engine/Database;->updateMetaAndFirstLevelChildren(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setAllowLiterals(I)V
    .locals 0

    iput p1, p0, Lorg/h2/engine/Database;->allowLiterals:I

    return-void
.end method

.method public setBackgroundException(Lorg/h2/message/DbException;)V
    .locals 2

    iget-object v0, p0, Lorg/h2/engine/Database;->backgroundException:Lorg/h2/message/DbException;

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/h2/engine/Database;->backgroundException:Lorg/h2/message/DbException;

    invoke-virtual {p0}, Lorg/h2/engine/Database;->getTraceSystem()Lorg/h2/message/TraceSystem;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/h2/message/TraceSystem;->getTrace(I)Lorg/h2/message/Trace;

    move-result-object v0

    const-string v1, "flush"

    invoke-virtual {v0, p1, v1}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized setCacheSize(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/h2/engine/Database;->starting:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/h2/util/Utils;->getMemoryMax()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iput p1, p0, Lorg/h2/engine/Database;->cacheSize:I

    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getCache()Lorg/h2/util/Cache;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/h2/util/Cache;->setMaxMemory(I)V

    :cond_1
    iget-object v0, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/db/MVTableEngine$Store;->setCacheSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCloseDelay(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lorg/h2/engine/Database;->closeDelay:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setCluster(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/engine/Database;->cluster:Ljava/lang/String;

    return-void
.end method

.method public setCompactMode(I)V
    .locals 0

    iput p1, p0, Lorg/h2/engine/Database;->compactMode:I

    return-void
.end method

.method public setCompareMode(Lorg/h2/value/CompareMode;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/engine/Database;->compareMode:Lorg/h2/value/CompareMode;

    return-void
.end method

.method public setDefaultTableType(I)V
    .locals 0

    iput p1, p0, Lorg/h2/engine/Database;->defaultTableType:I

    return-void
.end method

.method public declared-synchronized setDeleteFilesOnDisconnect(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lorg/h2/engine/Database;->deleteFilesOnDisconnect:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setEventListener(Lorg/h2/api/DatabaseEventListener;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/engine/Database;->eventListener:Lorg/h2/api/DatabaseEventListener;

    return-void
.end method

.method public setEventListenerClass(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/h2/util/JdbcUtils;->loadUserClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/api/DatabaseEventListener;

    iput-object v0, p0, Lorg/h2/engine/Database;->eventListener:Lorg/h2/api/DatabaseEventListener;

    iget-object v0, p0, Lorg/h2/engine/Database;->databaseURL:Ljava/lang/String;

    iget-object v1, p0, Lorg/h2/engine/Database;->cipher:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";CIPHER="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/h2/engine/Database;->cipher:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/h2/engine/Database;->eventListener:Lorg/h2/api/DatabaseEventListener;

    invoke-interface {v1, v0}, Lorg/h2/api/DatabaseEventListener;->init(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/String;

    move-result-object p1

    const v1, 0x15ff3

    invoke-static {v1, v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_2
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/h2/engine/Database;->eventListener:Lorg/h2/api/DatabaseEventListener;

    :goto_3
    return-void
.end method

.method public setExclusiveSession(Lorg/h2/engine/Session;Z)V
    .locals 0

    iput-object p1, p0, Lorg/h2/engine/Database;->exclusiveSession:Lorg/h2/engine/Session;

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lorg/h2/engine/Database;->closeAllSessionsException(Lorg/h2/engine/Session;)V

    :cond_0
    return-void
.end method

.method public setIgnoreCase(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/engine/Database;->ignoreCase:Z

    return-void
.end method

.method public setJavaObjectSerializerName(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/h2/engine/Database;->javaObjectSerializerInitialized:Z

    iput-object p1, p0, Lorg/h2/engine/Database;->javaObjectSerializerName:Ljava/lang/String;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setLobCompressionAlgorithm(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/engine/Database;->lobCompressionAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public setLockMode(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "lock mode"

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_1
    iget-boolean v0, p0, Lorg/h2/engine/Database;->multiThreaded:Z

    if-nez v0, :cond_3

    :cond_2
    :goto_0
    iput p1, p0, Lorg/h2/engine/Database;->lockMode:I

    return-void

    :cond_3
    const p1, 0x15fa5

    const-string v0, "LOCK_MODE=0 & MULTI_THREADED"

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public setLogMode(I)V
    .locals 4

    if-ltz p1, :cond_4

    const/4 v0, 0x2

    if-gt p1, v0, :cond_4

    iget-object v1, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    if-eqz v1, :cond_2

    if-ne p1, v0, :cond_0

    invoke-virtual {v1}, Lorg/h2/store/PageStore;->getLogMode()I

    move-result v1

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x0

    const-string v3, "log {0}"

    invoke-virtual {v0, v1, v3, v2}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iput p1, p0, Lorg/h2/engine/Database;->logMode:I

    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    invoke-virtual {v0, p1}, Lorg/h2/store/PageStore;->setLogMode(I)V

    :cond_2
    iget-object v0, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    if-eqz v0, :cond_3

    iput p1, p0, Lorg/h2/engine/Database;->logMode:I

    :cond_3
    return-void

    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "LOG"

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public declared-synchronized setMasterUser(Lorg/h2/engine/User;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    invoke-virtual {p0, v0}, Lorg/h2/engine/Database;->lockMeta(Lorg/h2/engine/Session;)Z

    iget-object v0, p0, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    invoke-virtual {p0, v0, p1}, Lorg/h2/engine/Database;->addDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    iget-object p1, p0, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/h2/engine/Session;->commit(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMaxLengthInplaceLob(I)V
    .locals 0

    iput p1, p0, Lorg/h2/engine/Database;->maxLengthInplaceLob:I

    return-void
.end method

.method public declared-synchronized setMaxLogSize(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/h2/store/PageStore;->setMaxLogSize(J)V
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

.method public setMaxMemoryRows(I)V
    .locals 0

    iput p1, p0, Lorg/h2/engine/Database;->maxMemoryRows:I

    return-void
.end method

.method public setMaxMemoryUndo(I)V
    .locals 0

    iput p1, p0, Lorg/h2/engine/Database;->maxMemoryUndo:I

    return-void
.end method

.method public setMaxOperationMemory(I)V
    .locals 0

    iput p1, p0, Lorg/h2/engine/Database;->maxOperationMemory:I

    return-void
.end method

.method public setMode(Lorg/h2/engine/Mode;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/engine/Database;->mode:Lorg/h2/engine/Mode;

    return-void
.end method

.method public setMultiThreaded(Z)V
    .locals 2

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lorg/h2/engine/Database;->multiThreaded:Z

    if-eq v0, p1, :cond_3

    iget-boolean v0, p0, Lorg/h2/engine/Database;->multiVersion:Z

    const v1, 0x15fa5

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "MVCC & MULTI_THREADED"

    invoke-static {v1, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    iget v0, p0, Lorg/h2/engine/Database;->lockMode:I

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "LOCK_MODE=0 & MULTI_THREADED"

    invoke-static {v1, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_1
    iput-boolean p1, p0, Lorg/h2/engine/Database;->multiThreaded:Z

    return-void
.end method

.method public setMultiVersion(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/engine/Database;->multiVersion:Z

    return-void
.end method

.method public setMvStore(Lorg/h2/mvstore/db/MVTableEngine$Store;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    invoke-virtual {p1}, Lorg/h2/mvstore/db/MVTableEngine$Store;->getStore()Lorg/h2/mvstore/MVStore;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/mvstore/MVStore;->getRetentionTime()I

    move-result p1

    iput p1, p0, Lorg/h2/engine/Database;->retentionTime:I

    return-void
.end method

.method public setOptimizeReuseResults(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/engine/Database;->optimizeReuseResults:Z

    return-void
.end method

.method public setPowerOffCount(I)V
    .locals 2

    iget v0, p0, Lorg/h2/engine/Database;->powerOffCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lorg/h2/engine/Database;->powerOffCount:I

    return-void
.end method

.method public setProgress(ILjava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Database;->eventListener:Lorg/h2/api/DatabaseEventListener;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/h2/api/DatabaseEventListener;->setProgress(ILjava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setQueryStatistics(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/engine/Database;->queryStatistics:Z

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :try_start_0
    iput-object p1, p0, Lorg/h2/engine/Database;->queryStatisticsData:Lorg/h2/engine/QueryStatisticsData;

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setQueryStatisticsMaxEntries(I)V
    .locals 1

    iput p1, p0, Lorg/h2/engine/Database;->queryStatisticsMaxEntries:I

    iget-object p1, p0, Lorg/h2/engine/Database;->queryStatisticsData:Lorg/h2/engine/QueryStatisticsData;

    if-eqz p1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lorg/h2/engine/Database;->queryStatisticsData:Lorg/h2/engine/QueryStatisticsData;

    if-eqz p1, :cond_0

    iget v0, p0, Lorg/h2/engine/Database;->queryStatisticsMaxEntries:I

    invoke-virtual {p1, v0}, Lorg/h2/engine/QueryStatisticsData;->setMaxQueryEntries(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_2
    return-void
.end method

.method public setReadOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/engine/Database;->readOnly:Z

    return-void
.end method

.method public setReferentialIntegrity(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/engine/Database;->referentialIntegrity:Z

    return-void
.end method

.method public setRetentionTime(I)V
    .locals 1

    iput p1, p0, Lorg/h2/engine/Database;->retentionTime:I

    iget-object v0, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTableEngine$Store;->getStore()Lorg/h2/mvstore/MVStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/MVStore;->setRetentionTime(I)V

    :cond_0
    return-void
.end method

.method public setRowFactory(Lorg/h2/result/RowFactory;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/engine/Database;->rowFactory:Lorg/h2/result/RowFactory;

    return-void
.end method

.method public setWriteDelay(I)V
    .locals 3

    iput p1, p0, Lorg/h2/engine/Database;->writeDelay:I

    iget-object v0, p0, Lorg/h2/engine/Database;->writer:Lorg/h2/store/WriterThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/h2/store/WriterThread;->setWriteDelay(I)V

    iget v0, p0, Lorg/h2/engine/Database;->writeDelay:I

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/h2/engine/Database;->flushOnEachCommit:Z

    :cond_1
    iget-object v0, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    if-eqz v0, :cond_3

    if-gez p1, :cond_2

    const/4 p1, 0x0

    :cond_2
    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTableEngine$Store;->getStore()Lorg/h2/mvstore/MVStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/MVStore;->setAutoCommitDelay(I)V

    :cond_3
    return-void
.end method

.method public shutdownImmediately()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/h2/engine/Database;->setPowerOffCount(I)V

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/engine/Database;->checkPowerOff()V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-direct {p0}, Lorg/h2/engine/Database;->closeFiles()V

    return-void
.end method

.method public declared-synchronized sync()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/h2/engine/Database;->readOnly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTableEngine$Store;->sync()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/engine/Database;->databaseShortName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unlockMeta(Lorg/h2/engine/Session;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Database;->meta:Lorg/h2/table/Table;

    invoke-virtual {v0, p1}, Lorg/h2/table/Table;->unlock(Lorg/h2/engine/Session;)V

    iget-object v0, p0, Lorg/h2/engine/Database;->meta:Lorg/h2/table/Table;

    invoke-virtual {p1, v0}, Lorg/h2/engine/Session;->unlock(Lorg/h2/table/Table;)V

    return-void
.end method

.method public updateMeta(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/h2/engine/Database;->lockMeta(Lorg/h2/engine/Session;)Z

    monitor-enter p0

    :try_start_0
    invoke-interface {p2}, Lorg/h2/engine/DbObject;->getId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/h2/engine/Database;->removeMeta(Lorg/h2/engine/Session;I)V

    invoke-direct {p0, p1, p2}, Lorg/h2/engine/Database;->addMeta(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    if-lez v0, :cond_0

    iget-object p1, p0, Lorg/h2/engine/Database;->objectIds:Lorg/h2/util/BitField;

    invoke-virtual {p1, v0}, Lorg/h2/util/BitField;->set(I)V

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public validateFilePasswordHash(Ljava/lang/String;[B)Z
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Database;->cipher:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/h2/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Lorg/h2/engine/Database;->filePasswordHash:[B

    invoke-static {p2, p1}, Lorg/h2/util/Utils;->compareSecure([B[B)Z

    move-result p1

    return p1
.end method

.method public verifyMetaLocked(Lorg/h2/engine/Session;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/engine/Database;->meta:Lorg/h2/table/Table;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lorg/h2/table/Table;->isLockedExclusivelyBy(Lorg/h2/engine/Session;)Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lorg/h2/engine/Database;->lockMode:I

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
