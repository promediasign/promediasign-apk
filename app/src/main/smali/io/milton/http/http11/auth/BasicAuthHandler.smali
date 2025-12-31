.class public Lio/milton/http/http11/auth/BasicAuthHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/AuthenticationHandler;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/http11/auth/BasicAuthHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/http11/auth/BasicAuthHandler;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public appendChallenges(Lio/milton/resource/Resource;Lio/milton/http/Request;Ljava/util/List;)V
    .locals 1
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

    if-eqz p1, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Basic realm=\""

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lio/milton/resource/Resource;->getRealm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Can\'t generate challenge because resource is null, so can\'t get realm"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public authenticate(Lio/milton/resource/Resource;Lio/milton/http/Request;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lio/milton/http/http11/auth/BasicAuthHandler;->log:Lorg/slf4j/Logger;

    const-string v1, "authenticate"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    invoke-interface {p2}, Lio/milton/http/Request;->getAuthorization()Lio/milton/http/Auth;

    move-result-object p2

    invoke-virtual {p2}, Lio/milton/http/Auth;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lio/milton/http/Auth;->getPassword()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lio/milton/resource/Resource;->authenticate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "result: {}"

    invoke-interface {v0, p2, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1
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

    const/4 p1, 0x1

    return p1
.end method

.method public supports(Lio/milton/resource/Resource;Lio/milton/http/Request;)Z
    .locals 2

    invoke-interface {p2}, Lio/milton/http/Request;->getAuthorization()Lio/milton/http/Auth;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lio/milton/http/http11/auth/BasicAuthHandler;->log:Lorg/slf4j/Logger;

    const-string p2, "supports: no credentials provided"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    sget-object p2, Lio/milton/http/http11/auth/BasicAuthHandler;->log:Lorg/slf4j/Logger;

    const-string v0, "supports: {}"

    invoke-virtual {p1}, Lio/milton/http/Auth;->getScheme()Lio/milton/http/Auth$Scheme;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lio/milton/http/Auth;->getScheme()Lio/milton/http/Auth$Scheme;

    move-result-object p1

    sget-object v0, Lio/milton/http/Auth$Scheme;->BASIC:Lio/milton/http/Auth$Scheme;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string v0, "supports: is BASIC auth scheme, supports = true"

    :goto_0
    invoke-interface {p2, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "supports: is BASIC auth scheme, supports = false"

    goto :goto_0

    :goto_1
    return p1
.end method
