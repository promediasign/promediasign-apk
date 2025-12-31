.class public Lcom/dropbox/core/http/StandardHttpRequestor;
.super Lcom/dropbox/core/http/HttpRequestor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/http/StandardHttpRequestor$Config;,
        Lcom/dropbox/core/http/StandardHttpRequestor$Uploader;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/http/StandardHttpRequestor;

.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static volatile certPinningWarningLogged:Z


# instance fields
.field private final config:Lcom/dropbox/core/http/StandardHttpRequestor$Config;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/dropbox/core/http/StandardHttpRequestor;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/http/StandardHttpRequestor;->LOGGER:Ljava/util/logging/Logger;

    new-instance v0, Lcom/dropbox/core/http/StandardHttpRequestor;

    sget-object v1, Lcom/dropbox/core/http/StandardHttpRequestor$Config;->DEFAULT_INSTANCE:Lcom/dropbox/core/http/StandardHttpRequestor$Config;

    invoke-direct {v0, v1}, Lcom/dropbox/core/http/StandardHttpRequestor;-><init>(Lcom/dropbox/core/http/StandardHttpRequestor$Config;)V

    sput-object v0, Lcom/dropbox/core/http/StandardHttpRequestor;->INSTANCE:Lcom/dropbox/core/http/StandardHttpRequestor;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/dropbox/core/http/StandardHttpRequestor;->certPinningWarningLogged:Z

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/http/StandardHttpRequestor$Config;)V
    .locals 0

    invoke-direct {p0}, Lcom/dropbox/core/http/HttpRequestor;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/http/StandardHttpRequestor;->config:Lcom/dropbox/core/http/StandardHttpRequestor$Config;

    return-void
.end method

.method public static synthetic access$000(Ljava/net/HttpURLConnection;)Ljava/io/OutputStream;
    .locals 0

    invoke-static {p0}, Lcom/dropbox/core/http/StandardHttpRequestor;->getOutputStream(Ljava/net/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/dropbox/core/http/StandardHttpRequestor;Ljava/net/HttpURLConnection;)Lcom/dropbox/core/http/HttpRequestor$Response;
    .locals 0

    invoke-direct {p0, p1}, Lcom/dropbox/core/http/StandardHttpRequestor;->toResponse(Ljava/net/HttpURLConnection;)Lcom/dropbox/core/http/HttpRequestor$Response;

    move-result-object p0

    return-object p0
.end method

.method private static getOutputStream(Ljava/net/HttpURLConnection;)Ljava/io/OutputStream;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method private static logCertificatePinningWarning()V
    .locals 2

    sget-boolean v0, Lcom/dropbox/core/http/StandardHttpRequestor;->certPinningWarningLogged:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/dropbox/core/http/StandardHttpRequestor;->certPinningWarningLogged:Z

    sget-object v0, Lcom/dropbox/core/http/StandardHttpRequestor;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "Certificate pinning disabled for HTTPS connections. This is likely because your JRE does not return javax.net.ssl.HttpsURLConnection objects for https network connections. Be aware your app may be prone to man-in-the-middle attacks without proper SSL certificate validation. If you are using Google App Engine, please configure DbxRequestConfig to use GoogleAppEngineRequestor."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private prepRequest(Ljava/lang/String;Ljava/lang/Iterable;Z)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;Z)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/dropbox/core/http/StandardHttpRequestor;->config:Lcom/dropbox/core/http/StandardHttpRequestor$Config;

    invoke-virtual {p1}, Lcom/dropbox/core/http/StandardHttpRequestor$Config;->getProxy()Ljava/net/Proxy;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lcom/dropbox/core/http/StandardHttpRequestor;->config:Lcom/dropbox/core/http/StandardHttpRequestor$Config;

    invoke-virtual {v0}, Lcom/dropbox/core/http/StandardHttpRequestor$Config;->getConnectTimeoutMillis()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget-object v0, p0, Lcom/dropbox/core/http/StandardHttpRequestor;->config:Lcom/dropbox/core/http/StandardHttpRequestor$Config;

    invoke-virtual {v0}, Lcom/dropbox/core/http/StandardHttpRequestor$Config;->getReadTimeoutMillis()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setAllowUserInteraction(Z)V

    if-eqz p3, :cond_0

    const/16 p3, 0x4000

    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    :cond_0
    instance-of p3, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz p3, :cond_1

    move-object p3, p1

    check-cast p3, Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {p3}, Lcom/dropbox/core/http/SSLConfig;->apply(Ljavax/net/ssl/HttpsURLConnection;)V

    invoke-virtual {p0, p3}, Lcom/dropbox/core/http/StandardHttpRequestor;->configureConnection(Ljavax/net/ssl/HttpsURLConnection;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/dropbox/core/http/StandardHttpRequestor;->logCertificatePinningWarning()V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/dropbox/core/http/StandardHttpRequestor;->configure(Ljava/net/HttpURLConnection;)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/dropbox/core/http/HttpRequestor$Header;

    invoke-virtual {p3}, Lcom/dropbox/core/http/HttpRequestor$Header;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/dropbox/core/http/HttpRequestor$Header;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v0, p3}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method private toResponse(Ljava/net/HttpURLConnection;)Lcom/dropbox/core/http/HttpRequestor$Response;
    .locals 3

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/dropbox/core/http/StandardHttpRequestor;->interceptResponse(Ljava/net/HttpURLConnection;)V

    new-instance v2, Lcom/dropbox/core/http/HttpRequestor$Response;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    invoke-direct {v2, v0, v1, p1}, Lcom/dropbox/core/http/HttpRequestor$Response;-><init>(ILjava/io/InputStream;Ljava/util/Map;)V

    return-object v2
.end method


# virtual methods
.method public configure(Ljava/net/HttpURLConnection;)V
    .locals 0

    return-void
.end method

.method public configureConnection(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public interceptResponse(Ljava/net/HttpURLConnection;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic startPost(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/dropbox/core/http/HttpRequestor$Uploader;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/http/StandardHttpRequestor;->startPost(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/dropbox/core/http/StandardHttpRequestor$Uploader;

    move-result-object p1

    return-object p1
.end method

.method public startPost(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/dropbox/core/http/StandardHttpRequestor$Uploader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)",
            "Lcom/dropbox/core/http/StandardHttpRequestor$Uploader;"
        }
    .end annotation

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/http/StandardHttpRequestor;->prepRequest(Ljava/lang/String;Ljava/lang/Iterable;Z)Ljava/net/HttpURLConnection;

    move-result-object p1

    const-string p2, "POST"

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    new-instance p2, Lcom/dropbox/core/http/StandardHttpRequestor$Uploader;

    invoke-direct {p2, p0, p1}, Lcom/dropbox/core/http/StandardHttpRequestor$Uploader;-><init>(Lcom/dropbox/core/http/StandardHttpRequestor;Ljava/net/HttpURLConnection;)V

    return-object p2
.end method
