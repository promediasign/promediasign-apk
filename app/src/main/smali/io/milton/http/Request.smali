.class public interface abstract Lio/milton/http/Request;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/milton/http/Request$Method;,
        Lio/milton/http/Request$Header;,
        Lio/milton/http/Request$CacheControlRequest;,
        Lio/milton/http/Request$Depth;
    }
.end annotation


# virtual methods
.method public abstract getAbsolutePath()Ljava/lang/String;
.end method

.method public abstract getAbsoluteUrl()Ljava/lang/String;
.end method

.method public abstract getAcceptEncodingHeader()Ljava/lang/String;
.end method

.method public abstract getAcceptHeader()Ljava/lang/String;
.end method

.method public abstract getAttributes()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAuthorization()Lio/milton/http/Auth;
.end method

.method public abstract getContentLengthHeader()Ljava/lang/Long;
.end method

.method public abstract getContentRangeHeader()Ljava/lang/String;
.end method

.method public abstract getCookie(Ljava/lang/String;)Lio/milton/http/Cookie;
.end method

.method public abstract getDepthHeader()I
.end method

.method public abstract getDestinationHeader()Ljava/lang/String;
.end method

.method public abstract getExpectHeader()Ljava/lang/String;
.end method

.method public abstract getFiles()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/milton/http/FileItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHostHeader()Ljava/lang/String;
.end method

.method public abstract getIfHeader()Ljava/lang/String;
.end method

.method public abstract getIfMatchHeader()Ljava/lang/String;
.end method

.method public abstract getIfModifiedHeader()Ljava/util/Date;
.end method

.method public abstract getIfNoneMatchHeader()Ljava/lang/String;
.end method

.method public abstract getIfRangeHeader()Ljava/lang/String;
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
.end method

.method public abstract getLockTokenHeader()Ljava/lang/String;
.end method

.method public abstract getMethod()Lio/milton/http/Request$Method;
.end method

.method public abstract getOverwriteHeader()Ljava/lang/Boolean;
.end method

.method public abstract getParams()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRangeHeader()Ljava/lang/String;
.end method

.method public abstract getRequestHeader(Lio/milton/http/Request$Header;)Ljava/lang/String;
.end method

.method public abstract getUserAgentHeader()Ljava/lang/String;
.end method

.method public abstract parseRequestParameters(Ljava/util/Map;Ljava/util/Map;)V
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
.end method

.method public abstract setAuthorization(Lio/milton/http/Auth;)V
.end method
