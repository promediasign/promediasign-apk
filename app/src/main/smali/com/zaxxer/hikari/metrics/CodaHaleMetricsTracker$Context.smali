.class public final Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker$Context;
.super Lcom/zaxxer/hikari/metrics/MetricsTracker$MetricsContext;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Context"
.end annotation


# instance fields
.field final innerContext:Lcom/codahale/metrics/Timer$Context;


# direct methods
.method public constructor <init>(Lcom/codahale/metrics/Timer;)V
    .locals 0

    invoke-direct {p0}, Lcom/zaxxer/hikari/metrics/MetricsTracker$MetricsContext;-><init>()V

    invoke-virtual {p1}, Lcom/codahale/metrics/Timer;->time()Lcom/codahale/metrics/Timer$Context;

    move-result-object p1

    iput-object p1, p0, Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker$Context;->innerContext:Lcom/codahale/metrics/Timer$Context;

    return-void
.end method


# virtual methods
.method public setConnectionLastOpen(Lcom/zaxxer/hikari/pool/PoolBagEntry;J)V
    .locals 0

    iput-wide p2, p1, Lcom/zaxxer/hikari/pool/PoolBagEntry;->lastOpenTime:J

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker$Context;->innerContext:Lcom/codahale/metrics/Timer$Context;

    invoke-virtual {v0}, Lcom/codahale/metrics/Timer$Context;->stop()J

    return-void
.end method
