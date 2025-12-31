.class public final Lcom/zaxxer/hikari/pool/PoolBagEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zaxxer/hikari/util/IConcurrentBagEntry;


# instance fields
.field public volatile aborted:Z

.field public connection:Ljava/sql/Connection;

.field private volatile endOfLife:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public volatile evicted:Z

.field public lastAccess:J

.field public lastOpenTime:J

.field public final state:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Ljava/sql/Connection;Lcom/zaxxer/hikari/pool/BaseHikariPool;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/zaxxer/hikari/pool/PoolBagEntry;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/zaxxer/hikari/pool/PoolBagEntry;->connection:Ljava/sql/Connection;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zaxxer/hikari/pool/PoolBagEntry;->lastAccess:J

    iget-object p1, p2, Lcom/zaxxer/hikari/pool/BaseHikariPool;->configuration:Lcom/zaxxer/hikari/HikariConfig;

    invoke-virtual {p1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getMaxLifetime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    iget-object p1, p2, Lcom/zaxxer/hikari/pool/BaseHikariPool;->houseKeepingExecutorService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lcom/zaxxer/hikari/pool/PoolBagEntry$1;

    invoke-direct {v2, p0, p2}, Lcom/zaxxer/hikari/pool/PoolBagEntry$1;-><init>(Lcom/zaxxer/hikari/pool/PoolBagEntry;Lcom/zaxxer/hikari/pool/BaseHikariPool;)V

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v0, v1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/zaxxer/hikari/pool/PoolBagEntry;->endOfLife:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method private stateToString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/PoolBagEntry;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_3

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v0, "Invalid"

    return-object v0

    :cond_0
    const-string v0, "IN_USE"

    return-object v0

    :cond_1
    const-string v0, "NOT_IN_USE"

    return-object v0

    :cond_2
    const-string v0, "REMOVED"

    return-object v0

    :cond_3
    const-string v0, "RESERVED"

    return-object v0
.end method


# virtual methods
.method public cancelMaxLifeTermination()V
    .locals 2

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/PoolBagEntry;->endOfLife:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/PoolBagEntry;->endOfLife:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public state()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/PoolBagEntry;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection......"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zaxxer/hikari/pool/PoolBagEntry;->connection:Ljava/sql/Connection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  Last  access.."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/zaxxer/hikari/pool/PoolBagEntry;->lastAccess:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n  Last open....."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/zaxxer/hikari/pool/PoolBagEntry;->lastOpenTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n  State........."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/zaxxer/hikari/pool/PoolBagEntry;->stateToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
