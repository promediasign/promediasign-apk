.class public Lorg/h2/jdbcx/JdbcConnectionPool;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/sql/DataSource;
.implements Ljavax/sql/ConnectionEventListener;
.implements Lorg/h2/jdbcx/JdbcConnectionPoolBackwardsCompat;


# static fields
.field private static final DEFAULT_MAX_CONNECTIONS:I = 0xa

.field private static final DEFAULT_TIMEOUT:I = 0x1e


# instance fields
.field private activeConnections:I

.field private final dataSource:Ljavax/sql/ConnectionPoolDataSource;

.field private isDisposed:Z

.field private logWriter:Ljava/io/PrintWriter;

.field private maxConnections:I

.field private final recycledConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljavax/sql/PooledConnection;",
            ">;"
        }
    .end annotation
.end field

.field private timeout:I


# direct methods
.method public constructor <init>(Ljavax/sql/ConnectionPoolDataSource;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->recycledConnections:Ljava/util/ArrayList;

    const/16 v0, 0xa

    iput v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->maxConnections:I

    const/16 v0, 0x1e

    iput v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->timeout:I

    iput-object p1, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->dataSource:Ljavax/sql/ConnectionPoolDataSource;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljavax/sql/CommonDataSource;->getLogWriter()Ljava/io/PrintWriter;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->logWriter:Ljava/io/PrintWriter;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private closeConnection(Ljavax/sql/PooledConnection;)V
    .locals 1

    :try_start_0
    invoke-interface {p1}, Ljavax/sql/PooledConnection;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->logWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->logWriter:Ljava/io/PrintWriter;

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/h2/jdbcx/JdbcConnectionPool;
    .locals 1

    .line 1
    new-instance v0, Lorg/h2/jdbcx/JdbcDataSource;

    invoke-direct {v0}, Lorg/h2/jdbcx/JdbcDataSource;-><init>()V

    invoke-virtual {v0, p0}, Lorg/h2/jdbcx/JdbcDataSource;->setURL(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/h2/jdbcx/JdbcDataSource;->setUser(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lorg/h2/jdbcx/JdbcDataSource;->setPassword(Ljava/lang/String;)V

    new-instance p0, Lorg/h2/jdbcx/JdbcConnectionPool;

    invoke-direct {p0, v0}, Lorg/h2/jdbcx/JdbcConnectionPool;-><init>(Ljavax/sql/ConnectionPoolDataSource;)V

    return-object p0
.end method

.method public static create(Ljavax/sql/ConnectionPoolDataSource;)Lorg/h2/jdbcx/JdbcConnectionPool;
    .locals 1

    .line 2
    new-instance v0, Lorg/h2/jdbcx/JdbcConnectionPool;

    invoke-direct {v0, p0}, Lorg/h2/jdbcx/JdbcConnectionPool;-><init>(Ljavax/sql/ConnectionPoolDataSource;)V

    return-object v0
.end method

.method private getConnectionNow()Ljava/sql/Connection;
    .locals 3

    iget-boolean v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->isDisposed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->recycledConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->recycledConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/sql/PooledConnection;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->dataSource:Ljavax/sql/ConnectionPoolDataSource;

    invoke-interface {v0}, Ljavax/sql/ConnectionPoolDataSource;->getPooledConnection()Ljavax/sql/PooledConnection;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljavax/sql/PooledConnection;->getConnection()Ljava/sql/Connection;

    move-result-object v1

    iget v2, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->activeConnections:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->activeConnections:I

    invoke-interface {v0, p0}, Ljavax/sql/PooledConnection;->addConnectionEventListener(Ljavax/sql/ConnectionEventListener;)V

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection pool has been disposed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public connectionClosed(Ljavax/sql/ConnectionEvent;)V
    .locals 0

    invoke-virtual {p1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/sql/PooledConnection;

    invoke-interface {p1, p0}, Ljavax/sql/PooledConnection;->removeConnectionEventListener(Ljavax/sql/ConnectionEventListener;)V

    invoke-virtual {p0, p1}, Lorg/h2/jdbcx/JdbcConnectionPool;->recycleConnection(Ljavax/sql/PooledConnection;)V

    return-void
.end method

.method public connectionErrorOccurred(Ljavax/sql/ConnectionEvent;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized dispose()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->isDisposed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->isDisposed:Z

    iget-object v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->recycledConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/sql/PooledConnection;

    invoke-direct {p0, v3}, Lorg/h2/jdbcx/JdbcConnectionPool;->closeConnection(Ljavax/sql/PooledConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getActiveConnections()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->activeConnections:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->timeout:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    add-long/2addr v2, v0

    :goto_0
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->activeConnections:I

    iget v1, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->maxConnections:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lorg/h2/jdbcx/JdbcConnectionPool;->getConnectionNow()Ljava/sql/Connection;

    move-result-object v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x3e8

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Login timeout"

    const-string v2, "08001"

    const/16 v3, 0x1f41

    invoke-direct {v0, v1, v2, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public getConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getLogWriter()Ljava/io/PrintWriter;
    .locals 1

    iget-object v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->logWriter:Ljava/io/PrintWriter;

    return-object v0
.end method

.method public declared-synchronized getLoginTimeout()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->timeout:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaxConnections()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->maxConnections:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getParentLogger()Ljava/util/logging/Logger;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-string p1, "isWrapperFor"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public declared-synchronized recycleConnection(Ljavax/sql/PooledConnection;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->activeConnections:I

    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->activeConnections:I

    iget-boolean v1, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->isDisposed:Z

    if-nez v1, :cond_0

    iget v1, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->maxConnections:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->recycledConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lorg/h2/jdbcx/JdbcConnectionPool;->closeConnection(Ljavax/sql/PooledConnection;)V

    :goto_0
    iget p1, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->activeConnections:I

    iget v0, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->maxConnections:I

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public setLogWriter(Ljava/io/PrintWriter;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->logWriter:Ljava/io/PrintWriter;

    return-void
.end method

.method public declared-synchronized setLoginTimeout(I)V
    .locals 0

    monitor-enter p0

    if-nez p1, :cond_0

    const/16 p1, 0x1e

    :cond_0
    :try_start_0
    iput p1, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->timeout:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMaxConnections(I)V
    .locals 3

    const-string v0, "Invalid maxConnections value: "

    monitor-enter p0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    :try_start_0
    iput p1, p0, Lorg/h2/jdbcx/JdbcConnectionPool;->maxConnections:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string p1, "unwrap"

    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method
