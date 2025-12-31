.class Lcom/zaxxer/hikari/pool/HikariPool$HouseKeeper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zaxxer/hikari/pool/HikariPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HouseKeeper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zaxxer/hikari/pool/HikariPool;


# direct methods
.method private constructor <init>(Lcom/zaxxer/hikari/pool/HikariPool;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zaxxer/hikari/pool/HikariPool$HouseKeeper;->this$0:Lcom/zaxxer/hikari/pool/HikariPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/zaxxer/hikari/pool/HikariPool;Lcom/zaxxer/hikari/pool/HikariPool$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/zaxxer/hikari/pool/HikariPool$HouseKeeper;-><init>(Lcom/zaxxer/hikari/pool/HikariPool;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/HikariPool$HouseKeeper;->this$0:Lcom/zaxxer/hikari/pool/HikariPool;

    const-string v1, "Before cleanup "

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->logPoolState([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/HikariPool$HouseKeeper;->this$0:Lcom/zaxxer/hikari/pool/HikariPool;

    iget-object v1, v0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->configuration:Lcom/zaxxer/hikari/HikariConfig;

    invoke-virtual {v1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getConnectionTimeout()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->connectionTimeout:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/zaxxer/hikari/pool/HikariPool$HouseKeeper;->this$0:Lcom/zaxxer/hikari/pool/HikariPool;

    iget-object v2, v2, Lcom/zaxxer/hikari/pool/BaseHikariPool;->configuration:Lcom/zaxxer/hikari/HikariConfig;

    invoke-virtual {v2}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getIdleTimeout()J

    move-result-wide v2

    iget-object v4, p0, Lcom/zaxxer/hikari/pool/HikariPool$HouseKeeper;->this$0:Lcom/zaxxer/hikari/pool/HikariPool;

    iget-object v4, v4, Lcom/zaxxer/hikari/pool/BaseHikariPool;->connectionBag:Lcom/zaxxer/hikari/util/ConcurrentBag;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/zaxxer/hikari/util/ConcurrentBag;->values(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zaxxer/hikari/pool/PoolBagEntry;

    iget-object v6, p0, Lcom/zaxxer/hikari/pool/HikariPool$HouseKeeper;->this$0:Lcom/zaxxer/hikari/pool/HikariPool;

    iget-object v6, v6, Lcom/zaxxer/hikari/pool/BaseHikariPool;->connectionBag:Lcom/zaxxer/hikari/util/ConcurrentBag;

    invoke-virtual {v6, v5}, Lcom/zaxxer/hikari/util/ConcurrentBag;->reserve(Lcom/zaxxer/hikari/util/IConcurrentBagEntry;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-boolean v6, v5, Lcom/zaxxer/hikari/pool/PoolBagEntry;->evicted:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/zaxxer/hikari/pool/HikariPool$HouseKeeper;->this$0:Lcom/zaxxer/hikari/pool/HikariPool;

    const-string v7, "(connection evicted)"

    :goto_1
    invoke-virtual {v6, v5, v7}, Lcom/zaxxer/hikari/pool/HikariPool;->closeConnection(Lcom/zaxxer/hikari/pool/PoolBagEntry;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-lez v8, :cond_2

    iget-wide v6, v5, Lcom/zaxxer/hikari/pool/PoolBagEntry;->lastAccess:J

    add-long/2addr v6, v2

    cmp-long v8, v0, v6

    if-lez v8, :cond_2

    iget-object v6, p0, Lcom/zaxxer/hikari/pool/HikariPool$HouseKeeper;->this$0:Lcom/zaxxer/hikari/pool/HikariPool;

    const-string v7, "(connection passed idleTimeout)"

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/zaxxer/hikari/pool/HikariPool$HouseKeeper;->this$0:Lcom/zaxxer/hikari/pool/HikariPool;

    iget-object v6, v6, Lcom/zaxxer/hikari/pool/BaseHikariPool;->connectionBag:Lcom/zaxxer/hikari/util/ConcurrentBag;

    invoke-virtual {v6, v5}, Lcom/zaxxer/hikari/util/ConcurrentBag;->unreserve(Lcom/zaxxer/hikari/util/IConcurrentBagEntry;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/zaxxer/hikari/pool/HikariPool$HouseKeeper;->this$0:Lcom/zaxxer/hikari/pool/HikariPool;

    const-string v1, "After cleanup "

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->logPoolState([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/HikariPool$HouseKeeper;->this$0:Lcom/zaxxer/hikari/pool/HikariPool;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->fillPool()V

    return-void
.end method
