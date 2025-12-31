.class public Lio/milton/http/http11/auth/CookieAuthenticationHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/AuthenticationHandler;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final cookieUserUrlHash:Ljava/lang/String;

.field private final cookieUserUrlValue:Ljava/lang/String;

.field private final handlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/milton/http/AuthenticationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private keepLoggedInParamName:Ljava/lang/String;

.field private final keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final loginTokenName:Ljava/lang/String;

.field private final nonceProvider:Lio/milton/http/http11/auth/NonceProvider;

.field private final principalResourceFactory:Lio/milton/http/ResourceFactory;

.field private final requestParamLogout:Ljava/lang/String;

.field private useLongLivedCookies:Z

.field private userUrlAttName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lio/milton/http/http11/auth/NonceProvider;Ljava/util/List;Lio/milton/http/ResourceFactory;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/milton/http/http11/auth/NonceProvider;",
            "Ljava/util/List<",
            "Lio/milton/http/AuthenticationHandler;",
            ">;",
            "Lio/milton/http/ResourceFactory;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "miltonLogout"

    iput-object v0, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->requestParamLogout:Ljava/lang/String;

    const-string v0, "miltonUserUrl"

    iput-object v0, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->cookieUserUrlValue:Ljava/lang/String;

    const-string v0, "miltonUserUrlHash"

    iput-object v0, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->cookieUserUrlHash:Ljava/lang/String;

    const-string v0, "loginToken"

    iput-object v0, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->loginTokenName:Ljava/lang/String;

    const-string v0, "userUrl"

    iput-object v0, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->userUrlAttName:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->useLongLivedCookies:Z

    const-string v0, "keepLoggedIn"

    iput-object v0, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->keepLoggedInParamName:Ljava/lang/String;

    iput-object p1, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->nonceProvider:Lio/milton/http/http11/auth/NonceProvider;

    iput-object p2, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->handlers:Ljava/util/List;

    iput-object p3, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->principalResourceFactory:Lio/milton/http/ResourceFactory;

    iput-object p4, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->keys:Ljava/util/List;

    return-void
.end method

.method private clearCookieValue(Lio/milton/http/Response;)V
    .locals 2

    sget-object v0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->log:Lorg/slf4j/Logger;

    const-string v1, "clearCookieValue"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    const-string v0, "miltonUserUrl"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lio/milton/http/Response;->setCookie(Ljava/lang/String;Ljava/lang/String;)Lio/milton/http/Cookie;

    const-string v0, "miltonUserUrlHash"

    invoke-interface {p1, v0, v1}, Lio/milton/http/Response;->setCookie(Ljava/lang/String;Ljava/lang/String;)Lio/milton/http/Cookie;

    return-void
.end method

