.class Lcom/zaxxer/hikari/pool/BaseHikariPool$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zaxxer/hikari/pool/BaseHikariPool;->addBagItem()Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zaxxer/hikari/pool/BaseHikariPool;


# direct methods
.method public constructor <init>(Lcom/zaxxer/hikari/pool/BaseHikariPool;)V
    .locals 0

    iput-object p1, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool$1;->this$0:Lcom/zaxxer/hikari/pool/BaseHikariPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool$1;->this$0:Lcom/zaxxer/hikari/pool/BaseHikariPool;

    iget-object v0, v0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->configuration:Lcom/zaxxer/hikari/HikariConfig;

    invoke-virtual {v0}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getMinimumIdle()I

    move-result v0

    iget-object v1, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool$1;->this$0:Lcom/zaxxer/hikari/pool/BaseHikariPool;

    iget-object v1, v1, Lcom/zaxxer/hikari/pool/BaseHikariPool;->configuration:Lcom/zaxxer/hikari/HikariConfig;

    invoke-virtual {v1}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getMaximumPoolSize()I

    move-result v1

    const-wide/16 v2, 0xc8

    :goto_0
    iget-object v4, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool$1;->this$0:Lcom/zaxxer/hikari/pool/BaseHikariPool;

    iget v4, v4, Lcom/zaxxer/hikari/pool/BaseHikariPool;->poolState:I

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool$1;->this$0:Lcom/zaxxer/hikari/pool/BaseHikariPool;

    iget-object v4, v4, Lcom/zaxxer/hikari/pool/BaseHikariPool;->totalConnections:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-ge v4, v1, :cond_0

    iget-object v4, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool$1;->this$0:Lcom/zaxxer/hikari/pool/BaseHikariPool;

    invoke-virtual {v4}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->getIdleConnections()I

    move-result v4

    if-gt v4, v0, :cond_0

    iget-object v4, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool$1;->this$0:Lcom/zaxxer/hikari/pool/BaseHikariPool;

    invoke-virtual {v4}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->addConnection()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2, v3}, Lcom/zaxxer/hikari/util/UtilityElf;->quietlySleep(J)V

    iget-object v4, p0, Lcom/zaxxer/hikari/pool/BaseHikariPool$1;->this$0:Lcom/zaxxer/hikari/pool/BaseHikariPool;

    iget-wide v4, v4, Lcom/zaxxer/hikari/pool/BaseHikariPool;->connectionTimeout:J

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    long-to-double v2, v2

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    mul-double v2, v2, v6

    double-to-long v2, v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    return-void
.end method
