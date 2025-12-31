.class public Lio/milton/http/http11/auth/LoginResponseHandler;
.super Lio/milton/http/AbstractWrappingResponseHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/milton/http/http11/auth/LoginResponseHandler$ContentTypeLoginPageTypeHandler;,
        Lio/milton/http/http11/auth/LoginResponseHandler$LoginPageTypeHandler;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private enabled:Z

.field private excludePaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private loginPage:Ljava/lang/String;

.field private final loginPageTypeHandler:Lio/milton/http/http11/auth/LoginResponseHandler$LoginPageTypeHandler;

.field private final resourceFactory:Lio/milton/http/ResourceFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/http11/auth/LoginResponseHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/http11/auth/LoginResponseHandler;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lio/milton/http/webdav/WebDavResponseHandler;Lio/milton/http/ResourceFactory;Lio/milton/http/http11/auth/LoginResponseHandler$LoginPageTypeHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/milton/http/AbstractWrappingResponseHandler;-><init>(Lio/milton/http/webdav/WebDavResponseHandler;)V

    const-string p1, "/login.html"

    iput-object p1, p0, Lio/milton/http/http11/auth/LoginResponseHandler;->loginPage:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/milton/http/http11/auth/LoginResponseHandler;->enabled:Z

    iput-object p2, p0, Lio/milton/http/http11/auth/LoginResponseHandler;->resourceFactory:Lio/milton/http/ResourceFactory;

    iput-object p3, p0, Lio/milton/http/http11/auth/LoginResponseHandler;->loginPageTypeHandler:Lio/milton/http/http11/auth/LoginResponseHandler$LoginPageTypeHandler;

    return-void
.end method

