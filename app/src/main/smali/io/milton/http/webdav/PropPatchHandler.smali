.class public Lio/milton/http/webdav/PropPatchHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/ExistingEntityHandler;
.implements Lio/milton/http/Handler;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final patchSetter:Lio/milton/http/webdav/PropPatchSetter;

.field private final permissionService:Lio/milton/property/PropertyAuthoriser;

.field private final requestParser:Lio/milton/http/webdav/PropPatchRequestParser;

.field private final resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

.field private final responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/webdav/PropPatchHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/webdav/PropPatchHandler;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lio/milton/http/ResourceHandlerHelper;Lio/milton/http/webdav/PropPatchRequestParser;Lio/milton/http/webdav/PropPatchSetter;Lio/milton/http/webdav/WebDavResponseHandler;Lio/milton/property/PropertyAuthoriser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/webdav/PropPatchHandler;->resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

    iput-object p2, p0, Lio/milton/http/webdav/PropPatchHandler;->requestParser:Lio/milton/http/webdav/PropPatchRequestParser;

    iput-object p3, p0, Lio/milton/http/webdav/PropPatchHandler;->patchSetter:Lio/milton/http/webdav/PropPatchSetter;

    iput-object p4, p0, Lio/milton/http/webdav/PropPatchHandler;->responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    iput-object p5, p0, Lio/milton/http/webdav/PropPatchHandler;->permissionService:Lio/milton/property/PropertyAuthoriser;

    return-void
.end method

.method private getAllFields(Lio/milton/http/webdav/PropPatchParseResult;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/http/webdav/PropPatchParseResult;",
            ")",
            "Ljava/util/Set<",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Lio/milton/http/webdav/PropPatchParseResult;->getFieldsToRemove()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lio/milton/http/webdav/PropPatchParseResult;->getFieldsToRemove()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p1}, Lio/milton/http/webdav/PropPatchParseResult;->getFieldsToSet()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lio/milton/http/webdav/PropPatchParseResult;->getFieldsToSet()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method


# virtual methods
.method public doPropPatch(Lio/milton/http/Request;Lio/milton/resource/Resource;)Lio/milton/http/webdav/PropFindResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/milton/http/webdav/PropPatchHandler;->patchSetter:Lio/milton/http/webdav/PropPatchSetter;

    invoke-virtual {p0, p1, p2, v0}, Lio/milton/http/webdav/PropPatchHandler;->doPropPatch(Lio/milton/http/Request;Lio/milton/resource/Resource;Lio/milton/http/webdav/PropPatchSetter;)Lio/milton/http/webdav/PropFindResponse;

    move-result-object p1

    return-object p1
.end method

.method public doPropPatch(Lio/milton/http/Request;Lio/milton/resource/Resource;Lio/milton/http/webdav/PropPatchSetter;)Lio/milton/http/webdav/PropFindResponse;
    .locals 7

    .line 2
    invoke-interface {p1}, Lio/milton/http/Request;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lio/milton/http/webdav/PropPatchHandler;->requestParser:Lio/milton/http/webdav/PropPatchRequestParser;

    invoke-interface {v1, v0}, Lio/milton/http/webdav/PropPatchRequestParser;->getRequestedFields(Ljava/io/InputStream;)Lio/milton/http/webdav/PropPatchParseResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/milton/http/webdav/PropPatchHandler;->getAllFields(Lio/milton/http/webdav/PropPatchParseResult;)Ljava/util/Set;

    move-result-object v5

    sget-object v1, Lio/milton/http/webdav/PropPatchHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "check permissions with: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/milton/http/webdav/PropPatchHandler;->permissionService:Lio/milton/property/PropertyAuthoriser;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lio/milton/http/webdav/PropPatchHandler;->permissionService:Lio/milton/property/PropertyAuthoriser;

    invoke-interface {p1}, Lio/milton/http/Request;->getMethod()Lio/milton/http/Request$Method;

    move-result-object v3

    sget-object v4, Lio/milton/property/PropertyAuthoriser$PropertyPermission;->WRITE:Lio/milton/property/PropertyAuthoriser$PropertyPermission;

    move-object v2, p1

    move-object v6, p2

    invoke-interface/range {v1 .. v6}, Lio/milton/property/PropertyAuthoriser;->checkPermissions(Lio/milton/http/Request;Lio/milton/http/Request$Method;Lio/milton/property/PropertyAuthoriser$PropertyPermission;Ljava/util/Set;Lio/milton/resource/Resource;)Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lio/milton/http/exceptions/NotAuthorizedException;

    invoke-direct {p1, p2}, Lio/milton/http/exceptions/NotAuthorizedException;-><init>(Lio/milton/resource/Resource;)V

    throw p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Lio/milton/http/Request;->getAbsoluteUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/milton/http/webdav/DefaultPropFindPropertyBuilder;->fixUrlForWindows(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, v0, p2}, Lio/milton/http/webdav/PropPatchSetter;->setProperties(Ljava/lang/String;Lio/milton/http/webdav/PropPatchParseResult;Lio/milton/resource/Resource;)Lio/milton/http/webdav/PropFindResponse;

    move-result-object p1

    return-object p1
.end method

.method public getMethods()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/milton/http/Request$Method;->PROPPATCH:Lio/milton/http/Request$Method;

    iget-object v0, v0, Lio/milton/http/Request$Method;->code:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCompatible(Lio/milton/resource/Resource;)Z
    .locals 1

    iget-object v0, p0, Lio/milton/http/webdav/PropPatchHandler;->patchSetter:Lio/milton/http/webdav/PropPatchSetter;

    invoke-interface {v0, p1}, Lio/milton/http/webdav/PropPatchSetter;->supports(Lio/milton/resource/Resource;)Z

    move-result p1

    return p1
