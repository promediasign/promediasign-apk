.class public interface abstract Lio/milton/http/Response;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/milton/http/Response$Entity;,
        Lio/milton/http/Response$Status;,
        Lio/milton/http/Response$CacheControlResponse;,
        Lio/milton/http/Response$Header;,
        Lio/milton/http/Response$ContentEncoding;,
        Lio/milton/http/Response$ContentType;
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract getContentLength()Ljava/lang/Long;
.end method

.method public abstract getEntity()Lio/milton/http/Response$Entity;
.end method

.method public abstract getNonStandardHeader(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getOutputStream()Ljava/io/OutputStream;
.end method

.method public abstract getStatus()Lio/milton/http/Response$Status;
.end method

.method public abstract sendError(Lio/milton/http/Response$Status;Ljava/lang/String;)V
.end method

.method public abstract sendRedirect(Ljava/lang/String;)V
.end method

.method public abstract setAcceptRanges(Ljava/lang/String;)V
.end method

.method public abstract setAllowHeader(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setAuthenticateHeader(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setCacheControlMaxAgeHeader(Ljava/lang/Long;)V
.end method

.method public abstract setCacheControlNoCacheHeader()V
.end method

.method public abstract setContentEncodingHeader(Lio/milton/http/Response$ContentEncoding;)V
.end method

.method public abstract setContentLengthHeader(Ljava/lang/Long;)V
.end method

.method public abstract setContentRangeHeader(JJLjava/lang/Long;)V
.end method

.method public abstract setContentTypeHeader(Ljava/lang/String;)V
.end method

.method public abstract setCookie(Lio/milton/http/Cookie;)Lio/milton/http/Cookie;
.end method

.method public abstract setCookie(Ljava/lang/String;Ljava/lang/String;)Lio/milton/http/Cookie;
.end method

.method public abstract setDateHeader(Ljava/util/Date;)V
.end method

.method public abstract setDavHeader(Ljava/lang/String;)V
.end method

.method public abstract setEntity(Lio/milton/http/Response$Entity;)V
.end method

.method public abstract setEtag(Ljava/lang/String;)V
.end method

.method public abstract setLastModifiedHeader(Ljava/util/Date;)V
.end method

.method public abstract setNonStandardHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setStatus(Lio/milton/http/Response$Status;)V
.end method

.method public abstract setVaryHeader(Ljava/lang/String;)V
.end method
