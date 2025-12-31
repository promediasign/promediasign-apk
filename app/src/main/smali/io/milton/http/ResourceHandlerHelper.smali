.class public Lio/milton/http/ResourceHandlerHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final authenticationService:Lio/milton/http/AuthenticationService;

.field private final handlerHelper:Lio/milton/http/HandlerHelper;

.field private final responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

.field private final urlAdapter:Lio/milton/http/UrlAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/ResourceHandlerHelper;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/ResourceHandlerHelper;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lio/milton/http/HandlerHelper;Lio/milton/http/UrlAdapter;Lio/milton/http/http11/Http11ResponseHandler;Lio/milton/http/AuthenticationService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p3, p0, Lio/milton/http/ResourceHandlerHelper;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    iput-object p2, p0, Lio/milton/http/ResourceHandlerHelper;->urlAdapter:Lio/milton/http/UrlAdapter;

    iput-object p1, p0, Lio/milton/http/ResourceHandlerHelper;->handlerHelper:Lio/milton/http/HandlerHelper;

    iput-object p4, p0, Lio/milton/http/ResourceHandlerHelper;->authenticationService:Lio/milton/http/AuthenticationService;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "handlerHelper may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private findClosestParent(Lio/milton/http/HttpManager;Ljava/lang/String;Lio/milton/common/Path;)Lio/milton/resource/Resource;
    .locals 2

    .line 1
    invoke-virtual {p3}, Lio/milton/common/Path;->getParent()Lio/milton/common/Path;

    move-result-object p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lio/milton/http/HttpManager;->getResourceFactory()Lio/milton/http/ResourceFactory;

    move-result-object v0

    invoke-virtual {p3}, Lio/milton/common/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lio/milton/http/ResourceFactory;->getResource(Ljava/lang/String;Ljava/lang/String;)Lio/milton/resource/Resource;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lio/milton/http/ResourceHandlerHelper;->findClosestParent(Lio/milton/http/HttpManager;Ljava/lang/String;Lio/milton/common/Path;)Lio/milton/resource/Resource;

    move-result-object p1

    return-object p1
.end method

.method private findClosestParent(Lio/milton/http/HttpManager;Ljava/lang/String;Ljava/lang/String;)Lio/milton/resource/Resource;
    .locals 0

    .line 2
    invoke-static {p3}, Lio/milton/common/Path;->path(Ljava/lang/String;)Lio/milton/common/Path;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lio/milton/http/ResourceHandlerHelper;->findClosestParent(Lio/milton/http/HttpManager;Ljava/lang/String;Lio/milton/common/Path;)Lio/milton/resource/Resource;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public checkAuthentication(Lio/milton/http/HttpManager;Lio/milton/resource/Resource;Lio/milton/http/Request;)Lio/milton/http/AuthenticationService$AuthStatus;
    .locals 1

    iget-object v0, p0, Lio/milton/http/ResourceHandlerHelper;->handlerHelper:Lio/milton/http/HandlerHelper;

    invoke-virtual {v0, p1, p2, p3}, Lio/milton/http/HandlerHelper;->checkAuthentication(Lio/milton/http/HttpManager;Lio/milton/resource/Resource;Lio/milton/http/Request;)Lio/milton/http/AuthenticationService$AuthStatus;

    move-result-object p1

    return-object p1
.end method

.method public isLockedOut(Lio/milton/http/Request;Lio/milton/resource/Resource;)Z
    .locals 1

    iget-object v0, p0, Lio/milton/http/ResourceHandlerHelper;->handlerHelper:Lio/milton/http/HandlerHelper;

    invoke-virtual {v0, p1, p2}, Lio/milton/http/HandlerHelper;->isLockedOut(Lio/milton/http/Request;Lio/milton/resource/Resource;)Z

    move-result p1

    return p1
.end method

