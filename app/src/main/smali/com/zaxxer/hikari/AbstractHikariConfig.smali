.class public abstract Lcom/zaxxer/hikari/AbstractHikariConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CONNECTION_TIMEOUT:J

.field private static final IDLE_TIMEOUT:J

.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final MAX_LIFETIME:J

.field private static final VALIDATION_TIMEOUT:J

.field private static poolNumber:I

.field private static unitTest:Z


# instance fields
.field private catalog:Ljava/lang/String;

.field private connectionCustomizerClassName:Ljava/lang/String;

.field private connectionInitSql:Ljava/lang/String;

.field private connectionTestQuery:Ljava/lang/String;

.field private volatile connectionTimeout:J

.field private customizer:Lcom/zaxxer/hikari/IConnectionCustomizer;

.field private dataSource:Ljavax/sql/DataSource;

.field private dataSourceClassName:Ljava/lang/String;

.field private dataSourceProperties:Ljava/util/Properties;

.field private driverClassName:Ljava/lang/String;

.field private healthCheckProperties:Ljava/util/Properties;

.field private healthCheckRegistry:Ljava/lang/Object;

.field private volatile idleTimeout:J

.field private isAllowPoolSuspension:Z

.field private isAutoCommit:Z

.field private isInitializationFailFast:Z

.field private isIsolateInternalQueries:Z

.field private isReadOnly:Z

.field private isRegisterMbeans:Z

.field private jdbcUrl:Ljava/lang/String;

.field private volatile leakDetectionThreshold:J

.field private volatile maxLifetime:J

.field private volatile maxPoolSize:I

.field private metricRegistry:Ljava/lang/Object;

.field private volatile minIdle:I

.field private password:Ljava/lang/String;

.field private poolName:Ljava/lang/String;

.field private threadFactory:Ljava/util/concurrent/ThreadFactory;

.field private transactionIsolationName:Ljava/lang/String;

.field private username:Ljava/lang/String;

