.class public Lio/milton/http/AuthenticationService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/milton/http/AuthenticationService$AuthStatus;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final authenticationHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/milton/http/AuthenticationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final browserIds:[Ljava/lang/String;

.field private disableExternal:Z

.field private externalIdentityProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/milton/http/ExternalIdentityProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/AuthenticationService;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/AuthenticationService;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/milton/http/AuthenticationHandler;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "safari"

    const-string v1, "opera"

    const-string v2, "msie"

    const-string v3, "firefox"

    const-string v4, "chrome"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/milton/http/AuthenticationService;->browserIds:[Ljava/lang/String;

    iput-object p1, p0, Lio/milton/http/AuthenticationService;->authenticationHandlers:Ljava/util/List;

    return-void
.end method

.method private _authenticate(Lio/milton/resource/Resource;Lio/milton/http/Request;)Lio/milton/http/AuthenticationService$AuthStatus;
    .locals 9

    sget-object v0, Lio/milton/http/AuthenticationService;->log:Lorg/slf4j/Logger;

    const-string v1, "authenticate"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    invoke-interface {p2}, Lio/milton/http/Request;->getAuthorization()Lio/milton/http/Auth;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lio/milton/http/Auth;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string p1, "request is pre-authenticated"

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    new-instance p1, Lio/milton/http/AuthenticationService$AuthStatus;

    invoke-direct {p1, v1, v2}, Lio/milton/http/AuthenticationService$AuthStatus;-><init>(Lio/milton/http/Auth;Z)V

    return-object p1

    :cond_0
    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Checking authentication with auth handlers: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lio/milton/http/AuthenticationService;->authenticationHandlers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    iget-object v0, p0, Lio/milton/http/AuthenticationService;->authenticationHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/milton/http/AuthenticationHandler;

    sget-object v4, Lio/milton/http/AuthenticationService;->log:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/milton/http/AuthenticationService;->authenticationHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/milton/http/AuthenticationHandler;

    invoke-interface {v3, p1, p2}, Lio/milton/http/AuthenticationHandler;->supports(Lio/milton/resource/Resource;Lio/milton/http/Request;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3, p1, p2}, Lio/milton/http/AuthenticationHandler;->authenticate(Lio/milton/resource/Resource;Lio/milton/http/Request;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    sget-object p1, Lio/milton/http/AuthenticationService;->log:Lorg/slf4j/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "authentication failed by AuthenticationHandler:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    new-instance p1, Lio/milton/http/AuthenticationService$AuthStatus;

    const/4 p2, 0x1

    invoke-direct {p1, v1, p2}, Lio/milton/http/AuthenticationService$AuthStatus;-><init>(Lio/milton/http/Auth;Z)V

    return-object p1

    :cond_3
    sget-object v6, Lio/milton/http/AuthenticationService;->log:Lorg/slf4j/Logger;

    invoke-interface {v6}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "authentication passed by: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    :cond_4
    if-nez v1, :cond_5

    new-instance v1, Lio/milton/http/Auth;

    sget-object v3, Lio/milton/http/Auth$Scheme;->FORM:Lio/milton/http/Auth$Scheme;

    invoke-direct {v1, v3, v4, v5}, Lio/milton/http/Auth;-><init>(Lio/milton/http/Auth$Scheme;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2, v1}, Lio/milton/http/Request;->setAuthorization(Lio/milton/http/Auth;)V

    :cond_5
    invoke-virtual {v1, v5}, Lio/milton/http/Auth;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    sget-object v4, Lio/milton/http/AuthenticationService;->log:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "handler does not support this resource and request. handler: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " resource: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    if-eqz v1, :cond_8

    new-instance p1, Lio/milton/http/AuthenticationService$AuthStatus;

    invoke-direct {p1, v1, v2}, Lio/milton/http/AuthenticationService$AuthStatus;-><init>(Lio/milton/http/Auth;Z)V

    return-object p1

    :cond_8
    sget-object p1, Lio/milton/http/AuthenticationService;->log:Lorg/slf4j/Logger;

    const-string p2, "authentication did not locate a user, because no handler accepted the request"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-object v4
.end method


# virtual methods
.method public authenticate(Lio/milton/resource/Resource;Lio/milton/http/Request;)Lio/milton/http/AuthenticationService$AuthStatus;
    .locals 4

    invoke-interface {p2}, Lio/milton/http/Request;->getAttributes()Ljava/util/Map;

    move-result-object v0

    const-string v1, "auth.service.status"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lio/milton/http/Request;->getAttributes()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/milton/http/AuthenticationService$AuthStatus;

    return-object p1

    :cond_0
    invoke-interface {p2}, Lio/milton/http/Request;->getAttributes()Ljava/util/Map;

    move-result-object v0

    const-string v2, "auth.service.called"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-interface {p2}, Lio/milton/http/Request;->getAttributes()Ljava/util/Map;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lio/milton/http/AuthenticationService;->_authenticate(Lio/milton/resource/Resource;Lio/milton/http/Request;)Lio/milton/http/AuthenticationService$AuthStatus;

    move-result-object p1

    invoke-interface {p2}, Lio/milton/http/Request;->getAttributes()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public authenticateDetailsPresent(Lio/milton/http/Request;)Z
    .locals 2

    iget-object v0, p0, Lio/milton/http/AuthenticationService;->authenticationHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/milton/http/AuthenticationHandler;

    invoke-interface {v1, p1}, Lio/milton/http/AuthenticationHandler;->credentialsPresent(Lio/milton/http/Request;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public canUseExternalAuth(Lio/milton/resource/Resource;Lio/milton/http/Request;)Z
    .locals 2

    invoke-virtual {p0}, Lio/milton/http/AuthenticationService;->isDisableExternal()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object p1, Lio/milton/http/AuthenticationService;->log:Lorg/slf4j/Logger;

    const-string p2, "auth svc has disabled external auth"

    :goto_0
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p0}, Lio/milton/http/AuthenticationService;->getExternalIdentityProviders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lio/milton/http/AuthenticationService;->getExternalIdentityProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    instance-of v0, p1, Lio/milton/resource/GetableResource;

    if-eqz v0, :cond_5

    check-cast p1, Lio/milton/resource/GetableResource;

    const-string v0, "text/html"

    invoke-interface {p1, v0}, Lio/milton/resource/GetableResource;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v0, "html"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p2}, Lio/milton/http/Request;->getUserAgentHeader()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lio/milton/http/AuthenticationService;->browserIds:[Ljava/lang/String;

    invoke-static {p1, p2}, Lio/milton/common/StringUtils;->contains(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lio/milton/http/AuthenticationService;->log:Lorg/slf4j/Logger;

    const-string p2, "is a known web browser, so can offer external auth"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_3
    sget-object p1, Lio/milton/http/AuthenticationService;->log:Lorg/slf4j/Logger;

    const-string p2, "not a known web browser, so cannot offer external auth"

    goto :goto_0

    :cond_4
    :goto_1
    sget-object p1, Lio/milton/http/AuthenticationService;->log:Lorg/slf4j/Logger;

    const-string p2, "is not of content type html"

    goto :goto_0

    :cond_5
    sget-object p1, Lio/milton/http/AuthenticationService;->log:Lorg/slf4j/Logger;

    const-string p2, "is not getable"

    goto :goto_0

    :cond_6
    :goto_2
    sget-object p1, Lio/milton/http/AuthenticationService;->log:Lorg/slf4j/Logger;

    const-string p2, "auth service has no external auth providers"

    goto :goto_0
.end method

.method public getChallenges(Lio/milton/resource/Resource;Lio/milton/http/Request;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/resource/Resource;",
            "Lio/milton/http/Request;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lio/milton/http/AuthenticationService;->authenticationHandlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/milton/http/AuthenticationHandler;

    invoke-interface {v2, p1, p2}, Lio/milton/http/AuthenticationHandler;->isCompatible(Lio/milton/resource/Resource;Lio/milton/http/Request;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lio/milton/http/AuthenticationService;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "challenge for auth: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-interface {v2, p1, p2, v0}, Lio/milton/http/AuthenticationHandler;->appendChallenges(Lio/milton/resource/Resource;Lio/milton/http/Request;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    sget-object v3, Lio/milton/http/AuthenticationService;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "not challenging for auth: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for resource type: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    const-string v2, ""

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getExternalIdentityProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/milton/http/ExternalIdentityProvider;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/milton/http/AuthenticationService;->externalIdentityProviders:Ljava/util/List;

    return-object v0
.end method

.method public isDisableExternal()Z
    .locals 1

    iget-boolean v0, p0, Lio/milton/http/AuthenticationService;->disableExternal:Z

    return v0
.end method
