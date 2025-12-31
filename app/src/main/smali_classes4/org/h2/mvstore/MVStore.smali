.class public Lorg/h2/mvstore/MVStore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/mvstore/MVStore$Builder;,
        Lorg/h2/mvstore/MVStore$BackgroundWriterThread;
    }
.end annotation


# static fields
.field public static final ASSERT:Z = false

.field static final BLOCK_SIZE:I = 0x1000

.field private static final FORMAT_READ:I = 0x1

.field private static final FORMAT_WRITE:I = 0x1

.field private static final MARKED_FREE:I = 0x989680


# instance fields
.field private autoCommitDelay:I

.field private autoCommitMemory:I

.field private autoCompactFillRate:I

.field private autoCompactLastFileOpCount:J

.field private final backgroundExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field volatile backgroundWriterThread:Lorg/h2/mvstore/MVStore$BackgroundWriterThread;

.field private cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS<",
            "Lorg/h2/mvstore/Page;",
            ">;"
        }
    .end annotation
.end field

.field private cacheChunkRef:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS<",
            "Lorg/h2/mvstore/Page$PageChildren;",
            ">;"
        }
    .end annotation
.end field

.field private final chunks:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lorg/h2/mvstore/Chunk;",
            ">;"
        }
    .end annotation
.end field

.field private closed:Z

.field private compactSync:Ljava/lang/Object;

.field private final compressionLevel:I

.field private compressorFast:Lorg/h2/compress/Compressor;

.field private compressorHigh:Lorg/h2/compress/Compressor;

.field private creationTime:J

.field private currentStoreThread:Ljava/lang/Thread;

.field private volatile currentStoreVersion:J

.field private currentVersion:J

.field private fileStore:Lorg/h2/mvstore/FileStore;

.field private fileStoreIsProvided:Z

.field private final freedPageSpace:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/h2/mvstore/Chunk;",
            ">;>;"
        }
    .end annotation
.end field

.field private lastChunk:Lorg/h2/mvstore/Chunk;

.field private lastCommitTime:J

.field private lastFreeUnusedChunks:J

.field private lastMapId:I

.field private lastStoredVersion:J

.field private lastTimeAbsolute:J

.field private final maps:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lorg/h2/mvstore/MVMap<",
            "**>;>;"
        }
    .end annotation
.end field

.field private meta:Lorg/h2/mvstore/MVMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/mvstore/MVMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile metaChanged:Z

.field private final pageSplitSize:I

.field private panicException:Ljava/lang/IllegalStateException;

.field private retainChunk:Lorg/h2/mvstore/Chunk;

.field private retentionTime:I

.field private volatile reuseSpace:Z

.field private saveNeeded:Z

.field private storeHeader:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private unsavedMemory:I

.field private versionsToKeep:I