.field private volatile validationTimeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lcom/zaxxer/hikari/HikariConfig;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/zaxxer/hikari/AbstractHikariConfig;->LOGGER:Lorg/slf4j/Logger;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/zaxxer/hikari/AbstractHikariConfig;->CONNECTION_TIMEOUT:J

    const-wide/16 v3, 0x5

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/zaxxer/hikari/AbstractHikariConfig;->VALIDATION_TIMEOUT:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/zaxxer/hikari/AbstractHikariConfig;->IDLE_TIMEOUT:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/zaxxer/hikari/AbstractHikariConfig;->MAX_LIFETIME:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->dataSourceProperties:Ljava/util/Properties;

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->healthCheckProperties:Ljava/util/Properties;

    sget-wide v0, Lcom/zaxxer/hikari/AbstractHikariConfig;->CONNECTION_TIMEOUT:J

    iput-wide v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->connectionTimeout:J

    sget-wide v0, Lcom/zaxxer/hikari/AbstractHikariConfig;->VALIDATION_TIMEOUT:J

    iput-wide v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->validationTimeout:J

    sget-wide v0, Lcom/zaxxer/hikari/AbstractHikariConfig;->IDLE_TIMEOUT:J

    iput-wide v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->idleTimeout:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->isAutoCommit:Z

    iput-boolean v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->isInitializationFailFast:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->minIdle:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->maxPoolSize:I

    sget-wide v0, Lcom/zaxxer/hikari/AbstractHikariConfig;->MAX_LIFETIME:J

    iput-wide v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->maxLifetime:J

    new-instance v0, Lcom/zaxxer/hikari/AbstractHikariConfig$1;

    invoke-direct {v0, p0}, Lcom/zaxxer/hikari/AbstractHikariConfig$1;-><init>(Lcom/zaxxer/hikari/AbstractHikariConfig;)V

    iput-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->customizer:Lcom/zaxxer/hikari/IConnectionCustomizer;

    const-string v0, "hikaricp.configurationFile"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/zaxxer/hikari/AbstractHikariConfig;->loadProperties(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private logConfiguration()V
    .locals 7

    sget-object v0, Lcom/zaxxer/hikari/AbstractHikariConfig;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "HikariCP pool {} configuration:"

    iget-object v2, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->poolName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/TreeSet;

    const-class v1, Lcom/zaxxer/hikari/HikariConfig;

    invoke-static {v1}, Lcom/zaxxer/hikari/util/PropertyBeanSetter;->getPropertyNames(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    invoke-static {v1, p0}, Lcom/zaxxer/hikari/util/PropertyBeanSetter;->getProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "dataSourceProperties"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "<masked>"

    const-string v5, "password"

    if-eqz v3, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->dataSourceProperties:Ljava/util/Properties;

    invoke-static {v2}, Lcom/zaxxer/hikari/util/PropertyBeanSetter;->copyProperties(Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v2

    invoke-virtual {v2, v5, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    nop

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    move-object v4, v2

    :goto_2
    sget-object v2, Lcom/zaxxer/hikari/AbstractHikariConfig;->LOGGER:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "................................................"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    const/16 v6, 0x20

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    const-string v4, ""

    :goto_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    return-void
.end method

.method private validateNumerics()V
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iget-wide v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->validationTimeout:J

    iget-wide v3, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->connectionTimeout:J

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v3

    if-lez v7, :cond_0

    iget-wide v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->connectionTimeout:J

    cmp-long v3, v1, v5

    if-eqz v3, :cond_0

    const-string v1, "validationTimeout is greater than connectionTimeout, setting validationTimeout to connectionTimeout."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->connectionTimeout:J

    iput-wide v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->validationTimeout:J

    :cond_0
    iget v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->minIdle:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->minIdle:I

    iget v2, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->maxPoolSize:I

    if-le v1, v2, :cond_2

    :cond_1
    iget v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->maxPoolSize:I

    iput v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->minIdle:I

    :cond_2
    iget-wide v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->maxLifetime:J

    cmp-long v3, v1, v5

    if-ltz v3, :cond_7

    iget-wide v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->maxLifetime:J

    cmp-long v3, v1, v5

    if-lez v3, :cond_3

    iget-wide v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->maxLifetime:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1e

    invoke-virtual {v3, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    cmp-long v7, v1, v3

    if-gez v7, :cond_3

    sget-wide v1, Lcom/zaxxer/hikari/AbstractHikariConfig;->MAX_LIFETIME:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "maxLifetime is less than 30000ms, using default {}ms."

    invoke-interface {v0, v4, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    iput-wide v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->maxLifetime:J

    :cond_3
    iget-wide v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->idleTimeout:J

    cmp-long v3, v1, v5

    if-eqz v3, :cond_4

    iget-wide v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->idleTimeout:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0xa

    invoke-virtual {v3, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    cmp-long v7, v1, v3

    if-gez v7, :cond_4

    sget-wide v1, Lcom/zaxxer/hikari/AbstractHikariConfig;->IDLE_TIMEOUT:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "idleTimeout is less than 10000ms, using default {}ms."

    invoke-interface {v0, v4, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iput-wide v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->idleTimeout:J

    goto :goto_1

    :cond_4
    iget-wide v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->idleTimeout:J

    iget-wide v3, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->maxLifetime:J

    cmp-long v7, v1, v3

    if-lez v7, :cond_5

    iget-wide v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->maxLifetime:J

    cmp-long v3, v1, v5

    if-lez v3, :cond_5

    const-string v1, "idleTimeout is greater than maxLifetime, setting to maxLifetime."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->maxLifetime:J

    goto :goto_0

    :cond_5
    :goto_1
    iget-wide v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->leakDetectionThreshold:J

    cmp-long v3, v1, v5

    if-eqz v3, :cond_6

    iget-wide v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->leakDetectionThreshold:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_6

    sget-boolean v1, Lcom/zaxxer/hikari/AbstractHikariConfig;->unitTest:Z

    if-nez v1, :cond_6

    const-string v1, "leakDetectionThreshold is less than 2000ms, setting to minimum 2000ms."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->leakDetectionThreshold:J

    :cond_6
    return-void

    :cond_7
    const-string v1, "maxLifetime cannot be negative."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addDataSourceProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->dataSourceProperties:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getCatalog()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->catalog:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionCustomizer()Lcom/zaxxer/hikari/IConnectionCustomizer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->customizer:Lcom/zaxxer/hikari/IConnectionCustomizer;

    return-object v0
.end method

.method public getConnectionCustomizerClassName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->connectionCustomizerClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionInitSql()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->connectionInitSql:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionTestQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->connectionTestQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionTimeout()J
    .locals 2

    iget-wide v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->connectionTimeout:J

    return-wide v0
.end method

.method public getDataSource()Ljavax/sql/DataSource;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->dataSource:Ljavax/sql/DataSource;

    return-object v0
.end method

.method public getDataSourceClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->dataSourceClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getDataSourceProperties()Ljava/util/Properties;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->dataSourceProperties:Ljava/util/Properties;

    return-object v0
.end method

.method public getDriverClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->driverClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getHealthCheckProperties()Ljava/util/Properties;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->healthCheckProperties:Ljava/util/Properties;

    return-object v0
.end method

.method public getHealthCheckRegistry()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->healthCheckRegistry:Ljava/lang/Object;

    return-object v0
.end method

.method public getIdleTimeout()J
    .locals 2

    iget-wide v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->idleTimeout:J

    return-wide v0
.end method

.method public getJdbcUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->jdbcUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLeakDetectionThreshold()J
    .locals 2

    iget-wide v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->leakDetectionThreshold:J

    return-wide v0
.end method

.method public getMaxLifetime()J
    .locals 2

    iget-wide v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->maxLifetime:J

    return-wide v0
.end method

.method public getMaximumPoolSize()I
    .locals 1

    iget v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->maxPoolSize:I

    return v0
.end method

.method public getMetricRegistry()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->metricRegistry:Ljava/lang/Object;

    return-object v0
.end method

.method public getMinimumIdle()I
    .locals 1

    iget v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->minIdle:I

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPoolName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->poolName:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method

.method public getTransactionIsolation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->transactionIsolationName:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getValidationTimeout()J
    .locals 2

    iget-wide v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->validationTimeout:J

    return-wide v0
.end method

.method public isAllowPoolSuspension()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->isAllowPoolSuspension:Z

    return v0
.end method

.method public isAutoCommit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->isAutoCommit:Z

    return v0
.end method

.method public isInitializationFailFast()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->isInitializationFailFast:Z

    return v0
.end method

.method public isIsolateInternalQueries()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->isIsolateInternalQueries:Z

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->isReadOnly:Z

    return v0
.end method

.method public isRegisterMbeans()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->isRegisterMbeans:Z

    return v0
.end method

.method public abstract loadProperties(Ljava/lang/String;)V
.end method

.method public setDriverClassName(Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->driverClassName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    return-void

    .line 19
    :catch_0
    move-exception v0

    .line 20
    new-instance v1, Ljava/lang/RuntimeException;

    .line 21
    .line 22
    const-string v2, "driverClassName specified class \'"

    .line 23
    .line 24
    const-string v3, "\' could not be loaded"

    .line 25
    .line 26
    invoke-static {v2, p1, v3}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    throw v1
.end method

.method public setIdleTimeout(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iput-wide p1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->idleTimeout:J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "idleTimeout cannot be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setJdbcUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->jdbcUrl:Ljava/lang/String;

    return-void
.end method

.method public setLeakDetectionThreshold(J)V
    .locals 0

    iput-wide p1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->leakDetectionThreshold:J

    return-void
.end method

.method public setMaxLifetime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->maxLifetime:J

    return-void
.end method

.method public setMaximumPoolSize(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iput p1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->maxPoolSize:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxPoolSize cannot be less than 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public validate()V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    invoke-direct {p0}, Lcom/zaxxer/hikari/AbstractHikariConfig;->validateNumerics()V

    iget-object v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->connectionCustomizerClassName:Ljava/lang/String;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->connectionCustomizerClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connectionCustomizationClass specified class \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->connectionCustomizerClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' could not be loaded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->connectionCustomizerClassName:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->driverClassName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->jdbcUrl:Ljava/lang/String;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "when specifying driverClassName, jdbcUrl must also be specified"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->dataSourceClassName:Ljava/lang/String;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    const-string v1, "both driverClassName and dataSourceClassName are specified, one or the other should be used"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->jdbcUrl:Ljava/lang/String;

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->dataSource:Ljavax/sql/DataSource;

    if-nez v1, :cond_7

    iget-object v2, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->dataSourceClassName:Ljava/lang/String;

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    const-string v1, "one of either dataSource, dataSourceClassName, or jdbcUrl and driverClassName must be specified"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "one of either dataSource or dataSourceClassName must be specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->dataSourceClassName:Ljava/lang/String;

    if-eqz v1, :cond_8

    const-string v1, "both dataSource and dataSourceClassName are specified, ignoring dataSourceClassName"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->transactionIsolationName:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-static {v0}, Lcom/zaxxer/hikari/util/UtilityElf;->getTransactionIsolation(Ljava/lang/String;)I

    :cond_9
    iget-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->poolName:Ljava/lang/String;

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HikariPool-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/zaxxer/hikari/AbstractHikariConfig;->poolNumber:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/zaxxer/hikari/AbstractHikariConfig;->poolNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zaxxer/hikari/AbstractHikariConfig;->poolName:Ljava/lang/String;

    :cond_a
    sget-object v0, Lcom/zaxxer/hikari/AbstractHikariConfig;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/zaxxer/hikari/AbstractHikariConfig;->unitTest:Z

    if-eqz v0, :cond_c

    :cond_b
    invoke-direct {p0}, Lcom/zaxxer/hikari/AbstractHikariConfig;->logConfiguration()V

    :cond_c
    return-void
.end method