.method public isNotCompatible(Lio/milton/resource/Resource;Lio/milton/http/Request$Method;)Z
    .locals 1

    iget-object v0, p0, Lio/milton/http/ResourceHandlerHelper;->handlerHelper:Lio/milton/http/HandlerHelper;

    invoke-virtual {v0, p1, p2}, Lio/milton/http/HandlerHelper;->isNotCompatible(Lio/milton/resource/Resource;Lio/milton/http/Request$Method;)Z

    move-result p1

    return p1
.end method

.method public process(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/http/ResourceHandler;)V
    .locals 8

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p2, v0, v1}, Lio/milton/http/Request;->parseRequestParameters(Ljava/util/Map;Ljava/util/Map;)V

    invoke-interface {p2}, Lio/milton/http/Request;->getAttributes()Ljava/util/Map;

    move-result-object v2

    const-string v3, "_params"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Lio/milton/http/Request;->getAttributes()Ljava/util/Map;

    move-result-object v0

    const-string v2, "_files"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/milton/http/ResourceHandlerHelper;->handlerHelper:Lio/milton/http/HandlerHelper;

    iget-object v1, p0, Lio/milton/http/ResourceHandlerHelper;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-virtual {v0, v1, p2, p3}, Lio/milton/http/HandlerHelper;->checkExpects(Lio/milton/http/http11/Http11ResponseHandler;Lio/milton/http/Request;Lio/milton/http/Response;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Lio/milton/http/Request;->getHostHeader()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/milton/http/ResourceHandlerHelper;->urlAdapter:Lio/milton/http/UrlAdapter;

    invoke-interface {v1, p2}, Lio/milton/http/UrlAdapter;->getUrl(Lio/milton/http/Request;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lio/milton/http/HttpManager;->getResourceFactory()Lio/milton/http/ResourceFactory;

    move-result-object v4

    invoke-interface {v4, v0, v1}, Lio/milton/http/ResourceFactory;->getResource(Ljava/lang/String;Ljava/lang/String;)Lio/milton/resource/Resource;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    const-wide/16 v2, 0x64

    cmp-long v7, v5, v2

    if-lez v7, :cond_1

    sget-object v2, Lio/milton/http/ResourceHandlerHelper;->log:Lorg/slf4j/Logger;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "process: found resource={} in {}ms"

    invoke-interface {v2, v5, v4, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    if-nez v4, :cond_5

    invoke-interface {p2}, Lio/milton/http/Request;->getMethod()Lio/milton/http/Request$Method;

    move-result-object p4

    sget-object v2, Lio/milton/http/Request$Method;->OPTIONS:Lio/milton/http/Request$Method;

    invoke-virtual {p4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_4

    iget-object p4, p0, Lio/milton/http/ResourceHandlerHelper;->authenticationService:Lio/milton/http/AuthenticationService;

    invoke-virtual {p4, p2}, Lio/milton/http/AuthenticationService;->authenticateDetailsPresent(Lio/milton/http/Request;)Z

    move-result p4

    if-nez p4, :cond_4

    invoke-direct {p0, p1, v0, v1}, Lio/milton/http/ResourceHandlerHelper;->findClosestParent(Lio/milton/http/HttpManager;Ljava/lang/String;Ljava/lang/String;)Lio/milton/resource/Resource;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p2}, Lio/milton/http/Request;->getMethod()Lio/milton/http/Request$Method;

    move-result-object p4

    iget-boolean p4, p4, Lio/milton/http/Request$Method;->isWrite:Z

    if-nez p4, :cond_3

    sget-object p4, Lio/milton/http/Request$Method;->HEAD:Lio/milton/http/Request$Method;

    const/4 v0, 0x0

    invoke-interface {p1, p2, p4, v0}, Lio/milton/resource/Resource;->authorise(Lio/milton/http/Request;Lio/milton/http/Request$Method;Lio/milton/http/Auth;)Z

    move-result p4

    if-eqz p4, :cond_2

    goto :goto_0

    :cond_2
    new-instance p2, Lio/milton/http/exceptions/NotAuthorizedException;

    const-string p3, "Authentication is required for read access"

    invoke-direct {p2, p3, p1}, Lio/milton/http/exceptions/NotAuthorizedException;-><init>(Ljava/lang/String;Lio/milton/resource/Resource;)V

    throw p2

    :cond_3
    new-instance p2, Lio/milton/http/exceptions/NotAuthorizedException;

    const-string p3, "Authentication is required for write access"

    invoke-direct {p2, p3, p1}, Lio/milton/http/exceptions/NotAuthorizedException;-><init>(Ljava/lang/String;Lio/milton/resource/Resource;)V

    throw p2

    :cond_4
    :goto_0
    iget-object p1, p0, Lio/milton/http/ResourceHandlerHelper;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-interface {p1, p3, p2}, Lio/milton/http/http11/Http11ResponseHandler;->respondNotFound(Lio/milton/http/Response;Lio/milton/http/Request;)V

    return-void

    :cond_5
    invoke-interface {p4, p1, p2, p3, v4}, Lio/milton/http/ResourceHandler;->processResource(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V

    return-void
.end method

.method public processResource(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;Lio/milton/http/ExistingEntityHandler;)V
    .locals 9

    .line 1
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v8}, Lio/milton/http/ResourceHandlerHelper;->processResource(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;Lio/milton/http/ExistingEntityHandler;ZLjava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public processResource(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;Lio/milton/http/ExistingEntityHandler;ZLjava/util/Map;Ljava/util/Map;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/http/HttpManager;",
            "Lio/milton/http/Request;",
            "Lio/milton/http/Response;",
            "Lio/milton/resource/Resource;",
            "Lio/milton/http/ExistingEntityHandler;",
            "Z",
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

    .line 2
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    const-string v0, "resource not compatible. Resource class: "

    const-string v7, "Not found exception thrown from handler: "

    const-string v8, "authorisation failed. respond with: "

    sget-object v9, Lio/milton/http/ResourceHandlerHelper;->log:Lorg/slf4j/Logger;

    const-string v10, "processResource"

    invoke-interface {v9, v10}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    :try_start_0
    invoke-virtual/range {p1 .. p4}, Lio/milton/http/HttpManager;->onProcessResourceStart(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V

    iget-object v12, v1, Lio/milton/http/ResourceHandlerHelper;->handlerHelper:Lio/milton/http/HandlerHelper;

    invoke-virtual {v12, v2, v5, v3}, Lio/milton/http/HandlerHelper;->checkAuthorisation(Lio/milton/http/HttpManager;Lio/milton/resource/Resource;Lio/milton/http/Request;)Z

    move-result v12

    iget-object v13, v1, Lio/milton/http/ResourceHandlerHelper;->handlerHelper:Lio/milton/http/HandlerHelper;

    invoke-interface/range {p2 .. p2}, Lio/milton/http/Request;->getMethod()Lio/milton/http/Request$Method;

    move-result-object v14

    invoke-virtual {v13, v5, v14}, Lio/milton/http/HandlerHelper;->isNotCompatible(Lio/milton/resource/Resource;Lio/milton/http/Request$Method;)Z

    move-result v13

    if-nez v13, :cond_7

    invoke-interface {v6, v5}, Lio/milton/http/Handler;->isCompatible(Lio/milton/resource/Resource;)Z

    move-result v13

    if-nez v13, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p6, :cond_1

    const-string v0, "check redirect"

    invoke-interface {v9, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    iget-object v0, v1, Lio/milton/http/ResourceHandlerHelper;->handlerHelper:Lio/milton/http/HandlerHelper;

    iget-object v13, v1, Lio/milton/http/ResourceHandlerHelper;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-virtual {v0, v13, v3, v4, v5}, Lio/milton/http/HandlerHelper;->doCheckRedirect(Lio/milton/http/http11/Http11ResponseHandler;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v10

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v2 .. v7}, Lio/milton/http/HttpManager;->onProcessResourceFinish(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;J)V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_1
    if-nez v12, :cond_3

    :try_start_1
    invoke-interface {v9}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lio/milton/http/ResourceHandlerHelper;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " resource: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :cond_2
    iget-object v0, v1, Lio/milton/http/ResourceHandlerHelper;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-interface {v0, v5, v4, v3}, Lio/milton/http/http11/Http11ResponseHandler;->respondUnauthorised(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lio/milton/event/AccessedEvent;

    invoke-direct {v0, v5}, Lio/milton/event/AccessedEvent;-><init>(Lio/milton/resource/Resource;)V

    invoke-virtual/range {p1 .. p1}, Lio/milton/http/HttpManager;->getEventManager()Lio/milton/event/EventManager;

    move-result-object v8

    invoke-interface {v8, v0}, Lio/milton/event/EventManager;->fireEvent(Lio/milton/event/Event;)V

    invoke-virtual {v0}, Lio/milton/event/AccessedEvent;->getReturnRedirectUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz p6, :cond_4

    const-string v6, "event handler returned redirect"

    invoke-interface {v9, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object v6, v1, Lio/milton/http/ResourceHandlerHelper;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-interface {v6, v4, v3, v0}, Lio/milton/http/http11/Http11ResponseHandler;->respondRedirect(Lio/milton/http/Response;Lio/milton/http/Request;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "Would have done redirect from event handler, but redirect is disabled for this request"

    invoke-interface {v9, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_5
    invoke-interface/range {p2 .. p2}, Lio/milton/http/Request;->getMethod()Lio/milton/http/Request$Method;

    move-result-object v0

    iget-boolean v0, v0, Lio/milton/http/Request$Method;->isWrite:Z

    if-eqz v0, :cond_6

    invoke-interface/range {p2 .. p2}, Lio/milton/http/Request;->getMethod()Lio/milton/http/Request$Method;

    move-result-object v0

    sget-object v8, Lio/milton/http/Request$Method;->POST:Lio/milton/http/Request$Method;

    if-eq v0, v8, :cond_6

    iget-object v0, v1, Lio/milton/http/ResourceHandlerHelper;->handlerHelper:Lio/milton/http/HandlerHelper;

    invoke-virtual {v0, v3, v5}, Lio/milton/http/HandlerHelper;->isLockedOut(Lio/milton/http/Request;Lio/milton/resource/Resource;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lio/milton/http/Response$Status;->SC_LOCKED:Lio/milton/http/Response$Status;

    invoke-interface {v4, v0}, Lio/milton/http/Response;->setStatus(Lio/milton/http/Response$Status;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_6
    :try_start_2
    invoke-interface {v6, v2, v3, v4, v5}, Lio/milton/http/ExistingEntityHandler;->processExistingResource(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V
    :try_end_2
    .catch Lio/milton/http/exceptions/NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v8, v0

    :try_start_3
    sget-object v0, Lio/milton/http/ResourceHandlerHelper;->log:Lorg/slf4j/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v8}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, v1, Lio/milton/http/ResourceHandlerHelper;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-interface {v0, v4, v3}, Lio/milton/http/http11/Http11ResponseHandler;->respondNotFound(Lio/milton/http/Response;Lio/milton/http/Request;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v10

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v2 .. v7}, Lio/milton/http/HttpManager;->onProcessResourceFinish(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;J)V

    return-void

    :cond_7
    :goto_2
    :try_start_4
    invoke-interface {v9}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v7

    if-eqz v7, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " handler: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :cond_8
    iget-object v0, v1, Lio/milton/http/ResourceHandlerHelper;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-interface {v0, v5, v4, v3}, Lio/milton/http/http11/Http11ResponseHandler;->respondMethodNotImplemented(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v10

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v2 .. v7}, Lio/milton/http/HttpManager;->onProcessResourceFinish(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;J)V

    throw v0
.end method
