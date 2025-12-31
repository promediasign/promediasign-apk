.class public abstract Lcom/zaxxer/hikari/proxy/ConnectionProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zaxxer/hikari/proxy/IHikariConnectionProxy;


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final SQL_ERRORS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bagEntry:Lcom/zaxxer/hikari/pool/PoolBagEntry;

.field protected delegate:Ljava/sql/Connection;

.field private isAutoCommit:Z

.field private isAutoCommitDirty:Z

.field private isCatalogDirty:Z

.field private isCommitStateDirty:Z

.field private isConnectionStateDirty:Z

.field private isReadOnlyDirty:Z

.field private isTransactionIsolationDirty:Z

.field private lastAccess:J

.field private final leakTask:Lcom/zaxxer/hikari/pool/LeakTask;

.field private final openStatements:Lcom/zaxxer/hikari/util/FastList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zaxxer/hikari/util/FastList<",
            "Ljava/sql/Statement;",
            ">;"
        }
    .end annotation
.end field

.field private final parentPool:Lcom/zaxxer/hikari/pool/HikariPool;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->LOGGER:Lorg/slf4j/Logger;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->SQL_ERRORS:Ljava/util/Set;

    const-string v1, "57P01"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "57P02"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "57P03"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "01002"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "JZ0C0"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "JZ0C1"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/zaxxer/hikari/pool/HikariPool;Lcom/zaxxer/hikari/pool/PoolBagEntry;Lcom/zaxxer/hikari/pool/LeakTask;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->parentPool:Lcom/zaxxer/hikari/pool/HikariPool;

    iput-object p2, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->bagEntry:Lcom/zaxxer/hikari/pool/PoolBagEntry;

    iget-object p1, p2, Lcom/zaxxer/hikari/pool/PoolBagEntry;->connection:Ljava/sql/Connection;

    iput-object p1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    iput-object p3, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->leakTask:Lcom/zaxxer/hikari/pool/LeakTask;

    iput-boolean p4, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isAutoCommit:Z

    iget-wide p1, p2, Lcom/zaxxer/hikari/pool/PoolBagEntry;->lastAccess:J

    iput-wide p1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->lastAccess:J

    new-instance p1, Lcom/zaxxer/hikari/util/FastList;

    const-class p2, Ljava/sql/Statement;

    const/16 p3, 0x10

    invoke-direct {p1, p2, p3}, Lcom/zaxxer/hikari/util/FastList;-><init>(Ljava/lang/Class;I)V

    iput-object p1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->openStatements:Lcom/zaxxer/hikari/util/FastList;

    return-void
.end method

.method private final closeOpenStatements()V
    .locals 3

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->openStatements:Lcom/zaxxer/hikari/util/FastList;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/util/FastList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->openStatements:Lcom/zaxxer/hikari/util/FastList;

    invoke-virtual {v2, v1}, Lcom/zaxxer/hikari/util/FastList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/sql/Statement;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/sql/Statement;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {p0, v2}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->openStatements:Lcom/zaxxer/hikari/util/FastList;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/util/FastList;->clear()V

    :cond_2
    return-void
.end method

