.class Lcom/zaxxer/hikari/metrics/CodahaleHealthChecker$ConnectivityHealthCheck;
.super Lcom/codahale/metrics/health/HealthCheck;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zaxxer/hikari/metrics/CodahaleHealthChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectivityHealthCheck"
.end annotation


# instance fields
.field private final checkTimeoutMs:J

.field private final pool:Lcom/zaxxer/hikari/pool/BaseHikariPool;


# direct methods
.method public constructor <init>(Lcom/zaxxer/hikari/pool/BaseHikariPool;J)V
    .locals 2

    invoke-direct {p0}, Lcom/codahale/metrics/health/HealthCheck;-><init>()V

    iput-object p1, p0, Lcom/zaxxer/hikari/metrics/CodahaleHealthChecker$ConnectivityHealthCheck;->pool:Lcom/zaxxer/hikari/pool/BaseHikariPool;

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long p1, p2, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p2, 0xa

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    :goto_0
    iput-wide p2, p0, Lcom/zaxxer/hikari/metrics/CodahaleHealthChecker$ConnectivityHealthCheck;->checkTimeoutMs:J

    return-void
.end method
