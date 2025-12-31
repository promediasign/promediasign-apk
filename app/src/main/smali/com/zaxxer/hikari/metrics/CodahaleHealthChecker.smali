.class public abstract Lcom/zaxxer/hikari/metrics/CodahaleHealthChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zaxxer/hikari/metrics/CodahaleHealthChecker$Connection99Percent;,
        Lcom/zaxxer/hikari/metrics/CodahaleHealthChecker$ConnectivityHealthCheck;
    }
.end annotation


# direct methods
.method public static registerHealthChecks(Lcom/zaxxer/hikari/pool/BaseHikariPool;Lcom/codahale/metrics/health/HealthCheckRegistry;)V
    .locals 8

    invoke-virtual {p0}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->getConfiguration()Lcom/zaxxer/hikari/HikariConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getHealthCheckProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getMetricRegistry()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codahale/metrics/MetricRegistry;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getConnectionTimeout()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "connectivityCheckTimeoutMs"

    invoke-virtual {v1, v4, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getPoolName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ConnectivityCheck"

    const-string v7, "pool"

    filled-new-array {v7, v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/codahale/metrics/MetricRegistry;->name(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/zaxxer/hikari/metrics/CodahaleHealthChecker$ConnectivityHealthCheck;

    invoke-direct {v6, p0, v3, v4}, Lcom/zaxxer/hikari/metrics/CodahaleHealthChecker$ConnectivityHealthCheck;-><init>(Lcom/zaxxer/hikari/pool/BaseHikariPool;J)V

    invoke-virtual {p1, v5, v6}, Lcom/codahale/metrics/health/HealthCheckRegistry;->register(Ljava/lang/String;Lcom/codahale/metrics/health/HealthCheck;)V

    const-string p0, "expected99thPercentileMs"

    const-string v3, "0"

    invoke-virtual {v1, p0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    if-eqz v2, :cond_0

    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-lez p0, :cond_0

    new-instance p0, Lcom/zaxxer/hikari/metrics/CodahaleHealthChecker$1;

    invoke-direct {p0, v0}, Lcom/zaxxer/hikari/metrics/CodahaleHealthChecker$1;-><init>(Lcom/zaxxer/hikari/HikariConfig;)V

    invoke-virtual {v2, p0}, Lcom/codahale/metrics/MetricRegistry;->getTimers(Lcom/codahale/metrics/MetricFilter;)Ljava/util/SortedMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/codahale/metrics/Timer;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getPoolName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connection99Percent"

    filled-new-array {v7, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codahale/metrics/MetricRegistry;->name(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/zaxxer/hikari/metrics/CodahaleHealthChecker$Connection99Percent;

    invoke-direct {v1, p0, v3, v4}, Lcom/zaxxer/hikari/metrics/CodahaleHealthChecker$Connection99Percent;-><init>(Lcom/codahale/metrics/Timer;J)V

    invoke-virtual {p1, v0, v1}, Lcom/codahale/metrics/health/HealthCheckRegistry;->register(Ljava/lang/String;Lcom/codahale/metrics/health/HealthCheck;)V

    :cond_0
    return-void
.end method
