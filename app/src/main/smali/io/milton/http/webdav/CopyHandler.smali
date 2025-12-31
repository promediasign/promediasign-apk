.class public Lio/milton/http/webdav/CopyHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/ExistingEntityHandler;


# instance fields
.field private deleteExistingBeforeCopy:Z

.field private final deleteHelper:Lio/milton/http/DeleteHelper;

.field private final handlerHelper:Lio/milton/http/HandlerHelper;

.field private final log:Lorg/slf4j/Logger;

.field private final resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

.field private final responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

.field private final userAgentHelper:Lio/milton/http/webdav/UserAgentHelper;


# direct methods
.method public constructor <init>(Lio/milton/http/webdav/WebDavResponseHandler;Lio/milton/http/HandlerHelper;Lio/milton/http/ResourceHandlerHelper;Lio/milton/http/webdav/UserAgentHelper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lio/milton/http/webdav/CopyHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lio/milton/http/webdav/CopyHandler;->log:Lorg/slf4j/Logger;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/milton/http/webdav/CopyHandler;->deleteExistingBeforeCopy:Z

    iput-object p4, p0, Lio/milton/http/webdav/CopyHandler;->userAgentHelper:Lio/milton/http/webdav/UserAgentHelper;

    iput-object p1, p0, Lio/milton/http/webdav/CopyHandler;->responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    iput-object p2, p0, Lio/milton/http/webdav/CopyHandler;->handlerHelper:Lio/milton/http/HandlerHelper;

    iput-object p3, p0, Lio/milton/http/webdav/CopyHandler;->resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

    new-instance p1, Lio/milton/http/DeleteHelperImpl;

    invoke-direct {p1, p2}, Lio/milton/http/DeleteHelperImpl;-><init>(Lio/milton/http/HandlerHelper;)V

    iput-object p1, p0, Lio/milton/http/webdav/CopyHandler;->deleteHelper:Lio/milton/http/DeleteHelper;

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
    invoke-interface {p1}, Lio/milton/http/Request;->getUserAgentHeader()Ljava/lang/String;

    iget-object v0, p0, Lio/milton/http/webdav/CopyHandler;->userAgentHelper:Lio/milton/http/webdav/UserAgentHelper;

    invoke-interface {v0, p1}, Lio/milton/http/webdav/UserAgentHelper;->isMacFinder(Lio/milton/http/Request;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lio/milton/http/webdav/CopyHandler;->log:Lorg/slf4j/Logger;

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

    sget-object v0, Lio/milton/http/Request$Method;->COPY:Lio/milton/http/Request$Method;

    iget-object v0, v0, Lio/milton/http/Request$Method;->code:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCompatible(Lio/milton/resource/Resource;)Z
    .locals 0

    instance-of p1, p1, Lio/milton/resource/CopyableResource;

    return p1
.end method

.method public process(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;)V
    .locals 1

    iget-object v0, p0, Lio/milton/http/webdav/CopyHandler;->resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

    invoke-virtual {v0, p1, p2, p3, p0}, Lio/milton/http/ResourceHandlerHelper;->process(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/http/ResourceHandler;)V

    return-void
.end method

.method public processExistingResource(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V
    .locals 14

    move-object v0, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object v10, v9

    check-cast v10, Lio/milton/resource/CopyableResource;

    invoke-interface/range {p2 .. p2}, Lio/milton/http/Request;->getDestinationHeader()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/milton/common/Utils;->getDecodedDestination(Ljava/lang/String;)Lio/milton/http/webdav/Dest;

    move-result-object v11

    invoke-virtual {p1}, Lio/milton/http/HttpManager;->getResourceFactory()Lio/milton/http/ResourceFactory;

    move-result-object v1

    iget-object v2, v11, Lio/milton/http/webdav/Dest;->host:Ljava/lang/String;

    iget-object v3, v11, Lio/milton/http/webdav/Dest;->url:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lio/milton/http/ResourceFactory;->getResource(Ljava/lang/String;Ljava/lang/String;)Lio/milton/resource/Resource;

    move-result-object v1

    iget-object v2, v0, Lio/milton/http/webdav/CopyHandler;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "process: copying from: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v10}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v11, Lio/milton/http/webdav/Dest;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v11, Lio/milton/http/webdav/Dest;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    if-nez v1, :cond_0

    iget-object v1, v0, Lio/milton/http/webdav/CopyHandler;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "process: destination parent does not exist: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object v1, v0, Lio/milton/http/webdav/CopyHandler;->responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Destination does not exist: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v9, v8, v7, v2}, Lio/milton/http/http11/Http11ResponseHandler;->respondConflict(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    instance-of v2, v1, Lio/milton/resource/CollectionResource;

    if-nez v2, :cond_1

    iget-object v1, v0, Lio/milton/http/webdav/CopyHandler;->log:Lorg/slf4j/Logger;

    const-string v2, "process: destination exists but is not a collection"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object v1, v0, Lio/milton/http/webdav/CopyHandler;->responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Destination exists but is not a collection: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lio/milton/http/webdav/CopyHandler;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "process: copy resource to: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/milton/http/HttpManager;->getResourceFactory()Lio/milton/http/ResourceFactory;

    move-result-object v2

    iget-object v3, v11, Lio/milton/http/webdav/Dest;->host:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v11, Lio/milton/http/webdav/Dest;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v11, Lio/milton/http/webdav/Dest;->name:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lio/milton/http/ResourceFactory;->getResource(Ljava/lang/String;Ljava/lang/String;)Lio/milton/resource/Resource;

    move-result-object v2

    iget-object v3, v0, Lio/milton/http/webdav/CopyHandler;->handlerHelper:Lio/milton/http/HandlerHelper;

    invoke-virtual {v3, v7, v2}, Lio/milton/http/HandlerHelper;->isLockedOut(Lio/milton/http/Request;Lio/milton/resource/Resource;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, v0, Lio/milton/http/webdav/CopyHandler;->responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {v1, v7, v8, v9}, Lio/milton/http/webdav/WebDavResponseHandler;->respondLocked(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V

    return-void

    :cond_2
    move-object v12, v1

    check-cast v12, Lio/milton/resource/CollectionResource;

    iget-object v1, v11, Lio/milton/http/webdav/Dest;->name:Ljava/lang/String;

    invoke-interface {v12, v1}, Lio/milton/resource/CollectionResource;->child(Ljava/lang/String;)Lio/milton/resource/Resource;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-direct {p0, v7}, Lio/milton/http/webdav/CopyHandler;->canOverwrite(Lio/milton/http/Request;)Z

    move-result v2

    const-string v3, " dest folder: "

    if-nez v2, :cond_3

    iget-object v1, v0, Lio/milton/http/webdav/CopyHandler;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "destination resource exists, and overwrite header is not set. dest name: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v11, Lio/milton/http/webdav/Dest;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    iget-object v1, v0, Lio/milton/http/webdav/CopyHandler;->responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {v1, v7, v8, v9}, Lio/milton/http/webdav/WebDavResponseHandler;->respondPreconditionFailed(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V

    return-void

    :cond_3
    iget-object v2, v0, Lio/milton/http/webdav/CopyHandler;->deleteHelper:Lio/milton/http/DeleteHelper;

    invoke-interface {v2, v7, v1}, Lio/milton/http/DeleteHelper;->isLockedOut(Lio/milton/http/Request;Lio/milton/resource/Resource;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, v0, Lio/milton/http/webdav/CopyHandler;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "destination resource exists, and overwrite header IS set, but destination is locked. dest name: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v11, Lio/milton/http/webdav/Dest;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    iget-object v1, v0, Lio/milton/http/webdav/CopyHandler;->responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {v1, v7, v8, v9}, Lio/milton/http/webdav/WebDavResponseHandler;->respondPreconditionFailed(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V

    return-void

    :cond_4
    iget-boolean v2, v0, Lio/milton/http/webdav/CopyHandler;->deleteExistingBeforeCopy:Z

    if-eqz v2, :cond_7

    instance-of v2, v1, Lio/milton/resource/DeletableResource;

    if-eqz v2, :cond_6

    iget-object v2, v0, Lio/milton/http/webdav/CopyHandler;->log:Lorg/slf4j/Logger;

    const-string v3, "copy destination exists and is deletable, delete it.."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    move-object v13, v1

    check-cast v13, Lio/milton/resource/DeletableResource;

    iget-object v1, v0, Lio/milton/http/webdav/CopyHandler;->handlerHelper:Lio/milton/http/HandlerHelper;

    sget-object v5, Lio/milton/http/Request$Method;->DELETE:Lio/milton/http/Request$Method;

    invoke-interface/range {p2 .. p2}, Lio/milton/http/Request;->getAuthorization()Lio/milton/http/Auth;

    move-result-object v6

    move-object v2, p1

    move-object v3, v13

    move-object/from16 v4, p2

    invoke-virtual/range {v1 .. v6}, Lio/milton/http/HandlerHelper;->checkAuthorisation(Lio/milton/http/HttpManager;Lio/milton/resource/Resource;Lio/milton/http/Request;Lio/milton/http/Request$Method;Lio/milton/http/Auth;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lio/milton/http/webdav/CopyHandler;->responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {v1, v12, v8, v7}, Lio/milton/http/http11/Http11ResponseHandler;->respondUnauthorised(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    return-void

    :cond_5
    iget-object v1, v0, Lio/milton/http/webdav/CopyHandler;->deleteHelper:Lio/milton/http/DeleteHelper;

    invoke-virtual {p1}, Lio/milton/http/HttpManager;->getEventManager()Lio/milton/event/EventManager;

    move-result-object v2

    invoke-interface {v1, v13, v2}, Lio/milton/http/DeleteHelper;->delete(Lio/milton/resource/DeletableResource;Lio/milton/event/EventManager;)V

    const/4 v1, 0x1

    const/4 v13, 0x1

    goto :goto_1

    :cond_6
    iget-object v2, v0, Lio/milton/http/webdav/CopyHandler;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "copy destination exists and is a collection so must be deleted, but does not implement: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v4, Lio/milton/resource/DeletableResource;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    iget-object v2, v0, Lio/milton/http/webdav/CopyHandler;->responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-virtual {v11}, Lio/milton/http/webdav/Dest;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v8, v7, v3}, Lio/milton/http/http11/Http11ResponseHandler;->respondConflict(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;Ljava/lang/String;)V

    return-void

    :cond_7
    const/4 v1, 0x0

    const/4 v13, 0x0

    :goto_1
    iget-object v1, v0, Lio/milton/http/webdav/CopyHandler;->handlerHelper:Lio/milton/http/HandlerHelper;

    invoke-interface/range {p2 .. p2}, Lio/milton/http/Request;->getMethod()Lio/milton/http/Request$Method;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Lio/milton/http/Request;->getAuthorization()Lio/milton/http/Auth;

    move-result-object v6

    move-object v2, p1

    move-object v3, v12

    move-object/from16 v4, p2

    invoke-virtual/range {v1 .. v6}, Lio/milton/http/HandlerHelper;->checkAuthorisation(Lio/milton/http/HttpManager;Lio/milton/resource/Resource;Lio/milton/http/Request;Lio/milton/http/Request$Method;Lio/milton/http/Auth;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v0, Lio/milton/http/webdav/CopyHandler;->responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {v1, v12, v8, v7}, Lio/milton/http/http11/Http11ResponseHandler;->respondUnauthorised(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    return-void

    :cond_8
    iget-object v1, v11, Lio/milton/http/webdav/Dest;->name:Ljava/lang/String;

    invoke-interface {v10, v12, v1}, Lio/milton/resource/CopyableResource;->copyTo(Lio/milton/resource/CollectionResource;Ljava/lang/String;)V

    iget-object v1, v0, Lio/milton/http/webdav/CopyHandler;->responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    if-eqz v13, :cond_9

    invoke-interface {v1, v9, v8, v7}, Lio/milton/http/http11/Http11ResponseHandler;->respondNoContent(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    goto :goto_2

    :cond_9
    invoke-interface {v1, v9, v8, v7}, Lio/milton/http/http11/Http11ResponseHandler;->respondCreated(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    :goto_2
    return-void
.end method

.method public processResource(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V
    .locals 6

    iget-object v0, p0, Lio/milton/http/webdav/CopyHandler;->resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lio/milton/http/ResourceHandlerHelper;->processResource(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;Lio/milton/http/ExistingEntityHandler;)V

    return-void
.end method