.method public static synthetic access$000()Lorg/slf4j/Logger;
    .locals 1

    sget-object v0, Lio/milton/http/http11/auth/LoginResponseHandler;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method private attemptRespondLoginPage(Lio/milton/http/Request;Lio/milton/resource/Resource;Lio/milton/http/Response;)V
    .locals 5

    const-string v0, "Exception generating login page"

    sget-object v1, Lio/milton/http/http11/auth/LoginResponseHandler;->log:Lorg/slf4j/Logger;

    const-string v2, "attemptRespondLoginPage"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lio/milton/http/http11/auth/LoginResponseHandler;->resourceFactory:Lio/milton/http/ResourceFactory;

    invoke-interface {p1}, Lio/milton/http/Request;->getHostHeader()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/milton/http/http11/auth/LoginResponseHandler;->loginPage:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lio/milton/http/ResourceFactory;->getResource(Ljava/lang/String;Ljava/lang/String;)Lio/milton/resource/Resource;

    move-result-object v2
    :try_end_0
    .catch Lio/milton/http/exceptions/NotAuthorizedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lio/milton/http/exceptions/BadRequestException; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v2, :cond_2

    instance-of v3, v2, Lio/milton/resource/GetableResource;

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "respond with 200 to suppress login prompt, using resource: "

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    :try_start_1
    invoke-interface {p1}, Lio/milton/http/Request;->getAuthorization()Lio/milton/http/Auth;

    move-result-object p2
    :try_end_1
    .catch Lio/milton/http/exceptions/NotAuthorizedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lio/milton/http/exceptions/BadRequestException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lio/milton/http/exceptions/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "authReason"

    if-eqz p2, :cond_1

    :try_start_2
    invoke-virtual {p2}, Lio/milton/http/Auth;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Lio/milton/http/Request;->getAttributes()Ljava/util/Map;

    move-result-object p1

    const-string p2, "notPermitted"

    :goto_0
    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    goto :goto_2

    :cond_1
    invoke-interface {p1}, Lio/milton/http/Request;->getAttributes()Ljava/util/Map;

    move-result-object p1

    const-string p2, "required"

    goto :goto_0

    :goto_1
    sget-object p1, Lio/milton/http/Response$Status;->SC_BAD_REQUEST:Lio/milton/http/Response$Status;

    invoke-interface {p3, p1}, Lio/milton/http/Response;->setStatus(Lio/milton/http/Response$Status;)V

    check-cast v2, Lio/milton/resource/GetableResource;

    invoke-interface {p3}, Lio/milton/http/Response;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {v2, p2}, Lio/milton/resource/GetableResource;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, p1, p2, p2, v1}, Lio/milton/resource/GetableResource;->sendContent(Ljava/io/OutputStream;Lio/milton/http/Range;Ljava/util/Map;Ljava/lang/String;)V

    invoke-interface {p3}, Lio/milton/http/Response;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Lio/milton/http/exceptions/NotAuthorizedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lio/milton/http/exceptions/BadRequestException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lio/milton/http/exceptions/NotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :goto_2
    sget-object p2, Lio/milton/http/Response$Status;->SC_INTERNAL_SERVER_ERROR:Lio/milton/http/Response$Status;

    invoke-interface {p3, p2}, Lio/milton/http/Response;->setStatus(Lio/milton/http/Response$Status;)V

    invoke-interface {p3}, Lio/milton/http/Response;->close()V

    sget-object p2, Lio/milton/http/http11/auth/LoginResponseHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_2
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Couldnt find login resource: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lio/milton/http/Request;->getHostHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/milton/http/http11/auth/LoginResponseHandler;->loginPage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with resource factory: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/milton/http/http11/auth/LoginResponseHandler;->resourceFactory:Lio/milton/http/ResourceFactory;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lio/milton/http/AbstractWrappingResponseHandler;->wrapped:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {v0, p2, p3, p1}, Lio/milton/http/http11/Http11ResponseHandler;->respondUnauthorised(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    :goto_4
    return-void

    :catch_4
    move-exception p1

    goto :goto_5

    :catch_5
    move-exception p1

    goto :goto_6

    :goto_5
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_6
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private excluded(Lio/milton/http/Request;)Z
    .locals 4

    iget-object v0, p0, Lio/milton/http/http11/auth/LoginResponseHandler;->excludePaths:Ljava/util/List;

    invoke-static {v0}, Lorg/apache/commons/collections/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lio/milton/http/http11/auth/LoginResponseHandler;->excludePaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1}, Lio/milton/http/Request;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private isGetOrPost(Lio/milton/http/Request;)Z
    .locals 2

    invoke-interface {p1}, Lio/milton/http/Request;->getMethod()Lio/milton/http/Request$Method;

    move-result-object v0

    sget-object v1, Lio/milton/http/Request$Method;->GET:Lio/milton/http/Request$Method;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lio/milton/http/Request;->getMethod()Lio/milton/http/Request$Method;

    move-result-object p1

    sget-object v0, Lio/milton/http/Request$Method;->POST:Lio/milton/http/Request$Method;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private respondJson(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V
    .locals 2

    new-instance p3, Lnet/sf/json/JSONObject;

    invoke-direct {p3}, Lnet/sf/json/JSONObject;-><init>()V

    invoke-interface {p1}, Lio/milton/http/Request;->getAttributes()Ljava/util/Map;

    move-result-object v0

    const-string v1, "loginResult"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p3, v1, v0}, Lnet/sf/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lnet/sf/json/JSONObject;

    invoke-interface {p1}, Lio/milton/http/Request;->getAuthorization()Lio/milton/http/Auth;

    move-result-object v0

    const-string v1, "authReason"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/milton/http/Auth;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "notPermitted"

    :goto_0
    invoke-virtual {p3, v1, v0}, Lnet/sf/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lnet/sf/json/JSONObject;

    goto :goto_1

    :cond_0
    const-string v0, "required"

    goto :goto_0

    :goto_1
    invoke-interface {p1}, Lio/milton/http/Request;->getAttributes()Ljava/util/Map;

    move-result-object p1

    const-string v0, "userUrl"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p3, v0, p1}, Lnet/sf/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lnet/sf/json/JSONObject;

    :cond_1
    sget-object p1, Lio/milton/http/Response$Status;->SC_BAD_REQUEST:Lio/milton/http/Response$Status;

    invoke-interface {p2, p1}, Lio/milton/http/Response;->setStatus(Lio/milton/http/Response$Status;)V

    invoke-interface {p2}, Lio/milton/http/Response;->setCacheControlNoCacheHeader()V

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lnet/sf/json/JSONObject;->write(Ljava/io/Writer;)Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    array-length p3, p1

    int-to-long v0, p3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p2, p3}, Lio/milton/http/Response;->setContentLengthHeader(Ljava/lang/Long;)V

    invoke-interface {p2}, Lio/milton/http/Response;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static setDisableHtmlResponse(Lio/milton/http/Request;)V
    .locals 2

    sget-object v0, Lio/milton/http/http11/auth/LoginResponseHandler;->log:Lorg/slf4j/Logger;

    const-string v1, "html login response disabled for this request"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    invoke-interface {p0}, Lio/milton/http/Request;->getAttributes()Ljava/util/Map;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "auth.disable.html"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lio/milton/http/http11/auth/LoginResponseHandler;->enabled:Z

    return v0
