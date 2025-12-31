.class public final Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker;
.super Lcom/zaxxer/hikari/metrics/MetricsTracker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker$Context;
    }
.end annotation


# instance fields
.field private final connectionObtainTimer:Lcom/codahale/metrics/Timer;

.field private final connectionUsage:Lcom/codahale/metrics/Histogram;

.field private final registry:Lcom/codahale/metrics/MetricRegistry;


# direct methods
.method public constructor <init>(Lcom/zaxxer/hikari/pool/BaseHikariPool;Lcom/codahale/metrics/MetricRegistry;)V
    .locals 10

    invoke-direct {p0, p1}, Lcom/zaxxer/hikari/metrics/MetricsTracker;-><init>(Lcom/zaxxer/hikari/pool/BaseHikariPool;)V

    iput-object p2, p0, Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker;->registry:Lcom/codahale/metrics/MetricRegistry;

    invoke-virtual {p1}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->getConfiguration()Lcom/zaxxer/hikari/HikariConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getPoolName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Wait"

    const-string v2, "pool"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codahale/metrics/MetricRegistry;->name(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/codahale/metrics/MetricRegistry;->timer(Ljava/lang/String;)Lcom/codahale/metrics/Timer;

    move-result-object v0

    iput-object v0, p0, Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker;->connectionObtainTimer:Lcom/codahale/metrics/Timer;

    invoke-virtual {p1}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->getConfiguration()Lcom/zaxxer/hikari/HikariConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getPoolName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Usage"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codahale/metrics/MetricRegistry;->name(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/codahale/metrics/MetricRegistry;->histogram(Ljava/lang/String;)Lcom/codahale/metrics/Histogram;

    move-result-object v0

    iput-object v0, p0, Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker;->connectionUsage:Lcom/codahale/metrics/Histogram;

    invoke-virtual {p1}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->getConfiguration()Lcom/zaxxer/hikari/HikariConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getPoolName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TotalConnections"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codahale/metrics/MetricRegistry;->name(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker$1;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0xa

    move-object v3, v1

    move-object v4, p0

    move-object v7, v9

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker$1;-><init>(Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker;JLjava/util/concurrent/TimeUnit;Lcom/zaxxer/hikari/pool/BaseHikariPool;)V

    invoke-virtual {p2, v0, v1}, Lcom/codahale/metrics/MetricRegistry;->register(Ljava/lang/String;Lcom/codahale/metrics/Metric;)Lcom/codahale/metrics/Metric;

    invoke-virtual {p1}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->getConfiguration()Lcom/zaxxer/hikari/HikariConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getPoolName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IdleConnections"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codahale/metrics/MetricRegistry;->name(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker$2;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker$2;-><init>(Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker;JLjava/util/concurrent/TimeUnit;Lcom/zaxxer/hikari/pool/BaseHikariPool;)V

    invoke-virtual {p2, v0, v1}, Lcom/codahale/metrics/MetricRegistry;->register(Ljava/lang/String;Lcom/codahale/metrics/Metric;)Lcom/codahale/metrics/Metric;

    invoke-virtual {p1}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->getConfiguration()Lcom/zaxxer/hikari/HikariConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getPoolName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActiveConnections"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codahale/metrics/MetricRegistry;->name(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker$3;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker$3;-><init>(Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker;JLjava/util/concurrent/TimeUnit;Lcom/zaxxer/hikari/pool/BaseHikariPool;)V

    invoke-virtual {p2, v0, v1}, Lcom/codahale/metrics/MetricRegistry;->register(Ljava/lang/String;Lcom/codahale/metrics/Metric;)Lcom/codahale/metrics/Metric;

    invoke-virtual {p1}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->getConfiguration()Lcom/zaxxer/hikari/HikariConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getPoolName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PendingConnections"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codahale/metrics/MetricRegistry;->name(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker$4;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker$4;-><init>(Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker;JLjava/util/concurrent/TimeUnit;Lcom/zaxxer/hikari/pool/BaseHikariPool;)V

    invoke-virtual {p2, v0, v1}, Lcom/codahale/metrics/MetricRegistry;->register(Ljava/lang/String;Lcom/codahale/metrics/Metric;)Lcom/codahale/metrics/Metric;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    iget-object v0, p0, Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker;->registry:Lcom/codahale/metrics/MetricRegistry;

    iget-object v1, p0, Lcom/zaxxer/hikari/metrics/MetricsTracker;->pool:Lcom/zaxxer/hikari/pool/BaseHikariPool;

    invoke-virtual {v1}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->getConfiguration()Lcom/zaxxer/hikari/HikariConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getPoolName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Wait"

    const-string v3, "pool"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/codahale/metrics/MetricRegistry;->name(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codahale/metrics/MetricRegistry;->remove(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker;->registry:Lcom/codahale/metrics/MetricRegistry;

    iget-object v1, p0, Lcom/zaxxer/hikari/metrics/MetricsTracker;->pool:Lcom/zaxxer/hikari/pool/BaseHikariPool;

    invoke-virtual {v1}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->getConfiguration()Lcom/zaxxer/hikari/HikariConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getPoolName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Usage"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/codahale/metrics/MetricRegistry;->name(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codahale/metrics/MetricRegistry;->remove(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker;->registry:Lcom/codahale/metrics/MetricRegistry;

    iget-object v1, p0, Lcom/zaxxer/hikari/metrics/MetricsTracker;->pool:Lcom/zaxxer/hikari/pool/BaseHikariPool;

    invoke-virtual {v1}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->getConfiguration()Lcom/zaxxer/hikari/HikariConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getPoolName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TotalConnections"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/codahale/metrics/MetricRegistry;->name(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codahale/metrics/MetricRegistry;->remove(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker;->registry:Lcom/codahale/metrics/MetricRegistry;

    iget-object v1, p0, Lcom/zaxxer/hikari/metrics/MetricsTracker;->pool:Lcom/zaxxer/hikari/pool/BaseHikariPool;

    invoke-virtual {v1}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->getConfiguration()Lcom/zaxxer/hikari/HikariConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getPoolName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IdleConnections"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/codahale/metrics/MetricRegistry;->name(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codahale/metrics/MetricRegistry;->remove(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker;->registry:Lcom/codahale/metrics/MetricRegistry;

    iget-object v1, p0, Lcom/zaxxer/hikari/metrics/MetricsTracker;->pool:Lcom/zaxxer/hikari/pool/BaseHikariPool;

    invoke-virtual {v1}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->getConfiguration()Lcom/zaxxer/hikari/HikariConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getPoolName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActiveConnections"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/codahale/metrics/MetricRegistry;->name(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codahale/metrics/MetricRegistry;->remove(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker;->registry:Lcom/codahale/metrics/MetricRegistry;

    iget-object v1, p0, Lcom/zaxxer/hikari/metrics/MetricsTracker;->pool:Lcom/zaxxer/hikari/pool/BaseHikariPool;

    invoke-virtual {v1}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->getConfiguration()Lcom/zaxxer/hikari/HikariConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getPoolName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PendingConnections"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/codahale/metrics/MetricRegistry;->name(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codahale/metrics/MetricRegistry;->remove(Ljava/lang/String;)Z

    return-void
.end method

.method public recordConnectionRequest(J)Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker$Context;
    .locals 0

    .line 1
    new-instance p1, Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker$Context;

    iget-object p2, p0, Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker;->connectionObtainTimer:Lcom/codahale/metrics/Timer;

    invoke-direct {p1, p2}, Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker$Context;-><init>(Lcom/codahale/metrics/Timer;)V

    return-object p1
.end method

.method public bridge synthetic recordConnectionRequest(J)Lcom/zaxxer/hikari/metrics/MetricsTracker$MetricsContext;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker;->recordConnectionRequest(J)Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker$Context;

    move-result-object p1

    return-object p1
.end method

.method public recordConnectionUsage(Lcom/zaxxer/hikari/pool/PoolBagEntry;)V
    .locals 3

    iget-object v0, p0, Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker;->connectionUsage:Lcom/codahale/metrics/Histogram;

    iget-wide v1, p1, Lcom/zaxxer/hikari/pool/PoolBagEntry;->lastOpenTime:J

    invoke-static {v1, v2}, Lcom/zaxxer/hikari/util/UtilityElf;->elapsedTimeMs(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/codahale/metrics/Histogram;->update(J)V

    return-void
.end method
