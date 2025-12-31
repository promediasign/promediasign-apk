.class public Lorg/apache/mina/handler/chain/ChainedIoHandler;
.super Lorg/apache/mina/core/service/IoHandlerAdapter;
.source "SourceFile"


# instance fields
.field private final chain:Lorg/apache/mina/handler/chain/IoHandlerChain;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/mina/core/service/IoHandlerAdapter;-><init>()V

    new-instance v0, Lorg/apache/mina/handler/chain/IoHandlerChain;

    invoke-direct {v0}, Lorg/apache/mina/handler/chain/IoHandlerChain;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/handler/chain/ChainedIoHandler;->chain:Lorg/apache/mina/handler/chain/IoHandlerChain;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/handler/chain/IoHandlerChain;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/mina/core/service/IoHandlerAdapter;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/mina/handler/chain/ChainedIoHandler;->chain:Lorg/apache/mina/handler/chain/IoHandlerChain;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "chain"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getChain()Lorg/apache/mina/handler/chain/IoHandlerChain;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/handler/chain/ChainedIoHandler;->chain:Lorg/apache/mina/handler/chain/IoHandlerChain;

    return-object v0
.end method

.method public messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/handler/chain/ChainedIoHandler;->chain:Lorg/apache/mina/handler/chain/IoHandlerChain;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/mina/handler/chain/IoHandlerChain;->execute(Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    return-void
.end method
