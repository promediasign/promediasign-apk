.class Lcom/zaxxer/hikari/pool/PoolBagEntry$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zaxxer/hikari/pool/PoolBagEntry;-><init>(Ljava/sql/Connection;Lcom/zaxxer/hikari/pool/BaseHikariPool;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zaxxer/hikari/pool/PoolBagEntry;

.field final synthetic val$pool:Lcom/zaxxer/hikari/pool/BaseHikariPool;


# direct methods
.method public constructor <init>(Lcom/zaxxer/hikari/pool/PoolBagEntry;Lcom/zaxxer/hikari/pool/BaseHikariPool;)V
    .locals 0

    iput-object p1, p0, Lcom/zaxxer/hikari/pool/PoolBagEntry$1;->this$0:Lcom/zaxxer/hikari/pool/PoolBagEntry;

    iput-object p2, p0, Lcom/zaxxer/hikari/pool/PoolBagEntry$1;->val$pool:Lcom/zaxxer/hikari/pool/BaseHikariPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/PoolBagEntry$1;->val$pool:Lcom/zaxxer/hikari/pool/BaseHikariPool;

    iget-object v0, v0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->connectionBag:Lcom/zaxxer/hikari/util/ConcurrentBag;

    iget-object v1, p0, Lcom/zaxxer/hikari/pool/PoolBagEntry$1;->this$0:Lcom/zaxxer/hikari/pool/PoolBagEntry;

    invoke-virtual {v0, v1}, Lcom/zaxxer/hikari/util/ConcurrentBag;->reserve(Lcom/zaxxer/hikari/util/IConcurrentBagEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/PoolBagEntry$1;->val$pool:Lcom/zaxxer/hikari/pool/BaseHikariPool;

    iget-object v1, p0, Lcom/zaxxer/hikari/pool/PoolBagEntry$1;->this$0:Lcom/zaxxer/hikari/pool/PoolBagEntry;

    const-string v2, "(connection reached maxLifetime)"

    invoke-virtual {v0, v1, v2}, Lcom/zaxxer/hikari/pool/BaseHikariPool;->closeConnection(Lcom/zaxxer/hikari/pool/PoolBagEntry;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zaxxer/hikari/pool/PoolBagEntry$1;->this$0:Lcom/zaxxer/hikari/pool/PoolBagEntry;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/zaxxer/hikari/pool/PoolBagEntry;->evicted:Z

    :goto_0
    return-void
.end method
