.class public Lcom/dropbox/core/http/OkHttp3Requestor;
.super Lcom/dropbox/core/http/HttpRequestor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;,
        Lcom/dropbox/core/http/OkHttp3Requestor$AsyncCallback;,
        Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;
    }
.end annotation


# instance fields
.field private final client:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 1

    invoke-direct {p0}, Lcom/dropbox/core/http/HttpRequestor;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/http/OkHttpUtil;->assertNotSameThreadExecutor(Ljava/util/concurrent/ExecutorService;)V

    iput-object p1, p0, Lcom/dropbox/core/http/OkHttp3Requestor;->client:Lokhttp3/OkHttpClient;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "client"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$100(Lcom/dropbox/core/http/OkHttp3Requestor;)Lokhttp3/OkHttpClient;
    .locals 0

    iget-object p0, p0, Lcom/dropbox/core/http/OkHttp3Requestor;->client:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public static synthetic access$200(Lokhttp3/Headers;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Lcom/dropbox/core/http/OkHttp3Requestor;->fromOkHttpHeaders(Lokhttp3/Headers;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static defaultOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 1

    invoke-static {}, Lcom/dropbox/core/http/OkHttp3Requestor;->defaultOkHttpClientBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static defaultOkHttpClientBuilder()Lokhttp3/OkHttpClient$Builder;
    .locals 4

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-wide v1, Lcom/dropbox/core/http/HttpRequestor;->DEFAULT_CONNECT_TIMEOUT_MILLIS:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-wide v1, Lcom/dropbox/core/http/HttpRequestor;->DEFAULT_READ_TIMEOUT_MILLIS:J

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-static {}, Lcom/dropbox/core/http/SSLConfig;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-static {}, Lcom/dropbox/core/http/SSLConfig;->getTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static fromOkHttpHeaders(Lokhttp3/Headers;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p0}, Lokhttp3/Headers;->names()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private startUpload(Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/String;)Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;"
        }
    .end annotation

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/dropbox/core/http/OkHttp3Requestor;->toOkHttpHeaders(Ljava/lang/Iterable;Lokhttp3/Request$Builder;)V

    new-instance p2, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;

    invoke-direct {p2, p0, p3, p1}, Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;-><init>(Lcom/dropbox/core/http/OkHttp3Requestor;Ljava/lang/String;Lokhttp3/Request$Builder;)V

    return-object p2
.end method

.method private static toOkHttpHeaders(Ljava/lang/Iterable;Lokhttp3/Request$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;",
            "Lokhttp3/Request$Builder;",
            ")V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/http/HttpRequestor$Header;

    invoke-virtual {v0}, Lcom/dropbox/core/http/HttpRequestor$Header;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/dropbox/core/http/HttpRequestor$Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public configureRequest(Lokhttp3/Request$Builder;)V
    .locals 0

    return-void
.end method

.method public interceptResponse(Lokhttp3/Response;)Lokhttp3/Response;
    .locals 0

    return-object p1
.end method

.method public startPost(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/dropbox/core/http/HttpRequestor$Uploader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)",
            "Lcom/dropbox/core/http/HttpRequestor$Uploader;"
        }
    .end annotation

    const-string v0, "POST"

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/http/OkHttp3Requestor;->startUpload(Ljava/lang/String;Ljava/lang/Iterable;Ljava/lang/String;)Lcom/dropbox/core/http/OkHttp3Requestor$BufferedUploader;

    move-result-object p1

    return-object p1
.end method
