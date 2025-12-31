.class public Lio/milton/http/webdav/MkColHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/Handler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/milton/http/webdav/MkColHandler$DefaultCollectionResourceCreator;,
        Lio/milton/http/webdav/MkColHandler$CollectionResourceCreator;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private collectionResourceCreator:Lio/milton/http/webdav/MkColHandler$CollectionResourceCreator;

.field private final handlerHelper:Lio/milton/http/HandlerHelper;

.field private final responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/webdav/MkColHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/webdav/MkColHandler;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lio/milton/http/webdav/WebDavResponseHandler;Lio/milton/http/HandlerHelper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/milton/http/webdav/MkColHandler$DefaultCollectionResourceCreator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/milton/http/webdav/MkColHandler$DefaultCollectionResourceCreator;-><init>(Lio/milton/http/webdav/MkColHandler;Lio/milton/http/webdav/MkColHandler$1;)V

    iput-object v0, p0, Lio/milton/http/webdav/MkColHandler;->collectionResourceCreator:Lio/milton/http/webdav/MkColHandler$CollectionResourceCreator;

    iput-object p1, p0, Lio/milton/http/webdav/MkColHandler;->responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    iput-object p2, p0, Lio/milton/http/webdav/MkColHandler;->handlerHelper:Lio/milton/http/HandlerHelper;

    return-void
.end method

