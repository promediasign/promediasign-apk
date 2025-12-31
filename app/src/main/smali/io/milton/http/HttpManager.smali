.class public Lio/milton/http/HttpManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/milton/http/HttpManager$RequestInfo;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;

.field private static final mapOfRequestsByThread:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "Lio/milton/http/HttpManager$RequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final tlRequest:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lio/milton/http/Request;",
            ">;"
        }
    .end annotation
.end field

.field private static final tlResponse:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lio/milton/http/Response;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final entityTransport:Lio/milton/http/entity/EntityTransport;

.field private final eventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final eventManager:Lio/milton/event/EventManager;

.field private final filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/milton/http/Filter;",
            ">;"
        }
    .end annotation
.end field

.field private final handlers:Lio/milton/http/ProtocolHandlers;

.field private methodHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/milton/http/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final resourceFactory:Lio/milton/http/ResourceFactory;

.field private final responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

.field private final shutdownHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/HttpManager;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/HttpManager;->log:Lorg/slf4j/Logger;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lio/milton/http/HttpManager;->tlRequest:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lio/milton/http/HttpManager;->tlResponse:Ljava/lang/ThreadLocal;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/milton/http/HttpManager;->mapOfRequestsByThread:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lio/milton/http/ResourceFactory;Lio/milton/http/webdav/WebDavResponseHandler;Lio/milton/http/ProtocolHandlers;Lio/milton/http/entity/EntityTransport;Ljava/util/List;Lio/milton/event/EventManager;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/http/ResourceFactory;",
            "Lio/milton/http/webdav/WebDavResponseHandler;",
            "Lio/milton/http/ProtocolHandlers;",
            "Lio/milton/http/entity/EntityTransport;",
            "Ljava/util/List<",
            "Lio/milton/http/Filter;",
            ">;",
            "Lio/milton/event/EventManager;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/milton/http/HttpManager;->eventListeners:Ljava/util/List;

    iput-object p2, p0, Lio/milton/http/HttpManager;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    iput-object p3, p0, Lio/milton/http/HttpManager;->handlers:Lio/milton/http/ProtocolHandlers;

    iput-object p1, p0, Lio/milton/http/HttpManager;->resourceFactory:Lio/milton/http/ResourceFactory;

    iput-object p4, p0, Lio/milton/http/HttpManager;->entityTransport:Lio/milton/http/entity/EntityTransport;

    iput-object p5, p0, Lio/milton/http/HttpManager;->filters:Ljava/util/List;

    iput-object p6, p0, Lio/milton/http/HttpManager;->eventManager:Lio/milton/event/EventManager;

    iput-object p7, p0, Lio/milton/http/HttpManager;->shutdownHandlers:Ljava/util/List;

    invoke-direct {p0}, Lio/milton/http/HttpManager;->initHandlers()V

    return-void
.end method

.method private clearThreadAffinity()V
    .locals 2

    sget-object v0, Lio/milton/http/HttpManager;->tlRequest:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    sget-object v0, Lio/milton/http/HttpManager;->tlResponse:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    :try_start_0
    sget-object v0, Lio/milton/http/HttpManager;->mapOfRequestsByThread:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sget-object v0, Lio/milton/http/HttpManager;->log:Lorg/slf4j/Logger;

    const-string v1, "Couldnt clear thread affinity request data"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static decodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lio/milton/common/Utils;->decodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private fireRequestEvent(Lio/milton/http/Request;)V
    .locals 2

    iget-object v0, p0, Lio/milton/http/HttpManager;->eventManager:Lio/milton/event/EventManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lio/milton/event/RequestEvent;

    invoke-direct {v1, p1}, Lio/milton/event/RequestEvent;-><init>(Lio/milton/http/Request;)V

    invoke-interface {v0, v1}, Lio/milton/event/EventManager;->fireEvent(Lio/milton/event/Event;)V

    return-void
.end method

.method private fireResponseEvent(Lio/milton/http/Request;Lio/milton/http/Response;J)V
    .locals 2

    iget-object v0, p0, Lio/milton/http/HttpManager;->eventManager:Lio/milton/event/EventManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lio/milton/event/ResponseEvent;

    invoke-direct {v1, p1, p2, p3, p4}, Lio/milton/event/ResponseEvent;-><init>(Lio/milton/http/Request;Lio/milton/http/Response;J)V

    invoke-interface {v0, v1}, Lio/milton/event/EventManager;->fireEvent(Lio/milton/event/Event;)V

    return-void
.end method