.method private final resetConnectionState()V
    .locals 9

    sget-object v0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->LOGGER:Lorg/slf4j/Logger;

    iget-object v1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->parentPool:Lcom/zaxxer/hikari/pool/HikariPool;

    iget-object v2, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    iget-boolean v3, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isReadOnlyDirty:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isAutoCommitDirty:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v5, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isTransactionIsolationDirty:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v6, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isCatalogDirty:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v1, 0x1

    aput-object v2, v7, v1

    const/4 v1, 0x2

    aput-object v3, v7, v1

    const/4 v1, 0x3

    aput-object v4, v7, v1

    const/4 v1, 0x4

    aput-object v5, v7, v1

    const/4 v1, 0x5

    aput-object v6, v7, v1

    const-string v1, "{} Resetting dirty on {} (readOnlyDirty={},autoCommitDirty={},isolationDirty={},catalogDirty={})"

    invoke-interface {v0, v1, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isReadOnlyDirty:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    iget-object v1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->parentPool:Lcom/zaxxer/hikari/pool/HikariPool;

    iget-boolean v1, v1, Lcom/zaxxer/hikari/pool/BaseHikariPool;->isReadOnly:Z

    invoke-interface {v0, v1}, Ljava/sql/Connection;->setReadOnly(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isAutoCommitDirty:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    iget-object v1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->parentPool:Lcom/zaxxer/hikari/pool/HikariPool;

    iget-boolean v1, v1, Lcom/zaxxer/hikari/pool/BaseHikariPool;->isAutoCommit:Z

    invoke-interface {v0, v1}, Ljava/sql/Connection;->setAutoCommit(Z)V

    :cond_1
    iget-boolean v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isTransactionIsolationDirty:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    iget-object v1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->parentPool:Lcom/zaxxer/hikari/pool/HikariPool;

    iget v1, v1, Lcom/zaxxer/hikari/pool/BaseHikariPool;->transactionIsolation:I

    invoke-interface {v0, v1}, Ljava/sql/Connection;->setTransactionIsolation(I)V

    :cond_2
    iget-boolean v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isCatalogDirty:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->parentPool:Lcom/zaxxer/hikari/pool/HikariPool;

    iget-object v0, v0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->catalog:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v1, v0}, Ljava/sql/Connection;->setCatalog(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private final trackStatement(Ljava/sql/Statement;)Ljava/sql/Statement;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/sql/Statement;",
            ">(TT;)TT;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->lastAccess:J

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->openStatements:Lcom/zaxxer/hikari/util/FastList;

    invoke-virtual {v0, p1}, Lcom/zaxxer/hikari/util/FastList;->add(Ljava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method public final checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;
    .locals 8

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "08"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    sget-object v3, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->SQL_ERRORS:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->bagEntry:Lcom/zaxxer/hikari/pool/PoolBagEntry;

    iput-boolean v0, v2, Lcom/zaxxer/hikari/pool/PoolBagEntry;->evicted:Z

    sget-object v2, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->LOGGER:Lorg/slf4j/Logger;

    iget-object v3, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    iget-object v4, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->parentPool:Lcom/zaxxer/hikari/pool/HikariPool;

    invoke-virtual {p1}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    aput-object v4, v6, v0

    const/4 v0, 0x2

    aput-object v1, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object p1, v6, v0

    const-string v0, "Connection {} ({}) marked as broken because of SQLSTATE({}), ErrorCode({})."

    invoke-interface {v2, v0, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/sql/SQLException;->getNextException()Ljava/sql/SQLException;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/sql/SQLException;->getNextException()Ljava/sql/SQLException;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-virtual {p1}, Ljava/sql/SQLException;->getNextException()Ljava/sql/SQLException;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final close()V
    .locals 5

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    sget-object v1, Lcom/zaxxer/hikari/proxy/ClosedConnection;->CLOSED_CONNECTION:Ljava/sql/Connection;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->leakTask:Lcom/zaxxer/hikari/pool/LeakTask;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/pool/LeakTask;->cancel()V

    :try_start_0
    invoke-direct {p0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->closeOpenStatements()V

    iget-boolean v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isCommitStateDirty:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isAutoCommit:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "{} Performing rollback on {} due to dirty commit state."

    iget-object v3, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->parentPool:Lcom/zaxxer/hikari/pool/HikariPool;

    iget-object v4, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, v2, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->lastAccess:J

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->rollback()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isConnectionStateDirty:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->resetConnectionState()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->lastAccess:J

    :cond_1
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->clearWarnings()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    :goto_1
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->bagEntry:Lcom/zaxxer/hikari/pool/PoolBagEntry;

    iget-wide v1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->lastAccess:J

    iput-wide v1, v0, Lcom/zaxxer/hikari/pool/PoolBagEntry;->lastAccess:J

    iget-object v1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->parentPool:Lcom/zaxxer/hikari/pool/HikariPool;

    invoke-virtual {v1, v0}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->releaseConnection(Lcom/zaxxer/hikari/pool/PoolBagEntry;)V

    goto :goto_4

    :goto_2
    :try_start_1
    iget-object v1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->bagEntry:Lcom/zaxxer/hikari/pool/PoolBagEntry;

    iget-boolean v1, v1, Lcom/zaxxer/hikari/pool/PoolBagEntry;->aborted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    sget-object v0, Lcom/zaxxer/hikari/proxy/ClosedConnection;->CLOSED_CONNECTION:Ljava/sql/Connection;

    iput-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->checkException(Ljava/sql/SQLException;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    sget-object v1, Lcom/zaxxer/hikari/proxy/ClosedConnection;->CLOSED_CONNECTION:Ljava/sql/Connection;

    iput-object v1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    iget-object v1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->bagEntry:Lcom/zaxxer/hikari/pool/PoolBagEntry;

    iget-wide v2, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->lastAccess:J

    iput-wide v2, v1, Lcom/zaxxer/hikari/pool/PoolBagEntry;->lastAccess:J

    iget-object v2, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->parentPool:Lcom/zaxxer/hikari/pool/HikariPool;

    invoke-virtual {v2, v1}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->releaseConnection(Lcom/zaxxer/hikari/pool/PoolBagEntry;)V

    throw v0

    :cond_3
    :goto_4
    return-void
.end method

.method public commit()V
    .locals 2

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->commit()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isCommitStateDirty:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->lastAccess:J

    return-void
.end method

.method public createStatement()Ljava/sql/Statement;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->trackStatement(Ljava/sql/Statement;)Ljava/sql/Statement;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zaxxer/hikari/proxy/ProxyFactory;->getProxyStatement(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/Statement;)Ljava/sql/Statement;

    move-result-object v0

    return-object v0
.end method

.method public createStatement(II)Ljava/sql/Statement;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1, p2}, Ljava/sql/Connection;->createStatement(II)Ljava/sql/Statement;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->trackStatement(Ljava/sql/Statement;)Ljava/sql/Statement;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zaxxer/hikari/proxy/ProxyFactory;->getProxyStatement(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/Statement;)Ljava/sql/Statement;

    move-result-object p1

    return-object p1
.end method

.method public createStatement(III)Ljava/sql/Statement;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/Connection;->createStatement(III)Ljava/sql/Statement;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->trackStatement(Ljava/sql/Statement;)Ljava/sql/Statement;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/zaxxer/hikari/proxy/ProxyFactory;->getProxyStatement(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/Statement;)Ljava/sql/Statement;

    move-result-object p1

    return-object p1
.end method

.method public final getPoolBagEntry()Lcom/zaxxer/hikari/pool/PoolBagEntry;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->bagEntry:Lcom/zaxxer/hikari/pool/PoolBagEntry;

    return-object v0
.end method

.method public isClosed()Z
    .locals 2

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    sget-object v1, Lcom/zaxxer/hikari/proxy/ClosedConnection;->CLOSED_CONNECTION:Ljava/sql/Connection;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isWrapperFor(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    instance-of v1, v0, Ljava/sql/Wrapper;

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/sql/Wrapper;->isWrapperFor(Ljava/lang/Class;)Z

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

.method public final markCommitStateDirty()V
    .locals 2

    iget-boolean v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isAutoCommit:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->lastAccess:J

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isCommitStateDirty:Z

    :goto_0
    return-void
.end method

.method public prepareCall(Ljava/lang/String;)Ljava/sql/CallableStatement;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->prepareCall(Ljava/lang/String;)Ljava/sql/CallableStatement;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->trackStatement(Ljava/sql/Statement;)Ljava/sql/Statement;

    move-result-object p1

    check-cast p1, Ljava/sql/CallableStatement;

    invoke-static {p0, p1}, Lcom/zaxxer/hikari/proxy/ProxyFactory;->getProxyCallableStatement(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/CallableStatement;)Ljava/sql/CallableStatement;

    move-result-object p1

    return-object p1
.end method

.method public prepareCall(Ljava/lang/String;II)Ljava/sql/CallableStatement;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/Connection;->prepareCall(Ljava/lang/String;II)Ljava/sql/CallableStatement;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->trackStatement(Ljava/sql/Statement;)Ljava/sql/Statement;

    move-result-object p1

    check-cast p1, Ljava/sql/CallableStatement;

    invoke-static {p0, p1}, Lcom/zaxxer/hikari/proxy/ProxyFactory;->getProxyCallableStatement(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/CallableStatement;)Ljava/sql/CallableStatement;

    move-result-object p1

    return-object p1
.end method

.method public prepareCall(Ljava/lang/String;III)Ljava/sql/CallableStatement;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/Connection;->prepareCall(Ljava/lang/String;III)Ljava/sql/CallableStatement;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->trackStatement(Ljava/sql/Statement;)Ljava/sql/Statement;

    move-result-object p1

    check-cast p1, Ljava/sql/CallableStatement;

    invoke-static {p0, p1}, Lcom/zaxxer/hikari/proxy/ProxyFactory;->getProxyCallableStatement(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/CallableStatement;)Ljava/sql/CallableStatement;

    move-result-object p1

    return-object p1
.end method

.method public prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->trackStatement(Ljava/sql/Statement;)Ljava/sql/Statement;

    move-result-object p1

    check-cast p1, Ljava/sql/PreparedStatement;

    invoke-static {p0, p1}, Lcom/zaxxer/hikari/proxy/ProxyFactory;->getProxyPreparedStatement(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/PreparedStatement;)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public prepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1, p2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;I)Ljava/sql/PreparedStatement;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->trackStatement(Ljava/sql/Statement;)Ljava/sql/Statement;

    move-result-object p1

    check-cast p1, Ljava/sql/PreparedStatement;

    invoke-static {p0, p1}, Lcom/zaxxer/hikari/proxy/ProxyFactory;->getProxyPreparedStatement(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/PreparedStatement;)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public prepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1, p2, p3}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;II)Ljava/sql/PreparedStatement;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->trackStatement(Ljava/sql/Statement;)Ljava/sql/Statement;

    move-result-object p1

    check-cast p1, Ljava/sql/PreparedStatement;

    invoke-static {p0, p1}, Lcom/zaxxer/hikari/proxy/ProxyFactory;->getProxyPreparedStatement(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/PreparedStatement;)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public prepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;III)Ljava/sql/PreparedStatement;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->trackStatement(Ljava/sql/Statement;)Ljava/sql/Statement;

    move-result-object p1

    check-cast p1, Ljava/sql/PreparedStatement;

    invoke-static {p0, p1}, Lcom/zaxxer/hikari/proxy/ProxyFactory;->getProxyPreparedStatement(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/PreparedStatement;)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public prepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1, p2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;[I)Ljava/sql/PreparedStatement;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->trackStatement(Ljava/sql/Statement;)Ljava/sql/Statement;

    move-result-object p1

    check-cast p1, Ljava/sql/PreparedStatement;

    invoke-static {p0, p1}, Lcom/zaxxer/hikari/proxy/ProxyFactory;->getProxyPreparedStatement(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/PreparedStatement;)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public prepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1, p2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->trackStatement(Ljava/sql/Statement;)Ljava/sql/Statement;

    move-result-object p1

    check-cast p1, Ljava/sql/PreparedStatement;

    invoke-static {p0, p1}, Lcom/zaxxer/hikari/proxy/ProxyFactory;->getProxyPreparedStatement(Lcom/zaxxer/hikari/proxy/ConnectionProxy;Ljava/sql/PreparedStatement;)Ljava/sql/PreparedStatement;

    move-result-object p1

    return-object p1
.end method

.method public rollback()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->rollback()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isCommitStateDirty:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->lastAccess:J

    return-void
.end method

.method public rollback(Ljava/sql/Savepoint;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->rollback(Ljava/sql/Savepoint;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isCommitStateDirty:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->lastAccess:J

    return-void
.end method

.method public setAutoCommit(Z)V
    .locals 2

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->setAutoCommit(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isConnectionStateDirty:Z

    iput-boolean p1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isAutoCommit:Z

    iget-object v1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->parentPool:Lcom/zaxxer/hikari/pool/HikariPool;

    iget-boolean v1, v1, Lcom/zaxxer/hikari/pool/BaseHikariPool;->isAutoCommit:Z

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isAutoCommitDirty:Z

    return-void
.end method

.method public setCatalog(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->setCatalog(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isConnectionStateDirty:Z

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->parentPool:Lcom/zaxxer/hikari/pool/HikariPool;

    iget-object v1, v1, Lcom/zaxxer/hikari/pool/BaseHikariPool;->catalog:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->parentPool:Lcom/zaxxer/hikari/pool/HikariPool;

    iget-object p1, p1, Lcom/zaxxer/hikari/pool/BaseHikariPool;->catalog:Ljava/lang/String;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isCatalogDirty:Z

    return-void
.end method

.method public setReadOnly(Z)V
    .locals 2

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->setReadOnly(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isConnectionStateDirty:Z

    iget-object v1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->parentPool:Lcom/zaxxer/hikari/pool/HikariPool;

    iget-boolean v1, v1, Lcom/zaxxer/hikari/pool/BaseHikariPool;->isReadOnly:Z

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isReadOnlyDirty:Z

    return-void
.end method

.method public setTransactionIsolation(I)V
    .locals 2

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    invoke-interface {v0, p1}, Ljava/sql/Connection;->setTransactionIsolation(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isConnectionStateDirty:Z

    iget-object v1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->parentPool:Lcom/zaxxer/hikari/pool/HikariPool;

    iget v1, v1, Lcom/zaxxer/hikari/pool/BaseHikariPool;->transactionIsolation:I

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->isTransactionIsolationDirty:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const-string v0, "%s(%s) wrapping %s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final untrackStatement(Ljava/sql/Statement;)V
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->openStatements:Lcom/zaxxer/hikari/util/FastList;

    invoke-virtual {v0, p1}, Lcom/zaxxer/hikari/util/FastList;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public final unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/zaxxer/hikari/proxy/ConnectionProxy;->delegate:Ljava/sql/Connection;

    .line 13
    .line 14
    instance-of v1, v0, Ljava/sql/Wrapper;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v0, p1}, Ljava/sql/Wrapper;->unwrap(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1

    .line 23
    :cond_1
    new-instance v0, Ljava/sql/SQLException;

    .line 24
    .line 25
    const-string v1, "Wrapped connection is not an instance of "

    .line 26
    .line 27
    invoke-static {v1, p1}, Lch/qos/logback/core/joran/util/a;->l(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0
.end method
