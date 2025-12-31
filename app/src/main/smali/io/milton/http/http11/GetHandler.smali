.class public Lio/milton/http/http11/GetHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/ExistingEntityHandler;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final matchHelper:Lio/milton/http/http11/MatchHelper;

.field private final partialGetHelper:Lio/milton/http/http11/PartialGetHelper;

.field private final resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

.field private final responseHandler:Lio/milton/http/http11/Http11ResponseHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/http11/GetHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/http11/GetHandler;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lio/milton/http/http11/Http11ResponseHandler;Lio/milton/http/ResourceHandlerHelper;Lio/milton/http/http11/MatchHelper;Lio/milton/http/http11/PartialGetHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/http11/GetHandler;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    iput-object p2, p0, Lio/milton/http/http11/GetHandler;->resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

    iput-object p3, p0, Lio/milton/http/http11/GetHandler;->matchHelper:Lio/milton/http/http11/MatchHelper;

    iput-object p4, p0, Lio/milton/http/http11/GetHandler;->partialGetHelper:Lio/milton/http/http11/PartialGetHelper;

    return-void
.end method

.method private checkConditional(Lio/milton/resource/GetableResource;Lio/milton/http/Request;)Z
    .locals 3

    invoke-interface {p2}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p2}, Lio/milton/http/Request;->getAuthorization()Lio/milton/http/Auth;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/milton/resource/GetableResource;->getMaxAgeSeconds(Lio/milton/http/Auth;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p1, Lio/milton/http/http11/GetHandler;->log:Lorg/slf4j/Logger;

    const-string p2, "resource has null max age, so not modified response is disabled"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-direct {p0, p1, p2}, Lio/milton/http/http11/GetHandler;->checkIfModifiedSince(Lio/milton/resource/GetableResource;Lio/milton/http/Request;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    sget-object p1, Lio/milton/http/http11/GetHandler;->log:Lorg/slf4j/Logger;

    const-string p2, "is not modified since"

    :goto_0
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return v2

    :cond_2
    iget-object v0, p0, Lio/milton/http/http11/GetHandler;->matchHelper:Lio/milton/http/http11/MatchHelper;

    invoke-virtual {v0, p1, p2}, Lio/milton/http/http11/MatchHelper;->checkIfNoneMatch(Lio/milton/resource/Resource;Lio/milton/http/Request;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lio/milton/http/http11/GetHandler;->log:Lorg/slf4j/Logger;

    const-string p2, "conditional check, if-none-match returned true"

    goto :goto_0

    :cond_3
    return v1
.end method

.method private checkIfModifiedSince(Lio/milton/resource/GetableResource;Lio/milton/http/Request;)Z
    .locals 10

    sget-object v0, Lio/milton/http/http11/GetHandler;->log:Lorg/slf4j/Logger;

    const-string v1, "checkIfModifiedSince"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    invoke-interface {p2}, Lio/milton/http/Request;->getAuthorization()Lio/milton/http/Auth;

    move-result-object v1

    invoke-interface {p1, v1}, Lio/milton/resource/GetableResource;->getMaxAgeSeconds(Lio/milton/http/Auth;)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lio/milton/http/Request$Header;->CACHE_CONTROL:Lio/milton/http/Request$Header;

    invoke-interface {p2, v2}, Lio/milton/http/Request;->getRequestHeader(Lio/milton/http/Request$Header;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v4, "no-cache"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_0
    if-nez v1, :cond_1

    const-string p1, "checkIfModifiedSince: null max age"

    :goto_0
    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return v3

    :cond_1
    const-string v2, "checkIfModifiedSince with maxAge"

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    invoke-interface {p2}, Lio/milton/http/Request;->getIfModifiedHeader()Ljava/util/Date;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p1, " no modified date header"

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    add-long/2addr v6, v8

    sub-long/2addr v4, v6

    div-long/2addr v4, v8

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v8, v4, v1

    if-lez v8, :cond_3

    const-string p1, "its been longer then the max age period, so generate fresh response"

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lio/milton/resource/Resource;->getModifiedDate()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "no modified date on resource: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    :cond_4
    return v3

    :cond_5
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long p1, v6, v4

    if-ltz p1, :cond_6

    const/4 v3, 0x1

    :cond_6
    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "times as long: resource modified "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " - modified since header: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "checkModifiedSince: actual: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - request:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " (true indicates no change)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    :cond_7
    return v3
.end method

.method private sendContent(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/GetableResource;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/http/HttpManager;",
            "Lio/milton/http/Request;",
            "Lio/milton/http/Response;",
            "Lio/milton/resource/GetableResource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "normal content: "

    const-string v0, "Cant do partial GET because we don\'t have a content length from resource of type: "

    :try_start_0
    invoke-interface {p2}, Lio/milton/http/Request;->getMethod()Lio/milton/http/Request$Method;

    move-result-object v1

    sget-object v2, Lio/milton/http/Request$Method;->HEAD:Lio/milton/http/Request$Method;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lio/milton/http/http11/GetHandler;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-interface {p1, p4, p3, p2}, Lio/milton/http/http11/Http11ResponseHandler;->respondHead(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    goto/16 :goto_3

    :catch_2
    move-exception p1

    goto/16 :goto_4

    :cond_0
    iget-object v1, p0, Lio/milton/http/http11/GetHandler;->partialGetHelper:Lio/milton/http/http11/PartialGetHelper;

    invoke-interface {p2}, Lio/milton/http/Request;->getRangeHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/milton/http/http11/PartialGetHelper;->getRanges(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lio/milton/http/http11/GetHandler;->matchHelper:Lio/milton/http/http11/MatchHelper;

    invoke-virtual {v1, p4, p2}, Lio/milton/http/http11/MatchHelper;->checkIfRange(Lio/milton/resource/Resource;Lio/milton/http/Request;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p4}, Lio/milton/resource/GetableResource;->getContentLength()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lio/milton/http/http11/GetHandler;->partialGetHelper:Lio/milton/http/http11/PartialGetHelper;

    iget-object v9, p0, Lio/milton/http/http11/GetHandler;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    move-object v4, p4

    move-object v5, p2

    move-object v6, p3

    move-object v8, p5

    invoke-virtual/range {v3 .. v9}, Lio/milton/http/http11/PartialGetHelper;->sendPartialContent(Lio/milton/resource/GetableResource;Lio/milton/http/Request;Lio/milton/http/Response;Ljava/util/List;Ljava/util/Map;Lio/milton/http/http11/Http11ResponseHandler;)V

    return-void

    :cond_1
    sget-object v1, Lio/milton/http/http11/GetHandler;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for url: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lio/milton/http/Request;->getAbsoluteUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lio/milton/http/http11/GetHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lio/milton/http/http11/GetHandler;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lio/milton/http/http11/GetHandler;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-interface {p1, p4, p3, p2, p5}, Lio/milton/http/http11/Http11ResponseHandler;->respondContent(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;Ljava/util/Map;)V
    :try_end_0
    .catch Lio/milton/http/exceptions/NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lio/milton/http/exceptions/NotAuthorizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lio/milton/http/exceptions/BadRequestException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :goto_1
    sget-object p3, Lio/milton/http/http11/GetHandler;->log:Lorg/slf4j/Logger;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "Exception sending content for:"

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lio/milton/http/Request;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " of resource type: "

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_2
    throw p1

    :goto_3
    throw p1

    :goto_4
    throw p1
.end method


# virtual methods
.method public getMethods()[Ljava/lang/String;
    .locals 2

    sget-object v0, Lio/milton/http/Request$Method;->GET:Lio/milton/http/Request$Method;

    iget-object v0, v0, Lio/milton/http/Request$Method;->code:Ljava/lang/String;

    sget-object v1, Lio/milton/http/Request$Method;->HEAD:Lio/milton/http/Request$Method;

    iget-object v1, v1, Lio/milton/http/Request$Method;->code:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCompatible(Lio/milton/resource/Resource;)Z
    .locals 0

    instance-of p1, p1, Lio/milton/resource/GetableResource;

    return p1
.end method

.method public process(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;)V
    .locals 2

    sget-object v0, Lio/milton/http/http11/GetHandler;->log:Lorg/slf4j/Logger;

    const-string v1, "process"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lio/milton/http/http11/GetHandler;->resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

    invoke-virtual {v0, p1, p2, p3, p0}, Lio/milton/http/ResourceHandlerHelper;->process(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/http/ResourceHandler;)V

    return-void
.end method

.method public processExistingResource(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V
    .locals 9

    sget-object v0, Lio/milton/http/http11/GetHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "process: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lio/milton/http/Request;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lio/milton/http/HttpManager;->getEventManager()Lio/milton/event/EventManager;

    move-result-object v1

    new-instance v2, Lio/milton/event/GetEvent;

    invoke-direct {v2, p4}, Lio/milton/event/GetEvent;-><init>(Lio/milton/resource/Resource;)V

    invoke-interface {v1, v2}, Lio/milton/event/EventManager;->fireEvent(Lio/milton/event/Event;)V

    move-object v7, p4

    check-cast v7, Lio/milton/resource/GetableResource;

    invoke-direct {p0, v7, p2}, Lio/milton/http/http11/GetHandler;->checkConditional(Lio/milton/resource/GetableResource;Lio/milton/http/Request;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "respond not modified with: "

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lio/milton/http/http11/GetHandler;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lio/milton/http/http11/GetHandler;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-interface {p1, v7, p3, p2}, Lio/milton/http/http11/Http11ResponseHandler;->respondNotModified(Lio/milton/resource/GetableResource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    return-void

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p2}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    move-result-object v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, Lio/milton/http/http11/GetHandler;->sendContent(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/GetableResource;Ljava/util/Map;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "processExistingResource: resource={} processed in {}ms"

    invoke-interface {v0, p2, p4, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public processResource(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V
    .locals 10

    invoke-interface {p2}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, p2, p3, p4, v0}, Lio/milton/http/HttpManager;->onGet(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;Ljava/util/Map;)V

    iget-object v1, p0, Lio/milton/http/http11/GetHandler;->resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

    invoke-interface {p2}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v7, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p0

    invoke-virtual/range {v1 .. v9}, Lio/milton/http/ResourceHandlerHelper;->processResource(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;Lio/milton/http/ExistingEntityHandler;ZLjava/util/Map;Ljava/util/Map;)V

    return-void
.end method