.method private initHandlers()V
    .locals 8

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/milton/http/HttpManager;->methodHandlers:Ljava/util/Map;

    iget-object v0, p0, Lio/milton/http/HttpManager;->handlers:Lio/milton/http/ProtocolHandlers;

    invoke-virtual {v0}, Lio/milton/http/ProtocolHandlers;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/milton/http/HttpExtension;

    invoke-interface {v1}, Lio/milton/http/HttpExtension;->getHandlers()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/milton/http/Handler;

    invoke-interface {v2}, Lio/milton/http/Handler;->getMethods()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    iget-object v7, p0, Lio/milton/http/HttpManager;->methodHandlers:Ljava/util/Map;

    invoke-interface {v7, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static request()Lio/milton/http/Request;
    .locals 1

    sget-object v0, Lio/milton/http/HttpManager;->tlRequest:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/milton/http/Request;

    return-object v0
.end method

.method public static response()Lio/milton/http/Response;
    .locals 1

    sget-object v0, Lio/milton/http/HttpManager;->tlResponse:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/milton/http/Response;

    return-object v0
.end method

.method private setThreadAffinityData(Lio/milton/http/Request;Lio/milton/http/Response;)V
    .locals 2

    sget-object v0, Lio/milton/http/HttpManager;->tlRequest:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v0, Lio/milton/http/HttpManager;->tlResponse:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :try_start_0
    new-instance p2, Lio/milton/http/HttpManager$RequestInfo;

    invoke-interface {p1}, Lio/milton/http/Request;->getMethod()Lio/milton/http/Request$Method;

    move-result-object v0

    invoke-interface {p1}, Lio/milton/http/Request;->getAbsoluteUrl()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-direct {p2, p0, v0, p1, v1}, Lio/milton/http/HttpManager$RequestInfo;-><init>(Lio/milton/http/HttpManager;Lio/milton/http/Request$Method;Ljava/lang/String;Ljava/util/Date;)V

    sget-object p1, Lio/milton/http/HttpManager;->mapOfRequestsByThread:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sget-object p1, Lio/milton/http/HttpManager;->log:Lorg/slf4j/Logger;

    const-string p2, "Couldnt set thread affinity request data"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public closeResponse(Lio/milton/http/Response;)V
    .locals 1

    iget-object v0, p0, Lio/milton/http/HttpManager;->entityTransport:Lio/milton/http/entity/EntityTransport;

    invoke-interface {v0, p1}, Lio/milton/http/entity/EntityTransport;->closeResponse(Lio/milton/http/Response;)V

    return-void
.end method

.method public getAllHandlers()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lio/milton/http/Handler;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/milton/http/HttpManager;->methodHandlers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getCustomPostHandlers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lio/milton/http/HttpManager;->handlers:Lio/milton/http/ProtocolHandlers;

    invoke-virtual {v1}, Lio/milton/http/ProtocolHandlers;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/milton/http/HttpExtension;

    invoke-interface {v2}, Lio/milton/http/HttpExtension;->getCustomPostHandlers()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lio/milton/http/HttpExtension;->getCustomPostHandlers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, LA/g;->x(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getEventManager()Lio/milton/event/EventManager;
    .locals 1

    iget-object v0, p0, Lio/milton/http/HttpManager;->eventManager:Lio/milton/event/EventManager;

    return-object v0
.end method

.method public getFilters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/milton/http/Filter;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/milton/http/HttpManager;->filters:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getMethodHandler(Lio/milton/http/Request$Method;)Lio/milton/http/Handler;
    .locals 1

    iget-object v0, p0, Lio/milton/http/HttpManager;->methodHandlers:Ljava/util/Map;

    iget-object p1, p1, Lio/milton/http/Request$Method;->code:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/milton/http/Handler;

    return-object p1
.end method

.method public getResourceFactory()Lio/milton/http/ResourceFactory;
    .locals 1

    iget-object v0, p0, Lio/milton/http/HttpManager;->resourceFactory:Lio/milton/http/ResourceFactory;

    return-object v0
.end method

.method public getResponseHandler()Lio/milton/http/http11/Http11ResponseHandler;
    .locals 1

    iget-object v0, p0, Lio/milton/http/HttpManager;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    return-object v0
.end method

.method public onGet(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/http/Request;",
            "Lio/milton/http/Response;",
            "Lio/milton/resource/Resource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lio/milton/http/HttpManager;->eventListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LA/g;->x(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onPost(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/http/Request;",
            "Lio/milton/http/Response;",
            "Lio/milton/resource/Resource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/milton/http/FileItem;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lio/milton/http/HttpManager;->eventListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LA/g;->x(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onProcessResourceFinish(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;J)V
    .locals 0

    iget-object p1, p0, Lio/milton/http/HttpManager;->eventListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LA/g;->x(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onProcessResourceStart(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V
    .locals 0

    iget-object p1, p0, Lio/milton/http/HttpManager;->eventListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LA/g;->x(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public process(Lio/milton/http/Request;Lio/milton/http/Response;)V
    .locals 9

    const-string v0, "exception thrown from event handler after response is complete"

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lio/milton/http/Request;->getHostHeader()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    sget-object v2, Lio/milton/http/HttpManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v3

    const-string v4, "//"

    const-string v5, " :: "

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lio/milton/http/Request;->getMethod()Lio/milton/http/Request$Method;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lio/milton/http/Request;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " start"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lio/milton/http/HttpManager;->setThreadAffinityData(Lio/milton/http/Request;Lio/milton/http/Response;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :try_start_1
    invoke-direct {p0, p1}, Lio/milton/http/HttpManager;->fireRequestEvent(Lio/milton/http/Request;)V
    :try_end_1
    .catch Lio/milton/http/exceptions/ConflictException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lio/milton/http/exceptions/BadRequestException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lio/milton/http/exceptions/NotAuthorizedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :catch_0
    :try_start_2
    iget-object v3, p0, Lio/milton/http/HttpManager;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-interface {v3, v2, p2, p1}, Lio/milton/http/http11/Http11ResponseHandler;->respondUnauthorised(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    goto :goto_0

    :catch_1
    iget-object v3, p0, Lio/milton/http/HttpManager;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-interface {v3, v2, p2, p1}, Lio/milton/http/http11/Http11ResponseHandler;->respondBadRequest(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    goto :goto_0

    :catch_2
    iget-object v3, p0, Lio/milton/http/HttpManager;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-interface {v3, v2, p2, p1, v2}, Lio/milton/http/http11/Http11ResponseHandler;->respondConflict(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;Ljava/lang/String;)V

    :goto_0
    new-instance v2, Lio/milton/http/FilterChain;

    invoke-direct {v2, p0}, Lio/milton/http/FilterChain;-><init>(Lio/milton/http/HttpManager;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, p1, p2}, Lio/milton/http/FilterChain;->process(Lio/milton/http/Request;Lio/milton/http/Response;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    sget-object v6, Lio/milton/http/HttpManager;->log:Lorg/slf4j/Logger;

    invoke-interface {v6}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lio/milton/http/Request;->getMethod()Lio/milton/http/Request$Method;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lio/milton/http/Request;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " finished "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms, Status:"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lio/milton/http/Response;->getStatus()Lio/milton/http/Response$Status;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Length:"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lio/milton/http/Response;->getContentLength()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    move-exception p1

    goto :goto_2

    :catch_4
    move-exception p1

    goto :goto_4

    :catch_5
    move-exception p1

    goto :goto_5

    :cond_2
    :goto_1
    invoke-direct {p0, p1, p2, v2, v3}, Lio/milton/http/HttpManager;->fireResponseEvent(Lio/milton/http/Request;Lio/milton/http/Response;J)V
    :try_end_3
    .catch Lio/milton/http/exceptions/ConflictException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lio/milton/http/exceptions/BadRequestException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lio/milton/http/exceptions/NotAuthorizedException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :goto_2
    :try_start_4
    sget-object p2, Lio/milton/http/HttpManager;->log:Lorg/slf4j/Logger;

    :goto_3
    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :goto_4
    sget-object p2, Lio/milton/http/HttpManager;->log:Lorg/slf4j/Logger;

    goto :goto_3

    :goto_5
    sget-object p2, Lio/milton/http/HttpManager;->log:Lorg/slf4j/Logger;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :goto_6
    invoke-direct {p0}, Lio/milton/http/HttpManager;->clearThreadAffinity()V

    return-void

    :goto_7
    invoke-direct {p0}, Lio/milton/http/HttpManager;->clearThreadAffinity()V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "request is null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendResponseEntity(Lio/milton/http/Response;)V
    .locals 1

    iget-object v0, p0, Lio/milton/http/HttpManager;->entityTransport:Lio/milton/http/entity/EntityTransport;

    invoke-interface {v0, p1}, Lio/milton/http/entity/EntityTransport;->sendResponseEntity(Lio/milton/http/Response;)V

    return-void
.end method