.field private writeBuffer:Lorg/h2/mvstore/WriteBuffer;


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/mvstore/MVStore;->reuseSpace:Z

    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lorg/h2/mvstore/MVStore;->chunks:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lorg/h2/mvstore/MVStore;->freedPageSpace:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lorg/h2/mvstore/MVStore;->maps:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/mvstore/MVStore;->storeHeader:Ljava/util/HashMap;

    const/4 v1, 0x5

    iput v1, p0, Lorg/h2/mvstore/MVStore;->versionsToKeep:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lorg/h2/mvstore/MVStore;->currentStoreVersion:J

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/h2/mvstore/MVStore;->compactSync:Ljava/lang/Object;

    const-string v1, "compress"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    iput v1, p0, Lorg/h2/mvstore/MVStore;->compressionLevel:I

    const-string v1, "fileName"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "pageSplitSize"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x1000

    if-nez v3, :cond_2

    if-nez v1, :cond_1

    const/16 v3, 0x1000

    goto :goto_1

    :cond_1
    const/16 v3, 0x4000

    :goto_1
    iput v3, p0, Lorg/h2/mvstore/MVStore;->pageSplitSize:I

    goto :goto_2

    :cond_2
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :goto_2
    const-string v3, "backgroundExceptionHandler"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object v3, p0, Lorg/h2/mvstore/MVStore;->backgroundExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    new-instance v3, Lorg/h2/mvstore/MVMap;

    sget-object v5, Lorg/h2/mvstore/type/StringDataType;->INSTANCE:Lorg/h2/mvstore/type/StringDataType;

    invoke-direct {v3, v5, v5}, Lorg/h2/mvstore/MVMap;-><init>(Lorg/h2/mvstore/type/DataType;Lorg/h2/mvstore/type/DataType;)V

    iput-object v3, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v5, p0, Lorg/h2/mvstore/MVStore;->currentVersion:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "createVersion"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v5, p0, v3}, Lorg/h2/mvstore/MVMap;->init(Lorg/h2/mvstore/MVStore;Ljava/util/HashMap;)V

    const-string v3, "fileStore"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/mvstore/FileStore;

    iput-object v3, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    if-nez v1, :cond_3

    if-nez v3, :cond_3

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/h2/mvstore/MVStore;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    iput-object p1, p0, Lorg/h2/mvstore/MVStore;->cacheChunkRef:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    return-void

    :cond_3
    if-nez v3, :cond_4

    iput-boolean v2, p0, Lorg/h2/mvstore/MVStore;->fileStoreIsProvided:Z

    new-instance v3, Lorg/h2/mvstore/FileStore;

    invoke-direct {v3}, Lorg/h2/mvstore/FileStore;-><init>()V

    iput-object v3, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    goto :goto_3

    :cond_4
    iput-boolean v0, p0, Lorg/h2/mvstore/MVStore;->fileStoreIsProvided:Z

    :goto_3
    iget-object v3, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v3}, Lorg/h2/mvstore/FileStore;->getDefaultRetentionTime()I

    move-result v3

    iput v3, p0, Lorg/h2/mvstore/MVStore;->retentionTime:I

    const-string v3, "readOnly"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "cacheSize"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_5

    const/16 v5, 0x10

    goto :goto_4

    :cond_5
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_4
    if-lez v5, :cond_7

    new-instance v6, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Config;

    invoke-direct {v6}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Config;-><init>()V

    int-to-long v7, v5

    const-wide/32 v9, 0x100000

    mul-long v7, v7, v9

    iput-wide v7, v6, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Config;->maxMemory:J

    const-string v5, "cacheConcurrency"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_6

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v6, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Config;->segmentCount:I

    :cond_6
    new-instance v5, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    invoke-direct {v5, v6}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;-><init>(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Config;)V

    iput-object v5, p0, Lorg/h2/mvstore/MVStore;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    iget-wide v7, v6, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Config;->maxMemory:J

    const-wide/16 v9, 0x4

    div-long/2addr v7, v9

    iput-wide v7, v6, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Config;->maxMemory:J

    new-instance v5, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    invoke-direct {v5, v6}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;-><init>(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Config;)V

    iput-object v5, p0, Lorg/h2/mvstore/MVStore;->cacheChunkRef:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    :cond_7
    const-string v5, "autoCommitBufferSize"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_8

    const/16 v5, 0x400

    goto :goto_5

    :cond_8
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_5
    mul-int/lit16 v5, v5, 0x4c00

    iput v5, p0, Lorg/h2/mvstore/MVStore;->autoCommitMemory:I

    const-string v5, "autoCompactFillRate"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_9

    const/16 v5, 0x32

    goto :goto_6

    :cond_9
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_6
    iput v5, p0, Lorg/h2/mvstore/MVStore;->autoCompactFillRate:I

    const-string v5, "encryptionKey"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [C

    :try_start_0
    iget-boolean v6, p0, Lorg/h2/mvstore/MVStore;->fileStoreIsProvided:Z

    if-nez v6, :cond_a

    iget-object v6, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v6, v1, v3, v5}, Lorg/h2/mvstore/FileStore;->open(Ljava/lang/String;Z[C)V

    goto :goto_7

    :catchall_0
    move-exception p1

    goto/16 :goto_d

    :catch_0
    move-exception v0

    goto :goto_a

    :cond_a
    :goto_7
    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v1}, Lorg/h2/mvstore/FileStore;->size()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_b

    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->getTimeAbsolute()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/h2/mvstore/MVStore;->creationTime:J

    iput-wide v6, p0, Lorg/h2/mvstore/MVStore;->lastCommitTime:J

    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->storeHeader:Ljava/util/HashMap;

    const-string v3, "H"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->storeHeader:Ljava/util/HashMap;

    const-string v3, "blockSize"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->storeHeader:Ljava/util/HashMap;

    const-string v3, "format"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->storeHeader:Ljava/util/HashMap;

    const-string v1, "created"

    iget-wide v3, p0, Lorg/h2/mvstore/MVStore;->creationTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->writeStoreHeader()V

    goto :goto_8

    :cond_b
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->readStoreHeader()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_8
    if-eqz v5, :cond_c

    :goto_9
    invoke-static {v5, v2}, Ljava/util/Arrays;->fill([CC)V

    goto :goto_b

    :goto_a
    :try_start_1
    invoke-direct {p0, v0}, Lorg/h2/mvstore/MVStore;->panic(Ljava/lang/IllegalStateException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_c

    goto :goto_9

    :cond_c
    :goto_b
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->getTimeSinceCreation()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/mvstore/MVStore;->lastCommitTime:J

    const-string v0, "autoCommitDelay"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_d

    const/16 p1, 0x3e8

    goto :goto_c

    :cond_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_c
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/MVStore;->setAutoCommitDelay(I)V

    return-void

    :goto_d
    if-eqz v5, :cond_e

    invoke-static {v5, v2}, Ljava/util/Arrays;->fill([CC)V

    :cond_e
    throw p1
.end method

.method private applyFreedSpace(J)V
    .locals 11

    :cond_0
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->freedPageSpace:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-lez v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/mvstore/Chunk;

    iget-object v4, p0, Lorg/h2/mvstore/MVStore;->chunks:Lj$/util/concurrent/ConcurrentHashMap;

    iget v5, v3, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/mvstore/Chunk;

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    iget-wide v5, v4, Lorg/h2/mvstore/Chunk;->maxLenLive:J

    iget-wide v7, v3, Lorg/h2/mvstore/Chunk;->maxLenLive:J

    add-long/2addr v5, v7

    iput-wide v5, v4, Lorg/h2/mvstore/Chunk;->maxLenLive:J

    iget v7, v4, Lorg/h2/mvstore/Chunk;->pageCountLive:I

    iget v3, v3, Lorg/h2/mvstore/Chunk;->pageCountLive:I

    add-int/2addr v7, v3

    iput v7, v4, Lorg/h2/mvstore/Chunk;->pageCountLive:I

    if-gez v7, :cond_3

    const v3, -0x989680

    if-le v7, v3, :cond_3

    const/4 v3, 0x0

    iput v3, v4, Lorg/h2/mvstore/Chunk;->pageCountLive:I

    :cond_3
    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-gez v3, :cond_4

    const-wide/32 v9, -0x989680

    cmp-long v3, v5, v9

    if-lez v3, :cond_4

    iput-wide v7, v4, Lorg/h2/mvstore/Chunk;->maxLenLive:J

    :cond_4
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/mvstore/Chunk;

    iget-object v3, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    iget v4, v2, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v4}, Lorg/h2/mvstore/Chunk;->getMetaKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/h2/mvstore/Chunk;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method private canOverwriteChunk(Lorg/h2/mvstore/Chunk;J)Z
    .locals 7

    iget v0, p0, Lorg/h2/mvstore/MVStore;->retentionTime:I

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    iget-wide v2, p1, Lorg/h2/mvstore/Chunk;->time:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    cmp-long v4, v2, p2

    if-lez v4, :cond_0

    return v1

    :cond_0
    iget-wide v2, p1, Lorg/h2/mvstore/Chunk;->unused:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    div-int/lit8 v0, v0, 0x2

    int-to-long v4, v0

    add-long/2addr v2, v4

    cmp-long v0, v2, p2

    if-lez v0, :cond_2

    :cond_1
    return v1

    :cond_2
    iget-object p2, p0, Lorg/h2/mvstore/MVStore;->retainChunk:Lorg/h2/mvstore/Chunk;

    if-eqz p2, :cond_3

    iget-wide v2, p1, Lorg/h2/mvstore/Chunk;->version:J

    iget-wide p1, p2, Lorg/h2/mvstore/Chunk;->version:J

    cmp-long p3, v2, p1

    if-lez p3, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private checkOpen()V
    .locals 3

    iget-boolean v0, p0, Lorg/h2/mvstore/MVStore;->closed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->panicException:Ljava/lang/IllegalStateException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x4

    const-string v2, "This store is closed"

    invoke-static {v0, v2, v1}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method private closeStore(Z)V
    .locals 2

    iget-boolean v0, p0, Lorg/h2/mvstore/MVStore;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->stopBackgroundThread()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/mvstore/MVStore;->closed:Z

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/h2/mvstore/MVStore;->shrinkFileIfPossible(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/h2/mvstore/MVStore;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    iput-object p1, p0, Lorg/h2/mvstore/MVStore;->cacheChunkRef:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->maps:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/mvstore/MVMap;

    invoke-virtual {v1}, Lorg/h2/mvstore/MVMap;->close()V

    goto :goto_1

    :cond_2
    iput-object p1, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->chunks:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->maps:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    :try_start_1
    iget-boolean v1, p0, Lorg/h2/mvstore/MVStore;->fileStoreIsProvided:Z

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lorg/h2/mvstore/FileStore;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_3
    :goto_2
    :try_start_2
    iput-object p1, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    goto :goto_4

    :goto_3
    iput-object p1, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    throw v0

    :cond_4
    :goto_4
    monitor-exit p0

    return-void

    :goto_5
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private collectReferencedChunks()Ljava/util/Set;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    iget-wide v0, v0, Lorg/h2/mvstore/Chunk;->version:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Collect references on version 0"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/h2/mvstore/DataUtils;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/h2/mvstore/MVStore;->getFileStore()Lorg/h2/mvstore/FileStore;

    move-result-object v0

    iget-wide v0, v0, Lorg/h2/mvstore/FileStore;->readCount:J

    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    const-string v2, "root."

    invoke-virtual {v1, v2}, Lorg/h2/mvstore/MVMap;->cursor(Ljava/lang/Object;)Lorg/h2/mvstore/Cursor;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Lorg/h2/mvstore/Cursor;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lorg/h2/mvstore/Cursor;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Lorg/h2/mvstore/Cursor;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lorg/h2/mvstore/DataUtils;->parseHexLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v6, v8, v3

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/h2/mvstore/DataUtils;->parseHexInt(Ljava/lang/String;)I

    move-result v7

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, v0

    invoke-direct/range {v5 .. v10}, Lorg/h2/mvstore/MVStore;->collectReferencedChunks(Ljava/util/Set;IJI)V

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    iget-wide v8, v1, Lorg/h2/mvstore/Chunk;->metaRootPos:J

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, v0

    invoke-direct/range {v5 .. v10}, Lorg/h2/mvstore/MVStore;->collectReferencedChunks(Ljava/util/Set;IJI)V

    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    iget-wide v1, v1, Lorg/h2/mvstore/FileStore;->readCount:J

    return-object v0
.end method

.method private collectReferencedChunks(Ljava/util/Set;IJI)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;IJI)V"
        }
    .end annotation

    .line 2
    invoke-static {p3, p4}, Lorg/h2/mvstore/DataUtils;->getPageChunkId(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {p3, p4}, Lorg/h2/mvstore/DataUtils;->getPageType(J)I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    invoke-direct {p0, p2, p3, p4, v1}, Lorg/h2/mvstore/MVStore;->readPageChunkReferences(IJI)Lorg/h2/mvstore/Page$PageChildren;

    move-result-object p3

    iget-boolean p4, p3, Lorg/h2/mvstore/Page$PageChildren;->chunkList:Z

    const/4 v1, 0x0

    if-nez p4, :cond_3

    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object p4

    const/4 v8, 0x0

    :goto_0
    iget-object v2, p3, Lorg/h2/mvstore/Page$PageChildren;->children:[J

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v8, v3, :cond_1

    aget-wide v5, v2, v8

    add-int/lit8 v7, p5, 0x1

    move-object v2, p0

    move-object v3, p4

    move v4, p2

    invoke-direct/range {v2 .. v7}, Lorg/h2/mvstore/MVStore;->collectReferencedChunks(Ljava/util/Set;IJI)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result p2

    new-array p2, p2, [J

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    const/4 p5, 0x0

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    add-int/lit8 v2, p5, 0x1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v1, v1, v1}, Lorg/h2/mvstore/DataUtils;->getPagePos(IIII)J

    move-result-wide v5

    aput-wide v5, p2, p5

    move p5, v2

    goto :goto_1

    :cond_2
    iput-object p2, p3, Lorg/h2/mvstore/Page$PageChildren;->children:[J

    iput-boolean v4, p3, Lorg/h2/mvstore/Page$PageChildren;->chunkList:Z

    iget-object p2, p0, Lorg/h2/mvstore/MVStore;->cacheChunkRef:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    if-eqz p2, :cond_3

    iget-wide p4, p3, Lorg/h2/mvstore/Page$PageChildren;->pos:J

    invoke-virtual {p3}, Lorg/h2/mvstore/Page$PageChildren;->getMemory()I

    move-result v0

    invoke-virtual {p2, p4, p5, p3, v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->put(JLjava/lang/Object;I)Ljava/lang/Object;

    :cond_3
    iget-object p2, p3, Lorg/h2/mvstore/Page$PageChildren;->children:[J

    array-length p3, p2

    :goto_2
    if-ge v1, p3, :cond_4

    aget-wide p4, p2, v1

    invoke-static {p4, p5}, Lorg/h2/mvstore/DataUtils;->getPageChunkId(J)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p1, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private declared-synchronized commitAndSave()J
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/h2/mvstore/MVStore;->closed:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/h2/mvstore/MVStore;->currentVersion:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    iget-wide v3, p0, Lorg/h2/mvstore/MVStore;->currentStoreVersion:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1

    iget-wide v0, p0, Lorg/h2/mvstore/MVStore;->currentVersion:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lorg/h2/mvstore/MVStore;->hasUnsavedChanges()Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p0, Lorg/h2/mvstore/MVStore;->currentVersion:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-wide v0

    :cond_2
    :try_start_3
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/FileStore;->isReadOnly()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    :try_start_4
    iget-wide v3, p0, Lorg/h2/mvstore/MVStore;->currentVersion:J

    iput-wide v3, p0, Lorg/h2/mvstore/MVStore;->currentStoreVersion:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Lorg/h2/mvstore/MVStore;->currentStoreThread:Ljava/lang/Thread;

    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->storeNow()J

    move-result-wide v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iput-wide v1, p0, Lorg/h2/mvstore/MVStore;->currentStoreVersion:J

    iput-object v0, p0, Lorg/h2/mvstore/MVStore;->currentStoreThread:Ljava/lang/Thread;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-wide v3

    :catchall_1
    move-exception v3

    :try_start_6
    iput-wide v1, p0, Lorg/h2/mvstore/MVStore;->currentStoreVersion:J

    iput-object v0, p0, Lorg/h2/mvstore/MVStore;->currentStoreThread:Ljava/lang/Thread;

    throw v3

    :cond_3
    const-string v0, "This store is read-only"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0

    :cond_4
    const-string v0, "This is an in-memory store"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method private compactGetMoveBlocks(JJ)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/ArrayList<",
            "Lorg/h2/mvstore/Chunk;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->chunks:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

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

    check-cast v2, Lorg/h2/mvstore/Chunk;

    iget-wide v3, v2, Lorg/h2/mvstore/Chunk;->block:J

    cmp-long v5, v3, p1

    if-lez v5, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/h2/mvstore/MVStore$1;

    invoke-direct {p1, p0}, Lorg/h2/mvstore/MVStore$1;-><init>(Lorg/h2/mvstore/MVStore;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    const-wide/16 v1, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/mvstore/Chunk;

    iget v3, v3, Lorg/h2/mvstore/Chunk;->len:I

    int-to-long v3, v3

    const-wide/16 v5, 0x1000

    mul-long v3, v3, v5

    add-long/2addr v1, v3

    cmp-long v3, v1, p3

    if-lez v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, p2, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p3, 0x1

    if-le p1, p3, :cond_4

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method private compactGetOldChunks(II)Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lorg/h2/mvstore/Chunk;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/h2/mvstore/MVStore;->getTimeSinceCreation()J

    move-result-wide v3

    iget-object v1, v0, Lorg/h2/mvstore/MVStore;->chunks:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v5, 0x0

    move-wide v7, v5

    move-wide v9, v7

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/h2/mvstore/Chunk;

    iget-wide v12, v11, Lorg/h2/mvstore/Chunk;->time:J

    iget v14, v0, Lorg/h2/mvstore/MVStore;->retentionTime:I

    int-to-long v14, v14

    add-long/2addr v12, v14

    cmp-long v14, v12, v3

    if-lez v14, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v12, v11, Lorg/h2/mvstore/Chunk;->maxLen:J

    add-long/2addr v9, v12

    iget-wide v11, v11, Lorg/h2/mvstore/Chunk;->maxLenLive:J

    add-long/2addr v7, v11

    goto :goto_0

    :cond_2
    cmp-long v1, v7, v5

    if-gez v1, :cond_3

    return-object v2

    :cond_3
    const-wide/16 v11, 0x1

    cmp-long v1, v9, v5

    if-gtz v1, :cond_4

    move-wide v9, v11

    :cond_4
    const-wide/16 v13, 0x64

    mul-long v7, v7, v13

    div-long/2addr v7, v9

    long-to-int v1, v7

    move/from16 v7, p1

    if-lt v1, v7, :cond_5

    return-object v2

    :cond_5
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v7, v0, Lorg/h2/mvstore/MVStore;->chunks:Lj$/util/concurrent/ConcurrentHashMap;

    iget-object v8, v0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    iget v8, v8, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/h2/mvstore/Chunk;

    iget-object v8, v0, Lorg/h2/mvstore/MVStore;->chunks:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/h2/mvstore/Chunk;

    iget-wide v13, v9, Lorg/h2/mvstore/Chunk;->time:J

    iget v10, v0, Lorg/h2/mvstore/MVStore;->retentionTime:I

    int-to-long v5, v10

    add-long/2addr v13, v5

    cmp-long v5, v13, v3

    if-lez v5, :cond_6

    :goto_2
    const-wide/16 v5, 0x0

    goto :goto_1

    :cond_6
    iget-wide v5, v7, Lorg/h2/mvstore/Chunk;->version:J

    iget-wide v13, v9, Lorg/h2/mvstore/Chunk;->version:J

    sub-long/2addr v5, v13

    add-long/2addr v5, v11

    invoke-virtual {v9}, Lorg/h2/mvstore/Chunk;->getFillRate()I

    move-result v10

    mul-int/lit16 v10, v10, 0x3e8

    int-to-long v13, v10

    div-long/2addr v13, v5

    long-to-int v5, v13

    iput v5, v9, Lorg/h2/mvstore/Chunk;->collectPriority:I

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_8

    return-object v2

    :cond_8
    new-instance v3, Lorg/h2/mvstore/MVStore$2;

    invoke-direct {v3, v0}, Lorg/h2/mvstore/MVStore$2;-><init>(Lorg/h2/mvstore/MVStore;)V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move-object v7, v2

    const-wide/16 v5, 0x0

    const/4 v8, 0x0

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/h2/mvstore/Chunk;

    if-eqz v7, :cond_9

    iget v10, v9, Lorg/h2/mvstore/Chunk;->collectPriority:I

    if-lez v10, :cond_9

    move/from16 v10, p2

    int-to-long v11, v10

    cmp-long v13, v5, v11

    if-lez v13, :cond_a

    goto :goto_4

    :cond_9
    move/from16 v10, p2

    :cond_a
    iget-wide v11, v9, Lorg/h2/mvstore/Chunk;->maxLenLive:J

    add-long/2addr v5, v11

    add-int/lit8 v8, v8, 0x1

    move-object v7, v9

    goto :goto_3

    :cond_b
    :goto_4
    const/4 v3, 0x1

    if-ge v8, v3, :cond_c

    return-object v2

    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/mvstore/Chunk;

    if-ne v7, v5, :cond_e

    const/4 v4, 0x1

    goto :goto_5

    :cond_e
    if-eqz v4, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :cond_f
    return-object v1
.end method

.method private compactMoveChunks(Ljava/util/ArrayList;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/mvstore/Chunk;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1000

    const/4 v7, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/mvstore/Chunk;

    invoke-direct/range {p0 .. p0}, Lorg/h2/mvstore/MVStore;->getWriteBuffer()Lorg/h2/mvstore/WriteBuffer;

    move-result-object v8

    iget-wide v9, v2, Lorg/h2/mvstore/Chunk;->block:J

    mul-long v9, v9, v5

    iget v11, v2, Lorg/h2/mvstore/Chunk;->len:I

    mul-int/lit16 v11, v11, 0x1000

    invoke-virtual {v8, v11}, Lorg/h2/mvstore/WriteBuffer;->limit(I)Lorg/h2/mvstore/WriteBuffer;

    iget-object v12, v0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v12, v9, v10, v11}, Lorg/h2/mvstore/FileStore;->readFully(JI)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-static {v12, v9, v10}, Lorg/h2/mvstore/Chunk;->readChunkHeader(Ljava/nio/ByteBuffer;J)Lorg/h2/mvstore/Chunk;

    invoke-virtual {v12}, Ljava/nio/Buffer;->position()I

    move-result v13

    invoke-virtual {v8, v13}, Lorg/h2/mvstore/WriteBuffer;->position(I)Lorg/h2/mvstore/WriteBuffer;

    invoke-virtual {v8, v12}, Lorg/h2/mvstore/WriteBuffer;->put(Ljava/nio/ByteBuffer;)Lorg/h2/mvstore/WriteBuffer;

    invoke-direct/range {p0 .. p0}, Lorg/h2/mvstore/MVStore;->getFileLengthInUse()J

    move-result-wide v14

    iget-object v12, v0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v12, v14, v15, v11}, Lorg/h2/mvstore/FileStore;->markUsed(JI)V

    iget-object v12, v0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v12, v9, v10, v11}, Lorg/h2/mvstore/FileStore;->free(JI)V

    div-long v5, v14, v5

    iput-wide v5, v2, Lorg/h2/mvstore/Chunk;->block:J

    iput-wide v3, v2, Lorg/h2/mvstore/Chunk;->next:J

    invoke-virtual {v8, v7}, Lorg/h2/mvstore/WriteBuffer;->position(I)Lorg/h2/mvstore/WriteBuffer;

    invoke-virtual {v2, v8, v13}, Lorg/h2/mvstore/Chunk;->writeChunkHeader(Lorg/h2/mvstore/WriteBuffer;I)V

    add-int/lit8 v11, v11, -0x80

    invoke-virtual {v8, v11}, Lorg/h2/mvstore/WriteBuffer;->position(I)Lorg/h2/mvstore/WriteBuffer;

    invoke-virtual {v2}, Lorg/h2/mvstore/Chunk;->getFooterBytes()[B

    move-result-object v3

    invoke-virtual {v8, v3}, Lorg/h2/mvstore/WriteBuffer;->put([B)Lorg/h2/mvstore/WriteBuffer;

    invoke-virtual {v8, v7}, Lorg/h2/mvstore/WriteBuffer;->position(I)Lorg/h2/mvstore/WriteBuffer;

    invoke-virtual {v8}, Lorg/h2/mvstore/WriteBuffer;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-direct {v0, v14, v15, v3}, Lorg/h2/mvstore/MVStore;->write(JLjava/nio/ByteBuffer;)V

    invoke-direct {v0, v8}, Lorg/h2/mvstore/MVStore;->releaseWriteBuffer(Lorg/h2/mvstore/WriteBuffer;)V

    invoke-direct/range {p0 .. p0}, Lorg/h2/mvstore/MVStore;->markMetaChanged()V

    iget-object v3, v0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    iget v4, v2, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v4}, Lorg/h2/mvstore/Chunk;->getMetaKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/h2/mvstore/Chunk;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-boolean v7, v0, Lorg/h2/mvstore/MVStore;->reuseSpace:Z

    invoke-direct/range {p0 .. p0}, Lorg/h2/mvstore/MVStore;->commitAndSave()J

    invoke-virtual/range {p0 .. p0}, Lorg/h2/mvstore/MVStore;->sync()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/h2/mvstore/MVStore;->reuseSpace:Z

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/mvstore/Chunk;

    iget-object v8, v0, Lorg/h2/mvstore/MVStore;->chunks:Lj$/util/concurrent/ConcurrentHashMap;

    iget v9, v2, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct/range {p0 .. p0}, Lorg/h2/mvstore/MVStore;->getWriteBuffer()Lorg/h2/mvstore/WriteBuffer;

    move-result-object v8

    iget-wide v9, v2, Lorg/h2/mvstore/Chunk;->block:J

    mul-long v9, v9, v5

    iget v11, v2, Lorg/h2/mvstore/Chunk;->len:I

    mul-int/lit16 v11, v11, 0x1000

    invoke-virtual {v8, v11}, Lorg/h2/mvstore/WriteBuffer;->limit(I)Lorg/h2/mvstore/WriteBuffer;

    iget-object v12, v0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v12, v9, v10, v11}, Lorg/h2/mvstore/FileStore;->readFully(JI)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-static {v12, v3, v4}, Lorg/h2/mvstore/Chunk;->readChunkHeader(Ljava/nio/ByteBuffer;J)Lorg/h2/mvstore/Chunk;

    invoke-virtual {v12}, Ljava/nio/Buffer;->position()I

    move-result v13

    invoke-virtual {v8, v13}, Lorg/h2/mvstore/WriteBuffer;->position(I)Lorg/h2/mvstore/WriteBuffer;

    invoke-virtual {v8, v12}, Lorg/h2/mvstore/WriteBuffer;->put(Ljava/nio/ByteBuffer;)Lorg/h2/mvstore/WriteBuffer;

    iget-object v12, v0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v12, v11}, Lorg/h2/mvstore/FileStore;->allocate(I)J

    move-result-wide v14

    iget-object v12, v0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v12, v9, v10, v11}, Lorg/h2/mvstore/FileStore;->free(JI)V

    invoke-virtual {v8, v7}, Lorg/h2/mvstore/WriteBuffer;->position(I)Lorg/h2/mvstore/WriteBuffer;

    div-long v9, v14, v5

    iput-wide v9, v2, Lorg/h2/mvstore/Chunk;->block:J

    invoke-virtual {v2, v8, v13}, Lorg/h2/mvstore/Chunk;->writeChunkHeader(Lorg/h2/mvstore/WriteBuffer;I)V

    add-int/lit8 v11, v11, -0x80

    invoke-virtual {v8, v11}, Lorg/h2/mvstore/WriteBuffer;->position(I)Lorg/h2/mvstore/WriteBuffer;

    invoke-virtual {v2}, Lorg/h2/mvstore/Chunk;->getFooterBytes()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/h2/mvstore/WriteBuffer;->put([B)Lorg/h2/mvstore/WriteBuffer;

    invoke-virtual {v8, v7}, Lorg/h2/mvstore/WriteBuffer;->position(I)Lorg/h2/mvstore/WriteBuffer;

    invoke-virtual {v8}, Lorg/h2/mvstore/WriteBuffer;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-direct {v0, v14, v15, v9}, Lorg/h2/mvstore/MVStore;->write(JLjava/nio/ByteBuffer;)V

    invoke-direct {v0, v8}, Lorg/h2/mvstore/MVStore;->releaseWriteBuffer(Lorg/h2/mvstore/WriteBuffer;)V

    invoke-direct/range {p0 .. p0}, Lorg/h2/mvstore/MVStore;->markMetaChanged()V

    iget-object v8, v0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    iget v9, v2, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v9}, Lorg/h2/mvstore/Chunk;->getMetaKey(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lorg/h2/mvstore/Chunk;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v9, v2}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-direct/range {p0 .. p0}, Lorg/h2/mvstore/MVStore;->commitAndSave()J

    invoke-virtual/range {p0 .. p0}, Lorg/h2/mvstore/MVStore;->sync()V

    invoke-direct {v0, v7}, Lorg/h2/mvstore/MVStore;->shrinkFileIfPossible(I)V

    return-void
.end method

.method private compactRewrite(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/h2/mvstore/Chunk;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/mvstore/Chunk;

    iget v1, v1, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/h2/mvstore/MVStore;->maps:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/mvstore/MVMap;

    invoke-virtual {v1, v0}, Lorg/h2/mvstore/MVMap;->rewrite(Ljava/util/Set;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_2
    iget-object p1, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-virtual {p1, v0}, Lorg/h2/mvstore/MVMap;->rewrite(Ljava/util/Set;)Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->freeUnusedChunks()V

    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->commitAndSave()J

    return-void
.end method

.method private declared-synchronized freeUnusedChunks()V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/h2/mvstore/MVStore;->reuseSpace:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->collectReferencedChunks()Ljava/util/Set;

    move-result-object v0

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->getTimeSinceCreation()J

    move-result-wide v2

    iget-object v4, p0, Lorg/h2/mvstore/MVStore;->chunks:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/mvstore/Chunk;

    iget v6, v5, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/mvstore/Chunk;

    invoke-direct {p0, v1, v2, v3}, Lorg/h2/mvstore/MVStore;->canOverwriteChunk(Lorg/h2/mvstore/Chunk;J)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/h2/mvstore/MVStore;->chunks:Lj$/util/concurrent/ConcurrentHashMap;

    iget v5, v1, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->markMetaChanged()V

    iget-object v4, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    iget v5, v1, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v5}, Lorg/h2/mvstore/Chunk;->getMetaKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/h2/mvstore/MVMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v4, v1, Lorg/h2/mvstore/Chunk;->block:J

    const-wide/16 v6, 0x1000

    mul-long v4, v4, v6

    iget v1, v1, Lorg/h2/mvstore/Chunk;->len:I

    mul-int/lit16 v1, v1, 0x1000

    iget-object v6, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v6, v4, v5, v1}, Lorg/h2/mvstore/FileStore;->free(JI)V

    goto :goto_1

    :cond_4
    iget-wide v4, v1, Lorg/h2/mvstore/Chunk;->unused:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_3

    iput-wide v2, v1, Lorg/h2/mvstore/Chunk;->unused:J

    iget-object v4, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    iget v5, v1, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v5}, Lorg/h2/mvstore/Chunk;->getMetaKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lorg/h2/mvstore/Chunk;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->markMetaChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_5
    monitor-exit p0

    return-void

    :cond_6
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0

    throw v0
.end method

.method private getChunk(J)Lorg/h2/mvstore/Chunk;
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/h2/mvstore/MVStore;->getChunkIfFound(J)Lorg/h2/mvstore/Chunk;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1, p2}, Lorg/h2/mvstore/DataUtils;->getPageChunkId(J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const/4 p1, 0x6

    const-string v0, "Chunk {0} not found"

    invoke-static {p1, v0, p2}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method private getChunkForVersion(J)Lorg/h2/mvstore/Chunk;
    .locals 6

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->chunks:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/mvstore/Chunk;

    iget-wide v3, v2, Lorg/h2/mvstore/Chunk;->version:J

    cmp-long v5, v3, p1

    if-gtz v5, :cond_0

    if-eqz v1, :cond_1

    iget v3, v2, Lorg/h2/mvstore/Chunk;->id:I

    iget v4, v1, Lorg/h2/mvstore/Chunk;->id:I

    if-le v3, v4, :cond_0

    :cond_1
    move-object v1, v2

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private getChunkIfFound(J)Lorg/h2/mvstore/Chunk;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, p2}, Lorg/h2/mvstore/DataUtils;->getPageChunkId(J)I

    move-result p1

    iget-object p2, p0, Lorg/h2/mvstore/MVStore;->chunks:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/h2/mvstore/Chunk;

    if-nez p2, :cond_3

    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->checkOpen()V

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-static {p1}, Lorg/h2/mvstore/Chunk;->getMetaKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p2}, Lorg/h2/mvstore/Chunk;->fromString(Ljava/lang/String;)Lorg/h2/mvstore/Chunk;

    move-result-object p2

    iget-wide v2, p2, Lorg/h2/mvstore/Chunk;->block:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    iget-object p1, p0, Lorg/h2/mvstore/MVStore;->chunks:Lj$/util/concurrent/ConcurrentHashMap;

    iget v0, p2, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const/4 p1, 0x6

    const-string v0, "Chunk {0} is invalid"

    invoke-static {p1, v0, p2}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const/16 p1, 0x9

    const-string v0, "Chunk {0} no longer exists"

    invoke-static {p1, v0, p2}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_0
    return-object p2
