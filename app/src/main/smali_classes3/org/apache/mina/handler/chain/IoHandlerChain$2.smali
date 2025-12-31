.class Lorg/apache/mina/handler/chain/IoHandlerChain$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/handler/chain/IoHandlerCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/mina/handler/chain/IoHandlerChain;->createTailCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/handler/chain/IoHandlerChain;


# direct methods
.method public constructor <init>(Lorg/apache/mina/handler/chain/IoHandlerChain;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/handler/chain/IoHandlerChain$2;->this$0:Lorg/apache/mina/handler/chain/IoHandlerChain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Lorg/apache/mina/handler/chain/IoHandlerChain$2;->this$0:Lorg/apache/mina/handler/chain/IoHandlerChain;

    invoke-static {p1}, Lorg/apache/mina/handler/chain/IoHandlerChain;->access$200(Lorg/apache/mina/handler/chain/IoHandlerChain;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;->execute(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
