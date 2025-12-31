.class public Lorg/h2/mvstore/db/MVTableEngine$Store;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/db/MVTableEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Store"
.end annotation


# instance fields
.field private encrypted:Z

.field private fileName:Ljava/lang/String;

.field private statisticsStart:J

.field private store:Lorg/h2/mvstore/MVStore;

.field final tableMap:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/mvstore/db/MVTable;",
            ">;"
        }
    .end annotation
.end field

.field private temporaryMapId:I

.field private transactionStore:Lorg/h2/mvstore/db/TransactionStore;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->tableMap:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public close(J)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->getFileStore()Lorg/h2/mvstore/FileStore;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->getFileStore()Lorg/h2/mvstore/FileStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/mvstore/FileStore;->isReadOnly()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->transactionStore:Lorg/h2/mvstore/db/TransactionStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/TransactionStore;->close()V

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {p2}, Lorg/h2/mvstore/MVStore;->getFileStore()Lorg/h2/mvstore/FileStore;

    move-result-object p2

    invoke-virtual {p2}, Lorg/h2/mvstore/FileStore;->getFileName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->close()V

    if-eqz p1, :cond_1

    invoke-static {p2}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p2, v1}, Lorg/h2/mvstore/MVStoreTool;->compact(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/h2/mvstore/DataUtils;->getErrorCode(Ljava/lang/String;)I

    iget-object p2, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {p2}, Lorg/h2/mvstore/MVStore;->closeImmediately()V

    const-string p2, "Closing"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const v0, 0x15fac

    invoke-static {v0, p1, p2}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public closeImmediately()V
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->closeImmediately()V

    return-void
.end method

.method public compactFile(J)V
    .locals 7

    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/mvstore/MVStore;->setRetentionTime(I)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :cond_0
    iget-object v2, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    const/high16 v3, 0x1000000

    const/16 v4, 0x5f

    invoke-virtual {v2, v4, v3}, Lorg/h2/mvstore/MVStore;->compact(II)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v2}, Lorg/h2/mvstore/MVStore;->sync()V

    iget-object v2, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    const-wide/32 v5, 0x1000000

    invoke-virtual {v2, v4, v5, v6}, Lorg/h2/mvstore/MVStore;->compactMoveChunks(IJ)Z

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    :cond_1
    return-void
.end method

