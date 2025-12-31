.class public Lio/milton/http/webdav/MoveHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/ExistingEntityHandler;


# instance fields
.field private deleteExistingBeforeMove:Z

.field private deleteHelper:Lio/milton/http/DeleteHelper;

.field private final handlerHelper:Lio/milton/http/HandlerHelper;

.field private final log:Lorg/slf4j/Logger;

.field private final resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

.field private final responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

.field private final userAgentHelper:Lio/milton/http/webdav/UserAgentHelper;


# direct methods
.method public constructor <init>(Lio/milton/http/webdav/WebDavResponseHandler;Lio/milton/http/HandlerHelper;Lio/milton/http/ResourceHandlerHelper;Lio/milton/http/webdav/UserAgentHelper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lio/milton/http/webdav/MoveHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lio/milton/http/webdav/MoveHandler;->log:Lorg/slf4j/Logger;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/milton/http/webdav/MoveHandler;->deleteExistingBeforeMove:Z

    iput-object p4, p0, Lio/milton/http/webdav/MoveHandler;->userAgentHelper:Lio/milton/http/webdav/UserAgentHelper;

    iput-object p1, p0, Lio/milton/http/webdav/MoveHandler;->responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    iput-object p3, p0, Lio/milton/http/webdav/MoveHandler;->resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

    iput-object p2, p0, Lio/milton/http/webdav/MoveHandler;->handlerHelper:Lio/milton/http/HandlerHelper;

    new-instance p1, Lio/milton/http/DeleteHelperImpl;

    invoke-direct {p1, p2}, Lio/milton/http/DeleteHelperImpl;-><init>(Lio/milton/http/HandlerHelper;)V

    iput-object p1, p0, Lio/milton/http/webdav/MoveHandler;->deleteHelper:Lio/milton/http/DeleteHelper;

    return-void
.end method

.method private canOverwrite(Lio/milton/http/Request;)Z
    .locals 2

    invoke-interface {p1}, Lio/milton/http/Request;->getOverwriteHeader()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lio/milton/http/Request;->getOverwriteHeader()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lio/milton/http/webdav/MoveHandler;->userAgentHelper:Lio/milton/http/webdav/UserAgentHelper;

    invoke-interface {v0, p1}, Lio/milton/http/webdav/UserAgentHelper;->isMacFinder(Lio/milton/http/Request;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lio/milton/http/webdav/MoveHandler;->log:Lorg/slf4j/Logger;

    const-string v0, "no overwrite header, but user agent is Finder so permit overwrite"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getMethods()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/milton/http/Request$Method;->MOVE:Lio/milton/http/Request$Method;

    iget-object v0, v0, Lio/milton/http/Request$Method;->code:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCompatible(Lio/milton/resource/Resource;)Z
    .locals 0

    instance-of p1, p1, Lio/milton/resource/MoveableResource;

    return p1
.end method

.method public process(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;)V
    .locals 1

    iget-object v0, p0, Lio/milton/http/webdav/MoveHandler;->resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

    invoke-virtual {v0, p1, p2, p3, p0}, Lio/milton/http/ResourceHandlerHelper;->process(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/http/ResourceHandler;)V

    return-void
.end method

.method public processExistingResource(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V
    .locals 10

    move-object v0, p4

    check-cast v0, Lio/milton/resource/MoveableResource;

    invoke-interface {p2}, Lio/milton/http/Request;->getDestinationHeader()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/milton/common/Utils;->getDecodedDestination(Ljava/lang/String;)Lio/milton/http/webdav/Dest;

    move-result-object v1

    invoke-virtual {p1}, Lio/milton/http/HttpManager;->getResourceFactory()Lio/milton/http/ResourceFactory;

    move-result-object v2

    iget-object v3, v1, Lio/milton/http/webdav/Dest;->host:Ljava/lang/String;

    iget-object v4, v1, Lio/milton/http/webdav/Dest;->url:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lio/milton/http/ResourceFactory;->getResource(Ljava/lang/String;Ljava/lang/String;)Lio/milton/resource/Resource;

    move-result-object v2

    iget-object v3, p0, Lio/milton/http/webdav/MoveHandler;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "process: moving from: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lio/milton/http/webdav/Dest;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " with name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lio/milton/http/webdav/Dest;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    if-nez v2, :cond_0

    iget-object p1, p0, Lio/milton/http/webdav/MoveHandler;->log:Lorg/slf4j/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "process: destination parent does not exist: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object p1, p0, Lio/milton/http/webdav/MoveHandler;->responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Destination parent does not exist: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {p1, p4, p3, p2, v0}, Lio/milton/http/http11/Http11ResponseHandler;->respondConflict(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_0
    instance-of v3, v2, Lio/milton/resource/CollectionResource;

    if-nez v3, :cond_1

    iget-object p1, p0, Lio/milton/http/webdav/MoveHandler;->log:Lorg/slf4j/Logger;

    const-string v0, "process: destination exists but is not a collection"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object p1, p0, Lio/milton/http/webdav/MoveHandler;->responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Destination exists but is not a collection: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v8, v2

    check-cast v8, Lio/milton/resource/CollectionResource;

    iget-object v3, v1, Lio/milton/http/webdav/Dest;->name:Ljava/lang/String;

    invoke-interface {v8, v3}, Lio/milton/resource/CollectionResource;->child(Ljava/lang/String;)Lio/milton/resource/Resource;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-direct {p0, p2}, Lio/milton/http/webdav/MoveHandler;->canOverwrite(Lio/milton/http/Request;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object p1, p0, Lio/milton/http/webdav/MoveHandler;->log:Lorg/slf4j/Logger;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "destination resource exists, and overwrite header is not set. dest name: "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lio/milton/http/webdav/Dest;->name:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " dest folder: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1, p4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    iget-object p1, p0, Lio/milton/http/webdav/MoveHandler;->responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {p1, p2, p3, v3}, Lio/milton/http/webdav/WebDavResponseHandler;->respondPreconditionFailed(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V

    return-void

    :cond_2
    iget-boolean v4, p0, Lio/milton/http/webdav/MoveHandler;->deleteExistingBeforeMove:Z

    if-eqz v4, :cond_5

    instance-of v4, v3, Lio/milton/resource/DeletableResource;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lio/milton/http/webdav/MoveHandler;->log:Lorg/slf4j/Logger;

    const-string v5, "deleting existing resource"

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    check-cast v3, Lio/milton/resource/DeletableResource;

    iget-object v4, p0, Lio/milton/http/webdav/MoveHandler;->deleteHelper:Lio/milton/http/DeleteHelper;

    invoke-interface {v4, p2, v3}, Lio/milton/http/DeleteHelper;->isLockedOut(Lio/milton/http/Request;Lio/milton/resource/Resource;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object p1, p0, Lio/milton/http/webdav/MoveHandler;->log:Lorg/slf4j/Logger;

    const-string p4, "destination resource exists but is locked"

    invoke-interface {p1, p4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object p1, p0, Lio/milton/http/webdav/MoveHandler;->responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {p1, p2, p3, v3}, Lio/milton/http/webdav/WebDavResponseHandler;->respondLocked(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V

    return-void

    :cond_3
    iget-object v4, p0, Lio/milton/http/webdav/MoveHandler;->log:Lorg/slf4j/Logger;

    const-string v5, "deleting pre-existing destination resource"

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object v4, p0, Lio/milton/http/webdav/MoveHandler;->deleteHelper:Lio/milton/http/DeleteHelper;

    invoke-virtual {p1}, Lio/milton/http/HttpManager;->getEventManager()Lio/milton/event/EventManager;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lio/milton/http/DeleteHelper;->delete(Lio/milton/resource/DeletableResource;Lio/milton/event/EventManager;)V

    const/4 v3, 0x1

    const/4 v9, 0x1

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lio/milton/http/webdav/MoveHandler;->log:Lorg/slf4j/Logger;

    const-string v0, "destination exists, and overwrite header is set, but destination is not a DeletableResource"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    iget-object p1, p0, Lio/milton/http/webdav/MoveHandler;->responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    const-string v0, "A resource exists at the destination, and it cannot be deleted"

    invoke-interface {p1, p4, p3, p2, v0}, Lio/milton/http/http11/Http11ResponseHandler;->respondConflict(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;Ljava/lang/String;)V

    return-void

    :cond_5
    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_2
    iget-object v3, p0, Lio/milton/http/webdav/MoveHandler;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "process: moving resource to: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lio/milton/http/webdav/MoveHandler;->handlerHelper:Lio/milton/http/HandlerHelper;

    invoke-interface {p2}, Lio/milton/http/Request;->getMethod()Lio/milton/http/Request$Method;

    move-result-object v6

    invoke-interface {p2}, Lio/milton/http/Request;->getAuthorization()Lio/milton/http/Auth;

    move-result-object v7

    move-object v3, p1

    move-object v4, v8

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Lio/milton/http/HandlerHelper;->checkAuthorisation(Lio/milton/http/HttpManager;Lio/milton/resource/Resource;Lio/milton/http/Request;Lio/milton/http/Request$Method;Lio/milton/http/Auth;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object p1, p0, Lio/milton/http/webdav/MoveHandler;->responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {p1, v8, p3, p2}, Lio/milton/http/http11/Http11ResponseHandler;->respondUnauthorised(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lio/milton/http/HttpManager;->getEventManager()Lio/milton/event/EventManager;

    move-result-object v2

    new-instance v3, Lio/milton/event/MoveEvent;

    iget-object v4, v1, Lio/milton/http/webdav/Dest;->name:Ljava/lang/String;

    invoke-direct {v3, p4, v8, v4}, Lio/milton/event/MoveEvent;-><init>(Lio/milton/resource/Resource;Lio/milton/resource/CollectionResource;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lio/milton/event/EventManager;->fireEvent(Lio/milton/event/Event;)V

    iget-object v2, v1, Lio/milton/http/webdav/Dest;->name:Ljava/lang/String;

    invoke-interface {v0, v8, v2}, Lio/milton/resource/MoveableResource;->moveTo(Lio/milton/resource/CollectionResource;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/milton/http/HttpManager;->getEventManager()Lio/milton/event/EventManager;

    move-result-object p1

    new-instance v0, Lio/milton/event/AfterMoveEvent;

    iget-object v2, v1, Lio/milton/http/webdav/Dest;->name:Ljava/lang/String;

    invoke-direct {v0, p4, v8, v2}, Lio/milton/event/AfterMoveEvent;-><init>(Lio/milton/resource/Resource;Lio/milton/resource/CollectionResource;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lio/milton/event/EventManager;->fireEvent(Lio/milton/event/Event;)V

    if-eqz v9, :cond_7

    iget-object p1, p0, Lio/milton/http/webdav/MoveHandler;->responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {p1, p4, p3, p2}, Lio/milton/http/http11/Http11ResponseHandler;->respondNoContent(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lio/milton/http/webdav/MoveHandler;->responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {p1, p4, p3, p2}, Lio/milton/http/http11/Http11ResponseHandler;->respondCreated(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V
    :try_end_0
    .catch Lio/milton/http/exceptions/ConflictException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    iget-object v0, p0, Lio/milton/http/webdav/MoveHandler;->log:Lorg/slf4j/Logger;

    const-string v2, "conflict"

    invoke-interface {v0, v2, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lio/milton/http/webdav/MoveHandler;->responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-virtual {v1}, Lio/milton/http/webdav/Dest;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :goto_4
    iget-object p1, p0, Lio/milton/http/webdav/MoveHandler;->log:Lorg/slf4j/Logger;

    const-string p2, "process: finished"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public processResource(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V
    .locals 6

    iget-object v0, p0, Lio/milton/http/webdav/MoveHandler;->resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lio/milton/http/ResourceHandlerHelper;->processResource(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;Lio/milton/http/ExistingEntityHandler;)V

    return-void
.end method
