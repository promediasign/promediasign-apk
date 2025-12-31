.class public Lorg/apache/mina/handler/demux/DemuxingIoHandler;
.super Lorg/apache/mina/core/service/IoHandlerAdapter;
.source "SourceFile"


# instance fields
.field private final exceptionHandlerCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/mina/handler/demux/ExceptionHandler<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final exceptionHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/mina/handler/demux/ExceptionHandler<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final receivedMessageHandlerCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/mina/handler/demux/MessageHandler<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final receivedMessageHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/mina/handler/demux/MessageHandler<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final sentMessageHandlerCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/mina/handler/demux/MessageHandler<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final sentMessageHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/mina/handler/demux/MessageHandler<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/mina/core/service/IoHandlerAdapter;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->receivedMessageHandlerCache:Ljava/util/Map;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->receivedMessageHandlers:Ljava/util/Map;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->sentMessageHandlerCache:Ljava/util/Map;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->sentMessageHandlers:Ljava/util/Map;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->exceptionHandlerCache:Ljava/util/Map;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->exceptionHandlers:Ljava/util/Map;

    return-void
.end method

.method private findExceptionHandler(Ljava/lang/Class;Ljava/util/Set;)Lorg/apache/mina/handler/demux/ExceptionHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/Set<",
            "Ljava/lang/Class;",
            ">;)",
            "Lorg/apache/mina/handler/demux/ExceptionHandler<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->exceptionHandlers:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->exceptionHandlerCache:Ljava/util/Map;

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->findHandler(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/handler/demux/ExceptionHandler;

    return-object p1
.end method

.method private findHandler(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "Ljava/util/Map;",
            "Ljava/lang/Class;",
            "Ljava/util/Set<",
            "Ljava/lang/Class;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    invoke-interface {p4, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    if-nez p4, :cond_2

    new-instance p4, Lorg/apache/mina/util/IdentityHashSet;

    invoke-direct {p4}, Lorg/apache/mina/util/IdentityHashSet;-><init>()V

    :cond_2
    invoke-interface {p4, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v1, v2, v4

    invoke-direct {p0, p1, p2, v1, p4}, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->findHandler(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-nez v1, :cond_5

    invoke-virtual {p3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p4

    if-eqz p4, :cond_5

    invoke-direct {p0, p1, p2, p4, v0}, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->findHandler(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;

    move-result-object v1

    :cond_5
    if-eqz v1, :cond_6

    invoke-interface {p2, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v1
.end method

.method private findReceivedMessageHandler(Ljava/lang/Class;Ljava/util/Set;)Lorg/apache/mina/handler/demux/MessageHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/Set<",
            "Ljava/lang/Class;",
            ">;)",
            "Lorg/apache/mina/handler/demux/MessageHandler<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->receivedMessageHandlers:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->receivedMessageHandlerCache:Ljava/util/Map;

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->findHandler(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/handler/demux/MessageHandler;

    return-object p1
.end method

.method private findSentMessageHandler(Ljava/lang/Class;Ljava/util/Set;)Lorg/apache/mina/handler/demux/MessageHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/Set<",
            "Ljava/lang/Class;",
            ">;)",
            "Lorg/apache/mina/handler/demux/MessageHandler<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->sentMessageHandlers:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->sentMessageHandlerCache:Ljava/util/Map;

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->findHandler(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Class;Ljava/util/Set;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/handler/demux/MessageHandler;

    return-object p1
.end method


# virtual methods
.method public addExceptionHandler(Ljava/lang/Class;Lorg/apache/mina/handler/demux/ExceptionHandler;)Lorg/apache/mina/handler/demux/ExceptionHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lorg/apache/mina/handler/demux/ExceptionHandler<",
            "-TE;>;)",
            "Lorg/apache/mina/handler/demux/ExceptionHandler<",
            "-TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->exceptionHandlerCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->exceptionHandlers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/handler/demux/ExceptionHandler;

    return-object p1
.end method

.method public addReceivedMessageHandler(Ljava/lang/Class;Lorg/apache/mina/handler/demux/MessageHandler;)Lorg/apache/mina/handler/demux/MessageHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lorg/apache/mina/handler/demux/MessageHandler<",
            "-TE;>;)",
            "Lorg/apache/mina/handler/demux/MessageHandler<",
            "-TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->receivedMessageHandlerCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->receivedMessageHandlers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/handler/demux/MessageHandler;

    return-object p1
.end method

.method public addSentMessageHandler(Ljava/lang/Class;Lorg/apache/mina/handler/demux/MessageHandler;)Lorg/apache/mina/handler/demux/MessageHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lorg/apache/mina/handler/demux/MessageHandler<",
            "-TE;>;)",
            "Lorg/apache/mina/handler/demux/MessageHandler<",
            "-TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->sentMessageHandlerCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->sentMessageHandlers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/handler/demux/MessageHandler;

    return-object p1
.end method

.method public exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->findExceptionHandler(Ljava/lang/Class;)Lorg/apache/mina/handler/demux/ExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lorg/apache/mina/handler/demux/ExceptionHandler;->exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    new-instance p1, Lorg/apache/mina/core/session/UnknownMessageTypeException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "No handler found for exception type: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/mina/core/session/UnknownMessageTypeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public findExceptionHandler(Ljava/lang/Class;)Lorg/apache/mina/handler/demux/ExceptionHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lorg/apache/mina/handler/demux/ExceptionHandler<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->findExceptionHandler(Ljava/lang/Class;Ljava/util/Set;)Lorg/apache/mina/handler/demux/ExceptionHandler;

    move-result-object p1

    return-object p1
.end method

.method public findReceivedMessageHandler(Ljava/lang/Class;)Lorg/apache/mina/handler/demux/MessageHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/mina/handler/demux/MessageHandler<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->findReceivedMessageHandler(Ljava/lang/Class;Ljava/util/Set;)Lorg/apache/mina/handler/demux/MessageHandler;

    move-result-object p1

    return-object p1
.end method

.method public findSentMessageHandler(Ljava/lang/Class;)Lorg/apache/mina/handler/demux/MessageHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/mina/handler/demux/MessageHandler<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->findSentMessageHandler(Ljava/lang/Class;Ljava/util/Set;)Lorg/apache/mina/handler/demux/MessageHandler;

    move-result-object p1

    return-object p1
.end method

.method public getExceptionHandlerMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/mina/handler/demux/ExceptionHandler<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->exceptionHandlers:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMessageHandler(Ljava/lang/Class;)Lorg/apache/mina/handler/demux/MessageHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lorg/apache/mina/handler/demux/MessageHandler<",
            "-TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->receivedMessageHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/handler/demux/MessageHandler;

    return-object p1
.end method

.method public getReceivedMessageHandlerMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/mina/handler/demux/MessageHandler<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->receivedMessageHandlers:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSentMessageHandlerMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/mina/handler/demux/MessageHandler<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->sentMessageHandlers:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->findReceivedMessageHandler(Ljava/lang/Class;)Lorg/apache/mina/handler/demux/MessageHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lorg/apache/mina/handler/demux/MessageHandler;->handleMessage(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Lorg/apache/mina/core/session/UnknownMessageTypeException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "No message handler found for message type: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/mina/core/session/UnknownMessageTypeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public messageSent(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->findSentMessageHandler(Ljava/lang/Class;)Lorg/apache/mina/handler/demux/MessageHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lorg/apache/mina/handler/demux/MessageHandler;->handleMessage(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Lorg/apache/mina/core/session/UnknownMessageTypeException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "No handler found for message type: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/mina/core/session/UnknownMessageTypeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeExceptionHandler(Ljava/lang/Class;)Lorg/apache/mina/handler/demux/ExceptionHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lorg/apache/mina/handler/demux/ExceptionHandler<",
            "-TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->exceptionHandlerCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->exceptionHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/handler/demux/ExceptionHandler;

    return-object p1
.end method

.method public removeReceivedMessageHandler(Ljava/lang/Class;)Lorg/apache/mina/handler/demux/MessageHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lorg/apache/mina/handler/demux/MessageHandler<",
            "-TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->receivedMessageHandlerCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->receivedMessageHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/handler/demux/MessageHandler;

    return-object p1
.end method

.method public removeSentMessageHandler(Ljava/lang/Class;)Lorg/apache/mina/handler/demux/MessageHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lorg/apache/mina/handler/demux/MessageHandler<",
            "-TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->sentMessageHandlerCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/apache/mina/handler/demux/DemuxingIoHandler;->sentMessageHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/handler/demux/MessageHandler;

    return-object p1
.end method
