.class public Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;
.super Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;
.source "SourceFile"


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private authHandler:Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

.field private requestSent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->requestSent:Z

    return-void
.end method

.method private autoSelectAuthHandler(Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;)V
    .locals 10

    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v0, "Proxy-Authenticate"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v0

    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getPreferedOrder()Ljava/util/List;

    move-result-object v1

    const-string v2, "Following exception occured:"

    const-string v3, "basic"

    const-string v4, "digest"

    const-string v5, "ntlm"

    if-nez v1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v6, -0x1

    const/4 v7, -0x1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    sget-object v1, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->NTLM:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    invoke-virtual {v1}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->getId()I

    move-result v7

    goto :goto_2

    :cond_2
    invoke-virtual {v8, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    sget-object v9, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->NTLM:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    invoke-virtual {v9}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->getId()I

    move-result v9

    if-eq v7, v9, :cond_3

    sget-object v7, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->DIGEST:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    :goto_1
    invoke-virtual {v7}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->getId()I

    move-result v7

    goto :goto_0

    :cond_3
    invoke-virtual {v8, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-ne v7, v6, :cond_1

    sget-object v7, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->BASIC:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    goto :goto_1

    :cond_4
    :goto_2
    if-eq v7, v6, :cond_5

    :try_start_0
    invoke-static {v7, v0}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->getNewHandler(ILorg/apache/mina/proxy/session/ProxyIoSession;)Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->authHandler:Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    sget-object v3, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->logger:Lorg/slf4j/Logger;

    invoke-interface {v3, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    iget-object v1, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->authHandler:Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    if-nez v1, :cond_e

    goto/16 :goto_9

    :cond_6
    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getPreferedOrder()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    iget-object v7, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->authHandler:Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    if-eqz v7, :cond_8

    goto :goto_a

    :cond_8
    sget-object v7, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->NO_AUTH:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    if-ne v6, v7, :cond_9

    invoke-virtual {v7, v0}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->getNewHandler(Lorg/apache/mina/proxy/session/ProxyIoSession;)Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->authHandler:Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    goto :goto_a

    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    :try_start_1
    invoke-virtual {v8, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b

    sget-object v9, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->BASIC:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    if-ne v6, v9, :cond_b

    invoke-virtual {v9, v0}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->getNewHandler(Lorg/apache/mina/proxy/session/ProxyIoSession;)Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    move-result-object v8

    :goto_7
    iput-object v8, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->authHandler:Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    goto :goto_4

    :catch_1
    move-exception v8

    goto :goto_8

    :cond_b
    invoke-virtual {v8, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    sget-object v9, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->DIGEST:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    if-ne v6, v9, :cond_c

    invoke-virtual {v9, v0}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->getNewHandler(Lorg/apache/mina/proxy/session/ProxyIoSession;)Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    move-result-object v8

    goto :goto_7

    :cond_c
    invoke-virtual {v8, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    sget-object v8, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->NTLM:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    if-ne v6, v8, :cond_a

    invoke-virtual {v8, v0}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->getNewHandler(Lorg/apache/mina/proxy/session/ProxyIoSession;)Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :goto_8
    sget-object v9, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->logger:Lorg/slf4j/Logger;

    invoke-interface {v9, v2, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_d
    :goto_9
    sget-object v1, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->NO_AUTH:Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;

    invoke-virtual {v1, v0}, Lorg/apache/mina/proxy/handlers/http/HttpAuthenticationMethods;->getNewHandler(Lorg/apache/mina/proxy/session/ProxyIoSession;)Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    move-result-object v0

    goto :goto_5

    :cond_e
    :goto_a
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->authHandler:Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    if-eqz v0, :cond_f

    return-void

    :cond_f
    new-instance v0, Lorg/apache/mina/proxy/ProxyAuthException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown authentication mechanism(s): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public doHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 2

    sget-object v0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->logger:Lorg/slf4j/Logger;

    const-string v1, " doHandshake()"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->authHandler:Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->doHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->requestSent:Z

    if-nez v1, :cond_2

    const-string v1, "  sending HTTP request"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getRequest()Lorg/apache/mina/proxy/handlers/ProxyRequest;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;

    invoke-virtual {v0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHeaders()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getHeaders()Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :goto_0
    invoke-static {v1}, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->addKeepAliveHeaders(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->setHeaders(Ljava/util/Map;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/proxy/handlers/http/AbstractHttpLogicHandler;->writeRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->requestSent:Z

    :goto_1
    return-void

    :cond_2
    new-instance p1, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v0, "Authentication request already sent"

    invoke-direct {p1, v0}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public handleResponse(Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->isHandshakeComplete()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Proxy-Connection"

    invoke-static {v0, v1}, Lorg/apache/mina/proxy/utils/StringUtilities;->getSingleValuedHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "close"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v2, "Connection"

    invoke-static {v0, v2}, Lorg/apache/mina/proxy/utils/StringUtilities;->getSingleValuedHeader(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getProxyIoSession()Lorg/apache/mina/proxy/session/ProxyIoSession;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/mina/proxy/session/ProxyIoSession;->setReconnectionNeeded(Z)V

    :cond_1
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0x197

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->authHandler:Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->autoSelectAuthHandler(Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;)V

    :cond_2
    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/HttpSmartProxyHandler;->authHandler:Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;

    invoke-virtual {v0, p1}, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->handleResponse(Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;)V

    return-void

    :cond_3
    new-instance v0, Lorg/apache/mina/proxy/ProxyAuthException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: unexpected response code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getStatusLine()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " received from proxy."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