.end method

.method private getFileLengthInUse()J
    .locals 7

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->chunks:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x2000

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/mvstore/Chunk;

    iget v4, v3, Lorg/h2/mvstore/Chunk;->len:I

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_0

    iget-wide v5, v3, Lorg/h2/mvstore/Chunk;->block:J

    int-to-long v3, v4

    add-long/2addr v5, v3

    const-wide/16 v3, 0x1000

    mul-long v5, v5, v3

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method private getMetaMap(J)Lorg/h2/mvstore/MVMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/h2/mvstore/MVMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Lorg/h2/mvstore/MVStore;->getChunkForVersion(J)Lorg/h2/mvstore/Chunk;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v0

    const-string v0, "Unknown version {0}"

    invoke-static {v3, v0, v1}, Lorg/h2/mvstore/DataUtils;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-wide v0, v2, Lorg/h2/mvstore/Chunk;->block:J

    invoke-direct {p0, v0, v1}, Lorg/h2/mvstore/MVStore;->readChunkHeader(J)Lorg/h2/mvstore/Chunk;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v1}, Lorg/h2/mvstore/MVMap;->openReadOnly()Lorg/h2/mvstore/MVMap;

    move-result-object v1

    iget-wide v2, v0, Lorg/h2/mvstore/Chunk;->metaRootPos:J

    invoke-virtual {v1, v2, v3, p1, p2}, Lorg/h2/mvstore/MVMap;->setRootPos(JJ)V

    return-object v1
.end method

.method private static getRootPos(Lorg/h2/mvstore/MVMap;I)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/MVMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)J"
        }
    .end annotation

    invoke-static {p1}, Lorg/h2/mvstore/MVMap;->getMapRootKey(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/h2/mvstore/DataUtils;->parseHexLong(Ljava/lang/String;)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method private getTimeAbsolute()J
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/h2/mvstore/MVStore;->lastTimeAbsolute:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    goto :goto_0

    :cond_0
    iput-wide v0, p0, Lorg/h2/mvstore/MVStore;->lastTimeAbsolute:J

    :goto_0
    return-wide v0
.end method

.method private getTimeSinceCreation()J
    .locals 4

    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->getTimeAbsolute()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/h2/mvstore/MVStore;->creationTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private getWriteBuffer()Lorg/h2/mvstore/WriteBuffer;
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->writeBuffer:Lorg/h2/mvstore/WriteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/h2/mvstore/WriteBuffer;->clear()Lorg/h2/mvstore/WriteBuffer;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/h2/mvstore/WriteBuffer;

    invoke-direct {v0}, Lorg/h2/mvstore/WriteBuffer;-><init>()V

    :goto_0
    return-object v0
.end method

.method private isKnownVersion(J)Z
    .locals 7

    const-string v0, "chunk."

    iget-wide v1, p0, Lorg/h2/mvstore/MVStore;->currentVersion:J

    const/4 v3, 0x0

    cmp-long v4, p1, v1

    if-gtz v4, :cond_a

    const-wide/16 v4, 0x0

    cmp-long v6, p1, v4

    if-gez v6, :cond_0

    goto :goto_4

    :cond_0
    const/4 v4, 0x1

    cmp-long v5, p1, v1

    if-eqz v5, :cond_9

    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->chunks:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/h2/mvstore/MVStore;->getChunkForVersion(J)Lorg/h2/mvstore/Chunk;

    move-result-object v1

    if-nez v1, :cond_2

    return v3

    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/h2/mvstore/MVStore;->getMetaMap(J)Lorg/h2/mvstore/MVMap;

    move-result-object p1

    if-nez p1, :cond_3

    return v3

    :cond_3
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/h2/mvstore/MVMap;->keyIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v2, v1}, Lorg/h2/mvstore/MVMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1, v1}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/mvstore/Chunk;->fromString(Ljava/lang/String;)Lorg/h2/mvstore/Chunk;

    move-result-object v1

    iget-wide v5, v1, Lorg/h2/mvstore/Chunk;->block:J

    invoke-direct {p0, v5, v6}, Lorg/h2/mvstore/MVStore;->readChunkHeaderAndFooter(J)Lorg/h2/mvstore/Chunk;

    move-result-object v2

    if-eqz v2, :cond_7

    iget v2, v2, Lorg/h2/mvstore/Chunk;->id:I

    iget v5, v1, Lorg/h2/mvstore/Chunk;->id:I

    if-eq v2, v5, :cond_6

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lorg/h2/mvstore/MVStore;->chunks:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5, v1}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_7
    :goto_1
    return v3

    :cond_8
    :goto_2
    return v4

    :catch_0
    return v3

    :cond_9
    :goto_3
    return v4

    :cond_a
    :goto_4
    return v3
.end method

.method private loadChunkMeta()V
    .locals 8

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    const-string v1, "chunk."

    invoke-virtual {v0, v1}, Lorg/h2/mvstore/MVMap;->keyIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v3, v2}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lorg/h2/mvstore/Chunk;->fromString(Ljava/lang/String;)Lorg/h2/mvstore/Chunk;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/mvstore/MVStore;->chunks:Lj$/util/concurrent/ConcurrentHashMap;

    iget v4, v2, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-wide v3, v2, Lorg/h2/mvstore/Chunk;->block:J

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    iget-object v3, p0, Lorg/h2/mvstore/MVStore;->chunks:Lj$/util/concurrent/ConcurrentHashMap;

    iget v4, v2, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget v0, v2, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x6

    const-string v2, "Chunk {0} is invalid"

    invoke-static {v0, v2, v1}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0

    :cond_3
    :goto_1
    return-void
.end method

.method private markMetaChanged()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/mvstore/MVStore;->metaChanged:Z

    return-void
.end method

.method public static open(Ljava/lang/String;)Lorg/h2/mvstore/MVStore;
    .locals 2

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "fileName"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lorg/h2/mvstore/MVStore;

    invoke-direct {p0, v0}, Lorg/h2/mvstore/MVStore;-><init>(Ljava/util/HashMap;)V

    return-object p0
