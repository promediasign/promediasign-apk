.class public abstract Lio/milton/http/AbstractRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/milton/http/Request;


# static fields
.field public static final INFINITY:I = 0x3


# instance fields
.field private final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lio/milton/http/AbstractRequest;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lio/milton/http/AbstractRequest;->log:Lorg/slf4j/Logger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/milton/http/AbstractRequest;->attributes:Ljava/util/Map;

    return-void
.end method

.method public static stripToPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "/"

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public getAcceptEncodingHeader()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/milton/http/Request$Header;->ACCEPT_ENCODING:Lio/milton/http/Request$Header;

    invoke-virtual {p0, v0}, Lio/milton/http/AbstractRequest;->getRequestHeader(Lio/milton/http/Request$Header;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAcceptHeader()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/milton/http/Request$Header;->ACCEPT:Lio/milton/http/Request$Header;

    invoke-virtual {p0, v0}, Lio/milton/http/AbstractRequest;->getRequestHeader(Lio/milton/http/Request$Header;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAcceptLanguage()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/milton/http/Request$Header;->ACCEPT_LANGUAGE:Lio/milton/http/Request$Header;

    invoke-virtual {p0, v0}, Lio/milton/http/AbstractRequest;->getRequestHeader(Lio/milton/http/Request$Header;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/milton/http/AbstractRequest;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method public getContentLengthHeader()Ljava/lang/Long;
    .locals 4

    sget-object v0, Lio/milton/http/Request$Header;->CONTENT_LENGTH:Lio/milton/http/Request$Header;

    invoke-virtual {p0, v0}, Lio/milton/http/AbstractRequest;->getRequestHeader(Lio/milton/http/Request$Header;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    iget-object v2, p0, Lio/milton/http/AbstractRequest;->log:Lorg/slf4j/Logger;

    const-string v3, "Couldnt parse content length header: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getContentRangeHeader()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/milton/http/Request$Header;->CONTENT_RANGE:Lio/milton/http/Request$Header;

    invoke-virtual {p0, v0}, Lio/milton/http/AbstractRequest;->getRequestHeader(Lio/milton/http/Request$Header;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentTypeHeader()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/milton/http/Request$Header;->CONTENT_TYPE:Lio/milton/http/Request$Header;

    invoke-virtual {p0, v0}, Lio/milton/http/AbstractRequest;->getRequestHeader(Lio/milton/http/Request$Header;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDepthHeader()I
    .locals 4

    sget-object v0, Lio/milton/http/Request$Header;->DEPTH:Lio/milton/http/Request$Header;

    invoke-virtual {p0, v0}, Lio/milton/http/AbstractRequest;->getRequestHeader(Lio/milton/http/Request$Header;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const-string v2, "infinity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lio/milton/http/AbstractRequest;->log:Lorg/slf4j/Logger;

    const-string v3, "Unknown depth value: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return v1
.end method

.method public getDestinationHeader()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/milton/http/Request$Header;->DESTINATION:Lio/milton/http/Request$Header;

    invoke-virtual {p0, v0}, Lio/milton/http/AbstractRequest;->getRequestHeader(Lio/milton/http/Request$Header;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpectHeader()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/milton/http/Request$Header;->EXPECT:Lio/milton/http/Request$Header;

    invoke-virtual {p0, v0}, Lio/milton/http/AbstractRequest;->getRequestHeader(Lio/milton/http/Request$Header;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFiles()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/milton/http/FileItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/milton/http/AbstractRequest;->attributes:Ljava/util/Map;

    const-string v1, "_files"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getHostHeader()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/milton/http/Request$Header;->HOST:Lio/milton/http/Request$Header;

    invoke-virtual {p0, v0}, Lio/milton/http/AbstractRequest;->getRequestHeader(Lio/milton/http/Request$Header;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIfHeader()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/milton/http/Request$Header;->IF:Lio/milton/http/Request$Header;

    invoke-virtual {p0, v0}, Lio/milton/http/AbstractRequest;->getRequestHeader(Lio/milton/http/Request$Header;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIfMatchHeader()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/milton/http/Request$Header;->IF_MATCH:Lio/milton/http/Request$Header;

    invoke-virtual {p0, v0}, Lio/milton/http/AbstractRequest;->getRequestHeader(Lio/milton/http/Request$Header;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIfModifiedHeader()Ljava/util/Date;
    .locals 5

    sget-object v0, Lio/milton/http/Request$Header;->IF_MODIFIED:Lio/milton/http/Request$Header;

    invoke-virtual {p0, v0}, Lio/milton/http/AbstractRequest;->getRequestHeader(Lio/milton/http/Request$Header;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {v0}, Lio/milton/http/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Lio/milton/http/DateUtils$DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    iget-object v3, p0, Lio/milton/http/AbstractRequest;->log:Lorg/slf4j/Logger;

    const-string v4, "Unable to parse date: "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getIfNoneMatchHeader()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/milton/http/Request$Header;->IF_NONE_MATCH:Lio/milton/http/Request$Header;

    invoke-virtual {p0, v0}, Lio/milton/http/AbstractRequest;->getRequestHeader(Lio/milton/http/Request$Header;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIfRangeHeader()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/milton/http/Request$Header;->IF_RANGE:Lio/milton/http/Request$Header;

    invoke-virtual {p0, v0}, Lio/milton/http/AbstractRequest;->getRequestHeader(Lio/milton/http/Request$Header;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 6

    invoke-virtual {p0}, Lio/milton/http/AbstractRequest;->getAcceptLanguage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-lez v2, :cond_3

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "-"

    const-string v3, "_"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1

    new-instance v2, Ljava/util/Locale;

    aget-object v0, v0, v1

    invoke-direct {v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/Locale;

    aget-object v1, v0, v1

    aget-object v3, v0, v3

    aget-object v0, v0, v4

    invoke-direct {v2, v1, v3, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/util/Locale;

    aget-object v1, v0, v1

    aget-object v0, v0, v3

    invoke-direct {v2, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v2

    :cond_3
    return-object v1
.end method

.method public getLockTokenHeader()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/milton/http/Request$Header;->LOCK_TOKEN:Lio/milton/http/Request$Header;

    invoke-virtual {p0, v0}, Lio/milton/http/AbstractRequest;->getRequestHeader(Lio/milton/http/Request$Header;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginHeader()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/milton/http/Request$Header;->ORIGIN:Lio/milton/http/Request$Header;

    invoke-virtual {p0, v0}, Lio/milton/http/AbstractRequest;->getRequestHeader(Lio/milton/http/Request$Header;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOverwriteHeader()Ljava/lang/Boolean;
    .locals 2

    sget-object v0, Lio/milton/http/Request$Header;->OVERWRITE:Lio/milton/http/Request$Header;

    invoke-virtual {p0, v0}, Lio/milton/http/AbstractRequest;->getRequestHeader(Lio/milton/http/Request$Header;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "T"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParams()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/milton/http/AbstractRequest;->attributes:Ljava/util/Map;

    const-string v1, "_params"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public getRangeHeader()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/milton/http/Request$Header;->RANGE:Lio/milton/http/Request$Header;

    invoke-virtual {p0, v0}, Lio/milton/http/AbstractRequest;->getRequestHeader(Lio/milton/http/Request$Header;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRefererHeader()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/milton/http/Request$Header;->REFERER:Lio/milton/http/Request$Header;

    invoke-virtual {p0, v0}, Lio/milton/http/AbstractRequest;->getRequestHeader(Lio/milton/http/Request$Header;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getRequestHeader(Lio/milton/http/Request$Header;)Ljava/lang/String;
.end method

.method public getTimeoutHeader()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/milton/http/Request$Header;->TIMEOUT:Lio/milton/http/Request$Header;

    invoke-virtual {p0, v0}, Lio/milton/http/AbstractRequest;->getRequestHeader(Lio/milton/http/Request$Header;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgentHeader()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/milton/http/Request$Header;->USER_AGENT:Lio/milton/http/Request$Header;

    invoke-virtual {p0, v0}, Lio/milton/http/AbstractRequest;->getRequestHeader(Lio/milton/http/Request$Header;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