.method public convertIllegalStateException(Ljava/lang/IllegalStateException;)Lorg/h2/message/DbException;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/mvstore/DataUtils;->getErrorCode(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->encrypted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->fileName:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x15fc1

    invoke-static {v1, p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_0
    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->fileName:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x15fac

    invoke-static {v1, p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_1
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->fileName:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x15fae

    invoke-static {v1, p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_2
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->fileName:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x15fa4

    invoke-static {v1, p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public flush()V
    .locals 3

    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->getFileStore()Lorg/h2/mvstore/FileStore;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/h2/mvstore/FileStore;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    const/16 v1, 0x32

    const/high16 v2, 0x400000

    invoke-virtual {v0, v1, v2}, Lorg/h2/mvstore/MVStore;->compact(II)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->commit()J

    :cond_1
    :goto_0
    return-void
.end method

.method public getInDoubtTransactions()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/store/InDoubtTransaction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->transactionStore:Lorg/h2/mvstore/db/TransactionStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/TransactionStore;->getOpenTransactions()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/mvstore/db/TransactionStore$Transaction;

    invoke-virtual {v2}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->getStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    new-instance v3, Lorg/h2/mvstore/db/MVTableEngine$MVInDoubtTransaction;

    iget-object v4, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-direct {v3, v4, v2}, Lorg/h2/mvstore/db/MVTableEngine$MVInDoubtTransaction;-><init>(Lorg/h2/mvstore/MVStore;Lorg/h2/mvstore/db/TransactionStore$Transaction;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3

    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->getFileStore()Lorg/h2/mvstore/FileStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/mvstore/FileStore;->getEncryptedFile()Ljava/nio/channels/FileChannel;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->getFileStore()Lorg/h2/mvstore/FileStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/mvstore/FileStore;->getFile()Ljava/nio/channels/FileChannel;

    move-result-object v0

    :cond_0
    new-instance v1, Lorg/h2/store/fs/FileChannelInputStream;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/h2/store/fs/FileChannelInputStream;-><init>(Ljava/nio/channels/FileChannel;Z)V

    return-object v1
.end method

.method public getStore()Lorg/h2/mvstore/MVStore;
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    return-object v0
.end method

.method public getTables()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/mvstore/db/MVTable;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->tableMap:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getTransactionStore()Lorg/h2/mvstore/db/TransactionStore;
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->transactionStore:Lorg/h2/mvstore/db/TransactionStore;

    return-object v0
.end method

.method public initTransactions()V
    .locals 4

    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->transactionStore:Lorg/h2/mvstore/db/TransactionStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/TransactionStore;->getOpenTransactions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/mvstore/db/TransactionStore$Transaction;

    invoke-virtual {v1}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->getStatus()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->commit()V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->getStatus()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->rollback()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public declared-synchronized nextTemporaryMapName()Ljava/lang/String;
    .locals 3

    const-string v0, "temp."

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->temporaryMapId:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->temporaryMapId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public open(Lorg/h2/engine/Database;Lorg/h2/mvstore/MVStore$Builder;Z)V
    .locals 2

    iput-boolean p3, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->encrypted:Z

    :try_start_0
    invoke-virtual {p2}, Lorg/h2/mvstore/MVStore$Builder;->open()Lorg/h2/mvstore/MVStore;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {p2}, Lorg/h2/mvstore/MVStore;->getFileStore()Lorg/h2/mvstore/FileStore;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/h2/mvstore/FileStore;->getFileName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->fileName:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object p2

    iget-boolean p2, p2, Lorg/h2/engine/DbSettings;->reuseSpace:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lorg/h2/mvstore/MVStore;->setReuseSpace(Z)V

    :cond_1
    new-instance p2, Lorg/h2/mvstore/db/TransactionStore;

    iget-object p3, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    new-instance v0, Lorg/h2/mvstore/db/ValueDataType;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Lorg/h2/mvstore/db/ValueDataType;-><init>(Lorg/h2/value/CompareMode;Lorg/h2/store/DataHandler;[I)V

    invoke-direct {p2, p3, v0}, Lorg/h2/mvstore/db/TransactionStore;-><init>(Lorg/h2/mvstore/MVStore;Lorg/h2/mvstore/type/DataType;)V

    iput-object p2, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->transactionStore:Lorg/h2/mvstore/db/TransactionStore;

    invoke-virtual {p2}, Lorg/h2/mvstore/db/TransactionStore;->init()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0, p1}, Lorg/h2/mvstore/db/MVTableEngine$Store;->convertIllegalStateException(Ljava/lang/IllegalStateException;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public prepareCommit(Lorg/h2/engine/Session;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getTransaction()Lorg/h2/mvstore/db/TransactionStore$Transaction;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->prepare()V

    iget-object p1, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {p1}, Lorg/h2/mvstore/MVStore;->commit()J

    return-void
.end method

.method public removeTable(Lorg/h2/mvstore/db/MVTable;)V
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->tableMap:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lorg/h2/mvstore/db/MVTable;->getMapName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeTemporaryMaps(Lorg/h2/util/BitField;)V
    .locals 5

    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->getMapNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "temp."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v2, v1}, Lorg/h2/mvstore/MVStore;->openMap(Ljava/lang/String;)Lorg/h2/mvstore/MVMap;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v2, v1}, Lorg/h2/mvstore/MVStore;->removeMap(Lorg/h2/mvstore/MVMap;)V

    goto :goto_0

    :cond_1
    const-string v2, "table."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "index."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/h2/util/BitField;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lorg/h2/mvstore/db/ValueDataType;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3}, Lorg/h2/mvstore/db/ValueDataType;-><init>(Lorg/h2/value/CompareMode;Lorg/h2/store/DataHandler;[I)V

    new-instance v4, Lorg/h2/mvstore/db/ValueDataType;

    invoke-direct {v4, v3, v3, v3}, Lorg/h2/mvstore/db/ValueDataType;-><init>(Lorg/h2/value/CompareMode;Lorg/h2/store/DataHandler;[I)V

    iget-object v3, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->transactionStore:Lorg/h2/mvstore/db/TransactionStore;

    invoke-virtual {v3}, Lorg/h2/mvstore/db/TransactionStore;->begin()Lorg/h2/mvstore/db/TransactionStore$Transaction;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v4}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->openMap(Ljava/lang/String;Lorg/h2/mvstore/type/DataType;Lorg/h2/mvstore/type/DataType;)Lorg/h2/mvstore/db/TransactionStore$TransactionMap;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->transactionStore:Lorg/h2/mvstore/db/TransactionStore;

    invoke-virtual {v2, v1}, Lorg/h2/mvstore/db/TransactionStore;->removeMap(Lorg/h2/mvstore/db/TransactionStore$TransactionMap;)V

    invoke-virtual {v3}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->commit()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setCacheSize(I)V
    .locals 2

    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    div-int/lit16 p1, p1, 0x400

    const/4 v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/MVStore;->setCacheSize(I)V

    return-void
.end method

.method public statisticsEnd()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v1}, Lorg/h2/mvstore/MVStore;->getFileStore()Lorg/h2/mvstore/FileStore;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/h2/mvstore/FileStore;->getReadCount()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->statisticsStart:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "reads"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public statisticsStart()V
    .locals 2

    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->getFileStore()Lorg/h2/mvstore/FileStore;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/h2/mvstore/FileStore;->getReadCount()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->statisticsStart:J

    return-void
.end method

.method public sync()V
    .locals 1

    invoke-virtual {p0}, Lorg/h2/mvstore/db/MVTableEngine$Store;->flush()V

    iget-object v0, p0, Lorg/h2/mvstore/db/MVTableEngine$Store;->store:Lorg/h2/mvstore/MVStore;

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->sync()V

    return-void
.end method
