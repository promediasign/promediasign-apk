.class public Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;
.super Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;
.source "SourceFile"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private challengePacket:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->challengePacket:[B

    iget-object p1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->request:Lorg/apache/mina/proxy/handlers/ProxyRequest;

    check-cast p1, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;

    const-string v0, "DOMAIN"

    const-string v1, "WORKSTATION"

    const-string v2, "USER"

    const-string v3, "PWD"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->checkRequiredProperties([Ljava/lang/String;)V

    return-void
.end method

.method private getNTLMHeader(Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v0, "Proxy-Authenticate"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "NTLM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public doHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 14

    sget-object v0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, " doHandshake()"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->step:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->challengePacket:[B

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "NTLM Challenge packet not received"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

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
    invoke-virtual {v1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getProperties()Ljava/util/Map;

    move-result-object v3

    const-string v4, "DOMAIN"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getProperties()Ljava/util/Map;

    move-result-object v3

    const-string v4, "WORKSTATION"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    iget v3, p0, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->step:I

    const-string v11, "NTLM "

    const-string v12, "Proxy-Authorization"

    const/4 v13, 0x1

    if-lez v3, :cond_3

    const-string v3, "  sending NTLM challenge response"

    invoke-interface {v0, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->challengePacket:[B

    invoke-static {v0}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->extractChallengeFromType2Message([B)[B

    move-result-object v6

    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->challengePacket:[B

    invoke-static {v0}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->extractFlagsFromType2Message([B)I

    move-result v0

    invoke-virtual {v1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getProperties()Ljava/util/Map;

    move-result-object v3

    const-string v4, "USER"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->getProperties()Ljava/util/Map;

    move-result-object v3

    const-string v5, "PWD"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->createType3Message(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[B)[B

    move-result-object v0

    new-instance v3, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/mina/util/Base64;->encodeBase64([B)[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    :goto_2
    invoke-virtual {v11, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v12, v0, v13}, Lorg/apache/mina/proxy/utils/StringUtilities;->addValueToHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    :cond_3
    const-string v3, "  sending NTLM negotiation packet"

    invoke-interface {v0, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v8, v7, v0, v0}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMUtilities;->createType1Message(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[B)[B

    move-result-object v0

    new-instance v3, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/mina/util/Base64;->encodeBase64([B)[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_2

    :goto_3
    invoke-static {v2}, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->addKeepAliveHeaders(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;->setHeaders(Ljava/util/Map;)V

    invoke-virtual {p0, p1, v1}, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->writeRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/http/HttpProxyRequest;)V

    iget p1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->step:I

    add-int/2addr p1, v13

    iput p1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->step:I

    return-void
.end method

.method public handleResponse(Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;)V
    .locals 3

    iget v0, p0, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->step:I

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->getNTLMHeader(Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;)Ljava/lang/String;

    move-result-object v0

    iput v1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->step:I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->step:I

    if-ne v0, v1, :cond_3

    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->getNTLMHeader(Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_2

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->proxyIoSession:Lorg/apache/mina/proxy/session/ProxyIoSession;

    invoke-virtual {v0}, Lorg/apache/mina/proxy/session/ProxyIoSession;->getCharsetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/mina/util/Base64;->decodeBase64([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/proxy/handlers/http/ntlm/HttpNTLMAuthLogicHandler;->challengePacket:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x2

    iput p1, p0, Lorg/apache/mina/proxy/handlers/http/AbstractAuthLogicHandler;->step:I

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v1, "Unable to decode the base64 encoded NTLM challenge"

    invoke-direct {v0, v1, p1}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    new-instance p1, Lorg/apache/mina/proxy/ProxyAuthException;

    const-string v0, "Unexpected error while reading server challenge !"

    invoke-direct {p1, v0}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance v0, Lorg/apache/mina/proxy/ProxyAuthException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received unexpected response code ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/http/HttpProxyResponse;->getStatusLine()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/mina/proxy/ProxyAuthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
