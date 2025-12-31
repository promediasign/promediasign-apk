.class Lsk/mimac/slideshow/communication/upnp/GatewayFinder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field private static final SEARCH_MESSAGES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lsk/mimac/slideshow/communication/upnp/GatewayFinder;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/communication/upnp/GatewayFinder;->LOG:Lorg/slf4j/Logger;

    const-string v0, "M-SEARCH * HTTP/1.1\r\nHOST: 239.255.255.250:1900\r\nST: urn:schemas-upnp-org:service:WANIPConnection:1\r\nMAN: \"ssdp:discover\"\r\nMX: 2\r\n\r\n"

    const-string v1, "M-SEARCH * HTTP/1.1\r\nHOST: 239.255.255.250:1900\r\nST: urn:schemas-upnp-org:service:WANPPPConnection:1\r\nMAN: \"ssdp:discover\"\r\nMX: 2\r\n\r\n"

    const-string v2, "M-SEARCH * HTTP/1.1\r\nHOST: 239.255.255.250:1900\r\nST: urn:schemas-upnp-org:device:InternetGatewayDevice:1\r\nMAN: \"ssdp:discover\"\r\nMX: 2\r\n\r\n"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/communication/upnp/GatewayFinder;->SEARCH_MESSAGES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findGatewayInternal(Ljava/net/InetAddress;Ljava/lang/String;)Lsk/mimac/slideshow/communication/upnp/Gateway;
    .locals 6

    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    new-instance v1, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, p2

    new-instance v3, Ljava/net/InetSocketAddress;

    const-string v4, "239.255.255.250"

    const/16 v5, 0x76c

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, p2, v2, v3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/SocketAddress;)V

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    const/16 p2, 0xbb8

    invoke-virtual {v0, p2}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    new-instance p2, Ljava/net/DatagramPacket;

    const/16 v1, 0x600

    new-array v2, v1, [B

    invoke-direct {p2, v2, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    invoke-virtual {v0, p2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    new-instance v1, Lsk/mimac/slideshow/communication/upnp/Gateway;

    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object p2

    invoke-direct {v1, v2, p1, p2}, Lsk/mimac/slideshow/communication/upnp/Gateway;-><init>([BLjava/net/InetAddress;Ljava/net/InetAddress;)V

    invoke-virtual {v1}, Lsk/mimac/slideshow/communication/upnp/Gateway;->getExternalIP()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "0.0.0.0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    return-object v1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    sget-object p2, Lsk/mimac/slideshow/communication/upnp/GatewayFinder;->LOG:Lorg/slf4j/Logger;

    const-string v0, "Can\'t find gateway"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    sget-object p2, Lsk/mimac/slideshow/communication/upnp/GatewayFinder;->LOG:Lorg/slf4j/Logger;

    const-string v0, "Can\'t find gateway: {}"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    :catch_2
    :goto_4
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public findGateway()Lsk/mimac/slideshow/communication/upnp/Gateway;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getNetworkInfo()Lsk/mimac/slideshow/network/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/network/NetworkInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v2, Lsk/mimac/slideshow/communication/upnp/GatewayFinder;->SEARCH_MESSAGES:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    invoke-direct {p0, v1, v5}, Lsk/mimac/slideshow/communication/upnp/GatewayFinder;->findGatewayInternal(Ljava/net/InetAddress;Ljava/lang/String;)Lsk/mimac/slideshow/communication/upnp/Gateway;

    move-result-object v5

    if-eqz v5, :cond_0

    return-object v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception v1

    sget-object v2, Lsk/mimac/slideshow/communication/upnp/GatewayFinder;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Can\'t process IP address"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
