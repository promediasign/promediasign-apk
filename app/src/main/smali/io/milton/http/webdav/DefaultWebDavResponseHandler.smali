.class public Lio/milton/http/webdav/DefaultWebDavResponseHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/webdav/WebDavResponseHandler;
.implements Lio/milton/http/http11/Bufferable;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field protected final propFindXmlGenerator:Lio/milton/http/webdav/PropFindXmlGenerator;

.field protected final resourceTypeHelper:Lio/milton/http/webdav/ResourceTypeHelper;

.field protected final wrapped:Lio/milton/http/http11/Http11ResponseHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/webdav/DefaultWebDavResponseHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/webdav/DefaultWebDavResponseHandler;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lio/milton/http/http11/Http11ResponseHandler;Lio/milton/http/webdav/ResourceTypeHelper;Lio/milton/http/webdav/PropFindXmlGenerator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/webdav/DefaultWebDavResponseHandler;->wrapped:Lio/milton/http/http11/Http11ResponseHandler;

    iput-object p2, p0, Lio/milton/http/webdav/DefaultWebDavResponseHandler;->resourceTypeHelper:Lio/milton/http/webdav/ResourceTypeHelper;

    iput-object p3, p0, Lio/milton/http/webdav/DefaultWebDavResponseHandler;->propFindXmlGenerator:Lio/milton/http/webdav/PropFindXmlGenerator;

    return-void
.end method

