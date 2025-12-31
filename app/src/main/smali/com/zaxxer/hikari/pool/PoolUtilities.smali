.class public final Lcom/zaxxer/hikari/pool/PoolUtilities;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zaxxer/hikari/pool/PoolUtilities$SynchronousExecutor;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private isNetworkTimeoutSupported:Z

.field private isQueryTimeoutSupported:Z

.field private volatile isValidChecked:Z

.field private volatile isValidSupported:Z

.field private netTimeoutExecutor:Ljava/util/concurrent/Executor;

.field private poolName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/zaxxer/hikari/pool/PoolUtilities;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/zaxxer/hikari/pool/PoolUtilities;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/zaxxer/hikari/HikariConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getPoolName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/zaxxer/hikari/pool/PoolUtilities;->poolName:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zaxxer/hikari/pool/PoolUtilities;->isValidSupported:Z

    iput-boolean p1, p0, Lcom/zaxxer/hikari/pool/PoolUtilities;->isNetworkTimeoutSupported:Z

    iput-boolean p1, p0, Lcom/zaxxer/hikari/pool/PoolUtilities;->isQueryTimeoutSupported:Z

    return-void
.end method

.method public static synthetic access$100()Lorg/slf4j/Logger;
    .locals 1

    sget-object v0, Lcom/zaxxer/hikari/pool/PoolUtilities;->LOGGER:Lorg/slf4j/Logger;

    return-object v0
.end method

.method private createNetworkTimeoutExecutor(Ljavax/sql/DataSource;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Mysql"

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    :cond_0
    if-eqz p3, :cond_1

    const-string p2, "mysql"

    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    new-instance p1, Lcom/zaxxer/hikari/pool/PoolUtilities$SynchronousExecutor;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/zaxxer/hikari/pool/PoolUtilities$SynchronousExecutor;-><init>(Lcom/zaxxer/hikari/pool/PoolUtilities$1;)V

    iput-object p1, p0, Lcom/zaxxer/hikari/pool/PoolUtilities;->netTimeoutExecutor:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/zaxxer/hikari/util/DefaultThreadFactory;

    const-string p2, "Hikari JDBC Timeout Executor"

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3}, Lcom/zaxxer/hikari/util/DefaultThreadFactory;-><init>(Ljava/lang/String;Z)V

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/zaxxer/hikari/pool/PoolUtilities;->netTimeoutExecutor:Ljava/util/concurrent/Executor;

    check-cast p1, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, p3}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public executeSql(Ljava/sql/Connection;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p2}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    if-nez p3, :cond_0

    invoke-interface {p1}, Ljava/sql/Connection;->commit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/sql/Statement;->close()V

    goto :goto_2

    :goto_1
    invoke-interface {v0}, Ljava/sql/Statement;->close()V

    throw p1

    :cond_1
    :goto_2
    return-void
.end method

