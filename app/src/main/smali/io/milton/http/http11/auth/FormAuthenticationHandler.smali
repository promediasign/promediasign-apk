.class public Lio/milton/http/http11/auth/FormAuthenticationHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/AuthenticationHandler;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private loginResultAttName:Ljava/lang/String;

.field private passwordParam:Ljava/lang/String;

.field private userNameParam:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/http11/auth/FormAuthenticationHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/http11/auth/FormAuthenticationHandler;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_loginUserName"

    iput-object v0, p0, Lio/milton/http/http11/auth/FormAuthenticationHandler;->userNameParam:Ljava/lang/String;

    const-string v0, "_loginPassword"

    iput-object v0, p0, Lio/milton/http/http11/auth/FormAuthenticationHandler;->passwordParam:Ljava/lang/String;

    const-string v0, "loginResult"

    iput-object v0, p0, Lio/milton/http/http11/auth/FormAuthenticationHandler;->loginResultAttName:Ljava/lang/String;

    return-void
.end method

.method private isLogin(Lio/milton/http/Request;)Z
    .locals 2

    invoke-interface {p1}, Lio/milton/http/Request;->getMethod()Lio/milton/http/Request$Method;

    move-result-object v0

    sget-object v1, Lio/milton/http/Request$Method;->POST:Lio/milton/http/Request$Method;

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lio/milton/http/http11/auth/FormAuthenticationHandler;->userNameParam:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public appendChallenges(Lio/milton/resource/Resource;Lio/milton/http/Request;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/resource/Resource;",
            "Lio/milton/http/Request;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public authenticate(Lio/milton/resource/Resource;Lio/milton/http/Request;)Ljava/lang/Object;
    .locals 3

    invoke-interface {p2}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lio/milton/http/http11/auth/FormAuthenticationHandler;->userNameParam:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lio/milton/http/http11/auth/FormAuthenticationHandler;->passwordParam:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lio/milton/resource/Resource;->authenticate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "loginResult"

    sget-object v1, Lio/milton/http/http11/auth/FormAuthenticationHandler;->log:Lorg/slf4j/Logger;

    if-nez p1, :cond_0

    const-string v2, "Form authentication failed"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    invoke-interface {p2}, Lio/milton/http/Request;->getAttributes()Ljava/util/Map;

    move-result-object p2

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const-string v2, "Form authentication succeeded"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    invoke-interface {p2}, Lio/milton/http/Request;->getAttributes()Ljava/util/Map;

    move-result-object p2

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :goto_1
    return-object p1
.end method

.method public credentialsPresent(Lio/milton/http/Request;)Z
    .locals 1

    invoke-interface {p1}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lio/milton/http/http11/auth/FormAuthenticationHandler;->userNameParam:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isCompatible(Lio/milton/resource/Resource;Lio/milton/http/Request;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public supports(Lio/milton/resource/Resource;Lio/milton/http/Request;)Z
    .locals 2

    invoke-direct {p0, p2}, Lio/milton/http/http11/auth/FormAuthenticationHandler;->isLogin(Lio/milton/http/Request;)Z

    move-result p1

    sget-object p2, Lio/milton/http/http11/auth/FormAuthenticationHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {p2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "supports: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    :cond_0
    return p1
.end method
