.class Lcom/zaxxer/hikari/pool/HikariPool$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zaxxer/hikari/pool/HikariPool;->closeConnection(Lcom/zaxxer/hikari/pool/PoolBagEntry;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zaxxer/hikari/pool/HikariPool;

.field final synthetic val$closureReason:Ljava/lang/String;

.field final synthetic val$connection:Ljava/sql/Connection;


# direct methods
.method public constructor <init>(Lcom/zaxxer/hikari/pool/HikariPool;Ljava/sql/Connection;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zaxxer/hikari/pool/HikariPool$1;->this$0:Lcom/zaxxer/hikari/pool/HikariPool;

    iput-object p2, p0, Lcom/zaxxer/hikari/pool/HikariPool$1;->val$connection:Ljava/sql/Connection;

    iput-object p3, p0, Lcom/zaxxer/hikari/pool/HikariPool$1;->val$closureReason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zaxxer/hikari/pool/HikariPool$1;->this$0:Lcom/zaxxer/hikari/pool/HikariPool;

    iget-object v0, v0, Lcom/zaxxer/hikari/pool/BaseHikariPool;->poolUtils:Lcom/zaxxer/hikari/pool/PoolUtilities;

    iget-object v1, p0, Lcom/zaxxer/hikari/pool/HikariPool$1;->val$connection:Ljava/sql/Connection;

    iget-object v2, p0, Lcom/zaxxer/hikari/pool/HikariPool$1;->val$closureReason:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/zaxxer/hikari/pool/PoolUtilities;->quietlyCloseConnection(Ljava/sql/Connection;Ljava/lang/String;)V

    return-void
.end method
