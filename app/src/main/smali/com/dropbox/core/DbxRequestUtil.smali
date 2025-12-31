.class public abstract Lcom/dropbox/core/DbxRequestUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/DbxRequestUtil$RequestMaker;,
        Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;
    }
.end annotation


# static fields
.field private static final RAND:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/dropbox/core/DbxRequestUtil;->RAND:Ljava/util/Random;

    return-void
.end method

.method public static addAuthHeader(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    new-instance v0, Lcom/dropbox/core/http/HttpRequestor$Header;

    const-string v1, "Bearer "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Authorization"

    invoke-direct {v0, v1, p1}, Lcom/dropbox/core/http/HttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "accessToken"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static addBasicAuthHeader(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    new-instance p0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p1, ":"

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Lcom/dropbox/core/util/StringUtil;->stringToUtf8(Ljava/lang/String;)[B

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Lcom/dropbox/core/util/StringUtil;->base64Encode([B)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance p2, Lcom/dropbox/core/http/HttpRequestor$Header;

    .line 41
    .line 42
    const-string v0, "Basic "

    .line 43
    .line 44
    invoke-static {v0, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string v0, "Authorization"

    .line 49
    .line 50
    invoke-direct {p2, v0, p1}, Lcom/dropbox/core/http/HttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    .line 58
    .line 59
    const-string p1, "password"

    .line 60
    .line 61
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0

    .line 65
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    .line 66
    .line 67
    const-string p1, "username"

    .line 68
    .line 69
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p0
.end method

.method public static addPathRootHeader(Ljava/util/List;Lcom/dropbox/core/v2/common/PathRoot;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;",
            "Lcom/dropbox/core/v2/common/PathRoot;",
            ")",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public static addUserAgentHeader(Ljava/util/List;Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;",
            "Lcom/dropbox/core/DbxRequestConfig;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-static {p1, p2}, Lcom/dropbox/core/DbxRequestUtil;->buildUserAgentHeader(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;)Lcom/dropbox/core/http/HttpRequestor$Header;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static addUserLocaleHeader(Ljava/util/List;Lcom/dropbox/core/DbxRequestConfig;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;",
            "Lcom/dropbox/core/DbxRequestConfig;",
            ")",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/dropbox/core/DbxRequestConfig;->getUserLocale()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    new-instance v0, Lcom/dropbox/core/http/HttpRequestor$Header;

    const-string v1, "Dropbox-API-User-Locale"

    invoke-virtual {p1}, Lcom/dropbox/core/DbxRequestConfig;->getUserLocale()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/dropbox/core/http/HttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static buildUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "/"

    :try_start_0
    new-instance v1, Ljava/net/URI;

    const-string v2, "https"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v0, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "URI creation failed, host="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/dropbox/core/util/StringUtil;->jq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", path="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/dropbox/core/util/StringUtil;->jq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static buildUrlWithParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Lcom/dropbox/core/DbxRequestUtil;->buildUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p3}, Lcom/dropbox/core/DbxRequestUtil;->encodeUrlParams(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildUserAgentHeader(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;)Lcom/dropbox/core/http/HttpRequestor$Header;
    .locals 2

    new-instance v0, Lcom/dropbox/core/http/HttpRequestor$Header;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/dropbox/core/DbxRequestConfig;->getClientIdentifier()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/dropbox/core/DbxSdkVersion;->Version:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "User-Agent"

    invoke-direct {v0, p1, p0}, Lcom/dropbox/core/http/HttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static copyHeaders(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static doPostNoAuth(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/DbxRequestConfig;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;",
            "Lcom/dropbox/core/DbxRequestUtil$ResponseHandler<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/dropbox/core/DbxRequestConfig;->getMaxRetries()I

    move-result v0

    new-instance v9, Lcom/dropbox/core/DbxRequestUtil$2;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/dropbox/core/DbxRequestUtil$2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)V

    invoke-static {v0, v9}, Lcom/dropbox/core/DbxRequestUtil;->runAndRetry(ILcom/dropbox/core/DbxRequestUtil$RequestMaker;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static encodeUrlParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "UTF-8 should always be supported"

    invoke-static {v0, p0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static encodeUrlParams(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "&"

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    const-string v2, "locale="

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Lcom/dropbox/core/DbxRequestUtil;->encodeUrlParam(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-object p0, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string p0, ""

    .line 25
    .line 26
    :goto_0
    if-eqz p1, :cond_4

    .line 27
    .line 28
    array-length v2, p1

    .line 29
    rem-int/lit8 v2, v2, 0x2

    .line 30
    .line 31
    if-nez v2, :cond_3

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    :goto_1
    array-length v3, p1

    .line 35
    if-ge v2, v3, :cond_4

    .line 36
    .line 37
    aget-object v3, p1, v2

    .line 38
    .line 39
    add-int/lit8 v4, v2, 0x1

    .line 40
    .line 41
    aget-object v4, p1, v4

    .line 42
    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    if-eqz v4, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-static {v3}, Lcom/dropbox/core/DbxRequestUtil;->encodeUrlParam(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p0, "="

    .line 58
    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-static {v4}, Lcom/dropbox/core/DbxRequestUtil;->encodeUrlParam(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    move-object p0, v1

    .line 70
    :cond_1
    add-int/lit8 v2, v2, 0x2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 74
    .line 75
    const-string p1, "params["

    .line 76
    .line 77
    const-string v0, "] is null"

    .line 78
    .line 79
    invoke-static {v2, p1, v0}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p0

    .line 87
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 88
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v1, "\'params.length\' is "

    .line 92
    .line 93
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    array-length p1, p1

    .line 97
    const-string v1, "; expecting a multiple of two"

    .line 98
    .line 99
    invoke-static {v1, p1, v0}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p0

    .line 107
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    return-object p0
.end method

.method public static finishResponse(Lcom/dropbox/core/http/HttpRequestor$Response;Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/http/HttpRequestor$Response;",
            "Lcom/dropbox/core/DbxRequestUtil$ResponseHandler<",
            "TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1, p0}, Lcom/dropbox/core/DbxRequestUtil$ResponseHandler;->handle(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/dropbox/core/http/HttpRequestor$Response;->getBody()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/util/IOUtil;->closeInput(Ljava/io/InputStream;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/dropbox/core/http/HttpRequestor$Response;->getBody()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lcom/dropbox/core/util/IOUtil;->closeInput(Ljava/io/InputStream;)V

    throw p1
.end method

.method public static getContentType(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/String;
    .locals 1

    const-string v0, "Content-Type"

    invoke-static {p0, v0}, Lcom/dropbox/core/DbxRequestUtil;->getFirstHeaderMaybe(Lcom/dropbox/core/http/HttpRequestor$Response;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFirstHeader(Lcom/dropbox/core/http/HttpRequestor$Response;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/dropbox/core/http/HttpRequestor$Response;->getHeaders()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/util/List;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Ljava/lang/String;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_0
    new-instance v0, Lcom/dropbox/core/BadResponseException;

    .line 28
    .line 29
    invoke-static {p0}, Lcom/dropbox/core/DbxRequestUtil;->getRequestId(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string v1, "missing HTTP header \""

    .line 34
    .line 35
    const-string v2, "\""

    .line 36
    .line 37
    invoke-static {v1, p1, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0
.end method

.method public static getFirstHeaderMaybe(Lcom/dropbox/core/http/HttpRequestor$Response;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/dropbox/core/http/HttpRequestor$Response;->getHeaders()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getRequestId(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/String;
    .locals 1

    const-string v0, "X-Dropbox-Request-Id"

    invoke-static {p0, v0}, Lcom/dropbox/core/DbxRequestUtil;->getFirstHeaderMaybe(Lcom/dropbox/core/http/HttpRequestor$Response;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static loadErrorBody(Lcom/dropbox/core/http/HttpRequestor$Response;)[B
    .locals 1

    invoke-virtual {p0}, Lcom/dropbox/core/http/HttpRequestor$Response;->getBody()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/dropbox/core/http/HttpRequestor$Response;->getBody()Ljava/io/InputStream;

    move-result-object p0

    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lcom/dropbox/core/util/IOUtil;->slurp(Ljava/io/InputStream;I)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/dropbox/core/NetworkIOException;

    invoke-direct {v0, p0}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method private static messageFromResponse(Lcom/dropbox/core/http/HttpRequestor$Response;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/dropbox/core/DbxRequestUtil;->loadErrorBody(Lcom/dropbox/core/http/HttpRequestor$Response;)[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/core/http/HttpRequestor$Response;->getStatusCode()I

    move-result p0

    invoke-static {p1, p0, v0}, Lcom/dropbox/core/DbxRequestUtil;->parseErrorBody(Ljava/lang/String;I[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseErrorBody(Ljava/lang/String;I[B)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p2}, Lcom/dropbox/core/util/StringUtil;->utf8ToString([B)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p2

    .line 7
    new-instance v0, Lcom/dropbox/core/BadResponseException;

    .line 8
    .line 9
    const-string v1, "Got non-UTF8 response body: "

    .line 10
    .line 11
    const-string v2, ": "

    .line 12
    .line 13
    invoke-static {p1, v1, v2}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method public static readJsonFromResponse(Lcom/dropbox/core/json/JsonReader;Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/json/JsonReader<",
            "TT;>;",
            "Lcom/dropbox/core/http/HttpRequestor$Response;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/dropbox/core/http/HttpRequestor$Response;->getBody()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/core/json/JsonReader;->readFully(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance p1, Lcom/dropbox/core/NetworkIOException;

    invoke-direct {p1, p0}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw p1

    :goto_1
    invoke-static {p1}, Lcom/dropbox/core/DbxRequestUtil;->getRequestId(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/dropbox/core/BadResponseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error in response JSON: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/dropbox/core/json/JsonReadException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static removeAuthHeader(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dropbox/core/http/HttpRequestor$Header;

    invoke-virtual {v2}, Lcom/dropbox/core/http/HttpRequestor$Header;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Authorization"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {p0, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public static runAndRetry(ILcom/dropbox/core/DbxRequestUtil$RequestMaker;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(I",
            "Lcom/dropbox/core/DbxRequestUtil$RequestMaker<",
            "TT;TE;>;)TT;^",
            "Lcom/dropbox/core/DbxException;",
            "^TE;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const-wide/16 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/dropbox/core/DbxRequestUtil$RequestMaker;->run()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lcom/dropbox/core/RetryException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/dropbox/core/ServerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v3

    move-wide v4, v1

    goto :goto_1

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Lcom/dropbox/core/RetryException;->getBackoffMillis()J

    move-result-wide v4

    :goto_1
    if-ge v0, p0, :cond_1

    sget-object v3, Lcom/dropbox/core/DbxRequestUtil;->RAND:Ljava/util/Random;

    const/16 v6, 0x3e8

    invoke-virtual {v3, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    cmp-long v3, v4, v1

    if-lez v3, :cond_0

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    throw v3
.end method

.method public static startPostNoAuth(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/http/HttpRequestor$Response;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/DbxRequestConfig;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)",
            "Lcom/dropbox/core/http/HttpRequestor$Response;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/dropbox/core/DbxRequestConfig;->getUserLocale()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p4}, Lcom/dropbox/core/DbxRequestUtil;->encodeUrlParams(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/dropbox/core/util/StringUtil;->stringToUtf8(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {p5}, Lcom/dropbox/core/DbxRequestUtil;->copyHeaders(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    new-instance p4, Lcom/dropbox/core/http/HttpRequestor$Header;

    const-string p5, "Content-Type"

    const-string v0, "application/x-www-form-urlencoded; charset=utf-8"

    invoke-direct {p4, p5, v0}, Lcom/dropbox/core/http/HttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/dropbox/core/DbxRequestUtil;->startPostRaw(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/List;)Lcom/dropbox/core/http/HttpRequestor$Response;

    move-result-object p0

    return-object p0
.end method

.method public static startPostRaw(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/List;)Lcom/dropbox/core/http/HttpRequestor$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/DbxRequestConfig;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/List<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)",
            "Lcom/dropbox/core/http/HttpRequestor$Response;"
        }
    .end annotation

    invoke-static {p2, p3}, Lcom/dropbox/core/DbxRequestUtil;->buildUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p5}, Lcom/dropbox/core/DbxRequestUtil;->copyHeaders(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-static {p3, p0, p1}, Lcom/dropbox/core/DbxRequestUtil;->addUserAgentHeader(Ljava/util/List;Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    new-instance p3, Lcom/dropbox/core/http/HttpRequestor$Header;

    array-length p5, p4

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p5

    const-string v0, "Content-Length"

    invoke-direct {p3, v0, p5}, Lcom/dropbox/core/http/HttpRequestor$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-virtual {p0}, Lcom/dropbox/core/DbxRequestConfig;->getHttpRequestor()Lcom/dropbox/core/http/HttpRequestor;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/dropbox/core/http/HttpRequestor;->startPost(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/dropbox/core/http/HttpRequestor$Uploader;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, p4}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->upload([B)V

    invoke-virtual {p0}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->finish()Lcom/dropbox/core/http/HttpRequestor$Response;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->close()V

    return-object p1

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/dropbox/core/http/HttpRequestor$Uploader;->close()V

    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    new-instance p1, Lcom/dropbox/core/NetworkIOException;

    invoke-direct {p1, p0}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw p1
.end method

.method public static toParamsArray(Ljava/util/Map;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static unexpectedStatus(Lcom/dropbox/core/http/HttpRequestor$Response;)Lcom/dropbox/core/DbxException;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/dropbox/core/DbxRequestUtil;->unexpectedStatus(Lcom/dropbox/core/http/HttpRequestor$Response;Ljava/lang/String;)Lcom/dropbox/core/DbxException;

    move-result-object p0

    return-object p0
.end method

.method public static unexpectedStatus(Lcom/dropbox/core/http/HttpRequestor$Response;Ljava/lang/String;)Lcom/dropbox/core/DbxException;
    .locals 8

    .line 2
    invoke-static {p0}, Lcom/dropbox/core/DbxRequestUtil;->getRequestId(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/dropbox/core/http/HttpRequestor$Response;->getStatusCode()I

    move-result v0

    const/16 v1, 0x190

    if-eq v0, v1, :cond_9

    const/16 v1, 0x191

    const-string v2, "Bad JSON: "

    if-eq v0, v1, :cond_8

    const/16 v1, 0x193

    const/4 v3, 0x0

    if-eq v0, v1, :cond_6

    const/16 v1, 0x1a6

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1ad

    const-string v6, "Invalid value for HTTP header: \"Retry-After\""

    const-string v2, "Retry-After"

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1f4

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1f7

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/dropbox/core/BadResponseCodeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected HTTP status code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/dropbox/core/http/HttpRequestor$Response;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dropbox/core/http/HttpRequestor$Response;->getStatusCode()I

    move-result p0

    invoke-direct {v0, p1, v1, p0}, Lcom/dropbox/core/BadResponseCodeException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_7

    :cond_0
    invoke-static {p0, v2}, Lcom/dropbox/core/DbxRequestUtil;->getFirstHeaderMaybe(Lcom/dropbox/core/http/HttpRequestor$Response;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    new-instance v7, Lcom/dropbox/core/RetryException;

    int-to-long v4, p0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, v7

    move-object v1, p1

    move-object v2, v3

    move-wide v3, v4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/RetryException;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V

    :goto_0
    move-object v0, v7

    goto/16 :goto_7

    :cond_1
    new-instance v0, Lcom/dropbox/core/RetryException;

    invoke-direct {v0, p1, v3}, Lcom/dropbox/core/RetryException;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    :catch_0
    new-instance v0, Lcom/dropbox/core/BadResponseException;

    invoke-direct {v0, p1, v6}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_2
    new-instance v0, Lcom/dropbox/core/ServerException;

    invoke-direct {v0, p1, v3}, Lcom/dropbox/core/ServerException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_3
    :try_start_1
    invoke-static {p0, v2}, Lcom/dropbox/core/DbxRequestUtil;->getFirstHeader(Lcom/dropbox/core/http/HttpRequestor$Response;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    new-instance v7, Lcom/dropbox/core/RateLimitException;

    int-to-long v4, p0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, v7

    move-object v1, p1

    move-object v2, v3

    move-wide v3, v4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/RateLimitException;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    new-instance v0, Lcom/dropbox/core/BadResponseException;

    invoke-direct {v0, p1, v6}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_4
    :try_start_2
    new-instance v0, Lcom/dropbox/core/ApiErrorResponse$Serializer;

    sget-object v1, Lcom/dropbox/core/v2/common/PathRootError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/common/PathRootError$Serializer;

    invoke-direct {v0, v1}, Lcom/dropbox/core/ApiErrorResponse$Serializer;-><init>(Lcom/dropbox/core/stone/StoneSerializer;)V

    invoke-virtual {p0}, Lcom/dropbox/core/http/HttpRequestor$Response;->getBody()Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/ApiErrorResponse;

    invoke-virtual {p0}, Lcom/dropbox/core/ApiErrorResponse;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/dropbox/core/ApiErrorResponse;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/core/LocalizedText;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    goto :goto_3

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/dropbox/core/ApiErrorResponse;->getError()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/common/PathRootError;

    new-instance v0, Lcom/dropbox/core/PathRootErrorException;

    invoke-direct {v0, p1, v3, p0}, Lcom/dropbox/core/PathRootErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/common/PathRootError;)V
    :try_end_2
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_7

    :goto_2
    new-instance p1, Lcom/dropbox/core/NetworkIOException;

    invoke-direct {p1, p0}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw p1

    :goto_3
    new-instance v0, Lcom/dropbox/core/BadResponseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonProcessingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_6
    :try_start_3
    new-instance v0, Lcom/dropbox/core/ApiErrorResponse$Serializer;

    sget-object v1, Lcom/dropbox/core/v2/auth/AccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/auth/AccessError$Serializer;

    invoke-direct {v0, v1}, Lcom/dropbox/core/ApiErrorResponse$Serializer;-><init>(Lcom/dropbox/core/stone/StoneSerializer;)V

    invoke-virtual {p0}, Lcom/dropbox/core/http/HttpRequestor$Response;->getBody()Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/ApiErrorResponse;

    invoke-virtual {p0}, Lcom/dropbox/core/ApiErrorResponse;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/dropbox/core/ApiErrorResponse;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/core/LocalizedText;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :catch_4
    move-exception p0

    goto :goto_5

    :catch_5
    move-exception p0

    goto :goto_6

    :cond_7
    :goto_4
    invoke-virtual {p0}, Lcom/dropbox/core/ApiErrorResponse;->getError()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dropbox/core/v2/auth/AccessError;

    new-instance v0, Lcom/dropbox/core/AccessErrorException;

    invoke-direct {v0, p1, v3, p0}, Lcom/dropbox/core/AccessErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/auth/AccessError;)V
    :try_end_3
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_7

    :goto_5
    new-instance p1, Lcom/dropbox/core/NetworkIOException;

    invoke-direct {p1, p0}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw p1

    :goto_6
    new-instance v0, Lcom/dropbox/core/BadResponseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonProcessingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_8
    invoke-static {p0, p1}, Lcom/dropbox/core/DbxRequestUtil;->messageFromResponse(Lcom/dropbox/core/http/HttpRequestor$Response;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_4
    new-instance v0, Lcom/dropbox/core/ApiErrorResponse$Serializer;

    sget-object v1, Lcom/dropbox/core/v2/auth/AuthError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/auth/AuthError$Serializer;

    invoke-direct {v0, v1}, Lcom/dropbox/core/ApiErrorResponse$Serializer;-><init>(Lcom/dropbox/core/stone/StoneSerializer;)V

    invoke-virtual {v0, p0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/ApiErrorResponse;

    invoke-virtual {v0}, Lcom/dropbox/core/ApiErrorResponse;->getError()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/auth/AuthError;

    new-instance v1, Lcom/dropbox/core/InvalidAccessTokenException;

    invoke-direct {v1, p1, p0, v0}, Lcom/dropbox/core/InvalidAccessTokenException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/auth/AuthError;)V
    :try_end_4
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v0, v1

    goto :goto_7

    :catch_6
    move-exception p0

    new-instance v0, Lcom/dropbox/core/BadResponseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_9
    invoke-static {p0, p1}, Lcom/dropbox/core/DbxRequestUtil;->messageFromResponse(Lcom/dropbox/core/http/HttpRequestor$Response;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/dropbox/core/BadRequestException;

    invoke-direct {v0, p1, p0}, Lcom/dropbox/core/BadRequestException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    return-object v0
.end method
