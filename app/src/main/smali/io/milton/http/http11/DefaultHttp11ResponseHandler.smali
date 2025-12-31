.class public Lio/milton/http/http11/DefaultHttp11ResponseHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/http11/Http11ResponseHandler;
.implements Lio/milton/http/http11/Bufferable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/milton/http/http11/DefaultHttp11ResponseHandler$BUFFERING;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;

.field private static final miltonVerson:Ljava/lang/String;


# instance fields
.field private final authenticationService:Lio/milton/http/AuthenticationService;

.field private buffering:Lio/milton/http/http11/DefaultHttp11ResponseHandler$BUFFERING;

.field private cacheControlHelper:Lio/milton/http/http11/CacheControlHelper;

.field private final contentGenerator:Lio/milton/http/http11/ContentGenerator;

.field private final eTagGenerator:Lio/milton/http/http11/ETagGenerator;

.field private maxMemorySize:I

.field private multipartBoundary:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lio/milton/http/http11/DefaultHttp11ResponseHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    sput-object v1, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    :try_start_0
    const-string v2, "/milton.properties"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->log:Lorg/slf4j/Logger;

    const-string v3, "Failed lot load milton properties file"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-string v0, "milton.version"

    invoke-virtual {v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->miltonVerson:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lio/milton/http/AuthenticationService;Lio/milton/http/http11/ETagGenerator;Lio/milton/http/http11/ContentGenerator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/milton/http/http11/DefaultCacheControlHelper;

    invoke-direct {v0}, Lio/milton/http/http11/DefaultCacheControlHelper;-><init>()V

    iput-object v0, p0, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->cacheControlHelper:Lio/milton/http/http11/CacheControlHelper;

    const v0, 0x186a0

    iput v0, p0, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->maxMemorySize:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->multipartBoundary:Ljava/lang/String;

    iput-object p1, p0, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->authenticationService:Lio/milton/http/AuthenticationService;

    iput-object p2, p0, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->eTagGenerator:Lio/milton/http/http11/ETagGenerator;

    iput-object p3, p0, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->contentGenerator:Lio/milton/http/http11/ContentGenerator;

    return-void
.end method

.method private getSelectedIP(Lio/milton/http/Request;)Lio/milton/http/ExternalIdentityProvider;
    .locals 4

    iget-object v0, p0, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->authenticationService:Lio/milton/http/AuthenticationService;

    invoke-virtual {v0}, Lio/milton/http/AuthenticationService;->getExternalIdentityProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LA/g;->x(Ljava/lang/Object;)V

    return-object v3

    :cond_0
    invoke-interface {p1}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    move-result-object p1

    const-string v1, "_ip"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LA/g;->x(Ljava/lang/Object;)V

    throw v3

    :cond_2
    :goto_0
    return-object v3
.end method

.method private pickBestContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    :cond_1
    return-object p1
.end method

.method public static setModifiedDate(Lio/milton/http/Response;Lio/milton/resource/Resource;Lio/milton/http/Auth;)V
    .locals 0

    invoke-interface {p1}, Lio/milton/resource/Resource;->getModifiedDate()Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lio/milton/http/Response;->setLastModifiedHeader(Ljava/util/Date;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public generateEtag(Lio/milton/resource/Resource;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->eTagGenerator:Lio/milton/http/http11/ETagGenerator;

    invoke-interface {v0, p1}, Lio/milton/http/http11/ETagGenerator;->generateEtag(Lio/milton/resource/Resource;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMaxMemorySize()I
    .locals 1

    iget v0, p0, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->maxMemorySize:I

    return v0
.end method

.method public initiateExternalAuth(Lio/milton/resource/Resource;Lio/milton/http/Request;Lio/milton/http/Response;)V
    .locals 0

    invoke-direct {p0, p2}, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->getSelectedIP(Lio/milton/http/Request;)Lio/milton/http/ExternalIdentityProvider;

    return-void
.end method

.method public respondBadRequest(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V
    .locals 0

    sget-object p1, Lio/milton/http/Response$Status;->SC_BAD_REQUEST:Lio/milton/http/Response$Status;

    invoke-interface {p2, p1}, Lio/milton/http/Response;->setStatus(Lio/milton/http/Response$Status;)V

    return-void
.end method

.method public respondConflict(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;Ljava/lang/String;)V
    .locals 1

    sget-object p4, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->log:Lorg/slf4j/Logger;

    const-string v0, "respondConflict"

    invoke-interface {p4, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    sget-object p4, Lio/milton/http/Response$Status;->SC_CONFLICT:Lio/milton/http/Response$Status;

    invoke-interface {p2, p4}, Lio/milton/http/Response;->setStatus(Lio/milton/http/Response$Status;)V

    iget-object v0, p0, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->contentGenerator:Lio/milton/http/http11/ContentGenerator;

    invoke-interface {v0, p1, p3, p2, p4}, Lio/milton/http/http11/ContentGenerator;->generate(Lio/milton/resource/Resource;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/http/Response$Status;)V

    return-void
.end method

.method public respondContent(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;Ljava/util/Map;)V
    .locals 8
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

    sget-object v0, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "respondContent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-interface {p3}, Lio/milton/http/Request;->getAuthorization()Lio/milton/http/Auth;

    move-result-object v1

    invoke-virtual {p0, p2, p1, v1}, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->setRespondContentCommonHeaders(Lio/milton/http/Response;Lio/milton/resource/Resource;Lio/milton/http/Auth;)V

    instance-of v1, p1, Lio/milton/resource/GetableResource;

    if-eqz v1, :cond_6

    move-object v3, p1

    check-cast v3, Lio/milton/resource/GetableResource;

    invoke-interface {p3}, Lio/milton/http/Request;->getAcceptHeader()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Lio/milton/resource/GetableResource;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->pickBestContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/milton/http/Response;->setContentTypeHeader(Ljava/lang/String;)V

    :cond_0
    move-object v5, p1

    iget-object p1, p0, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->cacheControlHelper:Lio/milton/http/http11/CacheControlHelper;

    invoke-interface {p3}, Lio/milton/http/Request;->getAuthorization()Lio/milton/http/Auth;

    move-result-object p3

    invoke-interface {p1, v3, p2, p3}, Lio/milton/http/http11/CacheControlHelper;->setCacheControl(Lio/milton/resource/GetableResource;Lio/milton/http/Response;Lio/milton/http/Auth;)V

    invoke-interface {v3}, Lio/milton/resource/GetableResource;->getContentLength()Ljava/lang/Long;

    move-result-object v6

    iget-object p1, p0, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->buffering:Lio/milton/http/http11/DefaultHttp11ResponseHandler$BUFFERING;

    const/4 p3, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    sget-object v2, Lio/milton/http/http11/DefaultHttp11ResponseHandler$BUFFERING;->whenNeeded:Lio/milton/http/http11/DefaultHttp11ResponseHandler$BUFFERING;

    if-ne p1, v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lio/milton/http/http11/DefaultHttp11ResponseHandler$BUFFERING;->always:Lio/milton/http/http11/DefaultHttp11ResponseHandler$BUFFERING;

    if-ne p1, v2, :cond_2

    :goto_0
    const/4 p3, 0x1

    :cond_2
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    :cond_3
    :goto_1
    if-nez v6, :cond_2

    goto :goto_0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "sending content with known content length: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    if-eqz v6, :cond_4

    invoke-interface {p2, v6}, Lio/milton/http/Response;->setContentLengthHeader(Ljava/lang/Long;)V

    :cond_4
    new-instance p1, Lio/milton/http/entity/GetableResourceEntity;

    invoke-direct {p1, v3, p4, v5}, Lio/milton/http/entity/GetableResourceEntity;-><init>(Lio/milton/resource/GetableResource;Ljava/util/Map;Ljava/lang/String;)V

    :goto_3
    invoke-interface {p2, p1}, Lio/milton/http/Response;->setEntity(Lio/milton/http/Response$Entity;)V

    goto :goto_4

    :cond_5
    new-instance p1, Lio/milton/http/entity/BufferingGetableResourceEntity;

    invoke-virtual {p0}, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->getMaxMemorySize()I

    move-result v7

    move-object v2, p1

    move-object v4, p4

    invoke-direct/range {v2 .. v7}, Lio/milton/http/entity/BufferingGetableResourceEntity;-><init>(Lio/milton/resource/GetableResource;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;I)V

    goto :goto_3

    :cond_6
    :goto_4
    return-void
.end method

.method public respondCreated(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V
    .locals 1

    sget-object v0, Lio/milton/http/Response$Status;->SC_CREATED:Lio/milton/http/Response$Status;

    invoke-interface {p3}, Lio/milton/http/Request;->getAuthorization()Lio/milton/http/Auth;

    move-result-object p3

    invoke-virtual {p0, p2, p1, v0, p3}, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->setRespondCommonHeaders(Lio/milton/http/Response;Lio/milton/resource/Resource;Lio/milton/http/Response$Status;Lio/milton/http/Auth;)V

    return-void
.end method

.method public respondDeleteFailed(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;Lio/milton/http/Response$Status;)V
    .locals 0

    invoke-interface {p2, p4}, Lio/milton/http/Response;->setStatus(Lio/milton/http/Response$Status;)V

    return-void
.end method

.method public respondHead(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V
    .locals 2

    sget-object v0, Lio/milton/http/Response$Status;->SC_OK:Lio/milton/http/Response$Status;

    invoke-interface {p3}, Lio/milton/http/Request;->getAuthorization()Lio/milton/http/Auth;

    move-result-object v1

    invoke-virtual {p0, p2, p1, v0, v1}, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->setRespondContentCommonHeaders(Lio/milton/http/Response;Lio/milton/resource/Resource;Lio/milton/http/Response$Status;Lio/milton/http/Auth;)V

    instance-of v0, p1, Lio/milton/resource/GetableResource;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lio/milton/resource/GetableResource;

    invoke-interface {p3}, Lio/milton/http/Request;->getAcceptHeader()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/milton/resource/GetableResource;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-direct {p0, p3}, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->pickBestContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-interface {p2, p3}, Lio/milton/http/Response;->setContentTypeHeader(Ljava/lang/String;)V

    :cond_1
    invoke-interface {p1}, Lio/milton/resource/GetableResource;->getContentLength()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p2, p1}, Lio/milton/http/Response;->setContentLengthHeader(Ljava/lang/Long;)V

    goto :goto_0

    :cond_2
    sget-object p1, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->log:Lorg/slf4j/Logger;

    const-string p2, "No content length is available for HEAD request"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public respondMethodNotAllowed(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V
    .locals 3

    sget-object v0, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "method not allowed. handler: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " resource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    sget-object v0, Lio/milton/http/Response$Status;->SC_METHOD_NOT_ALLOWED:Lio/milton/http/Response$Status;

    invoke-interface {p2, v0}, Lio/milton/http/Response;->setStatus(Lio/milton/http/Response$Status;)V

    iget-object v1, p0, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->contentGenerator:Lio/milton/http/http11/ContentGenerator;

    invoke-interface {v1, p1, p3, p2, v0}, Lio/milton/http/http11/ContentGenerator;->generate(Lio/milton/resource/Resource;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/http/Response$Status;)V

    return-void
.end method

.method public respondMethodNotImplemented(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V
    .locals 2

    sget-object v0, Lio/milton/http/Response$Status;->SC_NOT_IMPLEMENTED:Lio/milton/http/Response$Status;

    invoke-interface {p2, v0}, Lio/milton/http/Response;->setStatus(Lio/milton/http/Response$Status;)V

    iget-object v1, p0, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->contentGenerator:Lio/milton/http/http11/ContentGenerator;

    invoke-interface {v1, p1, p3, p2, v0}, Lio/milton/http/http11/ContentGenerator;->generate(Lio/milton/resource/Resource;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/http/Response$Status;)V

    return-void
.end method

.method public respondNoContent(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V
    .locals 1

    sget-object v0, Lio/milton/http/Response$Status;->SC_NO_CONTENT:Lio/milton/http/Response$Status;

    invoke-interface {p3}, Lio/milton/http/Request;->getAuthorization()Lio/milton/http/Auth;

    move-result-object p3

    invoke-virtual {p0, p2, p1, v0, p3}, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->setRespondCommonHeaders(Lio/milton/http/Response;Lio/milton/resource/Resource;Lio/milton/http/Response$Status;Lio/milton/http/Auth;)V

    return-void
.end method

.method public respondNotFound(Lio/milton/http/Response;Lio/milton/http/Request;)V
    .locals 3

    sget-object v0, Lio/milton/http/Response$Status;->SC_NOT_FOUND:Lio/milton/http/Response$Status;

    invoke-interface {p1, v0}, Lio/milton/http/Response;->setStatus(Lio/milton/http/Response$Status;)V

    const-string v1, "text/html"

    invoke-interface {p1, v1}, Lio/milton/http/Response;->setContentTypeHeader(Ljava/lang/String;)V

    iget-object v1, p0, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->contentGenerator:Lio/milton/http/http11/ContentGenerator;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p2, p1, v0}, Lio/milton/http/http11/ContentGenerator;->generate(Lio/milton/resource/Resource;Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/http/Response$Status;)V

    return-void
.end method

.method public respondNotModified(Lio/milton/resource/GetableResource;Lio/milton/http/Response;Lio/milton/http/Request;)V
    .locals 2

    sget-object v0, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->log:Lorg/slf4j/Logger;

    const-string v1, "respondNotModified"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    sget-object v0, Lio/milton/http/Response$Status;->SC_NOT_MODIFIED:Lio/milton/http/Response$Status;

    invoke-interface {p2, v0}, Lio/milton/http/Response;->setStatus(Lio/milton/http/Response$Status;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-interface {p2, v0}, Lio/milton/http/Response;->setDateHeader(Ljava/util/Date;)V

    iget-object v0, p0, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->eTagGenerator:Lio/milton/http/http11/ETagGenerator;

    invoke-interface {v0, p1}, Lio/milton/http/http11/ETagGenerator;->generateEtag(Lio/milton/resource/Resource;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p2, v0}, Lio/milton/http/Response;->setEtag(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lio/milton/resource/Resource;->getModifiedDate()Ljava/util/Date;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/milton/http/Response;->setLastModifiedHeader(Ljava/util/Date;)V

    iget-object v0, p0, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->cacheControlHelper:Lio/milton/http/http11/CacheControlHelper;

    invoke-interface {p3}, Lio/milton/http/Request;->getAuthorization()Lio/milton/http/Auth;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lio/milton/http/http11/CacheControlHelper;->setCacheControl(Lio/milton/resource/GetableResource;Lio/milton/http/Response;Lio/milton/http/Auth;)V

    return-void
.end method

.method public respondPartialContent(Lio/milton/resource/GetableResource;Lio/milton/http/Response;Lio/milton/http/Request;Ljava/util/Map;Lio/milton/http/Range;)V
    .locals 17
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
    move-object/from16 v0, p1

    move-object/from16 v7, p2

    sget-object v1, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "respondPartialContent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p5 .. p5}, Lio/milton/http/Range;->getStart()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lio/milton/http/Range;->getFinish()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    sget-object v2, Lio/milton/http/Response$Status;->SC_PARTIAL_CONTENT:Lio/milton/http/Response$Status;

    invoke-interface {v7, v2}, Lio/milton/http/Response;->setStatus(Lio/milton/http/Response$Status;)V

    invoke-virtual/range {p5 .. p5}, Lio/milton/http/Range;->getStart()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_0

    const-wide/16 v4, 0x0

    :goto_0
    move-wide v8, v4

    goto :goto_1

    :cond_0
    invoke-virtual/range {p5 .. p5}, Lio/milton/http/Range;->getStart()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_0

    :goto_1
    invoke-interface/range {p1 .. p1}, Lio/milton/resource/GetableResource;->getContentLength()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual/range {p5 .. p5}, Lio/milton/http/Range;->getFinish()Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v4, -0x1

    const-string v10, "Couldnt calculate range end position because the resource is not reporting a content length, and no end position was requested by the client: "

    const-wide/16 v11, 0x1

    if-nez v2, :cond_2

    if-eqz v6, :cond_1

    :goto_2
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long v4, v1, v11

    :goto_3
    move-wide v13, v4

    goto :goto_5

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-interface/range {p1 .. p1}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual/range {p5 .. p5}, Lio/milton/http/Range;->getFinish()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    cmp-long v2, v13, v15

    if-gez v2, :cond_3

    goto :goto_2

    :cond_3
    if-nez v6, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    invoke-virtual/range {p5 .. p5}, Lio/milton/http/Range;->getFinish()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_3

    :goto_5
    move-object/from16 v1, p2

    move-wide v2, v8

    move-wide v4, v13

    invoke-interface/range {v1 .. v6}, Lio/milton/http/Response;->setContentRangeHeader(JJLjava/lang/Long;)V

    sub-long/2addr v13, v8

    add-long/2addr v13, v11

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-interface {v7, v1}, Lio/milton/http/Response;->setDateHeader(Ljava/util/Date;)V

    move-object/from16 v1, p0

    iget-object v2, v1, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->eTagGenerator:Lio/milton/http/http11/ETagGenerator;

    invoke-interface {v2, v0}, Lio/milton/http/http11/ETagGenerator;->generateEtag(Lio/milton/resource/Resource;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v7, v2}, Lio/milton/http/Response;->setEtag(Ljava/lang/String;)V

    :cond_5
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v7, v2}, Lio/milton/http/Response;->setContentLengthHeader(Ljava/lang/Long;)V

    new-instance v2, Lio/milton/http/entity/GetableResourceEntity;

    const/4 v3, 0x0

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct {v2, v0, v5, v4, v3}, Lio/milton/http/entity/GetableResourceEntity;-><init>(Lio/milton/resource/GetableResource;Lio/milton/http/Range;Ljava/util/Map;Ljava/lang/String;)V

    invoke-interface {v7, v2}, Lio/milton/http/Response;->setEntity(Lio/milton/http/Response$Entity;)V

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
    sget-object v0, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->log:Lorg/slf4j/Logger;

    const-string v1, "respondPartialContent - multiple ranges"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    sget-object v0, Lio/milton/http/Response$Status;->SC_PARTIAL_CONTENT:Lio/milton/http/Response$Status;

    invoke-interface {p2, v0}, Lio/milton/http/Response;->setStatus(Lio/milton/http/Response$Status;)V

    const-string v0, "bytes"

    invoke-interface {p2, v0}, Lio/milton/http/Response;->setAcceptRanges(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-interface {p2, v0}, Lio/milton/http/Response;->setDateHeader(Ljava/util/Date;)V

    iget-object v0, p0, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->eTagGenerator:Lio/milton/http/http11/ETagGenerator;

    invoke-interface {v0, p1}, Lio/milton/http/http11/ETagGenerator;->generateEtag(Lio/milton/resource/Resource;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p2, v0}, Lio/milton/http/Response;->setEtag(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "multipart/byteranges; boundary="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->multipartBoundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/milton/http/Response;->setContentTypeHeader(Ljava/lang/String;)V

    invoke-interface {p3}, Lio/milton/http/Request;->getAcceptHeader()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lio/milton/resource/GetableResource;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance p3, Lio/milton/http/entity/PartialEntity;

    iget-object v5, p0, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->multipartBoundary:Ljava/lang/String;

    move-object v0, p3

    move-object v1, p1

    move-object v2, p5

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lio/milton/http/entity/PartialEntity;-><init>(Lio/milton/resource/GetableResource;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Lio/milton/http/Response;->setEntity(Lio/milton/http/Response$Entity;)V

    return-void
.end method

.method public respondPreconditionFailed(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V
    .locals 0

    sget-object p1, Lio/milton/http/Response$Status;->SC_PRECONDITION_FAILED:Lio/milton/http/Response$Status;

    invoke-interface {p2, p1}, Lio/milton/http/Response;->setStatus(Lio/milton/http/Response$Status;)V

    return-void
.end method

.method public respondRedirect(Lio/milton/http/Response;Lio/milton/http/Request;Ljava/lang/String;)V
    .locals 1

    if-eqz p3, :cond_0

    sget-object p2, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->log:Lorg/slf4j/Logger;

    const-string v0, "respondRedirect"

    invoke-interface {p2, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    invoke-interface {p1, p3}, Lio/milton/http/Response;->sendRedirect(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "redirectUrl cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public respondUnauthorised(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V
    .locals 3

    iget-object v0, p0, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->authenticationService:Lio/milton/http/AuthenticationService;

    invoke-virtual {v0, p1, p3}, Lio/milton/http/AuthenticationService;->canUseExternalAuth(Lio/milton/resource/Resource;Lio/milton/http/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->log:Lorg/slf4j/Logger;

    const-string v1, "respondUnauthorised: use external authentication"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3, p2}, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->initiateExternalAuth(Lio/milton/resource/Resource;Lio/milton/http/Request;Lio/milton/http/Response;)V

    goto :goto_1

    :cond_0
    invoke-interface {p3}, Lio/milton/http/Request;->getAuthorization()Lio/milton/http/Auth;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lio/milton/http/Auth;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->log:Lorg/slf4j/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "respondUnauthorised: request has an authenticated user, so return status: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lio/milton/http/Response$Status;->SC_FORBIDDEN:Lio/milton/http/Response$Status;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lio/milton/http/Response;->setStatus(Lio/milton/http/Response$Status;)V

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "respondUnauthorised: no authenticated user, so return status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lio/milton/http/Response$Status;->SC_UNAUTHORIZED:Lio/milton/http/Response$Status;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    invoke-interface {p2, v2}, Lio/milton/http/Response;->setStatus(Lio/milton/http/Response$Status;)V

    iget-object v0, p0, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->authenticationService:Lio/milton/http/AuthenticationService;

    invoke-virtual {v0, p1, p3}, Lio/milton/http/AuthenticationService;->getChallenges(Lio/milton/resource/Resource;Lio/milton/http/Request;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/milton/http/Response;->setAuthenticateHeader(Ljava/util/List;)V

    :goto_1
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

    sget-object v0, Lio/milton/http/Response$Status;->SC_OK:Lio/milton/http/Response$Status;

    invoke-interface {p3}, Lio/milton/http/Request;->getAuthorization()Lio/milton/http/Auth;

    move-result-object p3

    invoke-virtual {p0, p2, p1, v0, p3}, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->setRespondCommonHeaders(Lio/milton/http/Response;Lio/milton/resource/Resource;Lio/milton/http/Response$Status;Lio/milton/http/Auth;)V

    invoke-interface {p2, p4}, Lio/milton/http/Response;->setAllowHeader(Ljava/util/List;)V

    const-wide/16 p3, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/milton/http/Response;->setContentLengthHeader(Ljava/lang/Long;)V

    return-void
.end method

.method public setBuffering(Lio/milton/http/http11/DefaultHttp11ResponseHandler$BUFFERING;)V
    .locals 0

    iput-object p1, p0, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->buffering:Lio/milton/http/http11/DefaultHttp11ResponseHandler$BUFFERING;

    return-void
.end method

.method public setCacheControlHelper(Lio/milton/http/http11/CacheControlHelper;)V
    .locals 0

    iput-object p1, p0, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->cacheControlHelper:Lio/milton/http/http11/CacheControlHelper;

    return-void
.end method

.method public setRespondCommonHeaders(Lio/milton/http/Response;Lio/milton/resource/Resource;Lio/milton/http/Response$Status;Lio/milton/http/Auth;)V
    .locals 0

    invoke-interface {p1, p3}, Lio/milton/http/Response;->setStatus(Lio/milton/http/Response$Status;)V

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "milton.io-"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p4, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->miltonVerson:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "Server"

    invoke-interface {p1, p4, p3}, Lio/milton/http/Response;->setNonStandardHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/util/Date;

    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    invoke-interface {p1, p3}, Lio/milton/http/Response;->setDateHeader(Ljava/util/Date;)V

    const-string p3, "Accept-Ranges"

    const-string p4, "bytes"

    invoke-interface {p1, p3, p4}, Lio/milton/http/Response;->setNonStandardHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->eTagGenerator:Lio/milton/http/http11/ETagGenerator;

    invoke-interface {p3, p2}, Lio/milton/http/http11/ETagGenerator;->generateEtag(Lio/milton/resource/Resource;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p1, p2}, Lio/milton/http/Response;->setEtag(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setRespondContentCommonHeaders(Lio/milton/http/Response;Lio/milton/resource/Resource;Lio/milton/http/Auth;)V
    .locals 1

    .line 1
    sget-object v0, Lio/milton/http/Response$Status;->SC_OK:Lio/milton/http/Response$Status;

    invoke-virtual {p0, p1, p2, v0, p3}, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->setRespondContentCommonHeaders(Lio/milton/http/Response;Lio/milton/resource/Resource;Lio/milton/http/Response$Status;Lio/milton/http/Auth;)V

    return-void
.end method

.method public setRespondContentCommonHeaders(Lio/milton/http/Response;Lio/milton/resource/Resource;Lio/milton/http/Response$Status;Lio/milton/http/Auth;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->setRespondCommonHeaders(Lio/milton/http/Response;Lio/milton/resource/Resource;Lio/milton/http/Response$Status;Lio/milton/http/Auth;)V

    invoke-static {p1, p2, p4}, Lio/milton/http/http11/DefaultHttp11ResponseHandler;->setModifiedDate(Lio/milton/http/Response;Lio/milton/resource/Resource;Lio/milton/http/Auth;)V

    return-void
.end method
