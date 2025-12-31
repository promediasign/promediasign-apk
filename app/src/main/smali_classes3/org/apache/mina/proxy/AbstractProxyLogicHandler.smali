.class public abstract Lorg/apache/mina/proxy/AbstractProxyLogicHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/proxy/ProxyLogicHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private handshakeComplete:Z

.field private proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

.field private writeRequestQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->writeRequestQueue:Ljava/util/Queue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->handshakeComplete:Z

    iput-object p1, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    return-void
.end method


# virtual methods
.method public closeSession(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->closeSession(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public closeSession(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 2
    const/4 v0, 0x1

    if-eqz p2, :cond_0

    sget-object v1, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1, p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {p1, v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->setAuthenticationFailed(Z)V

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {p2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    return-void
.end method

.method public declared-synchronized enqueueWriteRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->writeRequestQueue:Ljava/util/Queue;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->writeRequestQueue:Ljava/util/Queue;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->writeRequestQueue:Ljava/util/Queue;

    new-instance v1, Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;

    invoke-direct {v1, p1, p2}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized flushPendingWriteRequests()V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, " flushPendingWriteRequests()"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->writeRequestQueue:Ljava/util/Queue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->writeRequestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;

    if-eqz v0, :cond_1

    sget-object v1, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, " Flushing buffered write request: {}"

    invoke-static {v0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;->access$000(Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getProxyFilter()Lorg/apache/mina/proxy/filter/ProxyFilter;

    move-result-object v1

    invoke-static {v0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;->access$100(Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;)Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v3

    invoke-static {v0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;->access$000(Lorg/apache/mina/proxy/AbstractProxyLogicHandler$Event;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/write/WriteRequest;

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/mina/proxy/filter/ProxyFilter;->filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->writeRequestQueue:Ljava/util/Queue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public getProxyFilter()Lorg/apache/mina/proxy/filter/ProxyFilter;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getProxyFilter()Lorg/apache/mina/proxy/filter/ProxyFilter;

    move-result-object v0

    return-object v0
.end method

.method public getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    return-object v0
.end method

.method public getSession()Lorg/apache/mina/core/session/IoSession;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    return-object v0
.end method

.method public isHandshakeComplete()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->handshakeComplete:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final setHandshakeComplete()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->handshakeComplete:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getConnector()Lorg/apache/mina/proxy/ProxyConnector;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/mina/proxy/ProxyConnector;->fireConnected(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/ConnectFuture;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/core/future/ConnectFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/ConnectFuture;

    sget-object v1, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "  handshake completed"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getEventQueue()Lorg/apache/mina/proxy/event/IoSessionEventQueue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->flushPendingSessionEvents()V

    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->flushPendingWriteRequests()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "Unable to flush pending write requests"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public writeData(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/future/WriteFuture;
    .locals 4

    new-instance v0, Lorg/apache/mina/proxy/filter/ProxyHandshakeIoBuffer;

    invoke-direct {v0, p2}, Lorg/apache/mina/proxy/filter/ProxyHandshakeIoBuffer;-><init>(Lorg/apache/mina/core/buffer/IoBuffer;)V

    sget-object p2, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "   session write: {}"

    invoke-interface {p2, v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p2, Lorg/apache/mina/core/future/DefaultWriteFuture;

    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v1

    invoke-direct {p2, v1}, Lorg/apache/mina/core/future/DefaultWriteFuture;-><init>(Lorg/apache/mina/core/session/IoSession;)V

    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getProxyFilter()Lorg/apache/mina/proxy/filter/ProxyFilter;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    new-instance v3, Lorg/apache/mina/core/write/DefaultWriteRequest;

    invoke-direct {v3, v0, p2}, Lorg/apache/mina/core/write/DefaultWriteRequest;-><init>(Ljava/lang/Object;Lorg/apache/mina/core/future/WriteFuture;)V

    const/4 v0, 0x1

    invoke-virtual {v1, p1, v2, v3, v0}, Lorg/apache/mina/proxy/filter/ProxyFilter;->writeData(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;Z)V

    return-object p2
.end method
