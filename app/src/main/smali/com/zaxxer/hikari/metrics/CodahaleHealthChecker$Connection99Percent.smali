.class Lcom/zaxxer/hikari/metrics/CodahaleHealthChecker$Connection99Percent;
.super Lcom/codahale/metrics/health/HealthCheck;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zaxxer/hikari/metrics/CodahaleHealthChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Connection99Percent"
.end annotation


# instance fields
.field private final expected99thPercentile:J

.field private final waitTimer:Lcom/codahale/metrics/Timer;


# direct methods
.method public constructor <init>(Lcom/codahale/metrics/Timer;J)V
    .locals 0

    invoke-direct {p0}, Lcom/codahale/metrics/health/HealthCheck;-><init>()V

    iput-object p1, p0, Lcom/zaxxer/hikari/metrics/CodahaleHealthChecker$Connection99Percent;->waitTimer:Lcom/codahale/metrics/Timer;

    iput-wide p2, p0, Lcom/zaxxer/hikari/metrics/CodahaleHealthChecker$Connection99Percent;->expected99thPercentile:J

    return-void
.end method
