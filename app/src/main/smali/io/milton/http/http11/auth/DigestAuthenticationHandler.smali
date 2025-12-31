.class public Lio/milton/http/http11/auth/DigestAuthenticationHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/AuthenticationHandler;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final digestHelper:Lio/milton/http/http11/auth/DigestHelper;

.field private final nonceProvider:Lio/milton/http/http11/auth/NonceProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/http11/auth/DigestAuthenticationHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/http11/auth/DigestAuthenticationHandler;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lio/milton/http/http11/auth/NonceProvider;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/http11/auth/DigestAuthenticationHandler;->nonceProvider:Lio/milton/http/http11/auth/NonceProvider;

    new-instance v0, Lio/milton/http/http11/auth/DigestHelper;

    invoke-direct {v0, p1}, Lio/milton/http/http11/auth/DigestHelper;-><init>(Lio/milton/http/http11/auth/NonceProvider;)V

    iput-object v0, p0, Lio/milton/http/http11/auth/DigestAuthenticationHandler;->digestHelper:Lio/milton/http/http11/auth/DigestHelper;

    return-void
.end method


# virtual methods
.method public appendChallenges(Lio/milton/resource/Resource;Lio/milton/http/Request;Ljava/util/List;)V
    .locals 2
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

    iget-object v0, p0, Lio/milton/http/http11/auth/DigestAuthenticationHandler;->nonceProvider:Lio/milton/http/http11/auth/NonceProvider;

    invoke-interface {v0, p2}, Lio/milton/http/http11/auth/NonceProvider;->createNonce(Lio/milton/http/Request;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/milton/http/http11/auth/DigestAuthenticationHandler;->digestHelper:Lio/milton/http/http11/auth/DigestHelper;

    invoke-interface {p2}, Lio/milton/http/Request;->getAuthorization()Lio/milton/http/Auth;

    move-result-object p2

    invoke-interface {p1}, Lio/milton/resource/Resource;->getRealm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p2, p1}, Lio/milton/http/http11/auth/DigestHelper;->getChallenge(Ljava/lang/String;Lio/milton/http/Auth;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public authenticate(Lio/milton/resource/Resource;Lio/milton/http/Request;)Ljava/lang/Object;
    .locals 4

    move-object v0, p1

    check-cast v0, Lio/milton/resource/DigestResource;

    invoke-interface {p2}, Lio/milton/http/Request;->getAuthorization()Lio/milton/http/Auth;

    move-result-object v1

    invoke-interface {p1}, Lio/milton/resource/Resource;->getRealm()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object p1, p0, Lio/milton/http/http11/auth/DigestAuthenticationHandler;->digestHelper:Lio/milton/http/http11/auth/DigestHelper;

    invoke-interface {p2}, Lio/milton/http/Request;->getMethod()Lio/milton/http/Request$Method;

    move-result-object p2

    invoke-virtual {p1, v1, v2, p2}, Lio/milton/http/http11/auth/DigestHelper;->calculateResponse(Lio/milton/http/Auth;Ljava/lang/String;Lio/milton/http/Request$Method;)Lio/milton/http/http11/auth/DigestResponse;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lio/milton/http/http11/auth/DigestAuthenticationHandler;->log:Lorg/slf4j/Logger;

    const-string p2, "requested digest authentication is invalid or incorrectly formatted"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {v0, p1}, Lio/milton/resource/DigestResource;->authenticate(Lio/milton/http/http11/auth/DigestResponse;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_1

    sget-object v1, Lio/milton/http/http11/auth/DigestAuthenticationHandler;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "digest authentication failed from resource: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lio/milton/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for user: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/milton/http/http11/auth/DigestResponse;->getUser()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :cond_1
    return-object p2

    :cond_2
    new-instance p2, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got null realm from resource: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public credentialsPresent(Lio/milton/http/Request;)Z
    .locals 0

    invoke-interface {p1}, Lio/milton/http/Request;->getAuthorization()Lio/milton/http/Auth;

    move-result-object p1

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

    instance-of p2, p1, Lio/milton/resource/DigestResource;

    if-eqz p2, :cond_0

    check-cast p1, Lio/milton/resource/DigestResource;

    invoke-interface {p1}, Lio/milton/resource/DigestResource;->isDigestAllowed()Z

    move-result p1

    return p1

    :cond_0
    sget-object p1, Lio/milton/http/http11/auth/DigestAuthenticationHandler;->log:Lorg/slf4j/Logger;

    const-string p2, "Digest auth not supported because class does not implement DigestResource"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public supports(Lio/milton/resource/Resource;Lio/milton/http/Request;)Z
    .locals 2

    invoke-interface {p2}, Lio/milton/http/Request;->getAuthorization()Lio/milton/http/Auth;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    sget-object p1, Lio/milton/http/http11/auth/DigestAuthenticationHandler;->log:Lorg/slf4j/Logger;

    const-string p2, "supports: No credentials in request"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return v0

    :cond_0
    instance-of v1, p1, Lio/milton/resource/DigestResource;

    if-eqz v1, :cond_3

    check-cast p1, Lio/milton/resource/DigestResource;

    invoke-interface {p1}, Lio/milton/resource/DigestResource;->isDigestAllowed()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lio/milton/http/Auth$Scheme;->DIGEST:Lio/milton/http/Auth$Scheme;

    invoke-virtual {p2}, Lio/milton/http/Auth;->getScheme()Lio/milton/http/Auth$Scheme;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-object p1, Lio/milton/http/http11/auth/DigestAuthenticationHandler;->log:Lorg/slf4j/Logger;

    if-nez v0, :cond_1

    const-string p2, "supports: Authentication scheme is not DIGEST"

    goto :goto_0

    :cond_1
    const-string p2, "supports: DIGEST scheme credentials provided, supports = true"

    goto :goto_0

    :cond_2
    sget-object p1, Lio/milton/http/http11/auth/DigestAuthenticationHandler;->log:Lorg/slf4j/Logger;

    const-string p2, "supports: digest auth is not allowed by the resource"

    goto :goto_0

    :cond_3
    sget-object p1, Lio/milton/http/http11/auth/DigestAuthenticationHandler;->log:Lorg/slf4j/Logger;

    const-string p2, "supports: resource is not an instanceof DigestResource"

    :goto_0
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return v0
.end method
