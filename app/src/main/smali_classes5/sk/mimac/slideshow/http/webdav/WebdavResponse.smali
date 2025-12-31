.class public Lsk/mimac/slideshow/http/webdav/WebdavResponse;
.super Lio/milton/http/AbstractResponse;
.source "SourceFile"


# instance fields
.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;

.field private final outputStream:Ljava/io/ByteArrayOutputStream;

.field private status:Lio/milton/http/Response$Status;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lio/milton/http/AbstractResponse;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/http/webdav/WebdavResponse;->headers:Ljava/util/Map;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/http/webdav/WebdavResponse;->outputStream:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public finalizeResponse()Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 6

    iget-object v0, p0, Lsk/mimac/slideshow/http/webdav/WebdavResponse;->message:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/http/webdav/WebdavResponse;->status:Lio/milton/http/Response$Status;

    iget v0, v0, Lio/milton/http/Response$Status;->code:I

    invoke-static {v0}, Lfi/iki/elonen/NanoHTTPD$Response$Status;->lookup(I)Lfi/iki/elonen/NanoHTTPD$Response$Status;

    move-result-object v0

    iget-object v2, p0, Lsk/mimac/slideshow/http/webdav/WebdavResponse;->message:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/http/webdav/WebdavResponse;->outputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v2, p0, Lsk/mimac/slideshow/http/webdav/WebdavResponse;->status:Lio/milton/http/Response$Status;

    iget v2, v2, Lio/milton/http/Response$Status;->code:I

    invoke-static {v2}, Lfi/iki/elonen/NanoHTTPD$Response$Status;->lookup(I)Lfi/iki/elonen/NanoHTTPD$Response$Status;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v0, v0

    int-to-long v4, v0

    invoke-static {v2, v1, v3, v4, v5}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lsk/mimac/slideshow/http/webdav/WebdavResponse;->headers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v1, "connection"

    const-string v2, "close"

    invoke-virtual {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

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

    iget-object v0, p0, Lsk/mimac/slideshow/http/webdav/WebdavResponse;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getNonStandardHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/http/webdav/WebdavResponse;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/http/webdav/WebdavResponse;->outputStream:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method public getStatus()Lio/milton/http/Response$Status;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/http/webdav/WebdavResponse;->status:Lio/milton/http/Response$Status;

    return-object v0
.end method

.method public sendError(Lio/milton/http/Response$Status;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/http/webdav/WebdavResponse;->status:Lio/milton/http/Response$Status;

    iput-object p2, p0, Lsk/mimac/slideshow/http/webdav/WebdavResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public setAnyDateHeader(Lio/milton/http/Response$Header;Ljava/util/Date;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "E, d MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "GMT"

    invoke-static {v1}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object v1, p0, Lsk/mimac/slideshow/http/webdav/WebdavResponse;->headers:Ljava/util/Map;

    iget-object p1, p1, Lio/milton/http/Response$Header;->code:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAuthenticateHeader(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/http/webdav/WebdavResponse;->headers:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "WWW-Authenticate"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setCookie(Lio/milton/http/Cookie;)Lio/milton/http/Cookie;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)Lio/milton/http/Cookie;
    .locals 0

    .line 2
    const/4 p1, 0x0

    return-object p1
.end method

.method public setNonStandardHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/http/webdav/WebdavResponse;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setStatus(Lio/milton/http/Response$Status;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/http/webdav/WebdavResponse;->status:Lio/milton/http/Response$Status;

    return-void
.end method
