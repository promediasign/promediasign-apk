.class public Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;
.super Lorg/apache/mina/proxy/handlers/socks/AbstractSocksLogicHandler;
.source "SourceFile"


# static fields
.field private static final GSS_CONTEXT:Ljava/lang/String;

.field private static final GSS_TOKEN:Ljava/lang/String;

.field private static final HANDSHAKE_STEP:Ljava/lang/String;

.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final SELECTED_AUTH_METHOD:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    sput-object v1, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".SelectedAuthMethod"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->SELECTED_AUTH_METHOD:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".HandshakeStep"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->HANDSHAKE_STEP:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".GSSContext"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_CONTEXT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".GSSToken"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_TOKEN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/handlers/socks/AbstractSocksLogicHandler;-><init>(Lorg/apache/mina/proxy/session/ProxyIoSession;)V

    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p1

    sget-object v0, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->HANDSHAKE_STEP:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private encodeAuthenticationPacket(Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->SELECTED_AUTH_METHOD:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getUserName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getPassword()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    array-length v1, v0

    add-int/lit8 v1, v1, 0x3

    array-length v3, p1

    add-int/2addr v1, v3

    invoke-static {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    array-length v2, v0

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    array-length v0, p1

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    return-object v1

    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->encodeGSSAPIAuthenticationPacket(Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p1

    sget-object v0, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->HANDSHAKE_STEP:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private encodeGSSAPIAuthenticationPacket(Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 13

    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v1

    sget-object v2, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_CONTEXT:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ietf/jgss/GSSContext;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_2

    invoke-static {}, Lorg/ietf/jgss/GSSManager;->getInstance()Lorg/ietf/jgss/GSSManager;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getServiceKerberosName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v2}, Lorg/ietf/jgss/GSSManager;->createName(Ljava/lang/String;Lorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;

    move-result-object p1

    new-instance v5, Lorg/ietf/jgss/Oid;

    const-string v6, "1.2.840.113554.1.2.2"

    invoke-direct {v5, v6}, Lorg/ietf/jgss/Oid;-><init>(Ljava/lang/String;)V

    sget-object v6, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v6}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "Available mechs:"

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/ietf/jgss/GSSManager;->getMechs()[Lorg/ietf/jgss/Oid;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    invoke-virtual {v9, v5}, Lorg/ietf/jgss/Oid;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    sget-object v10, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v11, "Found Kerberos V OID available"

    invoke-interface {v10, v11}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :cond_0
    sget-object v10, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v11, "{} with oid = {}"

    invoke-virtual {v1, v9}, Lorg/ietf/jgss/GSSManager;->getNamesForMech(Lorg/ietf/jgss/Oid;)[Lorg/ietf/jgss/Oid;

    move-result-object v12

    invoke-interface {v10, v11, v12, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/2addr v8, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1, v5, v2, v4}, Lorg/ietf/jgss/GSSManager;->createContext(Lorg/ietf/jgss/GSSName;Lorg/ietf/jgss/Oid;Lorg/ietf/jgss/GSSCredential;I)Lorg/ietf/jgss/GSSContext;

    move-result-object v1

    invoke-interface {v1, v3}, Lorg/ietf/jgss/GSSContext;->requestMutualAuth(Z)V

    invoke-interface {v1, v4}, Lorg/ietf/jgss/GSSContext;->requestConf(Z)V

    invoke-interface {v1, v4}, Lorg/ietf/jgss/GSSContext;->requestInteg(Z)V

    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p1

    sget-object v3, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_CONTEXT:Ljava/lang/String;

    invoke-interface {p1, v3, v1}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p1

    sget-object v3, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_TOKEN:Ljava/lang/String;

    invoke-interface {p1, v3}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_3

    sget-object v5, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    array-length v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p1}, Lorg/apache/mina/proxy/utils/ByteUtilities;->asHex([B)Ljava/lang/String;

    move-result-object v7

    const-string v8, "  Received Token[{}] = {}"

    invoke-interface {v5, v8, v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    invoke-interface {v1}, Lorg/ietf/jgss/GSSContext;->isEstablished()Z

    move-result v5

    if-nez v5, :cond_5

    if-nez p1, :cond_4

    const/16 p1, 0x20

    new-array p1, p1, [B

    :cond_4
    array-length v5, p1

    invoke-interface {v1, p1, v4, v5}, Lorg/ietf/jgss/GSSContext;->initSecContext([BII)[B

    move-result-object p1

    if-eqz p1, :cond_5

    sget-object v1, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    array-length v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Lorg/apache/mina/proxy/utils/ByteUtilities;->asHex([B)Ljava/lang/String;

    move-result-object v4

    const-string v5, "  Sending Token[{}] = {}"

    invoke-interface {v1, v5, v2, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v1

    invoke-interface {v1, v3, p1}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v1, p1

    add-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    invoke-virtual {v2, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    array-length v1, p1

    invoke-static {v1, v0}, Lorg/apache/mina/proxy/utils/ByteUtilities;->intToNetworkByteOrder(II)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    :cond_5
    return-object v2

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data
.end method

.method private encodeInitialGreetingPacket(Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 3

    sget-object v0, Lorg/apache/mina/proxy/handlers/socks/SocksProxyConstants;->SUPPORTED_AUTH_METHODS:[B

    array-length v1, v0

    int-to-byte v1, v1

    add-int/lit8 v2, v1, 0x2

    invoke-static {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getProtocolVersion()B

    move-result p1

    invoke-virtual {v2, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    return-object v2
.end method

.method private encodeProxyRequestPacket(Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 5

    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/ProxyRequest;->getEndpointAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet6Address;

    if-eqz v3, :cond_0

    const/16 v0, 0x16

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ASCII"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_5

    array-length v0, v2

    add-int/lit8 v0, v0, 0x7

    const/4 v3, 0x3

    :goto_0
    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getProtocolVersion()B

    move-result v4

    invoke-virtual {v0, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getCommandCode()B

    move-result v4

    invoke-virtual {v0, v4}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getIpAddress()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_1

    :cond_4
    array-length v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    :goto_1
    invoke-virtual {p1}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;->getPort()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put([B)Lorg/apache/mina/core/buffer/IoBuffer;

    return-object v0

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SocksProxyRequest object has no suitable endpoint information"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;I)V
    .locals 2

    const/4 v0, 0x2

    if-nez p3, :cond_0

    :try_start_0
    invoke-direct {p0, p2}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->encodeInitialGreetingPacket(Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    invoke-direct {p0, p2}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->encodeAuthenticationPacket(Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 p3, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-ne p3, v0, :cond_3

    invoke-direct {p0, p2}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->encodeProxyRequestPacket(Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v1

    :cond_3
    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0, p1, v1}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->writeData(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string p2, "Unable to send Socks request: "

    invoke-virtual {p0, p2, p1}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->closeSession(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public closeSession(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_CONTEXT:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ietf/jgss/GSSContext;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lorg/ietf/jgss/GSSContext;->dispose()V
    :try_end_0
    .catch Lorg/ietf/jgss/GSSException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/ietf/jgss/GSSException;->printStackTrace()V

    invoke-super {p0, p1, v0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->closeSession(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->closeSession(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized doHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, " doHandshake()"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/mina/proxy/handlers/socks/AbstractSocksLogicHandler;->request:Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;

    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v1

    sget-object v2, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->HANDSHAKE_STEP:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->writeRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/proxy/handlers/socks/SocksProxyRequest;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public handleResponse(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-nez p3, :cond_1

    invoke-virtual {p2, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v3

    sget-object v4, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->SELECTED_AUTH_METHOD:Ljava/lang/String;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v0}, Ljava/lang/Byte;-><init>(B)V

    invoke-interface {v3, v4, v5}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No acceptable authentication method to use with the socks proxy server"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-ne p3, v1, :cond_8

    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v3

    sget-object v4, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->SELECTED_AUTH_METHOD:Ljava/lang/String;

    invoke-interface {v3, v4}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    const-string v4, "Authentication failed"

    if-ne v3, v1, :cond_6

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v3

    invoke-virtual {p2, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v5

    if-ne v5, v1, :cond_5

    invoke-virtual {p2, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v4

    const/16 v5, 0xff

    if-eq v4, v5, :cond_4

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v4

    if-lt v4, v2, :cond_3

    new-array v2, v2, [B

    invoke-virtual {p2, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->get([B)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-static {v2}, Lorg/apache/mina/proxy/utils/ByteUtilities;->makeIntFromByte2([B)I

    move-result v2

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v3

    if-lt v3, v2, :cond_2

    new-array v2, v2, [B

    invoke-virtual {p2, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->get([B)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v3

    sget-object v4, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_TOKEN:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p2, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Authentication failed: GSS API Security Context Failure"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-virtual {p2, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x2

    :goto_0
    move v2, v0

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    if-ne p3, v2, :cond_e

    const/4 p1, 0x3

    invoke-virtual {p2, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result p3

    const/4 v2, 0x4

    if-ne p3, v2, :cond_9

    const/16 p1, 0x16

    goto :goto_1

    :cond_9
    if-ne p3, v1, :cond_a

    const/16 p1, 0xa

    goto :goto_1

    :cond_a
    if-ne p3, p1, :cond_d

    invoke-virtual {p2, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result p1

    add-int/lit8 p1, p1, 0x7

    :goto_1
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result p3

    if-lt p3, p1, :cond_c

    invoke-virtual {p2, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result p3

    sget-object v2, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "  response status: {}"

    invoke-static {p3}, Lorg/apache/mina/proxy/handlers/socks/SocksProxyConstants;->getReplyCodeAsString(B)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p3, :cond_b

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result p3

    add-int/2addr p3, p1

    invoke-virtual {p2, p3}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->setHandshakeComplete()V

    return-void

    :cond_b
    new-instance p1, Ljava/lang/Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Proxy handshake failed - Code: 0x"

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-array v1, v1, [B

    aput-byte p3, v1, v0

    invoke-static {v1}, Lorg/apache/mina/proxy/utils/ByteUtilities;->asHex([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    return-void

    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknwon address type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    :goto_2
    if-lez v2, :cond_f

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p2, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    :cond_f
    if-ne p3, v1, :cond_10

    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p2

    sget-object v0, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->SELECTED_AUTH_METHOD:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    if-ne p2, v1, :cond_10

    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p2

    sget-object v0, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->GSS_CONTEXT:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/ietf/jgss/GSSContext;

    if-eqz p2, :cond_11

    invoke-interface {p2}, Lorg/ietf/jgss/GSSContext;->isEstablished()Z

    move-result p2

    if-nez p2, :cond_10

    goto :goto_3

    :cond_10
    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p2

    sget-object v0, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->HANDSHAKE_STEP:Ljava/lang/String;

    add-int/2addr p3, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, v0, p3}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    :goto_3
    invoke-virtual {p0, p1}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->doHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V

    return-void
.end method

.method public declared-synchronized messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    sget-object v1, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->HANDSHAKE_STEP:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-nez v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v2

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Wrong socks version running on server"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v2, 0x2

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    :cond_2
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v3

    if-lt v3, v2, :cond_3

    :goto_1
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/mina/proxy/handlers/socks/Socks5LogicHandler;->handleResponse(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/buffer/IoBuffer;I)V

    goto :goto_3

    :cond_3
    if-ne v0, v2, :cond_4

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v2, v1, :cond_4

    goto :goto_1

    :goto_2
    :try_start_1
    const-string p2, "Proxy handshake failed: "

    invoke-virtual {p0, p2, p1}, Lorg/apache/mina/proxy/AbstractProxyLogicHandler;->closeSession(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0

    throw p1
.end method
