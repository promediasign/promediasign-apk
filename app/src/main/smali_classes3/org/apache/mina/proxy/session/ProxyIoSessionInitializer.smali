.class public Lorg/apache/mina/proxy/session/ProxyIoSessionInitializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/core/session/IoSessionInitializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/mina/core/future/ConnectFuture;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/mina/core/session/IoSessionInitializer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

.field private final wrappedSessionInitializer:Lorg/apache/mina/core/session/IoSessionInitializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/mina/core/session/IoSessionInitializer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/session/IoSessionInitializer;Lorg/apache/mina/proxy/session/ProxyIoSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSessionInitializer<",
            "TT;>;",
            "Lorg/apache/mina/proxy/session/ProxyIoSession;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/proxy/session/ProxyIoSessionInitializer;->wrappedSessionInitializer:Lorg/apache/mina/core/session/IoSessionInitializer;

    iput-object p2, p0, Lorg/apache/mina/proxy/session/ProxyIoSessionInitializer;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    return-void
.end method


# virtual methods
.method public getProxySession()Lorg/apache/mina/proxy/session/ProxyIoSession;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/proxy/session/ProxyIoSessionInitializer;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    return-object v0
.end method

.method public initializeSession(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/ConnectFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSession;",
            "TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/mina/proxy/session/ProxyIoSessionInitializer;->wrappedSessionInitializer:Lorg/apache/mina/core/session/IoSessionInitializer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lorg/apache/mina/core/session/IoSessionInitializer;->initializeSession(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;)V

    :cond_0
    iget-object p2, p0, Lorg/apache/mina/proxy/session/ProxyIoSessionInitializer;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->setSession(Lorg/apache/mina/core/session/IoSession;)V

    sget-object p2, Lorg/apache/mina/proxy/session/ProxyIoSession;->PROXY_SESSION:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/mina/proxy/session/ProxyIoSessionInitializer;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-interface {p1, p2, v0}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public bridge synthetic initializeSession(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;)V
    .locals 0

    .line 2
    check-cast p2, Lorg/apache/mina/core/future/ConnectFuture;

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/proxy/session/ProxyIoSessionInitializer;->initializeSession(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/ConnectFuture;)V

    return-void
.end method
