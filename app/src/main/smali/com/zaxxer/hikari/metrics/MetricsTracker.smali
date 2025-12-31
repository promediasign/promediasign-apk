.class public Lcom/zaxxer/hikari/metrics/MetricsTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zaxxer/hikari/metrics/MetricsTracker$MetricsContext;
    }
.end annotation


# static fields
.field public static final NO_CONTEXT:Lcom/zaxxer/hikari/metrics/MetricsTracker$MetricsContext;


# instance fields
.field protected final pool:Lcom/zaxxer/hikari/pool/BaseHikariPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zaxxer/hikari/metrics/MetricsTracker$MetricsContext;

    invoke-direct {v0}, Lcom/zaxxer/hikari/metrics/MetricsTracker$MetricsContext;-><init>()V

    sput-object v0, Lcom/zaxxer/hikari/metrics/MetricsTracker;->NO_CONTEXT:Lcom/zaxxer/hikari/metrics/MetricsTracker$MetricsContext;

    return-void
.end method

.method public constructor <init>(Lcom/zaxxer/hikari/pool/BaseHikariPool;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zaxxer/hikari/metrics/MetricsTracker;->pool:Lcom/zaxxer/hikari/pool/BaseHikariPool;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public recordConnectionRequest(J)Lcom/zaxxer/hikari/metrics/MetricsTracker$MetricsContext;
    .locals 0

    sget-object p1, Lcom/zaxxer/hikari/metrics/MetricsTracker;->NO_CONTEXT:Lcom/zaxxer/hikari/metrics/MetricsTracker$MetricsContext;

    return-object p1
.end method

.method public recordConnectionUsage(Lcom/zaxxer/hikari/pool/PoolBagEntry;)V
    .locals 0

    return-void
.end method
