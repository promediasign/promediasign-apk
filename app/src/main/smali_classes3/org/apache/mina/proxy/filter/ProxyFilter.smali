.class public Lorg/apache/mina/proxy/filter/ProxyFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "SourceFile"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/mina/proxy/filter/ProxyFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    return-void
.end method

.method private getProxyHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/proxy/ProxyLogicHandler;
    .locals 1

    sget-object v0, Lorg/apache/mina/proxy/session/ProxyIoSession;->PROXY_SESSION:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {p1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getHandler()Lorg/apache/mina/proxy/ProxyLogicHandler;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/apache/mina/proxy/ProxyLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getProxyFilter()Lorg/apache/mina/proxy/filter/ProxyFilter;

    move-result-object v0

    if-ne v0, p0, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not managed by this filter."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lorg/apache/mina/proxy/session/ProxyIoSession;->PROXY_SESSION:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/proxy/session/ProxyIoSession;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->setAuthenticationFailed(Z)V

    invoke-super {p0, p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;->exceptionCaught(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V

    return-void
.end method

.method public filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/mina/proxy/filter/ProxyFilter;->writeData(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;Z)V

    return-void
.end method

.method public messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 3

    invoke-direct {p0, p2}, Lorg/apache/mina/proxy/filter/ProxyFilter;->getProxyHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/proxy/ProxyLogicHandler;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    check-cast p3, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-interface {v0}, Lorg/apache/mina/proxy/ProxyLogicHandler;->isHandshakeComplete()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    sget-object v1, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, " Data Read: {} ({})"

    invoke-interface {v1, v2, v0, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lorg/apache/mina/proxy/ProxyLogicHandler;->isHandshakeComplete()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, " Pre-handshake - passing to handler"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v1

    invoke-interface {v0, p1, p3}, Lorg/apache/mina/proxy/ProxyLogicHandler;->messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;)V

    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v2

    if-eq v2, v1, :cond_2

    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->isClosing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_2
    monitor-exit v0

    return-void

    :cond_3
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, " Passing remaining data to next filter"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 1

    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/mina/proxy/filter/ProxyHandshakeIoBuffer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    return-void
.end method

.method public onPreAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 0

    const-class p2, Lorg/apache/mina/proxy/filter/ProxyFilter;

    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->contains(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "A filter chain cannot contain more than one ProxyFilter."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onPreRemove(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 0

    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p1

    sget-object p2, Lorg/apache/mina/proxy/session/ProxyIoSession;->PROXY_SESSION:Ljava/lang/String;

    invoke-interface {p1, p2}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 3

    sget-object v0, Lorg/apache/mina/proxy/session/ProxyIoSession;->PROXY_SESSION:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getEventQueue()Lorg/apache/mina/proxy/event/IoSessionEventQueue;

    move-result-object v0

    new-instance v1, Lorg/apache/mina/proxy/event/IoSessionEvent;

    sget-object v2, Lorg/apache/mina/proxy/event/IoSessionEventType;->CLOSED:Lorg/apache/mina/proxy/event/IoSessionEventType;

    invoke-direct {v1, p1, p2, v2}, Lorg/apache/mina/proxy/event/IoSessionEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/proxy/event/IoSessionEventType;)V

    invoke-virtual {v0, v1}, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->enqueueEventIfNecessary(Lorg/apache/mina/proxy/event/IoSessionEvent;)V

    return-void
.end method

.method public sessionCreated(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 4

    sget-object v0, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Session created: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    sget-object v1, Lorg/apache/mina/proxy/session/ProxyIoSession;->PROXY_SESSION:Ljava/lang/String;

    invoke-interface {p2, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/proxy/session/ProxyIoSession;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  get proxyIoSession: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->setProxyFilter(Lorg/apache/mina/proxy/filter/ProxyFilter;)V

    invoke-virtual {v1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getHandler()Lorg/apache/mina/proxy/ProxyLogicHandler;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getRequest()Lorg/apache/mina/proxy/handlers/ProxyRequest;

    move-result-object v0

    instance-of v2, v0, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;

    if-eqz v2, :cond_1

    check-cast v0, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;

    invoke-virtual {v0}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getProtocolVersion()B

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    new-instance v0, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;

    invoke-direct {v0, v1}, Lorg/apache/mina/proxy/handlers/socks/Socks4LogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;

    invoke-direct {v0, v1}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;

    invoke-direct {v0, v1}, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    :goto_0
    invoke-virtual {v1, v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->setHandler(Lorg/apache/mina/proxy/ProxyLogicHandler;)V

    invoke-interface {v0, p1}, Lorg/apache/mina/proxy/ProxyLogicHandler;->doHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V

    :cond_2
    invoke-virtual {v1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getEventQueue()Lorg/apache/mina/proxy/event/IoSessionEventQueue;

    move-result-object v0

    new-instance v1, Lorg/apache/mina/proxy/event/IoSessionEvent;

    sget-object v2, Lorg/apache/mina/proxy/event/IoSessionEventType;->CREATED:Lorg/apache/mina/proxy/event/IoSessionEventType;

    invoke-direct {v1, p1, p2, v2}, Lorg/apache/mina/proxy/event/IoSessionEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/proxy/event/IoSessionEventType;)V

    invoke-virtual {v0, v1}, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->enqueueEventIfNecessary(Lorg/apache/mina/proxy/event/IoSessionEvent;)V

    return-void
.end method

.method public sessionIdle(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 2

    sget-object v0, Lorg/apache/mina/proxy/session/ProxyIoSession;->PROXY_SESSION:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getEventQueue()Lorg/apache/mina/proxy/event/IoSessionEventQueue;

    move-result-object v0

    new-instance v1, Lorg/apache/mina/proxy/event/IoSessionEvent;

    invoke-direct {v1, p1, p2, p3}, Lorg/apache/mina/proxy/event/IoSessionEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/session/IdleStatus;)V

    invoke-virtual {v0, v1}, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->enqueueEventIfNecessary(Lorg/apache/mina/proxy/event/IoSessionEvent;)V

    return-void
.end method

.method public sessionOpened(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 3

    sget-object v0, Lorg/apache/mina/proxy/session/ProxyIoSession;->PROXY_SESSION:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getEventQueue()Lorg/apache/mina/proxy/event/IoSessionEventQueue;

    move-result-object v0

    new-instance v1, Lorg/apache/mina/proxy/event/IoSessionEvent;

    sget-object v2, Lorg/apache/mina/proxy/event/IoSessionEventType;->OPENED:Lorg/apache/mina/proxy/event/IoSessionEventType;

    invoke-direct {v1, p1, p2, v2}, Lorg/apache/mina/proxy/event/IoSessionEvent;-><init>(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/proxy/event/IoSessionEventType;)V

    invoke-virtual {v0, v1}, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->enqueueEventIfNecessary(Lorg/apache/mina/proxy/event/IoSessionEvent;)V

    return-void
.end method

.method public writeData(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;Z)V
    .locals 3

    invoke-direct {p0, p2}, Lorg/apache/mina/proxy/filter/ProxyFilter;->getProxyHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/proxy/ProxyLogicHandler;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Lorg/apache/mina/proxy/ProxyLogicHandler;->isHandshakeComplete()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    if-eqz p4, :cond_1

    sget-object p4, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "   handshake data: {}"

    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p4, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->isConnected()Z

    move-result p2

    if-nez p2, :cond_2

    sget-object p1, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string p2, " Write request on closed session. Request ignored."

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object p2, Lorg/apache/mina/proxy/filter/ProxyFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string p4, " Handshaking is not complete yet. Buffering write request."

    invoke-interface {p2, p4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-interface {v0, p1, p3}, Lorg/apache/mina/proxy/ProxyLogicHandler;->enqueueWriteRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
