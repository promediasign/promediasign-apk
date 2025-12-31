.class public abstract Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field protected proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

.field protected request:Lorg/apache/mina/proxy/handlers/ProxyRequest;

.field protected step:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->step:I

    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {p1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getRequest()Lorg/apache/mina/proxy/handlers/ProxyRequest;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->request:Lorg/apache/mina/proxy/handlers/ProxyRequest;

    if-eqz p1, :cond_0

    instance-of p1, p1, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "request parameter should be a non null HttpProxyRequest instance"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static addKeepAliveHeaders(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "Keep-Alive"

    const-string v1, "300"

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lorg/apache/mina/proxy/utils/StringUtilities;->addValueToHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "Proxy-Connection"

    const-string v1, "keep-Alive"

    invoke-static {p0, v0, v1, v2}, Lorg/apache/mina/proxy/utils/StringUtilities;->addValueToHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public abstract doHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
.end method

.method public abstract handleResponse(Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;)V
.end method

.method public writeRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V
    .locals 2

    sget-object v0, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->logger:Lorg/slf4j/Logger;

    const-string v1, "  sending HTTP request"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getHandler()Lorg/apache/mina/proxy/ProxyLogicHandler;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;

    invoke-virtual {v0, p1, p2}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->writeRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V

    return-void
.end method