.end method

.method public process(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;)V
    .locals 1

    iget-object v0, p0, Lio/milton/http/webdav/PropPatchHandler;->resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

    invoke-virtual {v0, p1, p2, p3, p0}, Lio/milton/http/ResourceHandlerHelper;->process(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/http/ResourceHandler;)V

    return-void
.end method

.method public processExistingResource(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0, p2, p4}, Lio/milton/http/webdav/PropPatchHandler;->doPropPatch(Lio/milton/http/Request;Lio/milton/resource/Resource;)Lio/milton/http/webdav/PropFindResponse;

    move-result-object v0

    invoke-virtual {p1}, Lio/milton/http/HttpManager;->getEventManager()Lio/milton/event/EventManager;

    move-result-object p1

    new-instance v1, Lio/milton/event/PropPatchEvent;

    invoke-direct {v1, p4, v0}, Lio/milton/event/PropPatchEvent;-><init>(Lio/milton/resource/Resource;Lio/milton/http/webdav/PropFindResponse;)V

    invoke-interface {p1, v1}, Lio/milton/event/EventManager;->fireEvent(Lio/milton/event/Event;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/milton/http/webdav/PropPatchHandler;->responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {v0, p1, p3, p2, p4}, Lio/milton/http/webdav/WebDavResponseHandler;->respondPropFind(Ljava/util/List;Lio/milton/http/Response;Lio/milton/http/Request;Lio/milton/resource/Resource;)V
    :try_end_0
    .catch Lio/milton/http/exceptions/NotAuthorizedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lio/milton/common/WritingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lio/milton/common/ReadingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_2
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    iget-object p1, p0, Lio/milton/http/webdav/PropPatchHandler;->responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {p1, p4, p3, p2}, Lio/milton/http/http11/Http11ResponseHandler;->respondUnauthorised(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    :goto_3
    return-void
.end method

.method public processResource(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V
    .locals 10

    const-string v0, "resource not compatible. Resource class: "

    const-string v1, "authentication failed. respond with: "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    :try_start_0
    invoke-virtual {p1, p2, p3, p4}, Lio/milton/http/HttpManager;->onProcessResourceStart(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V

    iget-object v7, p0, Lio/milton/http/webdav/PropPatchHandler;->resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

    invoke-interface {p2}, Lio/milton/http/Request;->getMethod()Lio/milton/http/Request$Method;

    move-result-object v8

    invoke-virtual {v7, p4, v8}, Lio/milton/http/ResourceHandlerHelper;->isNotCompatible(Lio/milton/resource/Resource;Lio/milton/http/Request$Method;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {p0, p4}, Lio/milton/http/webdav/PropPatchHandler;->isCompatible(Lio/milton/resource/Resource;)Z

    move-result v7

    if-nez v7, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lio/milton/http/webdav/PropPatchHandler;->resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

    invoke-virtual {v0, p1, p4, p2}, Lio/milton/http/ResourceHandlerHelper;->checkAuthentication(Lio/milton/http/HttpManager;Lio/milton/resource/Resource;Lio/milton/http/Request;)Lio/milton/http/AuthenticationService$AuthStatus;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lio/milton/http/AuthenticationService$AuthStatus;->loginFailed:Z

    if-eqz v0, :cond_1

    sget-object v0, Lio/milton/http/webdav/PropPatchHandler;->log:Lorg/slf4j/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/milton/http/webdav/PropPatchHandler;->responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " resource: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lio/milton/http/webdav/PropPatchHandler;->responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {v0, p4, p3, p2}, Lio/milton/http/http11/Http11ResponseHandler;->respondUnauthorised(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v5, v8, v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v1 .. v6}, Lio/milton/http/HttpManager;->onProcessResourceFinish(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;J)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :try_start_1
    invoke-interface {p2}, Lio/milton/http/Request;->getMethod()Lio/milton/http/Request$Method;

    move-result-object v0

    iget-boolean v0, v0, Lio/milton/http/Request$Method;->isWrite:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/milton/http/webdav/PropPatchHandler;->resourceHandlerHelper:Lio/milton/http/ResourceHandlerHelper;

    invoke-virtual {v0, p2, p4}, Lio/milton/http/ResourceHandlerHelper;->isLockedOut(Lio/milton/http/Request;Lio/milton/resource/Resource;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lio/milton/http/Response$Status;->SC_LOCKED:Lio/milton/http/Response$Status;

    invoke-interface {p3, v0}, Lio/milton/http/Response;->setStatus(Lio/milton/http/Response$Status;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/milton/http/webdav/PropPatchHandler;->processExistingResource(Lio/milton/http/HttpManager;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v5, v8, v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v1 .. v6}, Lio/milton/http/HttpManager;->onProcessResourceFinish(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;J)V

    return-void

    :cond_3
    :goto_1
    :try_start_2
    sget-object v1, Lio/milton/http/webdav/PropPatchHandler;->log:Lorg/slf4j/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " handler: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lio/milton/http/webdav/PropPatchHandler;->responseHandler:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {v0, p4, p3, p2}, Lio/milton/http/http11/Http11ResponseHandler;->respondMethodNotImplemented(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v5, v8, v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v1 .. v6}, Lio/milton/http/HttpManager;->onProcessResourceFinish(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;J)V

    throw v0
.end method