.method public getAndSetNetworkTimeout(Ljava/sql/Connection;J)I
    .locals 3

    iget-boolean v0, p0, Lcom/zaxxer/hikari/pool/PoolUtilities;->isNetworkTimeoutSupported:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/sql/Connection;->getNetworkTimeout()I

    move-result v0

    iget-object v2, p0, Lcom/zaxxer/hikari/pool/PoolUtilities;->netTimeoutExecutor:Ljava/util/concurrent/Executor;

    long-to-int p3, p2

    invoke-interface {p1, v2, p3}, Ljava/sql/Connection;->setNetworkTimeout(Ljava/util/concurrent/Executor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    iput-boolean v1, p0, Lcom/zaxxer/hikari/pool/PoolUtilities;->isNetworkTimeoutSupported:Z

    sget-object p1, Lcom/zaxxer/hikari/pool/PoolUtilities;->LOGGER:Lorg/slf4j/Logger;

    const-string p2, "{} - Connection.setNetworkTimeout() not supported"

    iget-object p3, p0, Lcom/zaxxer/hikari/pool/PoolUtilities;->poolName:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return v1
.end method

.method public initializeDataSource(Ljava/lang/String;Ljavax/sql/DataSource;Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/sql/DataSource;
    .locals 6

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-class p4, Ljavax/sql/DataSource;

    invoke-static {p1, p4, p2}, Lcom/zaxxer/hikari/util/UtilityElf;->createInstance(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/sql/DataSource;

    invoke-static {p2, p3}, Lcom/zaxxer/hikari/util/PropertyBeanSetter;->setTargetFromProperties(Ljava/lang/Object;Ljava/util/Properties;)V

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_1

    if-nez p2, :cond_1

    new-instance p2, Lcom/zaxxer/hikari/util/DriverDataSource;

    move-object v0, p2

    move-object v1, p5

    move-object v2, p4

    move-object v3, p3

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/zaxxer/hikari/util/DriverDataSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    invoke-direct {p0, p2, p1, p5}, Lcom/zaxxer/hikari/pool/PoolUtilities;->createNetworkTimeoutExecutor(Ljavax/sql/DataSource;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object p2
.end method

.method public isJdbc4ValidationSupported(Ljava/sql/Connection;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/zaxxer/hikari/pool/PoolUtilities;->isValidChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x5

    :try_start_0
    invoke-interface {p1, v0}, Ljava/sql/Connection;->isValid(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zaxxer/hikari/pool/PoolUtilities;->isValidSupported:Z

    sget-object p1, Lcom/zaxxer/hikari/pool/PoolUtilities;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "{} - JDBC4 Connection.isValid() not supported"

    iget-object v1, p0, Lcom/zaxxer/hikari/pool/PoolUtilities;->poolName:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zaxxer/hikari/pool/PoolUtilities;->isValidChecked:Z

    :cond_0
    iget-boolean p1, p0, Lcom/zaxxer/hikari/pool/PoolUtilities;->isValidSupported:Z

    return p1
.end method

.method public quietlyCloseConnection(Ljava/sql/Connection;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Ljava/sql/Connection;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    sget-object v4, Lcom/zaxxer/hikari/pool/PoolUtilities;->LOGGER:Lorg/slf4j/Logger;

    const-string v5, "Closing connection {} in pool {} {}"

    iget-object v6, p0, Lcom/zaxxer/hikari/pool/PoolUtilities;->poolName:Ljava/lang/String;

    new-array v7, v3, [Ljava/lang/Object;

    aput-object p1, v7, v2

    aput-object v6, v7, v1

    aput-object p2, v7, v0

    invoke-interface {v4, v5, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0xf

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {p0, p1, v4, v5}, Lcom/zaxxer/hikari/pool/PoolUtilities;->setNetworkTimeout(Ljava/sql/Connection;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {p1}, Ljava/sql/Connection;->close()V

    goto :goto_1

    :catchall_0
    move-exception v4

    goto :goto_0

    :catchall_1
    move-exception v4

    invoke-interface {p1}, Ljava/sql/Connection;->close()V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    sget-object v5, Lcom/zaxxer/hikari/pool/PoolUtilities;->LOGGER:Lorg/slf4j/Logger;

    iget-object v6, p0, Lcom/zaxxer/hikari/pool/PoolUtilities;->poolName:Ljava/lang/String;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v2

    aput-object v6, v7, v1

    aput-object p2, v7, v0

    aput-object v4, v7, v3

    const-string p1, "Exception closing connection {} in pool {} {}"

    invoke-interface {v5, p1, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public setLoginTimeout(Ljavax/sql/DataSource;J)V
    .locals 3

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p2

    long-to-int p3, p2

    invoke-interface {p1, p3}, Ljavax/sql/CommonDataSource;->setLoginTimeout(I)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/zaxxer/hikari/pool/PoolUtilities;->LOGGER:Lorg/slf4j/Logger;

    const-string p3, "Unable to set DataSource login timeout"

    invoke-interface {p2, p3, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setNetworkTimeout(Ljava/sql/Connection;J)V
    .locals 3

    iget-boolean v0, p0, Lcom/zaxxer/hikari/pool/PoolUtilities;->isNetworkTimeoutSupported:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/pool/PoolUtilities;->netTimeoutExecutor:Ljava/util/concurrent/Executor;

    long-to-int p3, p2

    invoke-interface {p1, v0, p3}, Ljava/sql/Connection;->setNetworkTimeout(Ljava/util/concurrent/Executor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    sget-object p3, Lcom/zaxxer/hikari/pool/PoolUtilities;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/PoolUtilities;->poolName:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object v0, v1, p1

    const/4 p1, 0x2

    aput-object p2, v1, p1

    const-string p1, "Unable to reset network timeout for connection {} in pool {}"

    invoke-interface {p3, p1, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setQueryTimeout(Ljava/sql/Statement;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/zaxxer/hikari/pool/PoolUtilities;->isQueryTimeoutSupported:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {p1, p2}, Ljava/sql/Statement;->setQueryTimeout(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zaxxer/hikari/pool/PoolUtilities;->isQueryTimeoutSupported:Z

    sget-object p1, Lcom/zaxxer/hikari/pool/PoolUtilities;->LOGGER:Lorg/slf4j/Logger;

    const-string p2, "{} - Statement.setQueryTimeout() not supported"

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/PoolUtilities;->poolName:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setupConnection(Ljava/sql/Connection;ZZILjava/lang/String;)V
    .locals 0

    invoke-interface {p1, p2}, Ljava/sql/Connection;->setAutoCommit(Z)V

    :try_start_0
    invoke-interface {p1, p3}, Ljava/sql/Connection;->setReadOnly(Z)V
    :try_end_0
    .catch Ljava/sql/SQLFeatureNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    invoke-interface {p1}, Ljava/sql/Connection;->getTransactionIsolation()I

    move-result p2

    if-eq p4, p2, :cond_0

    invoke-interface {p1, p4}, Ljava/sql/Connection;->setTransactionIsolation(I)V

    :cond_0
    if-eqz p5, :cond_1

    invoke-interface {p1, p5}, Ljava/sql/Connection;->setCatalog(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
