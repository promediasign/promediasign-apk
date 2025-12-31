.class Lorg/apache/mina/core/service/AbstractIoConnector$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/core/future/IoFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/mina/core/service/AbstractIoConnector;->finishSessionInitialization0(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/mina/core/future/IoFutureListener<",
        "Lorg/apache/mina/core/future/ConnectFuture;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/service/AbstractIoConnector;

.field final synthetic val$session:Lorg/apache/mina/core/session/IoSession;


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/service/AbstractIoConnector;Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/core/service/AbstractIoConnector$2;->this$0:Lorg/apache/mina/core/service/AbstractIoConnector;

    iput-object p2, p0, Lorg/apache/mina/core/service/AbstractIoConnector$2;->val$session:Lorg/apache/mina/core/session/IoSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lorg/apache/mina/core/future/ConnectFuture;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lorg/apache/mina/core/future/ConnectFuture;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/mina/core/service/AbstractIoConnector$2;->val$session:Lorg/apache/mina/core/session/IoSession;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    :cond_0
    return-void
.end method

.method public bridge synthetic operationComplete(Lorg/apache/mina/core/future/IoFuture;)V
    .locals 0

    .line 2
    check-cast p1, Lorg/apache/mina/core/future/ConnectFuture;

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/service/AbstractIoConnector$2;->operationComplete(Lorg/apache/mina/core/future/ConnectFuture;)V

    return-void
.end method
