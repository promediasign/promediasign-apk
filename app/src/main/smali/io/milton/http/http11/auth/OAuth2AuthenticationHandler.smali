.class public Lio/milton/http/http11/auth/OAuth2AuthenticationHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/AuthenticationHandler;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final nonceProvider:Lio/milton/http/http11/auth/NonceProvider;

.field private final oAuth2Helper:Lio/milton/http/http11/auth/OAuth2Helper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/http11/auth/OAuth2AuthenticationHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/http11/auth/OAuth2AuthenticationHandler;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lio/milton/http/http11/auth/NonceProvider;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/http11/auth/OAuth2AuthenticationHandler;->nonceProvider:Lio/milton/http/http11/auth/NonceProvider;

    new-instance v0, Lio/milton/http/http11/auth/OAuth2Helper;

    invoke-direct {v0, p1}, Lio/milton/http/http11/auth/OAuth2Helper;-><init>(Lio/milton/http/http11/auth/NonceProvider;)V

    iput-object v0, p0, Lio/milton/http/http11/auth/OAuth2AuthenticationHandler;->oAuth2Helper:Lio/milton/http/http11/auth/OAuth2Helper;

    return-void
.end method

.method public static getFoundLocalUser(Lio/milton/http/Request;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p0}, Lio/milton/http/Request;->getAttributes()Ljava/util/Map;

    move-result-object p0

    const-string v0, "_oauthLocalUser"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
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
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p2}, Lio/milton/http/http11/auth/OAuth2AuthenticationHandler;->getFoundLocalUser(Lio/milton/http/Request;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public credentialsPresent(Lio/milton/http/Request;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isCompatible(Lio/milton/resource/Resource;Lio/milton/http/Request;)Z
    .locals 0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public supports(Lio/milton/resource/Resource;Lio/milton/http/Request;)Z
    .locals 7

    sget-object v0, Lio/milton/http/http11/auth/OAuth2AuthenticationHandler;->log:Lorg/slf4j/Logger;

    const-string v1, "supports"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    invoke-interface {p2}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    move-result-object v2

    const-string v3, "code"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p2}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    move-result-object v3

    const-string v4, "access_token"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p2}, Lio/milton/http/Request;->getAuthorization()Lio/milton/http/Auth;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lio/milton/http/Auth;->getScheme()Lio/milton/http/Auth$Scheme;

    move-result-object v5

    sget-object v6, Lio/milton/http/Auth$Scheme;->BEARER:Lio/milton/http/Auth$Scheme;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lio/milton/http/Auth;->getUser()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-static {v2}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v3}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    invoke-interface {p2}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    move-result-object p2

    const-string v2, "grant_type"

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    return v1

    :cond_3
    :try_start_0
    const-string p2, "Cannot authenticate resource which does not implement OAuth2Resource - {}"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    sget-object p2, Lio/milton/http/http11/auth/OAuth2AuthenticationHandler;->log:Lorg/slf4j/Logger;

    const-string v0, "OAuth2 Authentication Handler error. "

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return v1
.end method