.method private getCookieOrParam(Lio/milton/http/Request;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    invoke-interface {p1, p2}, Lio/milton/http/Request;->getCookie(Ljava/lang/String;)Lio/milton/http/Cookie;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lio/milton/http/Cookie;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method private getDomain(Lio/milton/http/Request;)Ljava/lang/String;
    .locals 2

    invoke-interface {p1}, Lio/milton/http/Request;->getHostHeader()Ljava/lang/String;

    move-result-object p1

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "nohost"

    :cond_1
    return-object p1
.end method

.method private getParamVal(Lio/milton/http/Request;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private isLogout(Lio/milton/http/Request;)Z
    .locals 2

    invoke-interface {p1}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    move-result-object p1

    const-string v0, "miltonLogout"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private setCookieValues(Lio/milton/http/Response;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    sget-object v0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->log:Lorg/slf4j/Logger;

    const-string v1, "setCookieValues"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    new-instance v0, Lio/milton/http/BeanCookie;

    const-string v1, "miltonUserUrl"

    invoke-direct {v0, v1}, Lio/milton/http/BeanCookie;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->encodeUserUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lio/milton/http/BeanCookie;->setValue(Ljava/lang/String;)V

    const-string p2, "/"

    invoke-virtual {v0, p2}, Lio/milton/http/BeanCookie;->setPath(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/milton/http/BeanCookie;->setVersion(I)V

    const v2, 0x1e13380

    if-eqz p4, :cond_0

    iget-boolean v3, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->useLongLivedCookies:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Lio/milton/http/BeanCookie;->setExpiry(I)V

    :cond_0
    invoke-interface {p1, v0}, Lio/milton/http/Response;->setCookie(Lio/milton/http/Cookie;)Lio/milton/http/Cookie;

    new-instance v0, Lio/milton/http/BeanCookie;

    const-string v3, "miltonUserUrlHash"

    invoke-direct {v0, v3}, Lio/milton/http/BeanCookie;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lio/milton/http/BeanCookie;->setValue(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/milton/http/BeanCookie;->setHttpOnly(Z)V

    invoke-virtual {v0, v1}, Lio/milton/http/BeanCookie;->setVersion(I)V

    invoke-virtual {v0, p2}, Lio/milton/http/BeanCookie;->setPath(Ljava/lang/String;)V

    if-eqz p4, :cond_1

    iget-boolean p2, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->useLongLivedCookies:Z

    if-eqz p2, :cond_1

    invoke-virtual {v0, v2}, Lio/milton/http/BeanCookie;->setExpiry(I)V

    :cond_1
    invoke-interface {p1, v0}, Lio/milton/http/Response;->setCookie(Lio/milton/http/Cookie;)Lio/milton/http/Cookie;

    return-void
.end method

.method private verifyHash(Ljava/lang/String;Lio/milton/http/Request;)Z
    .locals 5

    .line 1
    invoke-virtual {p0, p2}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->getHashFromRequest(Lio/milton/http/Request;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "\""

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    sget-object p1, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->log:Lorg/slf4j/Logger;

    const-string p2, "cookie signature is not present in cookie: miltonUserUrlHash"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return v1

    :cond_1
    iget-object v2, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->keys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-direct {p0, p1, v3, v0, p2}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->verifyHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/milton/http/Request;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method private verifyHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/milton/http/Request;)Z
    .locals 9

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v1, v3, :cond_0

    sget-object p1, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->log:Lorg/slf4j/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Invalid cookie signing format, no semi-colon: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " Should be in form - nonce:hmac"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-direct {p0, p4}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->getDomain(Lio/milton/http/Request;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/2addr v1, v3

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lio/milton/http/http11/auth/HmacUtils;->calcShaHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v6}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Message:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "Key:"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v6, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Hash:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v6, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    const-string p2, "Given Signing:"

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v6, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-interface {v6}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Cookie sig does not match expected. Given="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Expected="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v6, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_2
    return v2

    :cond_3
    iget-object p2, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->nonceProvider:Lio/milton/http/http11/auth/NonceProvider;

    const/4 p3, 0x0

    invoke-interface {p2, v5, p3}, Lio/milton/http/http11/auth/NonceProvider;->getNonceValidity(Ljava/lang/String;Ljava/lang/Long;)Lio/milton/http/http11/auth/NonceProvider$NonceValidity;

    move-result-object p2

    const-string p3, "Unhandled nonce validity value"

    if-eqz p2, :cond_7

    sget-object v0, Lio/milton/http/http11/auth/CookieAuthenticationHandler$1;->$SwitchMap$io$milton$http$http11$auth$NonceProvider$NonceValidity:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    if-eq p2, v3, :cond_6

    const/4 v0, 0x2

    if-eq p2, v0, :cond_5

    const/4 p1, 0x3

    if-ne p2, p1, :cond_4

    const-string p1, "Received an invalid nonce: "

    const-string p2, " not found in provider: "

    .line 2
    invoke-static {p1, v5, p2}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->nonceProvider:Lio/milton/http/http11/auth/NonceProvider;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v6, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return v2

    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const-string p2, "Nonce is valid, but expired. We will accept it but reset it"

    invoke-interface {v6, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p4}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->setLoginCookies(Ljava/lang/String;Lio/milton/http/Request;)V

    :cond_6
    return v3

    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public appendChallenges(Lio/milton/resource/Resource;Lio/milton/http/Request;Ljava/util/List;)V
    .locals 3
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

    iget-object v0, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->handlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/milton/http/AuthenticationHandler;

    invoke-interface {v1, p1, p2}, Lio/milton/http/AuthenticationHandler;->isCompatible(Lio/milton/resource/Resource;Lio/milton/http/Request;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1, p2, p3}, Lio/milton/http/AuthenticationHandler;->appendChallenges(Lio/milton/resource/Resource;Lio/milton/http/Request;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public authenticate(Lio/milton/resource/Resource;Lio/milton/http/Request;)Ljava/lang/Object;
    .locals 8

    .line 1
    const-string v0, "Couldnt check userUrl in cookie"

    .line 2
    .line 3
    const-string v1, "found current user: "

    .line 4
    .line 5
    invoke-interface {p2}, Lio/milton/http/Request;->getAttributes()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "_delegatedAuthenticationHandler"

    .line 10
    .line 11
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Ljava/util/List;

    .line 16
    .line 17
    const-class v3, Lio/milton/principal/DiscretePrincipal;

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz v2, :cond_4

    .line 21
    .line 22
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-nez v5, :cond_4

    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lio/milton/http/AuthenticationHandler;

    .line 43
    .line 44
    sget-object v2, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->log:Lorg/slf4j/Logger;

    .line 45
    .line 46
    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_0

    .line 51
    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v6, "authenticate: use delegateHandler: "

    .line 55
    .line 56
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-interface {v2, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    invoke-interface {v1, p1, p2}, Lio/milton/http/AuthenticationHandler;->authenticate(Lio/milton/resource/Resource;Lio/milton/http/Request;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    if-eqz v5, :cond_2

    .line 74
    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v0, "authenticate: auth.tag is not an instance of "

    .line 78
    .line 79
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v0, ", is: "

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v0, " so is not compatible with cookie authentication"

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-interface {v2, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    instance-of p1, v1, Lio/milton/http/http11/auth/FormAuthenticationHandler;

    .line 110
    .line 111
    if-eqz p1, :cond_1

    .line 112
    .line 113
    invoke-static {p2}, Lio/milton/http/http11/auth/LoginResponseHandler;->setDisableHtmlResponse(Lio/milton/http/Request;)V

    .line 114
    .line 115
    .line 116
    return-object v4

    .line 117
    :cond_1
    return-object v5

    .line 118
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string v6, "Login failed by delegated handler: "

    .line 121
    .line 122
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-interface {v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_3
    return-object v4

    .line 141
    :cond_4
    sget-object p1, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->log:Lorg/slf4j/Logger;

    .line 142
    .line 143
    const-string v2, "no delegating handler"

    .line 144
    .line 145
    invoke-interface {p1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-direct {p0, p2}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->isLogout(Lio/milton/http/Request;)Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_5

    .line 153
    .line 154
    const-string p2, "authenticate: is logout"

    .line 155
    .line 156
    :goto_1
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    return-object v4

    .line 160
    :cond_5
    invoke-virtual {p0, p2}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->getUserUrl(Lio/milton/http/Request;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    if-nez v2, :cond_6

    .line 165
    .line 166
    const-string p2, "authenticate: no userUrl in request or cookie, nothing to do"

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_6
    invoke-interface {p1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    if-eqz v5, :cond_7

    .line 174
    .line 175
    const-string v5, "authenticate: userUrl="

    .line 176
    .line 177
    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    invoke-interface {p1, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    :cond_7
    invoke-interface {p2}, Lio/milton/http/Request;->getHostHeader()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    :try_start_0
    iget-object v6, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->principalResourceFactory:Lio/milton/http/ResourceFactory;

    .line 189
    .line 190
    invoke-interface {v6, v5, v2}, Lio/milton/http/ResourceFactory;->getResource(Ljava/lang/String;Ljava/lang/String;)Lio/milton/resource/Resource;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    new-instance v7, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V
    :try_end_0
    .catch Lio/milton/http/exceptions/NotAuthorizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lio/milton/http/exceptions/BadRequestException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .line 208
    .line 209
    move-object v4, v6

    .line 210
    goto :goto_3

    .line 211
    :catch_0
    move-exception p1

    .line 212
    goto :goto_2

    .line 213
    :catch_1
    move-exception p1

    .line 214
    :goto_2
    sget-object v1, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->log:Lorg/slf4j/Logger;

    .line 215
    .line 216
    invoke-interface {v1, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 217
    .line 218
    .line 219
    :goto_3
    if-nez v4, :cond_8

    .line 220
    .line 221
    sget-object p1, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->log:Lorg/slf4j/Logger;

    .line 222
    .line 223
    const-string p2, "User not found host: "

    .line 224
    .line 225
    const-string v0, " userUrl: "

    .line 226
    .line 227
    const-string v1, " with resourcefactory: "

    .line 228
    .line 229
    invoke-static {p2, v5, v0, v2, v1}, Lorg/apache/ftpserver/main/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    move-result-object p2

    .line 233
    iget-object v0, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->principalResourceFactory:Lio/milton/http/ResourceFactory;

    .line 234
    .line 235
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p2

    .line 242
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-static {}, Lio/milton/http/HttpManager;->response()Lio/milton/http/Response;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    invoke-direct {p0, p1}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->clearCookieValue(Lio/milton/http/Response;)V

    .line 250
    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_8
    invoke-interface {p2}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    if-eqz p1, :cond_a

    .line 258
    .line 259
    invoke-interface {p2}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    const-string v0, "miltonUserUrl"

    .line 264
    .line 265
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result p1

    .line 269
    if-nez p1, :cond_9

    .line 270
    .line 271
    invoke-interface {p2}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    const-string p2, "loginToken"

    .line 276
    .line 277
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result p1

    .line 281
    if-eqz p1, :cond_a

    .line 282
    .line 283
    :cond_9
    sget-object p1, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->log:Lorg/slf4j/Logger;

    .line 284
    .line 285
    new-instance p2, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    const-string v0, "Found user from request, but user object is not expected type. Should be "

    .line 288
    .line 289
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    const-string v0, " but is "

    .line 296
    .line 297
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object p2

    .line 311
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    goto :goto_4

    .line 315
    :cond_a
    sget-object p1, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->log:Lorg/slf4j/Logger;

    .line 316
    .line 317
    const-string p2, "Do not set cookies, because token did not come from request variable"

    .line 318
    .line 319
    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    :goto_4
    return-object v4
.end method

.method public credentialsPresent(Lio/milton/http/Request;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->getUserUrlFromRequest(Lio/milton/http/Request;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->handlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/milton/http/AuthenticationHandler;

    invoke-interface {v2, p1}, Lio/milton/http/AuthenticationHandler;->credentialsPresent(Lio/milton/http/Request;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public encodeUserUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lio/milton/common/Utils;->UTF8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lio/milton/dns/utils/base64;->toString([B)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lio/milton/common/Utils;->percentEncode(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "b64"

    .line 16
    .line 17
    invoke-static {v0, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public getHashFromRequest(Lio/milton/http/Request;)Ljava/lang/String;
    .locals 7

    const-string v0, "miltonUserUrlHash"

    invoke-direct {p0, p1, v0}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->getParamVal(Lio/milton/http/Request;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-interface {p1}, Lio/milton/http/Request;->getAttributes()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lio/milton/http/Request;->getAttributes()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_0
    if-nez v1, :cond_2

    const-string v2, "loginToken"

    invoke-direct {p0, p1, v2}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->getCookieOrParam(Lio/milton/http/Request;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Lio/milton/dns/utils/base64;->fromString(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    const-string v2, "|"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v4, "getHashFromRequest: loginToken is invalid: {}"

    if-eqz v2, :cond_1

    const-string v2, "\\|"

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    const/4 v1, 0x1

    aget-object v1, v2, v1

    goto :goto_0

    :cond_1
    sget-object v2, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    invoke-direct {p0, p1, v0}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->getCookieOrParam(Lio/milton/http/Request;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method public getUrlSigningHash(Ljava/lang/String;Lio/milton/http/Request;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->getDomain(Lio/milton/http/Request;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->getUrlSigningHash(Ljava/lang/String;Lio/milton/http/Request;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUrlSigningHash(Ljava/lang/String;Lio/milton/http/Request;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->nonceProvider:Lio/milton/http/http11/auth/NonceProvider;

    invoke-interface {v0, p2}, Lio/milton/http/http11/auth/NonceProvider;->createNonce(Lio/milton/http/Request;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->keys:Ljava/util/List;

    const/4 v0, 0x1

    .line 2
    invoke-static {p3, v0}, LA/g;->b(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p3

    .line 3
    check-cast p3, Ljava/lang/String;

    invoke-static {p1, p3}, Lio/milton/http/http11/auth/HmacUtils;->calcShaHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {p2, v1, v0}, Lorg/apache/ftpserver/main/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    sget-object v1, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Message:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Key:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Hash:"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Signing:"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    :cond_0
    return-object p2
.end method

.method public getUserUrl(Lio/milton/http/Request;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->getUserUrlFromRequest(Lio/milton/http/Request;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-direct {p0, v1, p1}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->verifyHash(Ljava/lang/String;Lio/milton/http/Request;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v1

    :cond_1
    sget-object p1, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->log:Lorg/slf4j/Logger;

    const-string v2, "Invalid userUrl hash, possible attempted hacking attempt. userUrl="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public getUserUrlFromRequest(Lio/milton/http/Request;)Ljava/lang/String;
    .locals 6

    const-string v0, "loginToken"

    invoke-direct {p0, p1, v0}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->getCookieOrParam(Lio/milton/http/Request;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lio/milton/dns/utils/base64;->fromString(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "|"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "getUserUrlFromRequest: loginToken is invalid: {}"

    if-eqz v0, :cond_0

    const-string v0, "\\|"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-interface {p1}, Lio/milton/http/Request;->getAttributes()Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v0, v0, v4

    const-string v4, "miltonUserUrlHash"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v0, v3, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_2

    const-string v0, "miltonUserUrl"

    invoke-direct {p0, p1, v0}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->getCookieOrParam(Lio/milton/http/Request;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    sget-object p1, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->log:Lorg/slf4j/Logger;

    if-nez v2, :cond_3

    const-string v0, "getUserUrlFromRequest: Null encodedUserUrl"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-object v1

    :cond_3
    invoke-interface {p1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "getUserUrlFromRequest: Raw:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_4
    const-string v0, "b64"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "Looks like a plain path, return as is"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-object v2

    :cond_5
    const-string v0, "Looks like a base64 encoded string"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/milton/common/Utils;->decodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getUserUrlFromRequest: Percent decoded:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_6
    invoke-static {v0}, Lio/milton/dns/utils/base64;->fromString(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_7

    const-string v1, "Failed to decode encodedUserUrl, so maybe its not encoded, return as it is"

    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {p1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "getUserUrlFromRequest: Decoded user url:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_8
    return-object v0
.end method

.method public isCompatible(Lio/milton/resource/Resource;Lio/milton/http/Request;)Z
    .locals 2

    iget-object v0, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->handlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/milton/http/AuthenticationHandler;

    invoke-interface {v1, p1, p2}, Lio/milton/http/AuthenticationHandler;->isCompatible(Lio/milton/resource/Resource;Lio/milton/http/Request;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setLoginCookies(Ljava/lang/String;Lio/milton/http/Request;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lio/milton/http/HttpManager;->response()Lio/milton/http/Response;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p1, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->log:Lorg/slf4j/Logger;

    const-string p2, "setLoginCookies: No response object"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->getUrlSigningHash(Ljava/lang/String;Lio/milton/http/Request;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Lio/milton/http/Request;->getParams()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->keepLoggedInParamName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    :goto_1
    invoke-direct {p0, v0, p1, v1, v2}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->setCookieValues(Lio/milton/http/Response;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p2}, Lio/milton/http/Request;->getAttributes()Ljava/util/Map;

    move-result-object p2

    iget-object v0, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->userUrlAttName:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setUseLongLivedCookies(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->useLongLivedCookies:Z

    return-void
.end method

.method public supports(Lio/milton/resource/Resource;Lio/milton/http/Request;)Z
    .locals 5

    invoke-direct {p0, p2}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->isLogout(Lio/milton/http/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->getUserUrl(Lio/milton/http/Request;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->log:Lorg/slf4j/Logger;

    const-string v2, "Is LogOut request, clear cookie"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lio/milton/http/HttpManager;->response()Lio/milton/http/Response;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->clearCookieValue(Lio/milton/http/Response;)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->handlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/milton/http/AuthenticationHandler;

    invoke-interface {v2, p1, p2}, Lio/milton/http/AuthenticationHandler;->supports(Lio/milton/resource/Resource;Lio/milton/http/Request;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->log:Lorg/slf4j/Logger;

    const-string v4, "Found child handler who supports this request {}"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_3

    invoke-interface {p2}, Lio/milton/http/Request;->getAttributes()Ljava/util/Map;

    move-result-object p1

    const-string p2, "_delegatedAuthenticationHandler"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_3
    invoke-virtual {p0, p2}, Lio/milton/http/http11/auth/CookieAuthenticationHandler;->getUserUrl(Lio/milton/http/Request;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1
.end method
