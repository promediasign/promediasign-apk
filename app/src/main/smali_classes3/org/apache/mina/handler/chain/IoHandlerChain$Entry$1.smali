.class Lorg/apache/mina/handler/chain/IoHandlerChain$Entry$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;-><init>(Lorg/apache/mina/handler/chain/IoHandlerChain;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

.field final synthetic val$this$0:Lorg/apache/mina/handler/chain/IoHandlerChain;


# direct methods
.method public constructor <init>(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/handler/chain/IoHandlerChain;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry$1;->this$1:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    iput-object p2, p0, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry$1;->val$this$0:Lorg/apache/mina/handler/chain/IoHandlerChain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry$1;->this$1:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    invoke-static {v0}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$100(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry$1;->this$1:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    iget-object v1, v1, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->this$0:Lorg/apache/mina/handler/chain/IoHandlerChain;

    invoke-static {v1, v0, p1, p2}, Lorg/apache/mina/handler/chain/IoHandlerChain;->access$500(Lorg/apache/mina/handler/chain/IoHandlerChain;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    return-void
.end method
