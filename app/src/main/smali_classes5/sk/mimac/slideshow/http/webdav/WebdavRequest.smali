.class public Lsk/mimac/slideshow/http/webdav/WebdavRequest;
.super Lio/milton/http/AbstractRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/http/webdav/WebdavRequest$CountingInputStream;
    }
.end annotation


# instance fields
.field private auth:Lio/milton/http/Auth;

.field private final session:Lfi/iki/elonen/NanoHTTPD$IHTTPSession;


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)V
    .locals 0

    invoke-direct {p0}, Lio/milton/http/AbstractRequest;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/http/webdav/WebdavRequest;->session:Lfi/iki/elonen/NanoHTTPD$IHTTPSession;

    return-void
.end method


# virtual methods
.method public getAbsolutePath()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/http/webdav/WebdavRequest;->session:Lfi/iki/elonen/NanoHTTPD$IHTTPSession;

    invoke-interface {v0}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getUri()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getAbsoluteUrl()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lsk/mimac/slideshow/http/webdav/WebdavRequest;->session:Lfi/iki/elonen/NanoHTTPD$IHTTPSession;

    invoke-interface {v0}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getUri()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not found"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAuthorization()Lio/milton/http/Auth;
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/http/webdav/WebdavRequest;->auth:Lio/milton/http/Auth;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/http/webdav/WebdavRequest;->session:Lfi/iki/elonen/NanoHTTPD$IHTTPSession;

    invoke-interface {v0}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lio/milton/http/Request$Header;->AUTHORIZATION:Lio/milton/http/Request$Header;

    iget-object v1, v1, Lio/milton/http/Request$Header;->code:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lio/milton/http/Auth;

    invoke-direct {v1, v0}, Lio/milton/http/Auth;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lsk/mimac/slideshow/http/webdav/WebdavRequest;->auth:Lio/milton/http/Auth;

    return-object v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCookie(Ljava/lang/String;)Lio/milton/http/Cookie;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCookies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/milton/http/Cookie;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFromAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/http/webdav/WebdavRequest;->session:Lfi/iki/elonen/NanoHTTPD$IHTTPSession;

    invoke-interface {v0}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/http/webdav/WebdavRequest;->session:Lfi/iki/elonen/NanoHTTPD$IHTTPSession;

    invoke-interface {v0}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 4

    new-instance v0, Lsk/mimac/slideshow/http/webdav/WebdavRequest$CountingInputStream;

    iget-object v1, p0, Lsk/mimac/slideshow/http/webdav/WebdavRequest;->session:Lfi/iki/elonen/NanoHTTPD$IHTTPSession;

    invoke-interface {v1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lsk/mimac/slideshow/http/webdav/WebdavRequest;->session:Lfi/iki/elonen/NanoHTTPD$IHTTPSession;

    invoke-interface {v2}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getBodySize()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lsk/mimac/slideshow/http/webdav/WebdavRequest$CountingInputStream;-><init>(Ljava/io/InputStream;J)V

    return-object v0
.end method

.method public getMethod()Lio/milton/http/Request$Method;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/http/webdav/WebdavRequest;->session:Lfi/iki/elonen/NanoHTTPD$IHTTPSession;

    invoke-interface {v0}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getMethod()Lfi/iki/elonen/NanoHTTPD$Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/milton/http/Request$Method;->valueOf(Ljava/lang/String;)Lio/milton/http/Request$Method;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteAddr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/http/webdav/WebdavRequest;->session:Lfi/iki/elonen/NanoHTTPD$IHTTPSession;

    invoke-interface {v0}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getRemoteIpAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestHeader(Lio/milton/http/Request$Header;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/http/webdav/WebdavRequest;->session:Lfi/iki/elonen/NanoHTTPD$IHTTPSession;

    invoke-interface {v0}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object v0

    iget-object p1, p1, Lio/milton/http/Request$Header;->code:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public parseRequestParameters(Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/milton/http/FileItem;",
            ">;)V"
        }
    .end annotation

    iget-object p2, p0, Lsk/mimac/slideshow/http/webdav/WebdavRequest;->session:Lfi/iki/elonen/NanoHTTPD$IHTTPSession;

    invoke-interface {p2}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getParms()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public setAuthorization(Lio/milton/http/Auth;)V
    .locals 0

    return-void
.end method
