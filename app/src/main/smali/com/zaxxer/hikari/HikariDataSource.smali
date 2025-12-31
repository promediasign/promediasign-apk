.class public Lcom/zaxxer/hikari/HikariDataSource;
.super Lcom/zaxxer/hikari/HikariConfig;
.source "SourceFile"

# interfaces
.implements Ljavax/sql/DataSource;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zaxxer/hikari/HikariDataSource$MultiPoolKey;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final fastPathPool:Lcom/zaxxer/hikari/pool/HikariPool;

.field private volatile isShutdown:Z

.field private final multiPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/zaxxer/hikari/HikariDataSource$MultiPoolKey;",
            "Lcom/zaxxer/hikari/pool/HikariPool;",
            ">;"
        }
    .end annotation
.end field

.field private volatile pool:Lcom/zaxxer/hikari/pool/HikariPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/zaxxer/hikari/HikariDataSource;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/zaxxer/hikari/HikariDataSource;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zaxxer/hikari/HikariConfig;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zaxxer/hikari/HikariDataSource;->fastPathPool:Lcom/zaxxer/hikari/pool/HikariPool;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zaxxer/hikari/HikariDataSource;->multiPool:Ljava/util/HashMap;

    return-void
.end method

.method private shutdownHelper(Lcom/zaxxer/hikari/pool/HikariPool;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->shutdown()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Interrupted during shutdown"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {p1}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->getDataSource()Ljavax/sql/DataSource;

    move-result-object v0

    instance-of v0, v0, Lcom/zaxxer/hikari/util/DriverDataSource;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->getDataSource()Ljavax/sql/DataSource;

    move-result-object p1

    check-cast p1, Lcom/zaxxer/hikari/util/DriverDataSource;

    invoke-virtual {p1}, Lcom/zaxxer/hikari/util/DriverDataSource;->shutdown()V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-virtual {p0}, Lcom/zaxxer/hikari/HikariDataSource;->shutdown()V

    return-void
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/zaxxer/hikari/HikariDataSource;->isShutdown:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/zaxxer/hikari/HikariDataSource;->fastPathPool:Lcom/zaxxer/hikari/pool/HikariPool;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zaxxer/hikari/HikariDataSource;->pool:Lcom/zaxxer/hikari/pool/HikariPool;

    if-nez v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zaxxer/hikari/HikariDataSource;->pool:Lcom/zaxxer/hikari/pool/HikariPool;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/zaxxer/hikari/AbstractHikariConfig;->validate()V

    sget-object v0, Lcom/zaxxer/hikari/HikariDataSource;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "HikariCP pool {} is starting."

    invoke-virtual {p0}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getPoolName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/zaxxer/hikari/pool/HikariPool;

    invoke-direct {v0, p0}, Lcom/zaxxer/hikari/pool/HikariPool;-><init>(Lcom/zaxxer/hikari/HikariConfig;)V

    iput-object v0, p0, Lcom/zaxxer/hikari/HikariDataSource;->pool:Lcom/zaxxer/hikari/pool/HikariPool;

    iget-object v1, p0, Lcom/zaxxer/hikari/HikariDataSource;->multiPool:Ljava/util/HashMap;

    new-instance v2, Lcom/zaxxer/hikari/HikariDataSource$MultiPoolKey;

    invoke-virtual {p0}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/zaxxer/hikari/HikariDataSource$MultiPoolKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zaxxer/hikari/HikariDataSource;->pool:Lcom/zaxxer/hikari/pool/HikariPool;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {v0}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Pool has been shutdown"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getConnection(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-boolean v0, p0, Lcom/zaxxer/hikari/HikariDataSource;->isShutdown:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/zaxxer/hikari/HikariDataSource$MultiPoolKey;

    invoke-direct {v0, p1, p2}, Lcom/zaxxer/hikari/HikariDataSource$MultiPoolKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zaxxer/hikari/HikariDataSource;->multiPool:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/zaxxer/hikari/HikariDataSource;->multiPool:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zaxxer/hikari/pool/HikariPool;

    if-nez v2, :cond_0

    new-instance v2, Lcom/zaxxer/hikari/pool/HikariPool;

    invoke-direct {v2, p0, p1, p2}, Lcom/zaxxer/hikari/pool/HikariPool;-><init>(Lcom/zaxxer/hikari/HikariConfig;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zaxxer/hikari/HikariDataSource;->multiPool:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->getConnection()Ljava/sql/Connection;

    move-result-object p1

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    new-instance p1, Ljava/sql/SQLException;

    const-string p2, "Pool has been shutdown"

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLogWriter()Ljava/io/PrintWriter;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/HikariDataSource;->pool:Lcom/zaxxer/hikari/pool/HikariPool;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->getDataSource()Ljavax/sql/DataSource;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zaxxer/hikari/HikariDataSource;->pool:Lcom/zaxxer/hikari/pool/HikariPool;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->getDataSource()Ljavax/sql/DataSource;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sql/CommonDataSource;->getLogWriter()Ljava/io/PrintWriter;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getLoginTimeout()I
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/HikariDataSource;->multiPool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zaxxer/hikari/pool/HikariPool;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->getDataSource()Ljavax/sql/DataSource;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sql/CommonDataSource;->getLoginTimeout()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getParentLogger()Ljava/util/logging/Logger;
    .locals 1

    new-instance v0, Ljava/sql/SQLFeatureNotSupportedException;

    invoke-direct {v0}, Ljava/sql/SQLFeatureNotSupportedException;-><init>()V

    throw v0
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/zaxxer/hikari/HikariDataSource;->pool:Lcom/zaxxer/hikari/pool/HikariPool;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zaxxer/hikari/HikariDataSource;->pool:Lcom/zaxxer/hikari/pool/HikariPool;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->getDataSource()Ljavax/sql/DataSource;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/zaxxer/hikari/HikariDataSource;->pool:Lcom/zaxxer/hikari/pool/HikariPool;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->getDataSource()Ljavax/sql/DataSource;

    move-result-object v0

    instance-of v0, v0, Ljava/sql/Wrapper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zaxxer/hikari/HikariDataSource;->pool:Lcom/zaxxer/hikari/pool/HikariPool;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->getDataSource()Ljavax/sql/DataSource;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/sql/Wrapper;->isWrapperFor(Ljava/lang/Class;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public setLogWriter(Ljava/io/PrintWriter;)V
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/HikariDataSource;->pool:Lcom/zaxxer/hikari/pool/HikariPool;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->getDataSource()Ljavax/sql/DataSource;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zaxxer/hikari/HikariDataSource;->pool:Lcom/zaxxer/hikari/pool/HikariPool;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->getDataSource()Ljavax/sql/DataSource;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/sql/CommonDataSource;->setLogWriter(Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public setLoginTimeout(I)V
    .locals 2

    iget-object v0, p0, Lcom/zaxxer/hikari/HikariDataSource;->multiPool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zaxxer/hikari/pool/HikariPool;

    invoke-virtual {v1}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->getDataSource()Ljavax/sql/DataSource;

    move-result-object v1

    invoke-interface {v1, p1}, Ljavax/sql/CommonDataSource;->setLoginTimeout(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public shutdown()V
    .locals 2

    iget-boolean v0, p0, Lcom/zaxxer/hikari/HikariDataSource;->isShutdown:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zaxxer/hikari/HikariDataSource;->isShutdown:Z

    iget-object v0, p0, Lcom/zaxxer/hikari/HikariDataSource;->fastPathPool:Lcom/zaxxer/hikari/pool/HikariPool;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/zaxxer/hikari/HikariDataSource;->shutdownHelper(Lcom/zaxxer/hikari/pool/HikariPool;)V

    :cond_1
    iget-object v0, p0, Lcom/zaxxer/hikari/HikariDataSource;->multiPool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zaxxer/hikari/pool/HikariPool;

    invoke-direct {p0, v1}, Lcom/zaxxer/hikari/HikariDataSource;->shutdownHelper(Lcom/zaxxer/hikari/pool/HikariPool;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/zaxxer/hikari/HikariDataSource;->pool:Lcom/zaxxer/hikari/pool/HikariPool;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HikariDataSource ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrap(Ljava/lang/Class;)Ljava/lang/Object;
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
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/zaxxer/hikari/HikariDataSource;->pool:Lcom/zaxxer/hikari/pool/HikariPool;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/zaxxer/hikari/HikariDataSource;->pool:Lcom/zaxxer/hikari/pool/HikariPool;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->getDataSource()Ljavax/sql/DataSource;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/zaxxer/hikari/HikariDataSource;->pool:Lcom/zaxxer/hikari/pool/HikariPool;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->getDataSource()Ljavax/sql/DataSource;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/zaxxer/hikari/HikariDataSource;->pool:Lcom/zaxxer/hikari/pool/HikariPool;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->getDataSource()Ljavax/sql/DataSource;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    instance-of v0, v0, Ljava/sql/Wrapper;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iget-object v0, p0, Lcom/zaxxer/hikari/HikariDataSource;->pool:Lcom/zaxxer/hikari/pool/HikariPool;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->getDataSource()Ljavax/sql/DataSource;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0, p1}, Ljava/sql/Wrapper;->unwrap(Ljava/lang/Class;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1

    .line 52
    :cond_2
    new-instance v0, Ljava/sql/SQLException;

    .line 53
    .line 54
    const-string v1, "Wrapped DataSource is not an instance of "

    .line 55
    .line 56
    invoke-static {v1, p1}, Lch/qos/logback/core/joran/util/a;->l(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-direct {v0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0
.end method