.end method

.method private panic(Ljava/lang/IllegalStateException;)V
    .locals 2

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->backgroundExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    iput-object p1, p0, Lorg/h2/mvstore/MVStore;->panicException:Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/h2/mvstore/MVStore;->closeImmediately()V

    throw p1
.end method

.method private readChunkFooter(J)Lorg/h2/mvstore/Chunk;
    .locals 5

    const-string v0, "fletcher"

    :try_start_0
    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    const-wide/16 v2, 0x80

    sub-long/2addr p1, v2

    const/16 v2, 0x80

    invoke-virtual {v1, p1, p2, v2}, Lorg/h2/mvstore/FileStore;->readFully(JI)Ljava/nio/ByteBuffer;

    move-result-object p1

    new-array p2, v2, [B

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance p1, Ljava/lang/String;

    sget-object v1, Lorg/h2/mvstore/DataUtils;->LATIN:Ljava/nio/charset/Charset;

    invoke-direct {p1, p2, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/mvstore/DataUtils;->parseMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    const/4 v2, 0x0

    invoke-static {p2, v0, v2}, Lorg/h2/mvstore/DataUtils;->readHexInt(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length v0, p1

    invoke-static {p1, v0}, Lorg/h2/mvstore/DataUtils;->getFletcher32([BI)I

    move-result p1

    if-ne v3, p1, :cond_0

    const-string p1, "chunk"

    invoke-static {p2, p1, v2}, Lorg/h2/mvstore/DataUtils;->readHexInt(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result p1

    new-instance v0, Lorg/h2/mvstore/Chunk;

    invoke-direct {v0, p1}, Lorg/h2/mvstore/Chunk;-><init>(I)V

    const-string p1, "version"

    const-wide/16 v1, 0x0

    invoke-static {p2, p1, v1, v2}, Lorg/h2/mvstore/DataUtils;->readHexLong(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v0, Lorg/h2/mvstore/Chunk;->version:J

    const-string p1, "block"

    invoke-static {p2, p1, v1, v2}, Lorg/h2/mvstore/DataUtils;->readHexLong(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, v0, Lorg/h2/mvstore/Chunk;->block:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private readChunkHeader(J)Lorg/h2/mvstore/Chunk;
    .locals 2

    const-wide/16 v0, 0x1000

    mul-long p1, p1, v0

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    const/16 v1, 0x400

    invoke-virtual {v0, p1, p2, v1}, Lorg/h2/mvstore/FileStore;->readFully(JI)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/h2/mvstore/Chunk;->readChunkHeader(Ljava/nio/ByteBuffer;J)Lorg/h2/mvstore/Chunk;

    move-result-object p1

    return-object p1
.end method

.method private readChunkHeaderAndFooter(J)Lorg/h2/mvstore/Chunk;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/h2/mvstore/MVStore;->readChunkHeader(J)Lorg/h2/mvstore/Chunk;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget v2, v1, Lorg/h2/mvstore/Chunk;->len:I

    int-to-long v2, v2

    add-long/2addr p1, v2

    const-wide/16 v2, 0x1000

    mul-long p1, p1, v2

    invoke-direct {p0, p1, p2}, Lorg/h2/mvstore/MVStore;->readChunkFooter(J)Lorg/h2/mvstore/Chunk;

    move-result-object p1

    if-eqz p1, :cond_2

    iget p1, p1, Lorg/h2/mvstore/Chunk;->id:I

    iget p2, v1, Lorg/h2/mvstore/Chunk;->id:I

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    return-object v1

    :catch_0
    :cond_2
    :goto_0
    return-object v0
.end method

.method private readPageChunkReferences(IJI)Lorg/h2/mvstore/Page$PageChildren;
    .locals 14

    move-object v0, p0

    move-wide/from16 v9, p2

    invoke-static/range {p2 .. p3}, Lorg/h2/mvstore/DataUtils;->getPageType(J)I

    move-result v1

    const/4 v11, 0x0

    if-nez v1, :cond_0

    return-object v11

    :cond_0
    iget-object v1, v0, Lorg/h2/mvstore/MVStore;->cacheChunkRef:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v9, v10}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/mvstore/Page$PageChildren;

    goto :goto_0

    :cond_1
    move-object v1, v11

    :goto_0
    if-nez v1, :cond_5

    iget-object v2, v0, Lorg/h2/mvstore/MVStore;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v9, v10}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/mvstore/Page;

    if-eqz v2, :cond_2

    new-instance v1, Lorg/h2/mvstore/Page$PageChildren;

    invoke-direct {v1, v2}, Lorg/h2/mvstore/Page$PageChildren;-><init>(Lorg/h2/mvstore/Page;)V

    :cond_2
    if-nez v1, :cond_4

    invoke-direct {p0, v9, v10}, Lorg/h2/mvstore/MVStore;->getChunk(J)Lorg/h2/mvstore/Chunk;

    move-result-object v1

    iget-wide v2, v1, Lorg/h2/mvstore/Chunk;->block:J

    const-wide/16 v4, 0x1000

    mul-long v2, v2, v4

    invoke-static/range {p2 .. p3}, Lorg/h2/mvstore/DataUtils;->getPageOffset(J)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v2

    const-wide/16 v2, 0x0

    cmp-long v8, v6, v2

    if-ltz v8, :cond_3

    iget-wide v2, v1, Lorg/h2/mvstore/Chunk;->block:J

    iget v1, v1, Lorg/h2/mvstore/Chunk;->len:I

    int-to-long v12, v1

    add-long/2addr v2, v12

    mul-long v12, v2, v4

    iget-object v1, v0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    move-wide/from16 v2, p2

    move v4, p1

    move-wide v5, v6

    move-wide v7, v12

    invoke-static/range {v1 .. v8}, Lorg/h2/mvstore/Page$PageChildren;->read(Lorg/h2/mvstore/FileStore;JIJJ)Lorg/h2/mvstore/Page$PageChildren;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1}, Lorg/h2/mvstore/Chunk;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    const/4 v2, 0x2

    aput-object v1, v4, v2

    const/4 v1, 0x6

    const-string v2, "Negative position {0}; p={1}, c={2}"

    invoke-static {v1, v2, v4}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v1

    throw v1

    :cond_4
    :goto_1
    invoke-virtual {v1}, Lorg/h2/mvstore/Page$PageChildren;->removeDuplicateChunkReferences()V

    iget-object v2, v0, Lorg/h2/mvstore/MVStore;->cacheChunkRef:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lorg/h2/mvstore/Page$PageChildren;->getMemory()I

    move-result v3

    invoke-virtual {v2, v9, v10, v1, v3}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->put(JLjava/lang/Object;I)Ljava/lang/Object;

    :cond_5
    iget-object v2, v1, Lorg/h2/mvstore/Page$PageChildren;->children:[J

    array-length v2, v2

    if-nez v2, :cond_6

    invoke-static/range {p2 .. p3}, Lorg/h2/mvstore/DataUtils;->getPageChunkId(J)I

    move-result v2

    move/from16 v3, p4

    if-ne v2, v3, :cond_6

    return-object v11

    :cond_6
    return-object v1
.end method

.method private declared-synchronized readStoreHeader()V
    .locals 17

    move-object/from16 v8, p0

    const/16 v9, 0x1000

    const/4 v1, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v3, v8, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    const/16 v4, 0x2000

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v5, v6, v4}, Lorg/h2/mvstore/FileStore;->readFully(JI)Ljava/nio/ByteBuffer;

    move-result-object v3

    new-array v4, v9, [B

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    const/4 v12, 0x5

    if-gt v10, v9, :cond_5

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v13, Ljava/lang/String;

    sget-object v14, Lorg/h2/mvstore/DataUtils;->LATIN:Ljava/nio/charset/Charset;

    invoke-direct {v13, v4, v2, v9, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/h2/mvstore/DataUtils;->parseMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v15

    const-string v0, "blockSize"

    invoke-static {v15, v0, v9}, Lorg/h2/mvstore/DataUtils;->readHexInt(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_4

    const-string v0, "fletcher"

    invoke-static {v15, v0, v2}, Lorg/h2/mvstore/DataUtils;->readHexInt(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v0

    const-string v12, "fletcher"

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "fletcher"

    invoke-virtual {v13, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    sub-int/2addr v12, v1

    invoke-virtual {v13, v2, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v12

    array-length v13, v12

    invoke-static {v12, v13}, Lorg/h2/mvstore/DataUtils;->getFletcher32([BI)I

    move-result v12

    if-eq v0, v12, :cond_0

    move v0, v10

    goto :goto_3

    :cond_0
    const-string v0, "version"

    invoke-static {v15, v0, v5, v6}, Lorg/h2/mvstore/DataUtils;->readHexLong(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_1

    move/from16 v16, v10

    :try_start_2
    iget-wide v9, v7, Lorg/h2/mvstore/Chunk;->version:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long v0, v12, v9

    if-lez v0, :cond_3

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_1
    move/from16 v16, v10

    :goto_1
    :try_start_3
    iget-object v0, v8, Lorg/h2/mvstore/MVStore;->storeHeader:Ljava/util/HashMap;

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const-string v0, "created"

    invoke-static {v15, v0, v5, v6}, Lorg/h2/mvstore/DataUtils;->readHexLong(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v8, Lorg/h2/mvstore/MVStore;->creationTime:J

    const-string v0, "chunk"

    invoke-static {v15, v0, v2}, Lorg/h2/mvstore/DataUtils;->readHexInt(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v0

    const-string v9, "block"

    invoke-static {v15, v9, v5, v6}, Lorg/h2/mvstore/DataUtils;->readHexLong(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Lorg/h2/mvstore/MVStore;->readChunkHeaderAndFooter(J)Lorg/h2/mvstore/Chunk;

    move-result-object v9

    if-eqz v9, :cond_2

    iget v10, v9, Lorg/h2/mvstore/Chunk;->id:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v10, v0, :cond_2

    move-object v7, v9

    :catch_0
    :cond_2
    const/4 v11, 0x1

    :catch_1
    :cond_3
    :goto_2
    move/from16 v0, v16

    const/16 v9, 0x1000

    goto :goto_3

    :catch_2
    move/from16 v16, v10

    goto :goto_2

    :cond_4
    move/from16 v16, v10

    :try_start_4
    const-string v9, "Block size {0} is currently not supported"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v10, v1, [Ljava/lang/Object;

    aput-object v0, v10, v2

    invoke-static {v12, v9, v10}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    add-int/lit16 v10, v0, 0x1000

    goto/16 :goto_0

    :cond_5
    if-eqz v11, :cond_13

    :try_start_5
    iget-object v0, v8, Lorg/h2/mvstore/MVStore;->storeHeader:Ljava/util/HashMap;

    const-string v3, "format"

    const-wide/16 v9, 0x1

    invoke-static {v0, v3, v9, v10}, Lorg/h2/mvstore/DataUtils;->readHexLong(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v9

    if-lez v0, :cond_7

    iget-object v0, v8, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/FileStore;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    const-string v0, "The write format {0} is larger than the supported format {1}, and the file was not opened in read-only mode"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    aput-object v4, v5, v1

    invoke-static {v12, v0, v5}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0

    :cond_7
    :goto_4
    iget-object v0, v8, Lorg/h2/mvstore/MVStore;->storeHeader:Ljava/util/HashMap;

    const-string v11, "formatRead"

    invoke-static {v0, v11, v3, v4}, Lorg/h2/mvstore/DataUtils;->readHexLong(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v9

    if-gtz v0, :cond_12

    const-wide/16 v0, -0x1

    iput-wide v0, v8, Lorg/h2/mvstore/MVStore;->lastStoredVersion:J

    iget-object v0, v8, Lorg/h2/mvstore/MVStore;->chunks:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0x758fac300L

    div-long v2, v0, v2

    long-to-int v3, v2

    add-int/lit16 v3, v3, 0x7b2

    const/16 v2, 0x7de

    if-ge v3, v2, :cond_8

    iget-object v2, v8, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v2}, Lorg/h2/mvstore/FileStore;->getDefaultRetentionTime()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, v8, Lorg/h2/mvstore/MVStore;->creationTime:J

    goto :goto_5

    :cond_8
    iget-wide v2, v8, Lorg/h2/mvstore/MVStore;->creationTime:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_9

    iput-wide v0, v8, Lorg/h2/mvstore/MVStore;->creationTime:J

    iget-object v2, v8, Lorg/h2/mvstore/MVStore;->storeHeader:Ljava/util/HashMap;

    const-string v3, "created"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_5
    iget-object v0, v8, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/FileStore;->size()J

    move-result-wide v0

    invoke-direct {v8, v0, v1}, Lorg/h2/mvstore/MVStore;->readChunkFooter(J)Lorg/h2/mvstore/Chunk;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-wide v0, v0, Lorg/h2/mvstore/Chunk;->block:J

    invoke-direct {v8, v0, v1}, Lorg/h2/mvstore/MVStore;->readChunkHeaderAndFooter(J)Lorg/h2/mvstore/Chunk;

    move-result-object v0

    if-eqz v0, :cond_b

    if-eqz v7, :cond_a

    iget-wide v1, v0, Lorg/h2/mvstore/Chunk;->version:J

    iget-wide v3, v7, Lorg/h2/mvstore/Chunk;->version:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    cmp-long v9, v1, v3

    if-lez v9, :cond_b

    :cond_a
    move-object v7, v0

    :cond_b
    if-nez v7, :cond_c

    monitor-exit p0

    return-void

    :cond_c
    :goto_6
    :try_start_6
    iget-wide v0, v7, Lorg/h2/mvstore/Chunk;->next:J

    const-wide/16 v9, 0x1000

    cmp-long v2, v0, v5

    if-eqz v2, :cond_f

    iget-object v2, v8, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v2}, Lorg/h2/mvstore/FileStore;->size()J

    move-result-wide v2

    div-long/2addr v2, v9

    cmp-long v4, v0, v2

    if-ltz v4, :cond_d

    goto :goto_7

    :cond_d
    iget-wide v0, v7, Lorg/h2/mvstore/Chunk;->next:J

    invoke-direct {v8, v0, v1}, Lorg/h2/mvstore/MVStore;->readChunkHeaderAndFooter(J)Lorg/h2/mvstore/Chunk;

    move-result-object v0

    if-eqz v0, :cond_f

    iget v1, v0, Lorg/h2/mvstore/Chunk;->id:I

    iget v2, v7, Lorg/h2/mvstore/Chunk;->id:I

    if-gt v1, v2, :cond_e

    goto :goto_7

    :cond_e
    move-object v7, v0

    goto :goto_6

    :cond_f
    :goto_7
    invoke-direct {v8, v7}, Lorg/h2/mvstore/MVStore;->setLastChunk(Lorg/h2/mvstore/Chunk;)V

    invoke-direct/range {p0 .. p0}, Lorg/h2/mvstore/MVStore;->loadChunkMeta()V

    invoke-direct/range {p0 .. p0}, Lorg/h2/mvstore/MVStore;->verifyLastChunks()V

    iget-object v0, v8, Lorg/h2/mvstore/MVStore;->chunks:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lorg/h2/mvstore/Chunk;

    iget v1, v11, Lorg/h2/mvstore/Chunk;->pageCountLive:I

    if-nez v1, :cond_10

    iget-wide v2, v8, Lorg/h2/mvstore/MVStore;->currentVersion:J

    iget v4, v11, Lorg/h2/mvstore/Chunk;->id:I

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/h2/mvstore/MVStore;->registerFreePage(JIJI)V

    :cond_10
    iget-wide v1, v11, Lorg/h2/mvstore/Chunk;->block:J

    mul-long v1, v1, v9

    iget v3, v11, Lorg/h2/mvstore/Chunk;->len:I

    const/16 v4, 0x1000

    mul-int/lit16 v3, v3, 0x1000

    iget-object v5, v8, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v5, v1, v2, v3}, Lorg/h2/mvstore/FileStore;->markUsed(JI)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_8

    :cond_11
    monitor-exit p0

    return-void

    :cond_12
    :try_start_7
    const-string v0, "The read format {0} is larger than the supported format {1}"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    aput-object v4, v5, v1

    invoke-static {v12, v0, v5}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0

    :cond_13
    const-string v0, "Store header is corrupt: {0}"

    iget-object v3, v8, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {v2, v0, v1}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_9
    monitor-exit p0

    throw v0
.end method

.method private registerFreePage(JIJI)V
    .locals 2

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->freedPageSpace:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->freedPageSpace:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_0

    move-object v0, p1

    :cond_0
    monitor-enter v0

    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/mvstore/Chunk;

    if-nez p1, :cond_1

    new-instance p1, Lorg/h2/mvstore/Chunk;

    invoke-direct {p1, p3}, Lorg/h2/mvstore/Chunk;-><init>(I)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-wide p2, p1, Lorg/h2/mvstore/Chunk;->maxLenLive:J

    sub-long/2addr p2, p4

    iput-wide p2, p1, Lorg/h2/mvstore/Chunk;->maxLenLive:J

    iget p2, p1, Lorg/h2/mvstore/Chunk;->pageCountLive:I

    sub-int/2addr p2, p6

    iput p2, p1, Lorg/h2/mvstore/Chunk;->pageCountLive:I

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private releaseWriteBuffer(Lorg/h2/mvstore/WriteBuffer;)V
    .locals 2

    invoke-virtual {p1}, Lorg/h2/mvstore/WriteBuffer;->capacity()I

    move-result v0

    const/high16 v1, 0x400000

    if-gt v0, v1, :cond_0

    iput-object p1, p0, Lorg/h2/mvstore/MVStore;->writeBuffer:Lorg/h2/mvstore/WriteBuffer;

    :cond_0
    return-void
.end method

.method private revertTemp(J)V
    .locals 4

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->freedPageSpace:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/h2/mvstore/MVStore;->maps:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/h2/mvstore/MVMap;

    invoke-virtual {p2}, Lorg/h2/mvstore/MVMap;->removeUnusedOldVersions()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private setLastChunk(Lorg/h2/mvstore/Chunk;)V
    .locals 5

    iput-object p1, p0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lorg/h2/mvstore/MVStore;->lastMapId:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/h2/mvstore/MVStore;->currentVersion:J

    iget-object p1, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-virtual {p1, v2, v3, v0, v1}, Lorg/h2/mvstore/MVMap;->setRootPos(JJ)V

    goto :goto_0

    :cond_0
    iget v2, p1, Lorg/h2/mvstore/Chunk;->mapId:I

    iput v2, p0, Lorg/h2/mvstore/MVStore;->lastMapId:I

    iget-wide v2, p1, Lorg/h2/mvstore/Chunk;->version:J

    iput-wide v2, p0, Lorg/h2/mvstore/MVStore;->currentVersion:J

    iget-object v2, p0, Lorg/h2/mvstore/MVStore;->chunks:Lj$/util/concurrent/ConcurrentHashMap;

    iget v3, p1, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    iget-wide v3, p1, Lorg/h2/mvstore/Chunk;->metaRootPos:J

    invoke-virtual {v2, v3, v4, v0, v1}, Lorg/h2/mvstore/MVMap;->setRootPos(JJ)V

    :goto_0
    iget-wide v0, p0, Lorg/h2/mvstore/MVStore;->currentVersion:J

    invoke-direct {p0, v0, v1}, Lorg/h2/mvstore/MVStore;->setWriteVersion(J)V

    return-void
.end method

.method private setWriteVersion(J)V
    .locals 2

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->maps:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/mvstore/MVMap;

    invoke-virtual {v1, p1, p2}, Lorg/h2/mvstore/MVMap;->setWriteVersion(J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->checkOpen()V

    :cond_1
    invoke-virtual {v0, p1, p2}, Lorg/h2/mvstore/MVMap;->setWriteVersion(J)V

    return-void
.end method

.method private shrinkFileIfPossible(I)V
    .locals 9

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/FileStore;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->getFileLengthInUse()J

    move-result-wide v0

    iget-object v2, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v2}, Lorg/h2/mvstore/FileStore;->size()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    return-void

    :cond_1
    if-lez p1, :cond_2

    sub-long v4, v2, v0

    const-wide/16 v6, 0x1000

    cmp-long v8, v4, v6

    if-gez v8, :cond_2

    return-void

    :cond_2
    const-wide/16 v4, 0x64

    mul-long v6, v0, v4

    div-long/2addr v6, v2

    sub-long/2addr v4, v6

    long-to-int v2, v4

    if-ge v2, p1, :cond_3

    return-void

    :cond_3
    iget-boolean p1, p0, Lorg/h2/mvstore/MVStore;->closed:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lorg/h2/mvstore/MVStore;->sync()V

    :cond_4
    iget-object p1, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/FileStore;->truncate(J)V

    return-void
.end method

.method private stopBackgroundThread()V
    .locals 3

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->backgroundWriterThread:Lorg/h2/mvstore/MVStore$BackgroundWriterThread;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/h2/mvstore/MVStore;->backgroundWriterThread:Lorg/h2/mvstore/MVStore$BackgroundWriterThread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, v0, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Lorg/h2/mvstore/MVStore$BackgroundWriterThread;->sync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lorg/h2/mvstore/MVStore$BackgroundWriterThread;->sync:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private storeNow()J
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->storeNowTry()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lorg/h2/mvstore/MVStore;->panic(Ljava/lang/IllegalStateException;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private storeNowTry()J
    .locals 27

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lorg/h2/mvstore/MVStore;->getTimeSinceCreation()J

    move-result-wide v1

    iget v3, v0, Lorg/h2/mvstore/MVStore;->retentionTime:I

    div-int/lit8 v3, v3, 0xa

    iget-wide v4, v0, Lorg/h2/mvstore/MVStore;->lastFreeUnusedChunks:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    cmp-long v3, v1, v4

    if-ltz v3, :cond_0

    iput-wide v1, v0, Lorg/h2/mvstore/MVStore;->lastFreeUnusedChunks:J

    invoke-direct/range {p0 .. p0}, Lorg/h2/mvstore/MVStore;->freeUnusedChunks()V

    invoke-direct/range {p0 .. p0}, Lorg/h2/mvstore/MVStore;->getTimeSinceCreation()J

    move-result-wide v3

    iput-wide v3, v0, Lorg/h2/mvstore/MVStore;->lastFreeUnusedChunks:J

    :cond_0
    iget v3, v0, Lorg/h2/mvstore/MVStore;->unsavedMemory:I

    iget-wide v4, v0, Lorg/h2/mvstore/MVStore;->currentStoreVersion:J

    iget-wide v6, v0, Lorg/h2/mvstore/MVStore;->currentVersion:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v0, Lorg/h2/mvstore/MVStore;->currentVersion:J

    invoke-direct {v0, v6, v7}, Lorg/h2/mvstore/MVStore;->setWriteVersion(J)V

    iput-wide v1, v0, Lorg/h2/mvstore/MVStore;->lastCommitTime:J

    const/4 v8, 0x0

    iput-object v8, v0, Lorg/h2/mvstore/MVStore;->retainChunk:Lorg/h2/mvstore/Chunk;

    iget-object v8, v0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    if-nez v8, :cond_1

    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    iget v8, v8, Lorg/h2/mvstore/Chunk;->id:I

    iget-object v10, v0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-static {v8}, Lorg/h2/mvstore/Chunk;->getMetaKey(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    invoke-virtual {v12}, Lorg/h2/mvstore/Chunk;->asString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    iget-wide v10, v10, Lorg/h2/mvstore/Chunk;->time:J

    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :goto_0
    const/4 v10, 0x1

    add-int/2addr v8, v10

    const v11, 0x3ffffff

    rem-int/2addr v8, v11

    iget-object v11, v0, Lorg/h2/mvstore/MVStore;->chunks:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/h2/mvstore/Chunk;

    const-wide v12, 0x7fffffffffffffffL

    if-nez v11, :cond_16

    new-instance v11, Lorg/h2/mvstore/Chunk;

    invoke-direct {v11, v8}, Lorg/h2/mvstore/Chunk;-><init>(I)V

    const v8, 0x7fffffff

    iput v8, v11, Lorg/h2/mvstore/Chunk;->pageCount:I

    iput v8, v11, Lorg/h2/mvstore/Chunk;->pageCountLive:I

    iput-wide v12, v11, Lorg/h2/mvstore/Chunk;->maxLen:J

    iput-wide v12, v11, Lorg/h2/mvstore/Chunk;->maxLenLive:J

    iput-wide v12, v11, Lorg/h2/mvstore/Chunk;->metaRootPos:J

    iput-wide v12, v11, Lorg/h2/mvstore/Chunk;->block:J

    iput v8, v11, Lorg/h2/mvstore/Chunk;->len:I

    iput-wide v1, v11, Lorg/h2/mvstore/Chunk;->time:J

    iput-wide v6, v11, Lorg/h2/mvstore/Chunk;->version:J

    iget v1, v0, Lorg/h2/mvstore/MVStore;->lastMapId:I

    iput v1, v11, Lorg/h2/mvstore/Chunk;->mapId:I

    iput-wide v12, v11, Lorg/h2/mvstore/Chunk;->next:J

    iget-object v1, v0, Lorg/h2/mvstore/MVStore;->chunks:Lj$/util/concurrent/ConcurrentHashMap;

    iget v2, v11, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v11}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    iget v2, v11, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v2}, Lorg/h2/mvstore/Chunk;->getMetaKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lorg/h2/mvstore/Chunk;->asString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v2, v8}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    iget v2, v11, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v2}, Lorg/h2/mvstore/Chunk;->getMetaKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/mvstore/MVMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lorg/h2/mvstore/MVStore;->maps:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-wide/16 v12, 0x0

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/h2/mvstore/MVMap;

    invoke-virtual {v8, v6, v7}, Lorg/h2/mvstore/MVMap;->setWriteVersion(J)V

    invoke-virtual {v8}, Lorg/h2/mvstore/MVMap;->getVersion()J

    move-result-wide v14

    invoke-virtual {v8}, Lorg/h2/mvstore/MVMap;->getCreateVersion()J

    move-result-wide v16

    cmp-long v18, v16, v4

    if-lez v18, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v8}, Lorg/h2/mvstore/MVMap;->isVolatile()Z

    move-result v16

    if-eqz v16, :cond_3

    goto :goto_1

    :cond_3
    cmp-long v16, v14, v12

    if-ltz v16, :cond_4

    iget-wide v9, v0, Lorg/h2/mvstore/MVStore;->lastStoredVersion:J

    cmp-long v18, v14, v9

    if-ltz v18, :cond_4

    invoke-virtual {v8, v4, v5}, Lorg/h2/mvstore/MVMap;->openVersion(J)Lorg/h2/mvstore/MVMap;

    move-result-object v8

    invoke-virtual {v8}, Lorg/h2/mvstore/MVMap;->getRoot()Lorg/h2/mvstore/Page;

    move-result-object v9

    invoke-virtual {v9}, Lorg/h2/mvstore/Page;->getPos()J

    move-result-wide v9

    cmp-long v14, v9, v12

    if-nez v14, :cond_4

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const/4 v10, 0x1

    goto :goto_1

    :cond_5
    invoke-direct {v0, v4, v5}, Lorg/h2/mvstore/MVStore;->applyFreedSpace(J)V

    invoke-direct/range {p0 .. p0}, Lorg/h2/mvstore/MVStore;->getWriteBuffer()Lorg/h2/mvstore/WriteBuffer;

    move-result-object v1

    const/4 v8, 0x0

    invoke-virtual {v11, v1, v8}, Lorg/h2/mvstore/Chunk;->writeChunkHeader(Lorg/h2/mvstore/WriteBuffer;I)V

    invoke-virtual {v1}, Lorg/h2/mvstore/WriteBuffer;->position()I

    move-result v9

    iput v8, v11, Lorg/h2/mvstore/Chunk;->pageCount:I

    iput v8, v11, Lorg/h2/mvstore/Chunk;->pageCountLive:I

    iput-wide v12, v11, Lorg/h2/mvstore/Chunk;->maxLen:J

    iput-wide v12, v11, Lorg/h2/mvstore/Chunk;->maxLenLive:J

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/h2/mvstore/MVMap;

    invoke-virtual {v10}, Lorg/h2/mvstore/MVMap;->getRoot()Lorg/h2/mvstore/Page;

    move-result-object v14

    invoke-virtual {v10}, Lorg/h2/mvstore/MVMap;->getId()I

    move-result v10

    invoke-static {v10}, Lorg/h2/mvstore/MVMap;->getMapRootKey(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14}, Lorg/h2/mvstore/Page;->getTotalCount()J

    move-result-wide v18

    cmp-long v15, v18, v12

    if-nez v15, :cond_6

    iget-object v14, v0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    const-string v15, "0"

    invoke-virtual {v14, v10, v15}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    invoke-virtual {v14, v11, v1}, Lorg/h2/mvstore/Page;->writeUnsavedRecursive(Lorg/h2/mvstore/Chunk;Lorg/h2/mvstore/WriteBuffer;)V

    invoke-virtual {v14}, Lorg/h2/mvstore/Page;->getPos()J

    move-result-wide v14

    iget-object v12, v0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-static {v14, v15}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v10, v13}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    const-wide/16 v12, 0x0

    goto :goto_2

    :cond_7
    iget-object v8, v0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v8, v6, v7}, Lorg/h2/mvstore/MVMap;->setWriteVersion(J)V

    iget-object v8, v0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v8}, Lorg/h2/mvstore/MVMap;->getRoot()Lorg/h2/mvstore/Page;

    move-result-object v8

    invoke-virtual {v8, v11, v1}, Lorg/h2/mvstore/Page;->writeUnsavedRecursive(Lorg/h2/mvstore/Chunk;Lorg/h2/mvstore/WriteBuffer;)V

    invoke-virtual {v1}, Lorg/h2/mvstore/WriteBuffer;->position()I

    move-result v10

    add-int/lit16 v10, v10, 0x80

    const/16 v12, 0x1000

    invoke-static {v10, v12}, Lorg/h2/util/MathUtils;->roundUpInt(II)I

    move-result v10

    invoke-virtual {v1, v10}, Lorg/h2/mvstore/WriteBuffer;->limit(I)Lorg/h2/mvstore/WriteBuffer;

    invoke-direct/range {p0 .. p0}, Lorg/h2/mvstore/MVStore;->getFileLengthInUse()J

    move-result-wide v13

    iget-boolean v15, v0, Lorg/h2/mvstore/MVStore;->reuseSpace:Z

    if-eqz v15, :cond_8

    iget-object v15, v0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v15, v10}, Lorg/h2/mvstore/FileStore;->allocate(I)J

    move-result-wide v20

    move-wide/from16 v25, v13

    move-wide/from16 v12, v20

    move-wide/from16 v20, v25

    goto :goto_4

    :cond_8
    move-wide/from16 v20, v13

    move-wide/from16 v12, v20

    :goto_4
    int-to-long v14, v10

    add-long/2addr v14, v12

    move-wide/from16 v22, v6

    iget-object v6, v0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v6}, Lorg/h2/mvstore/FileStore;->size()J

    move-result-wide v6

    cmp-long v24, v14, v6

    if-ltz v24, :cond_9

    const/4 v6, 0x1

    goto :goto_5

    :cond_9
    const/4 v6, 0x0

    :goto_5
    iget-boolean v7, v0, Lorg/h2/mvstore/MVStore;->reuseSpace:Z

    if-nez v7, :cond_a

    iget-object v7, v0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    move-wide/from16 v14, v20

    invoke-virtual {v7, v14, v15, v10}, Lorg/h2/mvstore/FileStore;->markUsed(JI)V

    :cond_a
    const-wide/16 v14, 0x1000

    move-object/from16 v20, v2

    move v7, v3

    div-long v2, v12, v14

    iput-wide v2, v11, Lorg/h2/mvstore/Chunk;->block:J

    const/16 v2, 0x1000

    div-int/2addr v10, v2

    iput v10, v11, Lorg/h2/mvstore/Chunk;->len:I

    invoke-virtual {v8}, Lorg/h2/mvstore/Page;->getPos()J

    move-result-wide v14

    iput-wide v14, v11, Lorg/h2/mvstore/Chunk;->metaRootPos:J

    iget-boolean v3, v0, Lorg/h2/mvstore/MVStore;->reuseSpace:Z

    if-eqz v3, :cond_b

    iget v3, v11, Lorg/h2/mvstore/Chunk;->len:I

    iget-object v10, v0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    mul-int/lit16 v3, v3, 0x1000

    invoke-virtual {v10, v3}, Lorg/h2/mvstore/FileStore;->allocate(I)J

    move-result-wide v14

    iget-object v2, v0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v2, v14, v15, v3}, Lorg/h2/mvstore/FileStore;->free(JI)V

    const-wide/16 v2, 0x1000

    div-long/2addr v14, v2

    iput-wide v14, v11, Lorg/h2/mvstore/Chunk;->next:J

    :goto_6
    const/4 v2, 0x0

    goto :goto_7

    :cond_b
    const-wide/16 v2, 0x0

    iput-wide v2, v11, Lorg/h2/mvstore/Chunk;->next:J

    goto :goto_6

    :goto_7
    invoke-virtual {v1, v2}, Lorg/h2/mvstore/WriteBuffer;->position(I)Lorg/h2/mvstore/WriteBuffer;

    invoke-virtual {v11, v1, v9}, Lorg/h2/mvstore/Chunk;->writeChunkHeader(Lorg/h2/mvstore/WriteBuffer;I)V

    invoke-direct {v0, v4, v5}, Lorg/h2/mvstore/MVStore;->revertTemp(J)V

    invoke-virtual {v1}, Lorg/h2/mvstore/WriteBuffer;->limit()I

    move-result v3

    add-int/lit8 v3, v3, -0x80

    invoke-virtual {v1, v3}, Lorg/h2/mvstore/WriteBuffer;->position(I)Lorg/h2/mvstore/WriteBuffer;

    invoke-virtual {v11}, Lorg/h2/mvstore/Chunk;->getFooterBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/h2/mvstore/WriteBuffer;->put([B)Lorg/h2/mvstore/WriteBuffer;

    invoke-virtual {v1, v2}, Lorg/h2/mvstore/WriteBuffer;->position(I)Lorg/h2/mvstore/WriteBuffer;

    invoke-virtual {v1}, Lorg/h2/mvstore/WriteBuffer;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-direct {v0, v12, v13, v2}, Lorg/h2/mvstore/MVStore;->write(JLjava/nio/ByteBuffer;)V

    invoke-direct {v0, v1}, Lorg/h2/mvstore/MVStore;->releaseWriteBuffer(Lorg/h2/mvstore/WriteBuffer;)V

    if-nez v6, :cond_11

    iget-object v1, v0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    if-nez v1, :cond_c

    :goto_8
    const/4 v1, 0x1

    goto :goto_b

    :cond_c
    iget-wide v1, v1, Lorg/h2/mvstore/Chunk;->next:J

    iget-wide v9, v11, Lorg/h2/mvstore/Chunk;->block:J

    cmp-long v3, v1, v9

    if-eqz v3, :cond_d

    goto :goto_8

    :cond_d
    iget-object v1, v0, Lorg/h2/mvstore/MVStore;->storeHeader:Ljava/util/HashMap;

    const-string v2, "version"

    const-wide/16 v9, 0x0

    invoke-static {v1, v2, v9, v10}, Lorg/h2/mvstore/DataUtils;->readHexLong(Ljava/util/Map;Ljava/lang/String;J)J

    move-result-wide v1

    iget-object v3, v0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    iget-wide v9, v3, Lorg/h2/mvstore/Chunk;->version:J

    sub-long/2addr v9, v1

    const-wide/16 v1, 0x14

    cmp-long v3, v9, v1

    if-lez v3, :cond_e

    goto :goto_8

    :cond_e
    iget-object v1, v0, Lorg/h2/mvstore/MVStore;->storeHeader:Ljava/util/HashMap;

    const-string v2, "chunk"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/h2/mvstore/DataUtils;->readHexInt(Ljava/util/HashMap;Ljava/lang/String;I)I

    move-result v1

    :goto_9
    iget-object v2, v0, Lorg/h2/mvstore/MVStore;->chunks:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/mvstore/Chunk;

    if-nez v2, :cond_f

    goto :goto_8

    :cond_f
    iget-object v2, v0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    iget v2, v2, Lorg/h2/mvstore/Chunk;->id:I

    if-ne v1, v2, :cond_10

    goto :goto_a

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_11
    :goto_a
    const/4 v1, 0x0

    :goto_b
    iput-object v11, v0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    if-eqz v1, :cond_12

    invoke-direct/range {p0 .. p0}, Lorg/h2/mvstore/MVStore;->writeStoreHeader()V

    :cond_12
    if-nez v6, :cond_13

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/h2/mvstore/MVStore;->shrinkFileIfPossible(I)V

    :cond_13
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/mvstore/MVMap;

    invoke-virtual {v2}, Lorg/h2/mvstore/MVMap;->getRoot()Lorg/h2/mvstore/Page;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/mvstore/Page;->getTotalCount()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v3, v9, v11

    if-lez v3, :cond_14

    invoke-virtual {v2}, Lorg/h2/mvstore/Page;->writeEnd()V

    goto :goto_c

    :cond_15
    invoke-virtual {v8}, Lorg/h2/mvstore/Page;->writeEnd()V

    iget v1, v0, Lorg/h2/mvstore/MVStore;->unsavedMemory:I

    sub-int/2addr v1, v7

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lorg/h2/mvstore/MVStore;->unsavedMemory:I

    iput-boolean v3, v0, Lorg/h2/mvstore/MVStore;->metaChanged:Z

    iput-wide v4, v0, Lorg/h2/mvstore/MVStore;->lastStoredVersion:J

    return-wide v22

    :cond_16
    move-wide/from16 v22, v6

    move v7, v3

    const/4 v3, 0x0

    iget-wide v9, v11, Lorg/h2/mvstore/Chunk;->block:J

    cmp-long v6, v9, v12

    if-nez v6, :cond_17

    const-string v6, "Last block not stored, possibly due to out-of-memory"

    new-array v9, v3, [Ljava/lang/Object;

    const/4 v10, 0x3

    invoke-static {v10, v6, v9}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/h2/mvstore/MVStore;->panic(Ljava/lang/IllegalStateException;)V

    :cond_17
    move v3, v7

    move-wide/from16 v6, v22

    goto/16 :goto_0
.end method

.method private verifyLastChunks()V
    .locals 11

    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->getTimeSinceCreation()J

    move-result-wide v0

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/h2/mvstore/MVStore;->chunks:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Lj$/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    iget-object v6, p0, Lorg/h2/mvstore/MVStore;->chunks:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v5}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/mvstore/Chunk;

    if-eqz v4, :cond_0

    iget-wide v7, v6, Lorg/h2/mvstore/Chunk;->time:J

    iget-wide v9, v4, Lorg/h2/mvstore/Chunk;->time:J

    cmp-long v4, v7, v9

    if-gez v4, :cond_0

    goto :goto_2

    :cond_0
    iget-wide v7, v6, Lorg/h2/mvstore/Chunk;->time:J

    iget v4, p0, Lorg/h2/mvstore/MVStore;->retentionTime:I

    int-to-long v9, v4

    add-long/2addr v7, v9

    cmp-long v4, v7, v0

    if-gez v4, :cond_1

    iget v3, v6, Lorg/h2/mvstore/Chunk;->id:I

    :goto_1
    move-object v4, v6

    goto :goto_0

    :cond_1
    iget-wide v7, v6, Lorg/h2/mvstore/Chunk;->block:J

    invoke-direct {p0, v7, v8}, Lorg/h2/mvstore/MVStore;->readChunkHeaderAndFooter(J)Lorg/h2/mvstore/Chunk;

    move-result-object v4

    if-eqz v4, :cond_3

    iget v4, v4, Lorg/h2/mvstore/Chunk;->id:I

    iget v7, v6, Lorg/h2/mvstore/Chunk;->id:I

    if-eq v4, v7, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->chunks:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/mvstore/Chunk;

    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    if-eq v0, v1, :cond_5

    if-nez v0, :cond_4

    const-wide/16 v0, 0x0

    goto :goto_3

    :cond_4
    iget-wide v0, v0, Lorg/h2/mvstore/Chunk;->version:J

    :goto_3
    invoke-virtual {p0, v0, v1}, Lorg/h2/mvstore/MVStore;->rollbackTo(J)V

    :cond_5
    return-void
.end method

.method private write(JLjava/nio/ByteBuffer;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v0, p1, p2, p3}, Lorg/h2/mvstore/FileStore;->writeFully(JLjava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lorg/h2/mvstore/MVStore;->panic(Ljava/lang/IllegalStateException;)V

    throw p1
.end method

.method private writeStoreHeader()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/h2/mvstore/MVStore;->storeHeader:Ljava/util/HashMap;

    iget-wide v3, v1, Lorg/h2/mvstore/Chunk;->block:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "block"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->storeHeader:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    iget v2, v2, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "chunk"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->storeHeader:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    iget-wide v2, v2, Lorg/h2/mvstore/Chunk;->version:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "version"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->storeHeader:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/util/HashMap;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/h2/mvstore/DataUtils;->LATIN:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v3, v1

    invoke-static {v1, v3}, Lorg/h2/mvstore/DataUtils;->getFletcher32([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "fletcher"

    invoke-static {v0, v3, v1}, Lorg/h2/mvstore/DataUtils;->appendMap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/16 v1, 0x2000

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3, v1}, Lorg/h2/mvstore/MVStore;->write(JLjava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public beforeWrite(Lorg/h2/mvstore/MVMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/MVMap<",
            "**>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/h2/mvstore/MVStore;->saveNeeded:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/h2/mvstore/MVStore;->saveNeeded:Z

    iget p1, p0, Lorg/h2/mvstore/MVStore;->unsavedMemory:I

    iget v0, p0, Lorg/h2/mvstore/MVStore;->autoCommitMemory:I

    if-le p1, v0, :cond_1

    if-lez v0, :cond_1

    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->commitAndSave()J

    :cond_1
    return-void
.end method

.method public cachePage(JLorg/h2/mvstore/Page;I)V
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->put(JLjava/lang/Object;I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    iget-boolean v0, p0, Lorg/h2/mvstore/MVStore;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/h2/mvstore/FileStore;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->stopBackgroundThread()V

    invoke-virtual {p0}, Lorg/h2/mvstore/MVStore;->hasUnsavedChanges()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->commitAndSave()J

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/h2/mvstore/MVStore;->closeStore(Z)V

    return-void
.end method

.method public closeImmediately()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lorg/h2/mvstore/MVStore;->closeStore(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->backgroundExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->backgroundExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public commit()J
    .locals 4

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->commitAndSave()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/h2/mvstore/MVStore;->currentVersion:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/mvstore/MVStore;->currentVersion:J

    invoke-direct {p0, v0, v1}, Lorg/h2/mvstore/MVStore;->setWriteVersion(J)V

    return-wide v0
.end method

.method public compact(II)Z
    .locals 2

    iget-boolean v0, p0, Lorg/h2/mvstore/MVStore;->reuseSpace:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->compactSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->checkOpen()V

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lorg/h2/mvstore/MVStore;->compactGetOldChunks(II)Ljava/util/ArrayList;

    move-result-object p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_2

    :try_start_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lorg/h2/mvstore/MVStore;->compactRewrite(Ljava/util/ArrayList;)V

    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1

    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public declared-synchronized compactMoveChunks()Z
    .locals 3

    .line 2
    monitor-enter p0

    const/16 v0, 0x64

    const-wide v1, 0x7fffffffffffffffL

    :try_start_0
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/mvstore/MVStore;->compactMoveChunks(IJ)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized compactMoveChunks(IJ)Z
    .locals 7

    .line 3
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->checkOpen()V

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/h2/mvstore/MVStore;->reuseSpace:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/h2/mvstore/MVStore;->retentionTime:I

    iget-boolean v2, p0, Lorg/h2/mvstore/MVStore;->reuseSpace:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, -0x1

    :try_start_1
    iput v3, p0, Lorg/h2/mvstore/MVStore;->retentionTime:I

    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->freeUnusedChunks()V

    iget-object v3, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v3}, Lorg/h2/mvstore/FileStore;->getFillRate()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-le v3, p1, :cond_1

    :try_start_2
    iput-boolean v2, p0, Lorg/h2/mvstore/MVStore;->reuseSpace:Z

    iput v0, p0, Lorg/h2/mvstore/MVStore;->retentionTime:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :try_start_3
    iget-object p1, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {p1}, Lorg/h2/mvstore/FileStore;->getFirstFree()J

    move-result-wide v3

    const-wide/16 v5, 0x1000

    div-long/2addr v3, v5

    invoke-direct {p0, v3, v4, p2, p3}, Lorg/h2/mvstore/MVStore;->compactGetMoveBlocks(JJ)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/h2/mvstore/MVStore;->compactMoveChunks(Ljava/util/ArrayList;)V

    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->freeUnusedChunks()V

    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->storeNow()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iput-boolean v2, p0, Lorg/h2/mvstore/MVStore;->reuseSpace:Z

    iput v0, p0, Lorg/h2/mvstore/MVStore;->retentionTime:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_1
    move-exception p1

    :try_start_5
    iput-boolean v2, p0, Lorg/h2/mvstore/MVStore;->reuseSpace:Z

    iput v0, p0, Lorg/h2/mvstore/MVStore;->retentionTime:I

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized compactRewriteFully()Z
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->checkOpen()V

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->maps:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/mvstore/MVMap;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/h2/mvstore/MVMap;->cursor(Ljava/lang/Object;)Lorg/h2/mvstore/Cursor;

    move-result-object v4

    :goto_0
    invoke-virtual {v4}, Lorg/h2/mvstore/Cursor;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lorg/h2/mvstore/Cursor;->next()Ljava/lang/Object;

    invoke-virtual {v4}, Lorg/h2/mvstore/Cursor;->getPage()Lorg/h2/mvstore/Page;

    move-result-object v5

    if-ne v5, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v5, v1}, Lorg/h2/mvstore/Page;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v1}, Lorg/h2/mvstore/Page;->getValue(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->commitAndSave()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public getAutoCommitDelay()I
    .locals 1

    iget v0, p0, Lorg/h2/mvstore/MVStore;->autoCommitDelay:I

    return v0
.end method

.method public getAutoCommitMemory()I
    .locals 1

    iget v0, p0, Lorg/h2/mvstore/MVStore;->autoCommitMemory:I

    return v0
.end method

.method public getCache()Lorg/h2/mvstore/cache/CacheLongKeyLIRS;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS<",
            "Lorg/h2/mvstore/Page;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    return-object v0
.end method

.method public getCacheSize()I
    .locals 4

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->getMaxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public getCacheSizeUsed()I
    .locals 4

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->getUsedMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public getCompressionLevel()I
    .locals 1

    iget v0, p0, Lorg/h2/mvstore/MVStore;->compressionLevel:I

    return v0
.end method

.method public getCompressorFast()Lorg/h2/compress/Compressor;
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->compressorFast:Lorg/h2/compress/Compressor;

    if-nez v0, :cond_0

    new-instance v0, Lorg/h2/compress/CompressLZF;

    invoke-direct {v0}, Lorg/h2/compress/CompressLZF;-><init>()V

    iput-object v0, p0, Lorg/h2/mvstore/MVStore;->compressorFast:Lorg/h2/compress/Compressor;

    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->compressorFast:Lorg/h2/compress/Compressor;

    return-object v0
.end method

.method public getCompressorHigh()Lorg/h2/compress/Compressor;
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->compressorHigh:Lorg/h2/compress/Compressor;

    if-nez v0, :cond_0

    new-instance v0, Lorg/h2/compress/CompressDeflate;

    invoke-direct {v0}, Lorg/h2/compress/CompressDeflate;-><init>()V

    iput-object v0, p0, Lorg/h2/mvstore/MVStore;->compressorHigh:Lorg/h2/compress/Compressor;

    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->compressorHigh:Lorg/h2/compress/Compressor;

    return-object v0
.end method

.method public getCurrentVersion()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/mvstore/MVStore;->currentVersion:J

    return-wide v0
.end method

.method public getFileStore()Lorg/h2/mvstore/FileStore;
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    return-object v0
.end method

.method public declared-synchronized getMapName(I)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->checkOpen()V

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-static {p1}, Lorg/h2/mvstore/MVMap;->getMapKey(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/h2/mvstore/DataUtils;->parseMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "name"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMapNames()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->checkOpen()V

    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    const-string v2, "name."

    invoke-virtual {v1, v2}, Lorg/h2/mvstore/MVMap;->keyIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "name."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit p0

    return-object v0

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public getMetaMap()Lorg/h2/mvstore/MVMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/h2/mvstore/MVMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->checkOpen()V

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    return-object v0
.end method

.method public getOldestVersionToKeep()J
    .locals 7

    iget-wide v0, p0, Lorg/h2/mvstore/MVStore;->currentVersion:J

    iget-object v2, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    if-nez v2, :cond_0

    iget v2, p0, Lorg/h2/mvstore/MVStore;->versionsToKeep:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    iget-wide v2, p0, Lorg/h2/mvstore/MVStore;->currentStoreVersion:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_1
    return-wide v0
.end method

.method public getPageSplitSize()I
    .locals 1

    iget v0, p0, Lorg/h2/mvstore/MVStore;->pageSplitSize:I

    return v0
.end method

.method public getRetentionTime()I
    .locals 1

    iget v0, p0, Lorg/h2/mvstore/MVStore;->retentionTime:I

    return v0
.end method

.method public getReuseSpace()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/mvstore/MVStore;->reuseSpace:Z

    return v0
.end method

.method public getStoreHeader()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->storeHeader:Ljava/util/HashMap;

    return-object v0
.end method

.method public getStoreVersion()I
    .locals 2

    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->checkOpen()V

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    const-string v1, "setting.storeVersion"

    invoke-virtual {v0, v1}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->parseHexInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getUnsavedMemory()I
    .locals 1

    iget v0, p0, Lorg/h2/mvstore/MVStore;->unsavedMemory:I

    return v0
.end method

.method public getVersionsToKeep()J
    .locals 2

    iget v0, p0, Lorg/h2/mvstore/MVStore;->versionsToKeep:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public hasMap(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "name."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/MVMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hasUnsavedChanges()Z
    .locals 7

    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->checkOpen()V

    iget-boolean v0, p0, Lorg/h2/mvstore/MVStore;->metaChanged:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->maps:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/mvstore/MVMap;

    invoke-virtual {v2}, Lorg/h2/mvstore/MVMap;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lorg/h2/mvstore/MVMap;->getVersion()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    iget-wide v4, p0, Lorg/h2/mvstore/MVStore;->lastStoredVersion:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isChunkLive(I)Z
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-static {p1}, Lorg/h2/mvstore/Chunk;->getMetaKey(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/mvstore/MVStore;->closed:Z

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/h2/mvstore/FileStore;->isReadOnly()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public openMap(Ljava/lang/String;)Lorg/h2/mvstore/MVMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/h2/mvstore/MVMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/h2/mvstore/MVMap$Builder;

    invoke-direct {v0}, Lorg/h2/mvstore/MVMap$Builder;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/h2/mvstore/MVStore;->openMap(Ljava/lang/String;Lorg/h2/mvstore/MVMap$MapBuilder;)Lorg/h2/mvstore/MVMap;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized openMap(Ljava/lang/String;Lorg/h2/mvstore/MVMap$MapBuilder;)Lorg/h2/mvstore/MVMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lorg/h2/mvstore/MVMap<",
            "TK;TV;>;K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/h2/mvstore/MVMap$MapBuilder<",
            "TM;TK;TV;>;)TM;"
        }
    .end annotation

    .line 2
    const-string v0, "name."

    const-string v1, "name."

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->checkOpen()V

    iget-object v2, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lorg/h2/mvstore/DataUtils;->parseHexInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->maps:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/mvstore/MVMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-interface {p2}, Lorg/h2/mvstore/MVMap$MapBuilder;->create()Lorg/h2/mvstore/MVMap;

    move-result-object p2

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-static {p1}, Lorg/h2/mvstore/MVMap;->getMapKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/mvstore/MVMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->parseMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const-string v0, "id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p0, v1}, Lorg/h2/mvstore/MVMap;->init(Lorg/h2/mvstore/MVStore;Ljava/util/HashMap;)V

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-static {v0, p1}, Lorg/h2/mvstore/MVStore;->getRootPos(Lorg/h2/mvstore/MVMap;I)J

    move-result-wide v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v1

    iget v2, p0, Lorg/h2/mvstore/MVStore;->lastMapId:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/h2/mvstore/MVStore;->lastMapId:I

    const-string v3, "id"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "createVersion"

    iget-wide v4, p0, Lorg/h2/mvstore/MVStore;->currentVersion:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Lorg/h2/mvstore/MVMap$MapBuilder;->create()Lorg/h2/mvstore/MVMap;

    move-result-object p2

    invoke-virtual {p2, p0, v1}, Lorg/h2/mvstore/MVMap;->init(Lorg/h2/mvstore/MVStore;Ljava/util/HashMap;)V

    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->markMetaChanged()V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-static {v2}, Lorg/h2/mvstore/MVMap;->getMapKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, p1}, Lorg/h2/mvstore/MVMap;->asString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1, v1}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    move p1, v2

    :goto_0
    const-wide/16 v2, -0x1

    invoke-virtual {p2, v0, v1, v2, v3}, Lorg/h2/mvstore/MVMap;->setRootPos(JJ)V

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->maps:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p2

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public openMapVersion(JILorg/h2/mvstore/MVMap;)Lorg/h2/mvstore/MVMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/h2/mvstore/MVMap<",
            "**>;>(JI",
            "Lorg/h2/mvstore/MVMap<",
            "**>;)TT;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/h2/mvstore/MVStore;->getMetaMap(J)Lorg/h2/mvstore/MVMap;

    move-result-object v0

    invoke-static {v0, p3}, Lorg/h2/mvstore/MVStore;->getRootPos(Lorg/h2/mvstore/MVMap;I)J

    move-result-wide v0

    invoke-virtual {p4}, Lorg/h2/mvstore/MVMap;->openReadOnly()Lorg/h2/mvstore/MVMap;

    move-result-object p3

    invoke-virtual {p3, v0, v1, p1, p2}, Lorg/h2/mvstore/MVMap;->setRootPos(JJ)V

    return-object p3
.end method

.method public readPage(Lorg/h2/mvstore/MVMap;J)Lorg/h2/mvstore/Page;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/MVMap<",
            "**>;J)",
            "Lorg/h2/mvstore/Page;"
        }
    .end annotation

    move-object v0, p0

    move-wide/from16 v9, p2

    const/4 v1, 0x0

    const/4 v2, 0x6

    const-wide/16 v3, 0x0

    cmp-long v5, v9, v3

    if-eqz v5, :cond_3

    iget-object v5, v0, Lorg/h2/mvstore/MVStore;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    if-nez v5, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v9, v10}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/mvstore/Page;

    :goto_0
    if-nez v5, :cond_2

    invoke-direct {p0, v9, v10}, Lorg/h2/mvstore/MVStore;->getChunk(J)Lorg/h2/mvstore/Chunk;

    move-result-object v5

    iget-wide v6, v5, Lorg/h2/mvstore/Chunk;->block:J

    const-wide/16 v11, 0x1000

    mul-long v6, v6, v11

    invoke-static/range {p2 .. p3}, Lorg/h2/mvstore/DataUtils;->getPageOffset(J)I

    move-result v8

    int-to-long v13, v8

    add-long/2addr v6, v13

    cmp-long v8, v6, v3

    if-ltz v8, :cond_1

    iget-wide v1, v5, Lorg/h2/mvstore/Chunk;->block:J

    iget v3, v5, Lorg/h2/mvstore/Chunk;->len:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    mul-long v11, v11, v1

    iget-object v1, v0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    move-wide/from16 v2, p2

    move-object/from16 v4, p1

    move-wide v5, v6

    move-wide v7, v11

    invoke-static/range {v1 .. v8}, Lorg/h2/mvstore/Page;->read(Lorg/h2/mvstore/FileStore;JLorg/h2/mvstore/MVMap;JJ)Lorg/h2/mvstore/Page;

    move-result-object v5

    invoke-virtual {v5}, Lorg/h2/mvstore/Page;->getMemory()I

    move-result v1

    invoke-virtual {p0, v9, v10, v5, v1}, Lorg/h2/mvstore/MVStore;->cachePage(JLorg/h2/mvstore/Page;I)V

    goto :goto_1

    :cond_1
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    const-string v1, "Negative position {0}"

    invoke-static {v2, v1, v4}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v1

    throw v1

    :cond_2
    :goto_1
    return-object v5

    :cond_3
    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Position 0"

    invoke-static {v2, v3, v1}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v1

    throw v1
.end method

.method public registerUnsavedPage(I)V
    .locals 1

    iget v0, p0, Lorg/h2/mvstore/MVStore;->unsavedMemory:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/h2/mvstore/MVStore;->unsavedMemory:I

    iget p1, p0, Lorg/h2/mvstore/MVStore;->autoCommitMemory:I

    if-le v0, p1, :cond_0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/h2/mvstore/MVStore;->saveNeeded:Z

    :cond_0
    return-void
.end method

.method public declared-synchronized removeMap(Lorg/h2/mvstore/MVMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/MVMap<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "name."

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->checkOpen()V

    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    const/4 v2, 0x0

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "Removing the meta map is not allowed"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lorg/h2/mvstore/DataUtils;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/h2/mvstore/MVMap;->clear()V

    invoke-virtual {p1}, Lorg/h2/mvstore/MVMap;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/MVStore;->getMapName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->markMetaChanged()V

    iget-object v2, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-static {p1}, Lorg/h2/mvstore/MVMap;->getMapKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/h2/mvstore/MVMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/h2/mvstore/MVMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-static {p1}, Lorg/h2/mvstore/MVMap;->getMapRootKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/mvstore/MVMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->maps:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removePage(Lorg/h2/mvstore/MVMap;JI)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/MVMap<",
            "**>;JI)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    iget p1, p0, Lorg/h2/mvstore/MVStore;->unsavedMemory:I

    sub-int/2addr p1, p4

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/h2/mvstore/MVStore;->unsavedMemory:I

    return-void

    :cond_0
    iget-object p4, p0, Lorg/h2/mvstore/MVStore;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    if-eqz p4, :cond_1

    invoke-static {p2, p3}, Lorg/h2/mvstore/DataUtils;->getPageType(J)I

    move-result p4

    if-nez p4, :cond_1

    iget-object p4, p0, Lorg/h2/mvstore/MVStore;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    invoke-virtual {p4, p2, p3}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->remove(J)Ljava/lang/Object;

    :cond_1
    invoke-direct {p0, p2, p3}, Lorg/h2/mvstore/MVStore;->getChunk(J)Lorg/h2/mvstore/Chunk;

    move-result-object p4

    iget-wide v2, p0, Lorg/h2/mvstore/MVStore;->currentVersion:J

    iget-object v4, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    if-ne p1, v4, :cond_2

    iget-wide v4, p0, Lorg/h2/mvstore/MVStore;->currentStoreVersion:J

    cmp-long p1, v4, v0

    if-ltz p1, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->currentStoreThread:Ljava/lang/Thread;

    if-ne p1, v0, :cond_2

    iget-wide v2, p0, Lorg/h2/mvstore/MVStore;->currentStoreVersion:J

    :cond_2
    move-wide v5, v2

    iget v7, p4, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {p2, p3}, Lorg/h2/mvstore/DataUtils;->getPageMaxLength(J)I

    move-result p1

    int-to-long v8, p1

    const/4 v10, 0x1

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lorg/h2/mvstore/MVStore;->registerFreePage(JIJI)V

    return-void
.end method

.method public declared-synchronized renameMap(Lorg/h2/mvstore/MVMap;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/MVMap<",
            "**>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "name."

    const-string v3, "name."

    const-string v4, "name."

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->checkOpen()V

    iget-object v5, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    if-eq p1, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const-string v6, "Renaming the meta map is not allowed"

    new-array v7, v0, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lorg/h2/mvstore/DataUtils;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/h2/mvstore/MVMap;->getId()I

    move-result v5

    invoke-virtual {p0, v5}, Lorg/h2/mvstore/MVStore;->getMapName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v7, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lorg/h2/mvstore/MVMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v1

    const-string v7, "A map named {0} already exists"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-static {v4, v7, v1}, Lorg/h2/mvstore/DataUtils;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->markMetaChanged()V

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/h2/mvstore/MVMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-static {v5}, Lorg/h2/mvstore/MVMap;->getMapKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/MVMap;->asString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public rollback()V
    .locals 2

    iget-wide v0, p0, Lorg/h2/mvstore/MVStore;->currentVersion:J

    invoke-virtual {p0, v0, v1}, Lorg/h2/mvstore/MVStore;->rollbackTo(J)V

    return-void
.end method

.method public declared-synchronized rollbackTo(J)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->checkOpen()V

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-nez v4, :cond_2

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->maps:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/mvstore/MVMap;

    invoke-virtual {v2}, Lorg/h2/mvstore/MVMap;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_9

    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVMap;->clear()V

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->chunks:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/h2/mvstore/FileStore;->clear()V

    :cond_1
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->maps:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->freedPageSpace:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    iput-wide p1, p0, Lorg/h2/mvstore/MVStore;->currentVersion:J

    invoke-direct {p0, p1, p2}, Lorg/h2/mvstore/MVStore;->setWriteVersion(J)V

    iput-boolean v1, p0, Lorg/h2/mvstore/MVStore;->metaChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-direct {p0, p1, p2}, Lorg/h2/mvstore/MVStore;->isKnownVersion(J)Z

    move-result v2

    const-string v3, "Unknown version {0}"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v4, v5, v1

    invoke-static {v2, v3, v5}, Lorg/h2/mvstore/DataUtils;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/h2/mvstore/MVStore;->maps:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/mvstore/MVMap;

    invoke-virtual {v3, p1, p2}, Lorg/h2/mvstore/MVMap;->rollbackTo(J)V

    goto :goto_1

    :cond_3
    iget-wide v2, p0, Lorg/h2/mvstore/MVStore;->currentVersion:J

    :goto_2
    cmp-long v4, v2, p1

    if-ltz v4, :cond_5

    iget-object v4, p0, Lorg/h2/mvstore/MVStore;->freedPageSpace:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Lj$/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    iget-object v4, p0, Lorg/h2/mvstore/MVStore;->freedPageSpace:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    goto :goto_2

    :cond_5
    :goto_3
    iget-object v2, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-virtual {v2, p1, p2}, Lorg/h2/mvstore/MVMap;->rollbackTo(J)V

    iput-boolean v1, p0, Lorg/h2/mvstore/MVStore;->metaChanged:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lorg/h2/mvstore/MVStore;->chunks:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_6
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/mvstore/Chunk;

    iget-wide v6, v5, Lorg/h2/mvstore/Chunk;->version:J

    cmp-long v8, v6, p1

    if-lez v8, :cond_7

    iget v5, v5, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    if-eqz v4, :cond_8

    iget v6, v4, Lorg/h2/mvstore/Chunk;->id:I

    iget v7, v5, Lorg/h2/mvstore/Chunk;->id:I

    if-ge v6, v7, :cond_6

    :cond_8
    move-object v4, v5

    goto :goto_4

    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_b

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-direct {p0, p1, p2}, Lorg/h2/mvstore/MVStore;->revertTemp(J)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p0, Lorg/h2/mvstore/MVStore;->chunks:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v3}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/mvstore/Chunk;

    iget-wide v5, v3, Lorg/h2/mvstore/Chunk;->block:J

    const-wide/16 v7, 0x1000

    mul-long v5, v5, v7

    iget v3, v3, Lorg/h2/mvstore/Chunk;->len:I

    mul-int/lit16 v3, v3, 0x1000

    iget-object v7, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v7, v5, v6, v3}, Lorg/h2/mvstore/FileStore;->free(JI)V

    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->getWriteBuffer()Lorg/h2/mvstore/WriteBuffer;

    move-result-object v7

    invoke-virtual {v7, v3}, Lorg/h2/mvstore/WriteBuffer;->limit(I)Lorg/h2/mvstore/WriteBuffer;

    invoke-virtual {v7}, Lorg/h2/mvstore/WriteBuffer;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([BB)V

    invoke-virtual {v7}, Lorg/h2/mvstore/WriteBuffer;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-direct {p0, v5, v6, v3}, Lorg/h2/mvstore/MVStore;->write(JLjava/nio/ByteBuffer;)V

    invoke-direct {p0, v7}, Lorg/h2/mvstore/MVStore;->releaseWriteBuffer(Lorg/h2/mvstore/WriteBuffer;)V

    invoke-virtual {p0}, Lorg/h2/mvstore/MVStore;->sync()V

    goto :goto_5

    :cond_a
    iput-object v4, p0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->writeStoreHeader()V

    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->readStoreHeader()V

    goto :goto_6

    :cond_b
    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->maps:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/mvstore/MVMap;

    invoke-virtual {v2}, Lorg/h2/mvstore/MVMap;->getId()I

    move-result v3

    invoke-virtual {v2}, Lorg/h2/mvstore/MVMap;->getCreateVersion()J

    move-result-wide v4

    cmp-long v6, v4, p1

    if-ltz v6, :cond_d

    invoke-virtual {v2}, Lorg/h2/mvstore/MVMap;->close()V

    iget-object v2, p0, Lorg/h2/mvstore/MVStore;->maps:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_d
    if-eqz v0, :cond_c

    iget-object v4, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    invoke-static {v4, v3}, Lorg/h2/mvstore/MVStore;->getRootPos(Lorg/h2/mvstore/MVMap;I)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/h2/mvstore/MVMap;->setRootPos(JJ)V

    goto :goto_7

    :cond_e
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->lastChunk:Lorg/h2/mvstore/Chunk;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->chunks:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/mvstore/Chunk;

    iget-object v2, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    iget v3, v1, Lorg/h2/mvstore/Chunk;->id:I

    invoke-static {v3}, Lorg/h2/mvstore/Chunk;->getMetaKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/h2/mvstore/Chunk;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_f
    iput-wide p1, p0, Lorg/h2/mvstore/MVStore;->currentVersion:J

    invoke-direct {p0, p1, p2}, Lorg/h2/mvstore/MVStore;->setWriteVersion(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_9
    monitor-exit p0

    throw p1
.end method

.method public setAutoCommitDelay(I)V
    .locals 2

    iget v0, p0, Lorg/h2/mvstore/MVStore;->autoCommitDelay:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lorg/h2/mvstore/MVStore;->autoCommitDelay:I

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/h2/mvstore/FileStore;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->stopBackgroundThread()V

    if-lez p1, :cond_2

    div-int/lit8 p1, p1, 0xa

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-instance v0, Lorg/h2/mvstore/MVStore$BackgroundWriterThread;

    iget-object v1, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v1}, Lorg/h2/mvstore/FileStore;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lorg/h2/mvstore/MVStore$BackgroundWriterThread;-><init>(Lorg/h2/mvstore/MVStore;ILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iput-object v0, p0, Lorg/h2/mvstore/MVStore;->backgroundWriterThread:Lorg/h2/mvstore/MVStore$BackgroundWriterThread;

    :cond_2
    :goto_0
    return-void
.end method

.method public setCacheSize(I)V
    .locals 4

    int-to-long v0, p1

    const-wide/32 v2, 0x100000

    mul-long v0, v0, v2

    iget-object p1, p0, Lorg/h2/mvstore/MVStore;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->setMaxMemory(J)V

    iget-object p1, p0, Lorg/h2/mvstore/MVStore;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    invoke-virtual {p1}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->clear()V

    :cond_0
    iget-object p1, p0, Lorg/h2/mvstore/MVStore;->cacheChunkRef:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->setMaxMemory(J)V

    iget-object p1, p0, Lorg/h2/mvstore/MVStore;->cacheChunkRef:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    invoke-virtual {p1}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->clear()V

    :cond_1
    return-void
.end method

.method public setRetentionTime(I)V
    .locals 0

    iput p1, p0, Lorg/h2/mvstore/MVStore;->retentionTime:I

    return-void
.end method

.method public setReuseSpace(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/h2/mvstore/MVStore;->reuseSpace:Z

    return-void
.end method

.method public declared-synchronized setStoreVersion(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->checkOpen()V

    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->markMetaChanged()V

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->meta:Lorg/h2/mvstore/MVMap;

    const-string v1, "setting.storeVersion"

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/h2/mvstore/MVMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setVersionsToKeep(I)V
    .locals 0

    iput p1, p0, Lorg/h2/mvstore/MVStore;->versionsToKeep:I

    return-void
.end method

.method public sync()V
    .locals 1

    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->checkOpen()V

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/h2/mvstore/FileStore;->sync()V

    :cond_0
    return-void
.end method

.method public writeInBackground()V
    .locals 6

    iget-boolean v0, p0, Lorg/h2/mvstore/MVStore;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->getTimeSinceCreation()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/h2/mvstore/MVStore;->lastCommitTime:J

    iget v4, p0, Lorg/h2/mvstore/MVStore;->autoCommitDelay:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/h2/mvstore/MVStore;->hasUnsavedChanges()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-direct {p0}, Lorg/h2/mvstore/MVStore;->commitAndSave()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lorg/h2/mvstore/MVStore;->backgroundExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/h2/mvstore/MVStore;->backgroundExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v2, v1, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    :cond_2
    :goto_0
    iget v0, p0, Lorg/h2/mvstore/MVStore;->autoCompactFillRate:I

    if-lez v0, :cond_4

    :try_start_1
    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/FileStore;->getWriteCount()J

    move-result-wide v2

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/FileStore;->getReadCount()J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-wide v4, p0, Lorg/h2/mvstore/MVStore;->autoCompactLastFileOpCount:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/h2/mvstore/MVStore;->autoCompactFillRate:I

    div-int/lit8 v0, v0, 0x3

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_3
    iget v0, p0, Lorg/h2/mvstore/MVStore;->autoCompactFillRate:I

    :goto_1
    iget v2, p0, Lorg/h2/mvstore/MVStore;->autoCommitMemory:I

    invoke-virtual {p0, v0, v2}, Lorg/h2/mvstore/MVStore;->compact(II)Z

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/FileStore;->getWriteCount()J

    move-result-wide v2

    iget-object v0, p0, Lorg/h2/mvstore/MVStore;->fileStore:Lorg/h2/mvstore/FileStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/FileStore;->getReadCount()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/h2/mvstore/MVStore;->autoCompactLastFileOpCount:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :goto_2
    iget-object v2, p0, Lorg/h2/mvstore/MVStore;->backgroundExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v2, :cond_4

    invoke-interface {v2, v1, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    return-void
.end method