.method private isBriefHeader(Lio/milton/http/Request;)Z
    .locals 1

    invoke-interface {p1}, Lio/milton/http/Request;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v0, "Brief"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "t"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public generateEtag(Lio/milton/resource/Resource;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/http/webdav/DefaultWebDavResponseHandler;->wrapped:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-interface {v0, p1}, Lio/milton/http/http11/ETagGenerator;->generateEtag(Lio/milton/resource/Resource;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public respondBadRequest(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V
    .locals 1

    iget-object v0, p0, Lio/milton/http/webdav/DefaultWebDavResponseHandler;->wrapped:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-interface {v0, p1, p2, p3}, Lio/milton/http/http11/Http11ResponseHandler;->respondBadRequest(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    return-void
.end method

.method public respondConflict(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lio/milton/http/webdav/DefaultWebDavResponseHandler;->wrapped:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/milton/http/http11/Http11ResponseHandler;->respondConflict(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;Ljava/lang/String;)V

    return-void
.end method

.method public respondContent(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/resource/Resource;",
            "Lio/milton/http/Response;",
            "Lio/milton/http/Request;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/milton/http/webdav/DefaultWebDavResponseHandler;->wrapped:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/milton/http/http11/Http11ResponseHandler;->respondContent(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;Ljava/util/Map;)V

    return-void
.end method

.method public respondCreated(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V
    .locals 1

    iget-object v0, p0, Lio/milton/http/webdav/DefaultWebDavResponseHandler;->wrapped:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-interface {v0, p1, p2, p3}, Lio/milton/http/http11/Http11ResponseHandler;->respondCreated(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    return-void
.end method

.method public respondDeleteFailed(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;Lio/milton/http/Response$Status;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lio/milton/http/HrefStatus;

    invoke-interface {p1}, Lio/milton/http/Request;->getAbsoluteUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p4}, Lio/milton/http/HrefStatus;-><init>(Ljava/lang/String;Lio/milton/http/Response$Status;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p3, p2, p1, v0}, Lio/milton/http/webdav/DefaultWebDavResponseHandler;->responseMultiStatus(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;Ljava/util/List;)V

    return-void
.end method

.method public respondHead(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V
    .locals 1

    iget-object v0, p0, Lio/milton/http/webdav/DefaultWebDavResponseHandler;->wrapped:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-interface {v0, p1, p2, p3}, Lio/milton/http/http11/Http11ResponseHandler;->respondHead(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    return-void
.end method

.method public respondInsufficientStorage(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/http/quota/StorageChecker$StorageErrorReason;)V
    .locals 0

    sget-object p1, Lio/milton/http/Response$Status;->SC_INSUFFICIENT_STORAGE:Lio/milton/http/Response$Status;

    invoke-interface {p2, p1}, Lio/milton/http/Response;->setStatus(Lio/milton/http/Response$Status;)V

    return-void
.end method

.method public respondLocked(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V
    .locals 0

    sget-object p1, Lio/milton/http/Response$Status;->SC_LOCKED:Lio/milton/http/Response$Status;

    invoke-interface {p2, p1}, Lio/milton/http/Response;->setStatus(Lio/milton/http/Response$Status;)V

    return-void
.end method

.method public respondMethodNotAllowed(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V
    .locals 1

    iget-object v0, p0, Lio/milton/http/webdav/DefaultWebDavResponseHandler;->wrapped:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-interface {v0, p1, p2, p3}, Lio/milton/http/http11/Http11ResponseHandler;->respondMethodNotAllowed(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    return-void
.end method

.method public respondMethodNotImplemented(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V
    .locals 1

    iget-object v0, p0, Lio/milton/http/webdav/DefaultWebDavResponseHandler;->wrapped:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-interface {v0, p1, p2, p3}, Lio/milton/http/http11/Http11ResponseHandler;->respondMethodNotImplemented(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    return-void
.end method

.method public respondNoContent(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V
    .locals 1

    iget-object v0, p0, Lio/milton/http/webdav/DefaultWebDavResponseHandler;->wrapped:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-interface {v0, p1, p2, p3}, Lio/milton/http/http11/Http11ResponseHandler;->respondNoContent(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    return-void
.end method

.method public respondNotFound(Lio/milton/http/Response;Lio/milton/http/Request;)V
    .locals 1

    iget-object v0, p0, Lio/milton/http/webdav/DefaultWebDavResponseHandler;->wrapped:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-interface {v0, p1, p2}, Lio/milton/http/http11/Http11ResponseHandler;->respondNotFound(Lio/milton/http/Response;Lio/milton/http/Request;)V

    return-void
.end method

.method public respondNotModified(Lio/milton/resource/GetableResource;Lio/milton/http/Response;Lio/milton/http/Request;)V
    .locals 3

    sget-object v0, Lio/milton/http/webdav/DefaultWebDavResponseHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "respondNotModified: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/milton/http/webdav/DefaultWebDavResponseHandler;->wrapped:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lio/milton/http/webdav/DefaultWebDavResponseHandler;->wrapped:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-interface {v0, p1, p2, p3}, Lio/milton/http/http11/Http11ResponseHandler;->respondNotModified(Lio/milton/resource/GetableResource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    return-void
.end method

.method public respondPartialContent(Lio/milton/resource/GetableResource;Lio/milton/http/Response;Lio/milton/http/Request;Ljava/util/Map;Lio/milton/http/Range;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/resource/GetableResource;",
            "Lio/milton/http/Response;",
            "Lio/milton/http/Request;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lio/milton/http/Range;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/milton/http/webdav/DefaultWebDavResponseHandler;->wrapped:Lio/milton/http/http11/Http11ResponseHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lio/milton/http/http11/Http11ResponseHandler;->respondPartialContent(Lio/milton/resource/GetableResource;Lio/milton/http/Response;Lio/milton/http/Request;Ljava/util/Map;Lio/milton/http/Range;)V

    return-void
.end method

.method public respondPartialContent(Lio/milton/resource/GetableResource;Lio/milton/http/Response;Lio/milton/http/Request;Ljava/util/Map;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/resource/GetableResource;",
            "Lio/milton/http/Response;",
            "Lio/milton/http/Request;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lio/milton/http/Range;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lio/milton/http/webdav/DefaultWebDavResponseHandler;->wrapped:Lio/milton/http/http11/Http11ResponseHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lio/milton/http/http11/Http11ResponseHandler;->respondPartialContent(Lio/milton/resource/GetableResource;Lio/milton/http/Response;Lio/milton/http/Request;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public respondPreconditionFailed(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V
    .locals 1

    iget-object v0, p0, Lio/milton/http/webdav/DefaultWebDavResponseHandler;->wrapped:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-interface {v0, p1, p2, p3}, Lio/milton/http/http11/Http11ResponseHandler;->respondPreconditionFailed(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V

    return-void
.end method

.method public respondPropFind(Ljava/util/List;Lio/milton/http/Response;Lio/milton/http/Request;Lio/milton/resource/Resource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/milton/http/webdav/PropFindResponse;",
            ">;",
            "Lio/milton/http/Response;",
            "Lio/milton/http/Request;",
            "Lio/milton/resource/Resource;",
            ")V"
        }
    .end annotation

    sget-object v0, Lio/milton/http/webdav/DefaultWebDavResponseHandler;->log:Lorg/slf4j/Logger;

    const-string v1, "respondPropFind"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    sget-object v1, Lio/milton/http/Response$Status;->SC_MULTI_STATUS:Lio/milton/http/Response$Status;

    invoke-interface {p2, v1}, Lio/milton/http/Response;->setStatus(Lio/milton/http/Response$Status;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-interface {p2, v1}, Lio/milton/http/Response;->setDateHeader(Ljava/util/Date;)V

    const-string v1, "application/xml; charset=utf-8"

    invoke-interface {p2, v1}, Lio/milton/http/Response;->setContentTypeHeader(Ljava/lang/String;)V

    iget-object v1, p0, Lio/milton/http/webdav/DefaultWebDavResponseHandler;->resourceTypeHelper:Lio/milton/http/webdav/ResourceTypeHelper;

    invoke-interface {v1, p4}, Lio/milton/http/webdav/ResourceTypeHelper;->getSupportedLevels(Lio/milton/resource/Resource;)Ljava/util/List;

    move-result-object p4

    invoke-static {p4}, Lio/milton/common/Utils;->toCsv(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, p4}, Lio/milton/http/Response;->setDavHeader(Ljava/lang/String;)V

    invoke-interface {p2}, Lio/milton/http/Response;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    :try_start_0
    new-instance p4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, p3}, Lio/milton/http/webdav/DefaultWebDavResponseHandler;->isBriefHeader(Lio/milton/http/Request;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    iget-object v1, p0, Lio/milton/http/webdav/DefaultWebDavResponseHandler;->propFindXmlGenerator:Lio/milton/http/webdav/PropFindXmlGenerator;

    invoke-virtual {v1, p1, p4, p3}, Lio/milton/http/webdav/PropFindXmlGenerator;->generate(Ljava/util/List;Ljava/io/OutputStream;Z)V

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Propfind response ----"

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    const-string p1, "----"

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    sget-object p2, Lio/milton/http/webdav/DefaultWebDavResponseHandler;->log:Lorg/slf4j/Logger;

    const-string p3, "exception flushing response"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-void

    :goto_2
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public respondRedirect(Lio/milton/http/Response;Lio/milton/http/Request;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lio/milton/http/webdav/DefaultWebDavResponseHandler;->wrapped:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-interface {v0, p1, p2, p3}, Lio/milton/http/http11/Http11ResponseHandler;->respondRedirect(Lio/milton/http/Response;Lio/milton/http/Request;Ljava/lang/String;)V

    return-void
.end method

.method public respondUnauthorised(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V
    .locals 1

    iget-object v0, p0, Lio/milton/http/webdav/DefaultWebDavResponseHandler;->wrapped:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-interface {v0, p1, p2, p3}, Lio/milton/http/http11/Http11ResponseHandler;->respondUnauthorised(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    return-void
.end method

.method public respondWithOptions(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/resource/Resource;",
            "Lio/milton/http/Response;",
            "Lio/milton/http/Request;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/milton/http/webdav/DefaultWebDavResponseHandler;->resourceTypeHelper:Lio/milton/http/webdav/ResourceTypeHelper;

    invoke-interface {v0, p1}, Lio/milton/http/webdav/ResourceTypeHelper;->getSupportedLevels(Lio/milton/resource/Resource;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/milton/common/Utils;->toCsv(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/milton/http/Response;->setDavHeader(Ljava/lang/String;)V

    const-string v0, "MS-Author-Via"

    const-string v1, "DAV"

    invoke-interface {p2, v0, v1}, Lio/milton/http/Response;->setNonStandardHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/milton/http/webdav/DefaultWebDavResponseHandler;->wrapped:Lio/milton/http/http11/Http11ResponseHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/milton/http/http11/Http11ResponseHandler;->respondWithOptions(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;Ljava/util/List;)V

    return-void
.end method

.method public responseMultiStatus(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/resource/Resource;",
            "Lio/milton/http/Response;",
            "Lio/milton/http/Request;",
            "Ljava/util/List<",
            "Lio/milton/http/HrefStatus;",
            ">;)V"
        }
    .end annotation

    sget-object p3, Lio/milton/http/Response$Status;->SC_MULTI_STATUS:Lio/milton/http/Response$Status;

    invoke-interface {p2, p3}, Lio/milton/http/Response;->setStatus(Lio/milton/http/Response$Status;)V

    new-instance p3, Ljava/util/Date;

    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    invoke-interface {p2, p3}, Lio/milton/http/Response;->setDateHeader(Ljava/util/Date;)V

    const-string p3, "text/xml; charset=UTF-8"

    invoke-interface {p2, p3}, Lio/milton/http/Response;->setContentTypeHeader(Ljava/lang/String;)V

    iget-object p3, p0, Lio/milton/http/webdav/DefaultWebDavResponseHandler;->resourceTypeHelper:Lio/milton/http/webdav/ResourceTypeHelper;

    invoke-interface {p3, p1}, Lio/milton/http/webdav/ResourceTypeHelper;->getSupportedLevels(Lio/milton/resource/Resource;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lio/milton/common/Utils;->toCsv(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/milton/http/Response;->setDavHeader(Ljava/lang/String;)V

    new-instance p1, Lio/milton/http/entity/MultiStatusEntity;

    invoke-direct {p1, p4}, Lio/milton/http/entity/MultiStatusEntity;-><init>(Ljava/util/List;)V

    invoke-interface {p2, p1}, Lio/milton/http/Response;->setEntity(Lio/milton/http/Response$Entity;)V

    return-void
.end method

.method public setBuffering(Lio/milton/http/http11/DefaultHttp11ResponseHandler$BUFFERING;)V
    .locals 2

    iget-object v0, p0, Lio/milton/http/webdav/DefaultWebDavResponseHandler;->wrapped:Lio/milton/http/http11/Http11ResponseHandler;

    instance-of v1, v0, Lio/milton/http/http11/Bufferable;

    if-eqz v1, :cond_0

    check-cast v0, Lio/milton/http/http11/Bufferable;

    invoke-interface {v0, p1}, Lio/milton/http/http11/Bufferable;->setBuffering(Lio/milton/http/http11/DefaultHttp11ResponseHandler$BUFFERING;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Wrapped class is not a known type"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
