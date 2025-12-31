.class Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/core/future/IoFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler$1;->initializeSession(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/ConnectFuture;)V
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
.field final synthetic this$1:Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler$1;


# direct methods
.method public constructor <init>(Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler$1;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler$1$1;->this$1:Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lorg/apache/mina/core/future/ConnectFuture;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler$1$1;->this$1:Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler$1;

    iget-object p1, p1, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler$1;->val$proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->setReconnectionNeeded(Z)V

    iget-object p1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler$1$1;->this$1:Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler$1;

    iget-object v0, p1, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler$1;->this$0:Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;

    iget-object v1, p1, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler$1;->val$nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    iget-object p1, p1, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler$1;->val$request:Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;

    invoke-static {v0, v1, p1}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->access$100(Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V

    return-void
.end method

.method public bridge synthetic operationComplete(Lorg/apache/mina/core/future/IoFuture;)V
    .locals 0

    .line 2
    check-cast p1, Lorg/apache/mina/core/future/ConnectFuture;

    invoke-virtual {p0, p1}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler$1$1;->operationComplete(Lorg/apache/mina/core/future/ConnectFuture;)V

    return-void
.end method
