.class Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker$1;
.super Lcom/codahale/metrics/CachedGauge;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker;-><init>(Lcom/zaxxer/hikari/pool/BaseHikariPool;Lcom/codahale/metrics/MetricRegistry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codahale/metrics/CachedGauge<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker;

.field final synthetic val$pool:Lcom/zaxxer/hikari/pool/BaseHikariPool;


# direct methods
.method public constructor <init>(Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker;JLjava/util/concurrent/TimeUnit;Lcom/zaxxer/hikari/pool/BaseHikariPool;)V
    .locals 0

    iput-object p1, p0, Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker$1;->this$0:Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker;

    iput-object p5, p0, Lcom/zaxxer/hikari/metrics/CodaHaleMetricsTracker$1;->val$pool:Lcom/zaxxer/hikari/pool/BaseHikariPool;

    invoke-direct {p0, p2, p3, p4}, Lcom/codahale/metrics/CachedGauge;-><init>(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method
