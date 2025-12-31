.class public interface abstract Lio/milton/http/http11/Http11ResponseHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/http11/ETagGenerator;


# virtual methods
.method public abstract respondBadRequest(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V
.end method

.method public abstract respondConflict(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;Ljava/lang/String;)V
.end method

.method public abstract respondContent(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;Ljava/util/Map;)V
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
.end method

.method public abstract respondCreated(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V
.end method

.method public abstract respondDeleteFailed(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;Lio/milton/http/Response$Status;)V
.end method

.method public abstract respondHead(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V
.end method

.method public abstract respondMethodNotAllowed(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V
.end method

.method public abstract respondMethodNotImplemented(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V
.end method

.method public abstract respondNoContent(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V
.end method

.method public abstract respondNotFound(Lio/milton/http/Response;Lio/milton/http/Request;)V
.end method

.method public abstract respondNotModified(Lio/milton/resource/GetableResource;Lio/milton/http/Response;Lio/milton/http/Request;)V
.end method

.method public abstract respondPartialContent(Lio/milton/resource/GetableResource;Lio/milton/http/Response;Lio/milton/http/Request;Ljava/util/Map;Lio/milton/http/Range;)V
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
.end method

.method public abstract respondPartialContent(Lio/milton/resource/GetableResource;Lio/milton/http/Response;Lio/milton/http/Request;Ljava/util/Map;Ljava/util/List;)V
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
.end method

.method public abstract respondPreconditionFailed(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V
.end method

.method public abstract respondRedirect(Lio/milton/http/Response;Lio/milton/http/Request;Ljava/lang/String;)V
.end method

.method public abstract respondUnauthorised(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V
.end method

.method public abstract respondWithOptions(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;Ljava/util/List;)V
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
.end method
