.class public interface abstract Lio/milton/http/webdav/WebDavResponseHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/http11/Http11ResponseHandler;


# virtual methods
.method public abstract respondInsufficientStorage(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/http/quota/StorageChecker$StorageErrorReason;)V
.end method

.method public abstract respondLocked(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V
.end method

.method public abstract respondPreconditionFailed(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V
.end method

.method public abstract respondPropFind(Ljava/util/List;Lio/milton/http/Response;Lio/milton/http/Request;Lio/milton/resource/Resource;)V
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
.end method