.method private processMakeCol(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/CollectionResource;Ljava/lang/String;Lio/milton/http/webdav/MkColHandler$CollectionResourceCreator;)V
    .locals 2

    iget-object v0, p0, Lio/milton/http/webdav/MkColHandler;->handlerHelper:Lio/milton/http/HandlerHelper;

    invoke-virtual {v0, p1, p4, p2}, Lio/milton/http/HandlerHelper;->checkAuthorisation(Lio/milton/http/HttpManager;Lio/milton/resource/Resource;Lio/milton/http/Request;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lio/milton/http/webdav/MkColHandler;->log:Lorg/slf4j/Logger;

    const-string p5, "not authorised"

    invoke-interface {p1, p5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    iget-object p1, p0, Lio/milton/http/webdav/MkColHandler;->responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {p1, p4, p3, p2}, Lio/milton/http/http11/Http11ResponseHandler;->respondUnauthorised(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    return-void

    :cond_0
    iget-object v0, p0, Lio/milton/http/webdav/MkColHandler;->handlerHelper:Lio/milton/http/HandlerHelper;

    iget-object v1, p0, Lio/milton/http/webdav/MkColHandler;->responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-virtual {v0, v1, p2, p3}, Lio/milton/http/HandlerHelper;->checkExpects(Lio/milton/http/http11/Http11ResponseHandler;Lio/milton/http/Request;Lio/milton/http/Response;)Z

    invoke-virtual {p0, p4}, Lio/milton/http/webdav/MkColHandler;->isCompatible(Lio/milton/resource/Resource;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Lio/milton/http/webdav/MkColHandler;->log:Lorg/slf4j/Logger;

    const-string p5, "not compatible"

    invoke-interface {p1, p5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    iget-object p1, p0, Lio/milton/http/webdav/MkColHandler;->responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {p1, p4, p3, p2}, Lio/milton/http/http11/Http11ResponseHandler;->respondMethodNotImplemented(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    return-void

    :cond_1
    move-object v0, p4

    check-cast v0, Lio/milton/resource/MakeCollectionableResource;

    invoke-interface {v0, p5}, Lio/milton/resource/CollectionResource;->child(Ljava/lang/String;)Lio/milton/resource/Resource;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object p1, Lio/milton/http/webdav/MkColHandler;->log:Lorg/slf4j/Logger;

    const-string p4, "found already existing item: "

    const-string p6, " of type: "

    .line 1
    invoke-static {p4, p5, p6}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, " with actual name: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1, p4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    iget-object p1, p0, Lio/milton/http/webdav/MkColHandler;->responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {p1, v1, p3, p2}, Lio/milton/http/http11/Http11ResponseHandler;->respondMethodNotAllowed(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    return-void

    :cond_2
    invoke-interface {p6, v0, p5, p2}, Lio/milton/http/webdav/MkColHandler$CollectionResourceCreator;->createResource(Lio/milton/resource/MakeCollectionableResource;Ljava/lang/String;Lio/milton/http/Request;)Lio/milton/resource/CollectionResource;

    move-result-object p2

    if-nez p2, :cond_3

    sget-object p1, Lio/milton/http/webdav/MkColHandler;->log:Lorg/slf4j/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "createCollection returned null. In resource class: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    sget-object p1, Lio/milton/http/Response$Status;->SC_METHOD_NOT_ALLOWED:Lio/milton/http/Response$Status;

    :goto_0
    invoke-interface {p3, p1}, Lio/milton/http/Response;->setStatus(Lio/milton/http/Response$Status;)V

    goto :goto_1

    :cond_3
    sget-object p5, Lio/milton/http/webdav/MkColHandler;->log:Lorg/slf4j/Logger;

    new-instance p6, Ljava/lang/StringBuilder;

    const-string v0, "created item ok: "

    invoke-direct {p6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p5, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/milton/http/HttpManager;->getEventManager()Lio/milton/event/EventManager;

    move-result-object p1

    new-instance p2, Lio/milton/event/NewFolderEvent;

    invoke-direct {p2, p4}, Lio/milton/event/NewFolderEvent;-><init>(Lio/milton/resource/CollectionResource;)V

    invoke-interface {p1, p2}, Lio/milton/event/EventManager;->fireEvent(Lio/milton/event/Event;)V

    sget-object p1, Lio/milton/http/Response$Status;->SC_CREATED:Lio/milton/http/Response$Status;

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method public getMethods()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/milton/http/Request$Method;->MKCOL:Lio/milton/http/Request$Method;

    iget-object v0, v0, Lio/milton/http/Request$Method;->code:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCompatible(Lio/milton/resource/Resource;)Z
    .locals 0

    instance-of p1, p1, Lio/milton/resource/MakeCollectionableResource;

    return p1
.end method

.method public process(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/milton/http/webdav/MkColHandler;->collectionResourceCreator:Lio/milton/http/webdav/MkColHandler$CollectionResourceCreator;

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/milton/http/webdav/MkColHandler;->process(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/http/webdav/MkColHandler$CollectionResourceCreator;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public process(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/http/webdav/MkColHandler$CollectionResourceCreator;)V
    .locals 10

    .line 2
    iget-object v0, p0, Lio/milton/http/webdav/MkColHandler;->handlerHelper:Lio/milton/http/HandlerHelper;

    iget-object v1, p0, Lio/milton/http/webdav/MkColHandler;->responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-virtual {v0, v1, p2, p3}, Lio/milton/http/HandlerHelper;->checkExpects(Lio/milton/http/http11/Http11ResponseHandler;Lio/milton/http/Request;Lio/milton/http/Response;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Lio/milton/http/Request;->getHostHeader()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lio/milton/http/Request;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/milton/http/HttpManager;->decodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lio/milton/http/webdav/MkColHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "process request: host: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_1
    invoke-static {v1}, Lio/milton/common/Path;->path(Ljava/lang/String;)Lio/milton/common/Path;

    move-result-object v1

    invoke-virtual {v1}, Lio/milton/common/Path;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lio/milton/common/Path;->getParent()Lio/milton/common/Path;

    move-result-object v3

    invoke-virtual {v3}, Lio/milton/common/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lio/milton/http/HttpManager;->getResourceFactory()Lio/milton/http/ResourceFactory;

    move-result-object v4

    invoke-interface {v4, v0, v3}, Lio/milton/http/ResourceFactory;->getResource(Ljava/lang/String;Ljava/lang/String;)Lio/milton/resource/Resource;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "process: resource: "

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object v3, p0, Lio/milton/http/webdav/MkColHandler;->handlerHelper:Lio/milton/http/HandlerHelper;

    invoke-interface {p2}, Lio/milton/http/Request;->getMethod()Lio/milton/http/Request$Method;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lio/milton/http/HandlerHelper;->isNotCompatible(Lio/milton/resource/Resource;Lio/milton/http/Request$Method;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "resource not compatible. Resource class: "

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " handler: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object p1, p0, Lio/milton/http/webdav/MkColHandler;->responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {p1, v4, p3, p2}, Lio/milton/http/http11/Http11ResponseHandler;->respondMethodNotImplemented(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    return-void

    :cond_2
    iget-object v3, p0, Lio/milton/http/webdav/MkColHandler;->handlerHelper:Lio/milton/http/HandlerHelper;

    invoke-virtual {v3, p2, v4}, Lio/milton/http/HandlerHelper;->isLockedOut(Lio/milton/http/Request;Lio/milton/resource/Resource;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string p1, "isLockedOut"

    invoke-interface {v2, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    sget-object p1, Lio/milton/http/Response$Status;->SC_LOCKED:Lio/milton/http/Response$Status;

    invoke-interface {p3, p1}, Lio/milton/http/Response;->setStatus(Lio/milton/http/Response$Status;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Lio/milton/http/HttpManager;->getResourceFactory()Lio/milton/http/ResourceFactory;

    move-result-object v3

    invoke-virtual {v1}, Lio/milton/common/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lio/milton/http/ResourceFactory;->getResource(Ljava/lang/String;Ljava/lang/String;)Lio/milton/resource/Resource;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lio/milton/http/webdav/MkColHandler;->handlerHelper:Lio/milton/http/HandlerHelper;

    invoke-virtual {p1, p2, v0}, Lio/milton/http/HandlerHelper;->isLockedOut(Lio/milton/http/Request;Lio/milton/resource/Resource;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "destination exists and is locked"

    invoke-interface {v2, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    iget-object p1, p0, Lio/milton/http/webdav/MkColHandler;->responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {p1, p2, p3, v0}, Lio/milton/http/webdav/WebDavResponseHandler;->respondLocked(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V

    goto :goto_0

    :cond_4
    const-string p1, "destination exists and is not locked"

    invoke-interface {v2, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    iget-object p1, p0, Lio/milton/http/webdav/MkColHandler;->responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {p1, v0, p3, p2}, Lio/milton/http/http11/Http11ResponseHandler;->respondMethodNotAllowed(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    :goto_0
    return-void

    :cond_5
    iget-object v1, p0, Lio/milton/http/webdav/MkColHandler;->handlerHelper:Lio/milton/http/HandlerHelper;

    invoke-virtual {v1, p2, v4}, Lio/milton/http/HandlerHelper;->missingLock(Lio/milton/http/Request;Lio/milton/resource/Resource;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lio/milton/http/webdav/MkColHandler;->handlerHelper:Lio/milton/http/HandlerHelper;

    invoke-virtual {v1, v0}, Lio/milton/http/HandlerHelper;->isLocked(Lio/milton/resource/Resource;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string p1, "precondition failed"

    invoke-interface {v2, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    iget-object p1, p0, Lio/milton/http/webdav/MkColHandler;->responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {p1, p2, p3, v0}, Lio/milton/http/webdav/WebDavResponseHandler;->respondPreconditionFailed(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V

    return-void

    :cond_6
    instance-of v0, v4, Lio/milton/resource/CollectionResource;

    if-eqz v0, :cond_8

    move-object v7, v4

    check-cast v7, Lio/milton/resource/CollectionResource;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "process mkcol on parent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with creator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    :cond_7
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v9, p4

    invoke-direct/range {v3 .. v9}, Lio/milton/http/webdav/MkColHandler;->processMakeCol(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/CollectionResource;Ljava/lang/String;Lio/milton/http/webdav/MkColHandler$CollectionResourceCreator;)V

    goto :goto_1

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "parent collection is no a CollectionResource: "

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    iget-object p1, p0, Lio/milton/http/webdav/MkColHandler;->responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    const-string p4, "not a collection"

    invoke-interface {p1, v4, p3, p2, p4}, Lio/milton/http/http11/Http11ResponseHandler;->respondConflict(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v1, "parent does not exist: host="

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " path="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {v2, p4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/milton/http/HttpManager;->getResponseHandler()Lio/milton/http/http11/Http11ResponseHandler;

    move-result-object p1

    invoke-interface {p1, v4, p3, p2, v8}, Lio/milton/http/http11/Http11ResponseHandler;->respondConflict(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
