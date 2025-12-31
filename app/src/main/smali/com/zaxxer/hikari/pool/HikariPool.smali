.class public final Lcom/zaxxer/hikari/pool/HikariPool;
.super Lcom/zaxxer/hikari/pool/BaseHikariPool;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zaxxer/hikari/pool/HikariPool$HouseKeeper;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/zaxxer/hikari/HikariConfig;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/zaxxer/hikari/pool/HikariPool;-><init>(Lcom/zaxxer/hikari/HikariConfig;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/zaxxer/hikari/HikariConfig;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/zaxxer/hikari/pool/BaseHikariPool;-><init>(Lcom/zaxxer/hikari/HikariConfig;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abortActiveConnections(Ljava/util/concurrent/ExecutorService;)V
    .locals 7

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->connectionBag:Lcom/zaxxer/hikari/util/ConcurrentBag;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zaxxer/hikari/util/ConcurrentBag;->values(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zaxxer/hikari/pool/PoolBagEntry;

    const/4 v3, 0x0

    :try_start_0
    iput-boolean v1, v2, Lcom/zaxxer/hikari/pool/PoolBagEntry;->evicted:Z

    iput-boolean v1, v2, Lcom/zaxxer/hikari/pool/PoolBagEntry;->aborted:Z

    iget-object v4, v2, Lcom/zaxxer/hikari/pool/PoolBagEntry;->connection:Ljava/sql/Connection;

    invoke-interface {v4, p1}, Ljava/sql/Connection;->abort(Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v3, v2, Lcom/zaxxer/hikari/pool/PoolBagEntry;->connection:Ljava/sql/Connection;

    iget-object v3, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->connectionBag:Lcom/zaxxer/hikari/util/ConcurrentBag;

    invoke-virtual {v3, v2}, Lcom/zaxxer/hikari/util/ConcurrentBag;->remove(Lcom/zaxxer/hikari/util/IConcurrentBagEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    iget-object v2, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->totalConnections:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_1
    instance-of v5, v4, Ljava/lang/InterruptedException;

    if-nez v5, :cond_1

    iget-object v4, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->poolUtils:Lcom/zaxxer/hikari/pool/PoolUtilities;

    iget-object v5, v2, Lcom/zaxxer/hikari/pool/PoolBagEntry;->connection:Ljava/sql/Connection;

    const-string v6, "(connection aborted during shutdown)"

    invoke-virtual {v4, v5, v6}, Lcom/zaxxer/hikari/pool/PoolUtilities;->quietlyCloseConnection(Ljava/sql/Connection;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput-object v3, v2, Lcom/zaxxer/hikari/pool/PoolBagEntry;->connection:Ljava/sql/Connection;

    iget-object v3, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->connectionBag:Lcom/zaxxer/hikari/util/ConcurrentBag;

    invoke-virtual {v3, v2}, Lcom/zaxxer/hikari/util/ConcurrentBag;->remove(Lcom/zaxxer/hikari/util/IConcurrentBagEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_1
    :try_start_2
    check-cast v4, Ljava/lang/InterruptedException;

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    iput-object v3, v2, Lcom/zaxxer/hikari/pool/PoolBagEntry;->connection:Ljava/sql/Connection;

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->connectionBag:Lcom/zaxxer/hikari/util/ConcurrentBag;

    invoke-virtual {v0, v2}, Lcom/zaxxer/hikari/util/ConcurrentBag;->remove(Lcom/zaxxer/hikari/util/IConcurrentBagEntry;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->totalConnections:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_2
    throw p1

    :cond_3
    return-void
.end method

.method public closeConnection(Lcom/zaxxer/hikari/pool/PoolBagEntry;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Lcom/zaxxer/hikari/pool/PoolBagEntry;->cancelMaxLifeTermination()V

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->connectionBag:Lcom/zaxxer/hikari/util/ConcurrentBag;

    invoke-virtual {v0, p1}, Lcom/zaxxer/hikari/util/ConcurrentBag;->remove(Lcom/zaxxer/hikari/util/IConcurrentBagEntry;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->totalConnections:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gez v0, :cond_0

    iget-object v1, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    const-string v3, "Internal accounting inconsistency, totalConnections={}"

    invoke-interface {v1, v3, v0, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p1, Lcom/zaxxer/hikari/pool/PoolBagEntry;->connection:Ljava/sql/Connection;

    iget-object v1, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->closeConnectionExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/zaxxer/hikari/pool/HikariPool$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/zaxxer/hikari/pool/HikariPool$1;-><init>(Lcom/zaxxer/hikari/pool/HikariPool;Ljava/sql/Connection;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    const/4 p2, 0x0

    iput-object p2, p1, Lcom/zaxxer/hikari/pool/PoolBagEntry;->connection:Ljava/sql/Connection;

    return-void
.end method

.method public createConcurrentBag(Lcom/zaxxer/hikari/util/IBagStateListener;)Lcom/zaxxer/hikari/util/ConcurrentBag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zaxxer/hikari/util/IBagStateListener;",
            ")",
            "Lcom/zaxxer/hikari/util/ConcurrentBag<",
            "Lcom/zaxxer/hikari/pool/PoolBagEntry;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/zaxxer/hikari/util/Java6ConcurrentBag;

    invoke-direct {v0, p1}, Lcom/zaxxer/hikari/util/Java6ConcurrentBag;-><init>(Lcom/zaxxer/hikari/util/IBagStateListener;)V

    return-object v0
.end method

.method public getHouseKeeper()Ljava/lang/Runnable;
    .locals 2

    new-instance v0, Lcom/zaxxer/hikari/pool/HikariPool$HouseKeeper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zaxxer/hikari/pool/HikariPool$HouseKeeper;-><init>(Lcom/zaxxer/hikari/pool/HikariPool;Lcom/zaxxer/hikari/pool/HikariPool$1;)V

    return-object v0
.end method

.method public isConnectionAlive(Ljava/sql/Connection;)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Performing alive check for connection {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->validationTimeout:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v1, v0

    iget-boolean v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->isUseJdbc4Validation:Z

    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Ljava/sql/Connection;->isValid(I)Z

    move-result p1

    return p1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->poolUtils:Lcom/zaxxer/hikari/pool/PoolUtilities;

    iget-wide v2, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->validationTimeout:J

    invoke-virtual {v0, p1, v2, v3}, Lcom/zaxxer/hikari/pool/PoolUtilities;->getAndSetNetworkTimeout(Ljava/sql/Connection;J)I

    move-result v0

    invoke-interface {p1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v2
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->poolUtils:Lcom/zaxxer/hikari/pool/PoolUtilities;

    invoke-virtual {v3, v2, v1}, Lcom/zaxxer/hikari/pool/PoolUtilities;->setQueryTimeout(Ljava/sql/Statement;I)V

    iget-object v1, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->configuration:Lcom/zaxxer/hikari/HikariConfig;

    invoke-virtual {v1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getConnectionTestQuery()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v2}, Ljava/sql/Statement;->close()V

    iget-boolean v1, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->isIsolateInternalQueries:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->isAutoCommit:Z

    if-nez v1, :cond_1

    invoke-interface {p1}, Ljava/sql/Connection;->rollback()V

    :cond_1
    iget-object v1, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->poolUtils:Lcom/zaxxer/hikari/pool/PoolUtilities;

    int-to-long v2, v0

    invoke-virtual {v1, p1, v2, v3}, Lcom/zaxxer/hikari/pool/PoolUtilities;->setNetworkTimeout(Ljava/sql/Connection;J)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Ljava/sql/Statement;->close()V

    throw v0
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "Exception during keep alive check, that means the connection ({}) must be dead."

    invoke-interface {v1, v2, p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public softEvictConnections()V
    .locals 3

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->connectionBag:Lcom/zaxxer/hikari/util/ConcurrentBag;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zaxxer/hikari/util/ConcurrentBag;->values(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zaxxer/hikari/pool/PoolBagEntry;

    iput-boolean v1, v2, Lcom/zaxxer/hikari/pool/PoolBagEntry;->evicted:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->connectionBag:Lcom/zaxxer/hikari/util/ConcurrentBag;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zaxxer/hikari/util/ConcurrentBag;->values(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zaxxer/hikari/pool/PoolBagEntry;

    iget-object v2, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->connectionBag:Lcom/zaxxer/hikari/util/ConcurrentBag;

    invoke-virtual {v2, v1}, Lcom/zaxxer/hikari/util/ConcurrentBag;->reserve(Lcom/zaxxer/hikari/util/IConcurrentBagEntry;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "(connection evicted by user)"

    invoke-virtual {p0, v1, v2}, Lcom/zaxxer/hikari/pool/HikariPool;->closeConnection(Lcom/zaxxer/hikari/pool/PoolBagEntry;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method
