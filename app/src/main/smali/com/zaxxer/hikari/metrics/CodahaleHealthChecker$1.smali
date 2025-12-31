.class final Lcom/zaxxer/hikari/metrics/CodahaleHealthChecker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/codahale/metrics/MetricFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zaxxer/hikari/metrics/CodahaleHealthChecker;->registerHealthChecks(Lcom/zaxxer/hikari/pool/BaseHikariPool;Lcom/codahale/metrics/health/HealthCheckRegistry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$hikariConfig:Lcom/zaxxer/hikari/HikariConfig;


# direct methods
.method public constructor <init>(Lcom/zaxxer/hikari/HikariConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/zaxxer/hikari/metrics/CodahaleHealthChecker$1;->val$hikariConfig:Lcom/zaxxer/hikari/HikariConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
