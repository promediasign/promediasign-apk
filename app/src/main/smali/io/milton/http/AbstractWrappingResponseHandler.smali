.class public abstract Lio/milton/http/AbstractWrappingResponseHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/webdav/WebDavResponseHandler;
.implements Lio/milton/http/http11/Bufferable;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field protected wrapped:Lio/milton/http/webdav/WebDavResponseHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/AbstractWrappingResponseHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/AbstractWrappingResponseHandler;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lio/milton/http/webdav/WebDavResponseHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/AbstractWrappingResponseHandler;->wrapped:Lio/milton/http/webdav/WebDavResponseHandler;

    return-void
.end method


# virtual methods
.method public generateEtag(Lio/milton/resource/Resource;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/http/AbstractWrappingResponseHandler;->wrapped:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {v0, p1}, Lio/milton/http/http11/ETagGenerator;->generateEtag(Lio/milton/resource/Resource;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public respondBadRequest(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V
    .locals 1

    iget-object v0, p0, Lio/milton/http/AbstractWrappingResponseHandler;->wrapped:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {v0, p1, p2, p3}, Lio/milton/http/http11/Http11ResponseHandler;->respondBadRequest(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    return-void
.end method

.method public respondConflict(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lio/milton/http/AbstractWrappingResponseHandler;->wrapped:Lio/milton/http/webdav/WebDavResponseHandler;

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

    iget-object v0, p0, Lio/milton/http/AbstractWrappingResponseHandler;->wrapped:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/milton/http/http11/Http11ResponseHandler;->respondContent(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;Ljava/util/Map;)V

    return-void
.end method

.method public respondCreated(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V
    .locals 1

    iget-object v0, p0, Lio/milton/http/AbstractWrappingResponseHandler;->wrapped:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {v0, p1, p2, p3}, Lio/milton/http/http11/Http11ResponseHandler;->respondCreated(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    return-void
.end method

.method public respondDeleteFailed(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;Lio/milton/http/Response$Status;)V
    .locals 1

    iget-object v0, p0, Lio/milton/http/AbstractWrappingResponseHandler;->wrapped:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/milton/http/http11/Http11ResponseHandler;->respondDeleteFailed(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;Lio/milton/http/Response$Status;)V

    return-void
.end method

.method public respondHead(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V
    .locals 1

    iget-object v0, p0, Lio/milton/http/AbstractWrappingResponseHandler;->wrapped:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {v0, p1, p2, p3}, Lio/milton/http/http11/Http11ResponseHandler;->respondHead(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    return-void
.end method

.method public respondInsufficientStorage(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/http/quota/StorageChecker$StorageErrorReason;)V
    .locals 1

    iget-object v0, p0, Lio/milton/http/AbstractWrappingResponseHandler;->wrapped:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {v0, p1, p2, p3}, Lio/milton/http/webdav/WebDavResponseHandler;->respondInsufficientStorage(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/http/quota/StorageChecker$StorageErrorReason;)V

    return-void
.end method

.method public respondLocked(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V
    .locals 1

    iget-object v0, p0, Lio/milton/http/AbstractWrappingResponseHandler;->wrapped:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {v0, p1, p2, p3}, Lio/milton/http/webdav/WebDavResponseHandler;->respondLocked(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V

    return-void
.end method

.method public respondMethodNotAllowed(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V
    .locals 1

    iget-object v0, p0, Lio/milton/http/AbstractWrappingResponseHandler;->wrapped:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {v0, p1, p2, p3}, Lio/milton/http/http11/Http11ResponseHandler;->respondMethodNotAllowed(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    return-void
.end method

.method public respondMethodNotImplemented(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V
    .locals 1

    iget-object v0, p0, Lio/milton/http/AbstractWrappingResponseHandler;->wrapped:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {v0, p1, p2, p3}, Lio/milton/http/http11/Http11ResponseHandler;->respondMethodNotImplemented(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    return-void
.end method

.method public respondNoContent(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V
    .locals 1

    iget-object v0, p0, Lio/milton/http/AbstractWrappingResponseHandler;->wrapped:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {v0, p1, p2, p3}, Lio/milton/http/http11/Http11ResponseHandler;->respondNoContent(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    return-void
.end method

.method public respondNotFound(Lio/milton/http/Response;Lio/milton/http/Request;)V
    .locals 1

    iget-object v0, p0, Lio/milton/http/AbstractWrappingResponseHandler;->wrapped:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {v0, p1, p2}, Lio/milton/http/http11/Http11ResponseHandler;->respondNotFound(Lio/milton/http/Response;Lio/milton/http/Request;)V

    return-void
.end method

.method public respondNotModified(Lio/milton/resource/GetableResource;Lio/milton/http/Response;Lio/milton/http/Request;)V
    .locals 2

    sget-object v0, Lio/milton/http/AbstractWrappingResponseHandler;->log:Lorg/slf4j/Logger;

    const-string v1, "respondNotModified"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    iget-object v0, p0, Lio/milton/http/AbstractWrappingResponseHandler;->wrapped:Lio/milton/http/webdav/WebDavResponseHandler;

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
    iget-object v0, p0, Lio/milton/http/AbstractWrappingResponseHandler;->wrapped:Lio/milton/http/webdav/WebDavResponseHandler;

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
    iget-object v0, p0, Lio/milton/http/AbstractWrappingResponseHandler;->wrapped:Lio/milton/http/webdav/WebDavResponseHandler;

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

    iget-object v0, p0, Lio/milton/http/AbstractWrappingResponseHandler;->wrapped:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {v0, p1, p2, p3}, Lio/milton/http/webdav/WebDavResponseHandler;->respondPreconditionFailed(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V

    return-void
.end method

.method public respondPropFind(Ljava/util/List;Lio/milton/http/Response;Lio/milton/http/Request;Lio/milton/resource/Resource;)V
    .locals 1
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

    iget-object v0, p0, Lio/milton/http/AbstractWrappingResponseHandler;->wrapped:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/milton/http/webdav/WebDavResponseHandler;->respondPropFind(Ljava/util/List;Lio/milton/http/Response;Lio/milton/http/Request;Lio/milton/resource/Resource;)V

    return-void
.end method

.method public respondRedirect(Lio/milton/http/Response;Lio/milton/http/Request;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lio/milton/http/AbstractWrappingResponseHandler;->wrapped:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {v0, p1, p2, p3}, Lio/milton/http/http11/Http11ResponseHandler;->respondRedirect(Lio/milton/http/Response;Lio/milton/http/Request;Ljava/lang/String;)V

    return-void
.end method

.method public respondUnauthorised(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V
    .locals 1

    iget-object v0, p0, Lio/milton/http/AbstractWrappingResponseHandler;->wrapped:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {v0, p1, p2, p3}, Lio/milton/http/http11/Http11ResponseHandler;->respondUnauthorised(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    return-void
.end method

.method public respondWithOptions(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;Ljava/util/List;)V
    .locals 1
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

    iget-object v0, p0, Lio/milton/http/AbstractWrappingResponseHandler;->wrapped:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/milton/http/http11/Http11ResponseHandler;->respondWithOptions(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;Ljava/util/List;)V

    return-void
.end method

.method public setBuffering(Lio/milton/http/http11/DefaultHttp11ResponseHandler$BUFFERING;)V
    .locals 2

    iget-object v0, p0, Lio/milton/http/AbstractWrappingResponseHandler;->wrapped:Lio/milton/http/webdav/WebDavResponseHandler;

    instance-of v1, v0, Lio/milton/http/http11/Bufferable;

    if-eqz v1, :cond_0

    check-cast v0, Lio/milton/http/http11/Bufferable;

    invoke-interface {v0, p1}, Lio/milton/http/http11/Bufferable;->setBuffering(Lio/milton/http/http11/DefaultHttp11ResponseHandler$BUFFERING;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The wrapped response handle is not Bufferable. Is a: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/milton/http/AbstractWrappingResponseHandler;->wrapped:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
