.class public abstract Lio/milton/http/AbstractResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/Response;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field protected contentLength:Ljava/lang/Long;

.field protected entity:Lio/milton/http/Response$Entity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/http/AbstractResponse;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/http/AbstractResponse;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAcceptRanges()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/milton/http/Response$Header;->ACCEPT_RANGES:Lio/milton/http/Response$Header;

    invoke-virtual {p0, v0}, Lio/milton/http/AbstractResponse;->getResponseHeader(Lio/milton/http/Response$Header;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccessControlAllowOrigin()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/milton/http/Response$Header;->ACCESS_CONTROL_ALLOW_ORIGIN:Lio/milton/http/Response$Header;

    invoke-virtual {p0, v0}, Lio/milton/http/AbstractResponse;->getResponseHeader(Lio/milton/http/Response$Header;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lio/milton/http/AbstractResponse;->contentLength:Ljava/lang/Long;

    return-object v0
.end method

.method public getContentTypeHeader()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/milton/http/Response$Header;->CONTENT_TYPE:Lio/milton/http/Response$Header;

    invoke-virtual {p0, v0}, Lio/milton/http/AbstractResponse;->getResponseHeader(Lio/milton/http/Response$Header;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEntity()Lio/milton/http/Response$Entity;
    .locals 1

    iget-object v0, p0, Lio/milton/http/AbstractResponse;->entity:Lio/milton/http/Response$Entity;

    return-object v0
.end method

.method public getResponseHeader(Lio/milton/http/Response$Header;)Ljava/lang/String;
    .locals 0

    iget-object p1, p1, Lio/milton/http/Response$Header;->code:Ljava/lang/String;

    invoke-interface {p0, p1}, Lio/milton/http/Response;->getNonStandardHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public sendPermanentRedirect(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lio/milton/http/AbstractResponse;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendPermanentRedirect: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lio/milton/http/Response$Status;->SC_MOVED_PERMANENTLY:Lio/milton/http/Response$Status;

    invoke-interface {p0, v0}, Lio/milton/http/Response;->setStatus(Lio/milton/http/Response$Status;)V

    invoke-virtual {p0, p1}, Lio/milton/http/AbstractResponse;->setLocationHeader(Ljava/lang/String;)V

    return-void
.end method

.method public sendRedirect(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lio/milton/http/AbstractResponse;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendRedirect: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lio/milton/http/Response$Status;->SC_MOVED_TEMPORARILY:Lio/milton/http/Response$Status;

    invoke-interface {p0, v0}, Lio/milton/http/Response;->setStatus(Lio/milton/http/Response$Status;)V

    invoke-virtual {p0, p1}, Lio/milton/http/AbstractResponse;->setLocationHeader(Ljava/lang/String;)V

    return-void
.end method

.method public setAcceptRanges(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lio/milton/http/Response$Header;->ACCEPT_RANGES:Lio/milton/http/Response$Header;

    invoke-virtual {p0, v0, p1}, Lio/milton/http/AbstractResponse;->setResponseHeader(Lio/milton/http/Response$Header;Ljava/lang/String;)V

    return-void
.end method

.method public setAccessControlAllowOrigin(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lio/milton/http/Response$Header;->ACCESS_CONTROL_ALLOW_ORIGIN:Lio/milton/http/Response$Header;

    invoke-virtual {p0, v0, p1}, Lio/milton/http/AbstractResponse;->setResponseHeader(Lio/milton/http/Response$Header;Ljava/lang/String;)V

    return-void
.end method

.method public setAllowHeader(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_1
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    sget-object p1, Lio/milton/http/Response$Header;->ALLOW:Lio/milton/http/Response$Header;

    if-nez v0, :cond_3

    const-string v0, ""

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p0, p1, v0}, Lio/milton/http/AbstractResponse;->setResponseHeader(Lio/milton/http/Response$Header;Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public abstract setAnyDateHeader(Lio/milton/http/Response$Header;Ljava/util/Date;)V
.end method

.method public setCacheControlMaxAgeHeader(Ljava/lang/Long;)V
    .locals 3

    if-eqz p1, :cond_0

    sget-object v0, Lio/milton/http/Response$Header;->CACHE_CONTROL:Lio/milton/http/Response$Header;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "public, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lio/milton/http/Response$CacheControlResponse;->MAX_AGE:Lio/milton/http/Response$CacheControlResponse;

    iget-object v2, v2, Lio/milton/http/Response$CacheControlResponse;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/milton/http/AbstractResponse;->setResponseHeader(Lio/milton/http/Response$Header;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lio/milton/http/Response$Header;->CACHE_CONTROL:Lio/milton/http/Response$Header;

    sget-object v0, Lio/milton/http/Response$CacheControlResponse;->NO_CACHE:Lio/milton/http/Response$CacheControlResponse;

    iget-object v0, v0, Lio/milton/http/Response$CacheControlResponse;->code:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lio/milton/http/AbstractResponse;->setResponseHeader(Lio/milton/http/Response$Header;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setCacheControlNoCacheHeader()V
    .locals 2

    sget-object v0, Lio/milton/http/Response$Header;->CACHE_CONTROL:Lio/milton/http/Response$Header;

    sget-object v1, Lio/milton/http/Response$CacheControlResponse;->NO_CACHE:Lio/milton/http/Response$CacheControlResponse;

    iget-object v1, v1, Lio/milton/http/Response$CacheControlResponse;->code:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lio/milton/http/AbstractResponse;->setResponseHeader(Lio/milton/http/Response$Header;Ljava/lang/String;)V

    return-void
.end method

.method public setCacheControlPrivateMaxAgeHeader(Ljava/lang/Long;)V
    .locals 3

    if-eqz p1, :cond_0

    sget-object v0, Lio/milton/http/Response$Header;->CACHE_CONTROL:Lio/milton/http/Response$Header;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/milton/http/Response$CacheControlResponse;->PRIVATE:Lio/milton/http/Response$CacheControlResponse;

    iget-object v2, v2, Lio/milton/http/Response$CacheControlResponse;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lio/milton/http/Response$CacheControlResponse;->MAX_AGE:Lio/milton/http/Response$CacheControlResponse;

    iget-object v2, v2, Lio/milton/http/Response$CacheControlResponse;->code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/milton/http/AbstractResponse;->setResponseHeader(Lio/milton/http/Response$Header;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lio/milton/http/Response$Header;->CACHE_CONTROL:Lio/milton/http/Response$Header;

    sget-object v0, Lio/milton/http/Response$CacheControlResponse;->PRIVATE:Lio/milton/http/Response$CacheControlResponse;

    iget-object v0, v0, Lio/milton/http/Response$CacheControlResponse;->code:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lio/milton/http/AbstractResponse;->setResponseHeader(Lio/milton/http/Response$Header;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setContentEncodingHeader(Lio/milton/http/Response$ContentEncoding;)V
    .locals 1

    sget-object v0, Lio/milton/http/Response$Header;->CONTENT_ENCODING:Lio/milton/http/Response$Header;

    iget-object p1, p1, Lio/milton/http/Response$ContentEncoding;->code:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lio/milton/http/AbstractResponse;->setResponseHeader(Lio/milton/http/Response$Header;Ljava/lang/String;)V

    return-void
.end method

.method public setContentLengthHeader(Ljava/lang/Long;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v1, Lio/milton/http/Response$Header;->CONTENT_LENGTH:Lio/milton/http/Response$Header;

    invoke-virtual {p0, v1, v0}, Lio/milton/http/AbstractResponse;->setResponseHeader(Lio/milton/http/Response$Header;Ljava/lang/String;)V

    iput-object p1, p0, Lio/milton/http/AbstractResponse;->contentLength:Ljava/lang/Long;

    return-void
.end method

.method public setContentRangeHeader(JJLjava/lang/Long;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Lio/milton/common/RangeUtils;->toRangeString(JJLjava/lang/Long;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lio/milton/http/Response$Header;->CONTENT_RANGE:Lio/milton/http/Response$Header;

    invoke-virtual {p0, p2, p1}, Lio/milton/http/AbstractResponse;->setResponseHeader(Lio/milton/http/Response$Header;Ljava/lang/String;)V

    return-void
.end method

.method public setContentTypeHeader(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lio/milton/http/Response$Header;->CONTENT_TYPE:Lio/milton/http/Response$Header;

    invoke-virtual {p0, v0, p1}, Lio/milton/http/AbstractResponse;->setResponseHeader(Lio/milton/http/Response$Header;Ljava/lang/String;)V

    return-void
.end method

.method public setDateHeader(Ljava/util/Date;)V
    .locals 1

    sget-object v0, Lio/milton/http/Response$Header;->DATE:Lio/milton/http/Response$Header;

    invoke-virtual {p0, v0, p1}, Lio/milton/http/AbstractResponse;->setAnyDateHeader(Lio/milton/http/Response$Header;Ljava/util/Date;)V

    return-void
.end method

.method public setDavHeader(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lio/milton/http/Response$Header;->DAV:Lio/milton/http/Response$Header;

    invoke-virtual {p0, v0, p1}, Lio/milton/http/AbstractResponse;->setResponseHeader(Lio/milton/http/Response$Header;Ljava/lang/String;)V

    return-void
.end method

.method public setEntity(Lio/milton/http/Response$Entity;)V
    .locals 0

    iput-object p1, p0, Lio/milton/http/AbstractResponse;->entity:Lio/milton/http/Response$Entity;

    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lio/milton/http/Response$Header;->ETAG:Lio/milton/http/Response$Header;

    invoke-virtual {p0, v0, p1}, Lio/milton/http/AbstractResponse;->setResponseHeader(Lio/milton/http/Response$Header;Ljava/lang/String;)V

    return-void
.end method

.method public setExpiresHeader(Ljava/util/Date;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lio/milton/http/Response$Header;->EXPIRES:Lio/milton/http/Response$Header;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/milton/http/AbstractResponse;->setResponseHeader(Lio/milton/http/Response$Header;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lio/milton/http/Response$Header;->EXPIRES:Lio/milton/http/Response$Header;

    invoke-virtual {p0, v0, p1}, Lio/milton/http/AbstractResponse;->setAnyDateHeader(Lio/milton/http/Response$Header;Ljava/util/Date;)V

    :goto_0
    return-void
.end method

.method public setLastModifiedHeader(Ljava/util/Date;)V
    .locals 1

    sget-object v0, Lio/milton/http/Response$Header;->LAST_MODIFIED:Lio/milton/http/Response$Header;

    invoke-virtual {p0, v0, p1}, Lio/milton/http/AbstractResponse;->setAnyDateHeader(Lio/milton/http/Response$Header;Ljava/util/Date;)V

    return-void
.end method

.method public setLocationHeader(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lio/milton/http/Response$Header;->LOCATION:Lio/milton/http/Response$Header;

    invoke-virtual {p0, v0, p1}, Lio/milton/http/AbstractResponse;->setResponseHeader(Lio/milton/http/Response$Header;Ljava/lang/String;)V

    return-void
.end method

.method public setLockTokenHeader(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lio/milton/http/Response$Header;->LOCK_TOKEN:Lio/milton/http/Response$Header;

    invoke-virtual {p0, v0, p1}, Lio/milton/http/AbstractResponse;->setResponseHeader(Lio/milton/http/Response$Header;Ljava/lang/String;)V

    return-void
.end method

.method public setResponseHeader(Lio/milton/http/Response$Header;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p1, Lio/milton/http/Response$Header;->code:Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Lio/milton/http/Response;->setNonStandardHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVaryHeader(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lio/milton/http/Response$Header;->VARY:Lio/milton/http/Response$Header;

    invoke-virtual {p0, v0, p1}, Lio/milton/http/AbstractResponse;->setResponseHeader(Lio/milton/http/Response$Header;Ljava/lang/String;)V

    return-void
.end method
