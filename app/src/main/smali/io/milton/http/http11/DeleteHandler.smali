.class public Lio/milton/http/http11/DeleteHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/ExistingEntityHandler;


# instance fields
.field private deleteHelper:Lio/milton/http/DeleteHelper;

.field private final log:Lorg/slf4j/Logger;

.field private final resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

.field private final responseHandler:Lio/milton/http/http11/Http11ResponseHandler;


# direct methods
.method public constructor <init>(Lio/milton/http/http11/Http11ResponseHandler;Lio/milton/http/ResourceHandlerHelper;Lio/milton/http/HandlerHelper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lio/milton/http/http11/DeleteHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lio/milton/http/http11/DeleteHandler;->log:Lorg/slf4j/Logger;

    iput-object p1, p0, Lio/milton/http/http11/DeleteHandler;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    iput-object p2, p0, Lio/milton/http/http11/DeleteHandler;->resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

    new-instance p1, Lio/milton/http/DeleteHelperImpl;

    invoke-direct {p1, p3}, Lio/milton/http/DeleteHelperImpl;-><init>(Lio/milton/http/HandlerHelper;)V

    iput-object p1, p0, Lio/milton/http/http11/DeleteHandler;->deleteHelper:Lio/milton/http/DeleteHelper;

    return-void
.end method


# virtual methods
.method public getMethods()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/milton/http/Request$Method;->DELETE:Lio/milton/http/Request$Method;

    iget-object v0, v0, Lio/milton/http/Request$Method;->code:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCompatible(Lio/milton/resource/Resource;)Z
    .locals 0

    instance-of p1, p1, Lio/milton/resource/DeletableResource;

    return p1
.end method

.method public process(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;)V
    .locals 2

    invoke-interface {p2}, Lio/milton/http/Request;->getAbsoluteUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/milton/http/http11/DeleteHandler;->resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

    invoke-virtual {v0, p1, p2, p3, p0}, Lio/milton/http/ResourceHandlerHelper;->process(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/http/ResourceHandler;)V

    return-void

    :cond_0
    new-instance p1, Lio/milton/http/exceptions/BadRequestException;

    const/4 p2, 0x0

    const-string p3, "Can\'t delete a resource with a # in the url"

    invoke-direct {p1, p2, p3}, Lio/milton/http/exceptions/BadRequestException;-><init>(Lio/milton/resource/Resource;Ljava/lang/String;)V

    throw p1
.end method

.method public processExistingResource(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V
    .locals 3

    iget-object v0, p0, Lio/milton/http/http11/DeleteHandler;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DELETE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lio/milton/http/Request;->getAbsoluteUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    move-object v0, p4

    check-cast v0, Lio/milton/resource/DeletableResource;

    iget-object v1, p0, Lio/milton/http/http11/DeleteHandler;->deleteHelper:Lio/milton/http/DeleteHelper;

    invoke-interface {v1, p2, v0}, Lio/milton/http/DeleteHelper;->isLockedOut(Lio/milton/http/Request;Lio/milton/resource/Resource;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lio/milton/http/http11/DeleteHandler;->log:Lorg/slf4j/Logger;

    const-string p4, "Could not delete. Is locked"

    invoke-interface {p1, p4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    iget-object p1, p0, Lio/milton/http/http11/DeleteHandler;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    sget-object p4, Lio/milton/http/Response$Status;->SC_LOCKED:Lio/milton/http/Response$Status;

    invoke-interface {p1, p2, p3, v0, p4}, Lio/milton/http/http11/Http11ResponseHandler;->respondDeleteFailed(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;Lio/milton/http/Response$Status;)V

    return-void

    :cond_0
    iget-object v1, p0, Lio/milton/http/http11/DeleteHandler;->deleteHelper:Lio/milton/http/DeleteHelper;

    invoke-virtual {p1}, Lio/milton/http/HttpManager;->getEventManager()Lio/milton/event/EventManager;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lio/milton/http/DeleteHelper;->delete(Lio/milton/resource/DeletableResource;Lio/milton/event/EventManager;)V

    iget-object p1, p0, Lio/milton/http/http11/DeleteHandler;->log:Lorg/slf4j/Logger;

    const-string v0, "deleted ok"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object p1, p0, Lio/milton/http/http11/DeleteHandler;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-interface {p1, p4, p3, p2}, Lio/milton/http/http11/Http11ResponseHandler;->respondNoContent(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    return-void
.end method

.method public processResource(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V
    .locals 6

    iget-object v0, p0, Lio/milton/http/http11/DeleteHandler;->resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

    invoke-interface {p2}, Lio/milton/http/Request;->getMethod()Lio/milton/http/Request$Method;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Lio/milton/http/ResourceHandlerHelper;->isNotCompatible(Lio/milton/resource/Resource;Lio/milton/http/Request$Method;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lio/milton/http/http11/DeleteHandler;->log:Lorg/slf4j/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resource not compatible. Resource class: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " handler: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object p1, p0, Lio/milton/http/http11/DeleteHandler;->responseHandler:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-interface {p1, p4, p3, p2}, Lio/milton/http/http11/Http11ResponseHandler;->respondMethodNotImplemented(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    return-void

    :cond_0
    iget-object v0, p0, Lio/milton/http/http11/DeleteHandler;->resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lio/milton/http/ResourceHandlerHelper;->processResource(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;Lio/milton/http/ExistingEntityHandler;)V

    return-void
.end method
