.class public Lorg/apache/mina/proxy/event/IoSessionEventQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

.field private sessionEventsQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/mina/proxy/event/IoSessionEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->sessionEventsQueue:Ljava/util/Queue;

    iput-object p1, p0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    return-void
.end method

.method private discardSessionQueueEvents()V
    .locals 3

    iget-object v0, p0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->sessionEventsQueue:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->sessionEventsQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    sget-object v1, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->logger:Lorg/slf4j/Logger;

    const-string v2, "Event queue CLEARED"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private enqueueSessionEvent(Lorg/apache/mina/proxy/event/IoSessionEvent;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->sessionEventsQueue:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->logger:Lorg/slf4j/Logger;

    const-string v2, "Enqueuing event: {}"

    invoke-interface {v1, v2, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->sessionEventsQueue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public enqueueEventIfNecessary(Lorg/apache/mina/proxy/event/IoSessionEvent;)V
    .locals 2

    sget-object v0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->logger:Lorg/slf4j/Logger;

    const-string v1, "??? >> Enqueue {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getRequest()Lorg/apache/mina/proxy/handlers/ProxyRequest;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/mina/proxy/event/IoSessionEvent;->deliverEvent()V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getHandler()Lorg/apache/mina/proxy/ProxyLogicHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/proxy/ProxyLogicHandler;->isHandshakeComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    invoke-virtual {p1}, Lorg/apache/mina/proxy/event/IoSessionEvent;->deliverEvent()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/mina/proxy/event/IoSessionEvent;->getType()Lorg/apache/mina/proxy/event/IoSessionEventType;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/proxy/event/IoSessionEventType;->CLOSED:Lorg/apache/mina/proxy/event/IoSessionEventType;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->isAuthenticationFailed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getConnector()Lorg/apache/mina/proxy/ProxyConnector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/proxy/ProxyConnector;->cancelConnectFuture()V

    invoke-direct {p0}, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->discardSessionQueueEvents()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->discardSessionQueueEvents()V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/apache/mina/proxy/event/IoSessionEvent;->getType()Lorg/apache/mina/proxy/event/IoSessionEventType;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/proxy/event/IoSessionEventType;->OPENED:Lorg/apache/mina/proxy/event/IoSessionEventType;

    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->enqueueSessionEvent(Lorg/apache/mina/proxy/event/IoSessionEvent;)V

    if-ne v0, v1, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public flushPendingSessionEvents()V
    .locals 4

    iget-object v0, p0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->sessionEventsQueue:Ljava/util/Queue;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->sessionEventsQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/proxy/event/IoSessionEvent;

    if-eqz v1, :cond_0

    sget-object v2, Lorg/apache/mina/proxy/event/IoSessionEventQueue;->logger:Lorg/slf4j/Logger;

    const-string v3, " Flushing buffered event: {}"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/apache/mina/proxy/event/IoSessionEvent;->deliverEvent()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