.end method

.method public respondUnauthorised(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V
    .locals 3

    sget-object v0, Lio/milton/http/http11/auth/LoginResponseHandler;->log:Lorg/slf4j/Logger;

    const-string v1, "respondUnauthorised"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    invoke-interface {p3}, Lio/milton/http/Request;->getAttributes()Ljava/util/Map;

    move-result-object v1

    const-string v2, "auth.disable.html"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "html login form has been disabled for this request"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lio/milton/http/http11/auth/LoginResponseHandler;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p3}, Lio/milton/http/http11/auth/LoginResponseHandler;->excluded(Lio/milton/http/Request;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, p3}, Lio/milton/http/http11/auth/LoginResponseHandler;->isGetOrPost(Lio/milton/http/Request;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lio/milton/http/http11/auth/LoginResponseHandler;->loginPageTypeHandler:Lio/milton/http/http11/auth/LoginResponseHandler$LoginPageTypeHandler;

    invoke-interface {v1, p1, p3}, Lio/milton/http/http11/auth/LoginResponseHandler$LoginPageTypeHandler;->canLogin(Lio/milton/resource/Resource;Lio/milton/http/Request;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p3, p1, p2}, Lio/milton/http/http11/auth/LoginResponseHandler;->attemptRespondLoginPage(Lio/milton/http/Request;Lio/milton/resource/Resource;Lio/milton/http/Response;)V

    return-void

    :cond_2
    iget-object v1, p0, Lio/milton/http/http11/auth/LoginResponseHandler;->loginPageTypeHandler:Lio/milton/http/http11/auth/LoginResponseHandler$LoginPageTypeHandler;

    invoke-interface {v1, p1, p3}, Lio/milton/http/http11/auth/LoginResponseHandler$LoginPageTypeHandler;->isAjax(Lio/milton/resource/Resource;Lio/milton/http/Request;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p3, p2, p1}, Lio/milton/http/http11/auth/LoginResponseHandler;->respondJson(Lio/milton/http/Request;Lio/milton/http/Response;Lio/milton/resource/Resource;)V

    return-void

    :cond_3
    :goto_1
    const-string v1, "respond with normal 401"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    iget-object v0, p0, Lio/milton/http/AbstractWrappingResponseHandler;->wrapped:Lio/milton/http/webdav/WebDavResponseHandler;

    invoke-interface {v0, p1, p2, p3}, Lio/milton/http/http11/Http11ResponseHandler;->respondUnauthorised(Lio/milton/resource/Resource;Lio/milton/http/Response;Lio/milton/http/Request;)V

    return-void
.end method

.method public setExcludePaths(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/milton/http/http11/auth/LoginResponseHandler;->excludePaths:Ljava/util/List;

    return-void
.end method

.method public setLoginPage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/milton/http/http11/auth/LoginResponseHandler;->loginPage:Ljava/lang/String;

    return-void
.end method
