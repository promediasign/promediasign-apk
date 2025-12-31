.class public Lio/milton/http/StandardFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/Filter;


# instance fields
.field private final log:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lio/milton/http/StandardFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lio/milton/http/StandardFilter;->log:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method public process(Lio/milton/http/FilterChain;Lio/milton/http/Request;Lio/milton/http/Response;)V
    .locals 7

    const-string v0, "<html><body><h1>Internal Server Error (500)</h1></body></html>"

    const-string v1, "BadRequestException: "

    const-string v2, "No response entity to send to client for method: "

    const-string v3, "delegate to method handler: "

    const-string v4, "No method handler for: "

    invoke-virtual {p1}, Lio/milton/http/FilterChain;->getHttpManager()Lio/milton/http/HttpManager;

    move-result-object p1

    :try_start_0
    invoke-interface {p2}, Lio/milton/http/Request;->getMethod()Lio/milton/http/Request$Method;

    move-result-object v5

    invoke-virtual {p1, v5}, Lio/milton/http/HttpManager;->getMethodHandler(Lio/milton/http/Request$Method;)Lio/milton/http/Handler;

    move-result-object v6

    if-nez v6, :cond_0

    iget-object v2, p0, Lio/milton/http/StandardFilter;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " Please check that dav level 2 protocol support is enabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/milton/http/HttpManager;->getResponseHandler()Lio/milton/http/http11/Http11ResponseHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3, p3, p2}, Lio/milton/http/http11/Http11ResponseHandler;->respondMethodNotImplemented(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_4

    :catch_2
    move-exception v1

    goto/16 :goto_5

    :catch_3
    move-exception v0

    goto/16 :goto_6

    :cond_0
    iget-object v4, p0, Lio/milton/http/StandardFilter;->log:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lio/milton/http/StandardFilter;->log:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v6, p1, p2, p3}, Lio/milton/http/Handler;->process(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;)V

    invoke-interface {p3}, Lio/milton/http/Response;->getEntity()Lio/milton/http/Response$Entity;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, p3}, Lio/milton/http/HttpManager;->sendResponseEntity(Lio/milton/http/Response;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lio/milton/http/StandardFilter;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lio/milton/http/Request;->getMethod()Lio/milton/http/Request$Method;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Lio/milton/http/exceptions/BadRequestException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lio/milton/http/exceptions/ConflictException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lio/milton/http/exceptions/NotAuthorizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lio/milton/http/exceptions/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p1, p3}, Lio/milton/http/HttpManager;->closeResponse(Lio/milton/http/Response;)V

    goto/16 :goto_7

    :goto_1
    :try_start_1
    iget-object v1, p0, Lio/milton/http/StandardFilter;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catchall_1
    move-exception p2

    goto :goto_8

    :cond_3
    :goto_2
    iget-object v1, p0, Lio/milton/http/StandardFilter;->log:Lorg/slf4j/Logger;

    const-string v2, "exception sending content"

    invoke-interface {v1, v2, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p2, Lio/milton/http/Response$Status;->SC_INTERNAL_SERVER_ERROR:Lio/milton/http/Response$Status;

    invoke-interface {p3, p2, v0}, Lio/milton/http/Response;->sendError(Lio/milton/http/Response$Status;Ljava/lang/String;)V

    goto :goto_0

    :goto_3
    iget-object v1, p0, Lio/milton/http/StandardFilter;->log:Lorg/slf4j/Logger;

    const-string v2, "NotFoundException"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Lio/milton/http/HttpManager;->getResponseHandler()Lio/milton/http/http11/Http11ResponseHandler;

    move-result-object v0

    invoke-interface {v0, p3, p2}, Lio/milton/http/http11/Http11ResponseHandler;->respondNotFound(Lio/milton/http/Response;Lio/milton/http/Request;)V

    goto :goto_0

    :goto_4
    iget-object v1, p0, Lio/milton/http/StandardFilter;->log:Lorg/slf4j/Logger;

    const-string v2, "NotAuthorizedException"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Lio/milton/http/HttpManager;->getResponseHandler()Lio/milton/http/http11/Http11ResponseHandler;

    move-result-object v1

    invoke-virtual {v0}, Lio/milton/http/exceptions/MiltonException;->getResource()Lio/milton/resource/Resource;

    move-result-object v0

    invoke-interface {v1, v0, p3, p2}, Lio/milton/http/http11/Http11ResponseHandler;->respondUnauthorised(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    goto :goto_0

    :goto_5
    iget-object v2, p0, Lio/milton/http/StandardFilter;->log:Lorg/slf4j/Logger;

    const-string v3, "conflictException: "

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Lio/milton/http/HttpManager;->getResponseHandler()Lio/milton/http/http11/Http11ResponseHandler;

    move-result-object v2

    invoke-virtual {v1}, Lio/milton/http/exceptions/MiltonException;->getResource()Lio/milton/resource/Resource;

    move-result-object v1

    invoke-interface {v2, v1, p3, p2, v0}, Lio/milton/http/http11/Http11ResponseHandler;->respondConflict(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;Ljava/lang/String;)V

    goto :goto_0

    :goto_6
    iget-object v2, p0, Lio/milton/http/StandardFilter;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/milton/http/exceptions/BadRequestException;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Lio/milton/http/HttpManager;->getResponseHandler()Lio/milton/http/http11/Http11ResponseHandler;

    move-result-object v1

    invoke-virtual {v0}, Lio/milton/http/exceptions/MiltonException;->getResource()Lio/milton/resource/Resource;

    move-result-object v0

    invoke-interface {v1, v0, p3, p2}, Lio/milton/http/http11/Http11ResponseHandler;->respondBadRequest(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_7
    return-void

    :goto_8
    invoke-virtual {p1, p3}, Lio/milton/http/HttpManager;->closeResponse(Lio/milton/http/Response;)V

    throw p2
.end method
