.class public Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;
.super Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;
.source "SourceFile"


# static fields
.field private static final logger:Lorg/slf4j/Logger;

.field private static rnd:Ljava/security/SecureRandom;


# instance fields
.field private directives:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private response:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->logger:Lorg/slf4j/Logger;

    :try_start_0
    const-string v0, "SHA1PRNG"

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->rnd:Ljava/security/SecureRandom;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->directives:Ljava/util/HashMap;

    iget-object p1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->request:Lorg/apache/mina/proxy/handlers/ProxyRequest;

    check-cast p1, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;

    const-string v0, "USER"

    const-string v1, "PWD"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->checkRequiredProperties([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 13

    sget-object v0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->logger:Lorg/slf4j/Logger;

    const-string v1, " doHandshake()"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->step:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->directives:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v0, "Authentication challenge not received"

    invoke-direct {p1, v0}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->request:Lorg/apache/mina/proxy/handlers/ProxyRequest;

    check-cast v1, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;

    invoke-virtual {v1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHeaders()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHeaders()Ljava/util/Map;

    move-result-object v2

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :goto_1
    iget v3, p0, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->step:I

    const/4 v4, 0x1

    if-lez v3, :cond_e

    const-string v3, "  sending DIGEST challenge response"

    invoke-interface {v0, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getProperties()Ljava/util/Map;

    move-result-object v3

    const-string v5, "USER"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "username"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->directives:Ljava/util/HashMap;

    const-string v5, "realm"

    invoke-static {v3, v0, v5}, Lorg/apache/mina/proxy/utils/StringUtilities;->copyDirective(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->directives:Ljava/util/HashMap;

    const-string v5, "uri"

    invoke-static {v3, v0, v5}, Lorg/apache/mina/proxy/utils/StringUtilities;->copyDirective(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->directives:Ljava/util/HashMap;

    const-string v6, "opaque"

    invoke-static {v3, v0, v6}, Lorg/apache/mina/proxy/utils/StringUtilities;->copyDirective(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->directives:Ljava/util/HashMap;

    const-string v6, "nonce"

    invoke-static {v3, v0, v6}, Lorg/apache/mina/proxy/utils/StringUtilities;->copyDirective(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->directives:Ljava/util/HashMap;

    const-string v6, "algorithm"

    invoke-static {v3, v0, v6}, Lorg/apache/mina/proxy/utils/StringUtilities;->copyDirective(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v6, "md5"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "md5-sess"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v0, "Unknown algorithm required by server"

    invoke-direct {p1, v0}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    iget-object v3, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->directives:Ljava/util/HashMap;

    const-string v11, "qop"

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_9

    new-instance v6, Ljava/util/StringTokenizer;

    const-string v7, ","

    invoke-direct {v6, v3, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_5
    :goto_3
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    const-string v8, "auth"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_4

    :cond_6
    sget-object v8, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->SUPPORTED_QOPS:[Ljava/lang/String;

    invoke-static {v8, v7}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-le v8, v9, :cond_5

    move-object v3, v7

    goto :goto_3

    :cond_7
    :goto_4
    if-eqz v3, :cond_8

    invoke-virtual {v0, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x8

    new-array v3, v3, [B

    sget-object v6, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->rnd:Ljava/security/SecureRandom;

    invoke-virtual {v6, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    :try_start_0
    new-instance v6, Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/mina/util/Base64;->encodeBase64([B)[B

    move-result-object v3

    iget-object v7, p0, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v7}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharsetName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v3, "cnonce"

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v1, "Unable to encode cnonce"

    invoke-direct {v0, v1, p1}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_8
    new-instance p1, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v0, "No supported qop option available"

    invoke-direct {p1, v0}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_5
    const-string v3, "00000001"

    const-string v12, "nc"

    invoke-virtual {v0, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHttpURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_1
    const-string v3, "response"

    iget-object v5, p0, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v5}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v5

    invoke-virtual {v1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHttpVerb()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getProperties()Ljava/util/Map;

    move-result-object v6

    const-string v8, "PWD"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    iget-object v6, p0, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v6}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharsetName()Ljava/lang/String;

    move-result-object v9

    iget-object v6, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->response:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    invoke-virtual {v6}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getBody()Ljava/lang/String;

    move-result-object v10

    move-object v6, v0

    invoke-static/range {v5 .. v10}, Lorg/apache/mina/proxy/handlers/http/digest/DigestUtilities;->computeResponseValue(Lorg/apache/mina/core/session/IoSession;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Digest "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v7, :cond_a

    const-string v9, ", "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_a
    const/4 v7, 0x1

    :goto_7
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    const/4 v9, 0x1

    goto :goto_8

    :cond_b
    const/4 v9, 0x0

    :goto_8
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_c

    const-string v9, "=\""

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x22

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_c
    const/16 v9, 0x3d

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_d
    const-string v0, "Proxy-Authorization"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3, v4}, Lorg/apache/mina/proxy/utils/StringUtilities;->addValueToHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_9

    :catch_1
    move-exception p1

    new-instance v0, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v1, "Digest response computing failed"

    invoke-direct {v0, v1, p1}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    :goto_9
    invoke-static {v2}, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->addKeepAliveHeaders(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->setHeaders(Ljava/util/Map;)V

    invoke-virtual {p0, p1, v1}, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->writeRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V

    iget p1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->step:I

    add-int/2addr p1, v4

    iput p1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->step:I

    return-void
.end method

.method public handleResponse(Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;)V
    .locals 4

    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->response:Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;

    iget v0, p0, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->step:I

    const-string v1, ")."

    const-string v2, "Received unexpected response code ("

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getStatusCode()I

    move-result v0

    const/16 v3, 0x191

    if-eq v0, v3, :cond_1

    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getStatusCode()I

    move-result v0

    const/16 v3, 0x197

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/mina/proxy/ProxyAuthException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getStatusLine()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v0, "Proxy-Authenticate"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Digest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    const/4 p1, 0x7

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharsetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/mina/proxy/utils/StringUtilities;->parseDirectives([B)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/http/digest/HttpDigestAuthLogicHandler;->directives:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    iput p1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->step:I

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v1, "Parsing of server digest directives failed"

    invoke-direct {v0, v1, p1}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    new-instance p1, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v0, "Server doesn\'t support digest authentication method !"

    invoke-direct {p1, v0}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance v0, Lorg/apache/mina/proxy/ProxyAuthException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getStatusLine()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
