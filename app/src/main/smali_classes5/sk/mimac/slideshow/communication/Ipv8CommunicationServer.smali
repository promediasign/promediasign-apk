.class Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/communication/Ipv8CommunicationServer$UPnPCheckStrategy;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private final code:Ljava/lang/String;

.field private community:Lsk/mimac/slideshow/communication/SlideshowCommunity;

.field private ipv8:Lsk/mimac/slideshow/communication/IPv8;

.field private ipv8Port:I

.field private networkDiscoveryStrategy:Lsk/mimac/slideshow/communication/NetworkDiscoveryStrategy;

.field private publicTrackerEnabled:Z

.field private udtEndpoint:Lsk/mimac/slideshow/communication/udt/UdtEndpoint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->code:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lsk/mimac/slideshow/http/HttpServer$TunnelHandler;Ludt/UDTSocket;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->lambda$processUdtRequests$0(Lsk/mimac/slideshow/http/HttpServer$TunnelHandler;Ludt/UDTSocket;)V

    return-void
.end method

.method private static synthetic lambda$processUdtRequests$0(Lsk/mimac/slideshow/http/HttpServer$TunnelHandler;Ludt/UDTSocket;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lsk/mimac/slideshow/http/HttpServer$TunnelHandler;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method private loadPrivateKey()Lsk/mimac/slideshow/communication/key/PrivateKey;
    .locals 4

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->code:Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/digest/DigestUtils;->sha256([B)[B

    move-result-object v0

    invoke-static {}, Lsk/mimac/slideshow/settings/SystemSettings;->getPrivateKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Lsk/mimac/slideshow/utils/CryptUtils;->decryptPasswordToBytes(Ljava/lang/String;)[B

    move-result-object v1

    sget-object v2, Lsk/mimac/slideshow/communication/IPv8;->LAZY_SODIUM_INSTANCE:Lcom/goterl/lazysodium/LazySodium;

    invoke-static {v1, v0, v2}, Lsk/mimac/slideshow/communication/key/LibNaClSK;->fromBin([B[BLcom/goterl/lazysodium/LazySodium;)Lsk/mimac/slideshow/communication/key/LibNaClSK;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    sget-object v2, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Can\'t load communication private key, regenerating"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    sget-object v1, Lsk/mimac/slideshow/communication/IPv8;->LAZY_SODIUM_INSTANCE:Lcom/goterl/lazysodium/LazySodium;

    invoke-static {v1, v0}, Lsk/mimac/slideshow/communication/key/LibNaClSK;->generate(Lcom/goterl/lazysodium/LazySodium;[B)Lsk/mimac/slideshow/communication/key/LibNaClSK;

    move-result-object v0

    invoke-interface {v0}, Lsk/mimac/slideshow/communication/key/PrivateKey;->keyToBin()[B

    move-result-object v1

    invoke-static {v1}, Lsk/mimac/slideshow/utils/CryptUtils;->encryptPassword([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lsk/mimac/slideshow/settings/SystemSettings;->setPrivateKey(Ljava/lang/String;)V

    return-object v0
.end method

.method private mapToDeviceInfo(Lsk/mimac/slideshow/communication/Peer;Z)Lsk/mimac/slideshow/communication/DeviceInfo;
    .locals 4

    new-instance v0, Lsk/mimac/slideshow/communication/DeviceInfo;

    invoke-direct {v0}, Lsk/mimac/slideshow/communication/DeviceInfo;-><init>()V

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Peer;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v1

    const-string v2, "nm"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/communication/DeviceInfo;->setDeviceName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Peer;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v1

    const-string v2, "pn"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Peer;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lsk/mimac/slideshow/communication/PanelStateUtils;->deserializeCurrentPanels(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/communication/DeviceInfo;->setCurrentPanels(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Can\'t deserialize current panels for {}"

    invoke-interface {v2, v3, p1, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Peer;->getMidAsString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lsk/mimac/slideshow/communication/DeviceInfo;->setDeviceMid(Ljava/lang/String;)V

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Peer;->getAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object p2

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Peer;->getLanAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Peer;->getAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v2

    invoke-interface {v2}, Lsk/mimac/slideshow/communication/address/IPAddress;->formatIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (local)"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lsk/mimac/slideshow/communication/DeviceInfo;->setIpAddress(Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Lsk/mimac/slideshow/communication/DeviceInfo;->setSameLan(Z)V

    goto :goto_1

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Peer;->getAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v2

    invoke-interface {v2}, Lsk/mimac/slideshow/communication/address/IPAddress;->formatIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (WAN)"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lsk/mimac/slideshow/communication/DeviceInfo;->setIpAddress(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/communication/DeviceInfo;->setSameLan(Z)V

    :goto_1
    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Peer;->getLastResponse()Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Peer;->getLastResponse()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_2

    :cond_2
    const-wide/16 v2, 0x0

    :goto_2
    invoke-virtual {v0, v2, v3}, Lsk/mimac/slideshow/communication/DeviceInfo;->setLastContact(J)V

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Peer;->getAveragePing()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lsk/mimac/slideshow/communication/DeviceInfo;->setRoundTrip(Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Peer;->getAdditionalInfo()Ljava/util/Map;

    move-result-object p2

    const-string v2, "id"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lsk/mimac/slideshow/communication/DeviceInfo;->setDeviceId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Peer;->getAdditionalInfo()Ljava/util/Map;

    move-result-object p2

    const-string v2, "vr"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lsk/mimac/slideshow/communication/DeviceInfo;->setAppVersion(Ljava/lang/String;)V

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Peer;->getAdditionalInfo()Ljava/util/Map;

    move-result-object p2

    const-string v2, "vc"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_3

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_3
    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/communication/DeviceInfo;->setAppVersionCode(I)V

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Peer;->getAdditionalInfo()Ljava/util/Map;

    move-result-object p1

    const-string p2, "ur"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/communication/DeviceInfo;->setWebUrl(Ljava/lang/String;)V

    :cond_4
    return-object v0
.end method

.method private mapToDeviceInfoLocal(Z)Lsk/mimac/slideshow/communication/DeviceInfo;
    .locals 3

    new-instance v0, Lsk/mimac/slideshow/communication/DeviceInfo;

    invoke-direct {v0}, Lsk/mimac/slideshow/communication/DeviceInfo;-><init>()V

    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->DEVICE_NAME:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v1}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/communication/DeviceInfo;->setDeviceName(Ljava/lang/String;)V

    invoke-static {}, Lsk/mimac/slideshow/communication/PanelStateUtils;->getLocalCurrentPanels()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/communication/DeviceInfo;->setCurrentPanels(Ljava/util/List;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->getDeviceMid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/communication/DeviceInfo;->setDeviceMid(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lsk/mimac/slideshow/communication/DeviceInfo;->setLastContact(J)V

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/communication/DeviceInfo;->setDeviceId(Ljava/lang/String;)V

    sget-object p1, Lsk/mimac/slideshow/BuildInfo;->VERSION:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/communication/DeviceInfo;->setAppVersion(Ljava/lang/String;)V

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getVersionCode()I

    move-result p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/communication/DeviceInfo;->setAppVersionCode(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getNetworkInfo()Lsk/mimac/slideshow/network/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/network/NetworkInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lsk/mimac/slideshow/http/HttpServer;->getActualHttpPort()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/communication/DeviceInfo;->setWebUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/communication/DeviceInfo;->setSameLan(Z)V

    :cond_0
    return-object v0
.end method

.method private setupTrackers()V
    .locals 4

    sget-object v0, Lsk/mimac/slideshow/communication/Community;->TRACKER_ADDRESSES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->publicTrackerEnabled:Z

    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->COMMUNICATION_TRACKER_ENABLED:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v1}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->code:Ljava/lang/String;

    const-string v2, "DEFAULT_GROUP_CODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Default group code is used, only communication through LAN is enabled"

    :goto_0
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->code:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-ge v1, v2, :cond_1

    sget-object v0, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Group code has less than 12 characters, only communication through LAN is enabled"

    goto :goto_0

    :cond_1
    new-instance v1, Lsk/mimac/slideshow/communication/address/IPv4Address;

    const-string v2, "49.12.109.227"

    const/16 v3, 0x17d1

    invoke-direct {v1, v2, v3}, Lsk/mimac/slideshow/communication/address/IPv4Address;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lsk/mimac/slideshow/communication/address/IPv4Address;

    const-string v2, "159.69.126.48"

    invoke-direct {v1, v2, v3}, Lsk/mimac/slideshow/communication/address/IPv4Address;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->publicTrackerEnabled:Z

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCommunity()Lsk/mimac/slideshow/communication/SlideshowCommunity;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->community:Lsk/mimac/slideshow/communication/SlideshowCommunity;

    return-object v0
.end method

.method public getDeviceCount()I
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->community:Lsk/mimac/slideshow/communication/SlideshowCommunity;

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/Community;->getNetwork()Lsk/mimac/slideshow/communication/Network;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/Network;->getNumPeers()I

    move-result v0

    return v0
.end method

.method public getDeviceDiscoveredConsumer()Ljava/util/function/BiConsumer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->networkDiscoveryStrategy:Lsk/mimac/slideshow/communication/NetworkDiscoveryStrategy;

    invoke-static {v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lg1/e;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lg1/e;-><init>(Ljava/lang/Object;I)V

    return-object v1
.end method

.method public getDeviceMid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->community:Lsk/mimac/slideshow/communication/SlideshowCommunity;

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/Community;->getNetwork()Lsk/mimac/slideshow/communication/Network;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/Network;->getMyPeer()Lsk/mimac/slideshow/communication/Peer;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/Peer;->getMidAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDevices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/communication/DeviceInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->community:Lsk/mimac/slideshow/communication/SlideshowCommunity;

    invoke-virtual {v1}, Lsk/mimac/slideshow/communication/Community;->getNetwork()Lsk/mimac/slideshow/communication/Network;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/communication/Network;->getPeers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/communication/Peer;

    invoke-direct {p0, v2, v3}, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->mapToDeviceInfo(Lsk/mimac/slideshow/communication/Peer;Z)Lsk/mimac/slideshow/communication/DeviceInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, v3}, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->mapToDeviceInfoLocal(Z)Lsk/mimac/slideshow/communication/DeviceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public getDevicesForSync()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/communication/DeviceInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->community:Lsk/mimac/slideshow/communication/SlideshowCommunity;

    invoke-virtual {v1}, Lsk/mimac/slideshow/communication/Community;->getNetwork()Lsk/mimac/slideshow/communication/Network;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/communication/Network;->getPeers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/communication/Peer;

    invoke-virtual {v2}, Lsk/mimac/slideshow/communication/Peer;->getAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v4

    invoke-virtual {v2}, Lsk/mimac/slideshow/communication/Peer;->getLanAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v2, v3}, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->mapToDeviceInfo(Lsk/mimac/slideshow/communication/Peer;Z)Lsk/mimac/slideshow/communication/DeviceInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3}, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->mapToDeviceInfoLocal(Z)Lsk/mimac/slideshow/communication/DeviceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public getIpv8Port()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->ipv8Port:I

    return v0
.end method

.method public getUdtClient(Ljava/lang/String;)Ludt/UDTClient;
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->community:Lsk/mimac/slideshow/communication/SlideshowCommunity;

    iget-object v0, v0, Lsk/mimac/slideshow/communication/Community;->network:Lsk/mimac/slideshow/communication/Network;

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/Network;->getPeers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/communication/Peer;

    invoke-virtual {v1}, Lsk/mimac/slideshow/communication/Peer;->getMidAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->udtEndpoint:Lsk/mimac/slideshow/communication/udt/UdtEndpoint;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lsk/mimac/slideshow/communication/udt/UdtEndpoint;->getClient(I)Ludt/UDTClient;

    move-result-object p1

    invoke-virtual {v1}, Lsk/mimac/slideshow/communication/Peer;->getAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v0

    invoke-interface {v0}, Lsk/mimac/slideshow/communication/address/IPAddress;->toInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v1}, Lsk/mimac/slideshow/communication/Peer;->getAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v2

    invoke-interface {v2}, Lsk/mimac/slideshow/communication/address/IPAddress;->getPort()I

    move-result v2

    invoke-virtual {p1, v0, v2, v1}, Ludt/UDTClient;->connect(Ljava/net/InetAddress;ILsk/mimac/slideshow/communication/Peer;)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public isPublicTrackerEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->publicTrackerEnabled:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->ipv8:Lsk/mimac/slideshow/communication/IPv8;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public processUdtRequests(Ludt/UDTSession;)V
    .locals 4

    invoke-virtual {p1}, Ludt/UDTSession;->getMethodId()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ludt/UDTSession;->getSocket()Ludt/UDTSocket;

    move-result-object p1

    invoke-static {}, Lsk/mimac/slideshow/http/HttpServer;->getHttpInstance()Lsk/mimac/slideshow/http/HttpServer;

    move-result-object v0

    invoke-virtual {p1}, Ludt/UDTSocket;->getInputStream()Ludt/UDTInputStream;

    move-result-object v1

    invoke-virtual {p1}, Ludt/UDTSocket;->getOutputStream()Ludt/UDTOutputStream;

    move-result-object v2

    invoke-virtual {p1}, Ludt/UDTSocket;->getSession()Ludt/UDTSession;

    move-result-object v3

    invoke-virtual {v3}, Ludt/UDTSession;->getDestination()Ludt/packets/Destination;

    move-result-object v3

    invoke-virtual {v3}, Ludt/packets/Destination;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lsk/mimac/slideshow/http/HttpServer;->getTunnelHandler(Ludt/UDTInputStream;Ludt/UDTOutputStream;Ljava/net/InetAddress;)Lsk/mimac/slideshow/http/HttpServer$TunnelHandler;

    move-result-object v0

    sget-object v1, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Starting new HTTP handler for socket {}"

    invoke-interface {v1, v2, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lsk/mimac/slideshow/communication/b;

    invoke-direct {v2, v0, p1}, Lsk/mimac/slideshow/communication/b;-><init>(Lsk/mimac/slideshow/http/HttpServer$TunnelHandler;Ludt/UDTSocket;)V

    const-string p1, "UDT-HttpServer thread"

    invoke-direct {v1, v2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    sget-object v0, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->LOG:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ludt/UDTSession;->getMethodId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Ludt/UDTSession;->getPeer()Lsk/mimac/slideshow/communication/Peer;

    move-result-object v2

    const-string v3, "Unknown UDT methodId={} from {}"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ludt/UDTSession;->getSocket()Ludt/UDTSocket;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized start()V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->setupTrackers()V

    new-instance v0, Lsk/mimac/slideshow/communication/UdpEndpoint;

    invoke-direct {v0}, Lsk/mimac/slideshow/communication/UdpEndpoint;-><init>()V

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/UdpEndpoint;->getUdtEndpoint()Lsk/mimac/slideshow/communication/udt/UdtEndpoint;

    move-result-object v1

    iput-object v1, p0, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->udtEndpoint:Lsk/mimac/slideshow/communication/udt/UdtEndpoint;

    invoke-direct {p0}, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->loadPrivateKey()Lsk/mimac/slideshow/communication/key/PrivateKey;

    move-result-object v1

    new-instance v2, Lsk/mimac/slideshow/communication/Peer;

    invoke-interface {v1}, Lsk/mimac/slideshow/communication/key/PrivateKey;->getPublicKey()Lsk/mimac/slideshow/communication/key/PublicKey;

    move-result-object v3

    invoke-direct {v2, v3}, Lsk/mimac/slideshow/communication/Peer;-><init>(Lsk/mimac/slideshow/communication/key/PublicKey;)V

    iget-object v3, p0, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->udtEndpoint:Lsk/mimac/slideshow/communication/udt/UdtEndpoint;

    invoke-virtual {v3, v1}, Lsk/mimac/slideshow/communication/udt/UdtEndpoint;->setPrivateKey(Lsk/mimac/slideshow/communication/key/PrivateKey;)V

    iget-object v3, p0, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->udtEndpoint:Lsk/mimac/slideshow/communication/udt/UdtEndpoint;

    new-instance v4, Lsk/mimac/slideshow/communication/a;

    invoke-direct {v4, p0}, Lsk/mimac/slideshow/communication/a;-><init>(Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;)V

    invoke-virtual {v3, v4}, Lsk/mimac/slideshow/communication/udt/UdtEndpoint;->setServerSessionConsumer(Lsk/mimac/slideshow/communication/udt/UdtEndpoint$SessionConsumer;)V

    invoke-interface {v1}, Lsk/mimac/slideshow/communication/key/PrivateKey;->verifyKeyToBin()[B

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/codec/digest/DigestUtils;->sha256([B)[B

    move-result-object v3

    new-instance v4, Lsk/mimac/slideshow/communication/SlideshowCommunity;

    invoke-direct {v4, v3, v1}, Lsk/mimac/slideshow/communication/SlideshowCommunity;-><init>([BLsk/mimac/slideshow/communication/key/PrivateKey;)V

    iput-object v4, p0, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->community:Lsk/mimac/slideshow/communication/SlideshowCommunity;

    new-instance v1, Lsk/mimac/slideshow/communication/NetworkDiscoveryStrategy;

    iget-object v3, p0, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->community:Lsk/mimac/slideshow/communication/SlideshowCommunity;

    invoke-direct {v1, v3}, Lsk/mimac/slideshow/communication/NetworkDiscoveryStrategy;-><init>(Lsk/mimac/slideshow/communication/DiscoveryCommunity;)V

    iput-object v1, p0, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->networkDiscoveryStrategy:Lsk/mimac/slideshow/communication/NetworkDiscoveryStrategy;

    new-instance v1, Lsk/mimac/slideshow/communication/IPv8;

    iget-object v3, p0, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->community:Lsk/mimac/slideshow/communication/SlideshowCommunity;

    iget-object v4, p0, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->networkDiscoveryStrategy:Lsk/mimac/slideshow/communication/NetworkDiscoveryStrategy;

    new-instance v5, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer$UPnPCheckStrategy;

    invoke-direct {v5, v3}, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer$UPnPCheckStrategy;-><init>(Lsk/mimac/slideshow/communication/DiscoveryCommunity;)V

    const/4 v6, 0x2

    new-array v6, v6, [Lsk/mimac/slideshow/communication/strategy/Strategy;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    aput-object v5, v6, v4

    invoke-direct {v1, v2, v0, v3, v6}, Lsk/mimac/slideshow/communication/IPv8;-><init>(Lsk/mimac/slideshow/communication/Peer;Lsk/mimac/slideshow/communication/UdpEndpoint;Lsk/mimac/slideshow/communication/Community;[Lsk/mimac/slideshow/communication/strategy/Strategy;)V

    iput-object v1, p0, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->ipv8:Lsk/mimac/slideshow/communication/IPv8;

    invoke-virtual {v1}, Lsk/mimac/slideshow/communication/IPv8;->start()V

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/UdpEndpoint;->getSocketPort()I

    move-result v0

    iput v0, p0, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->ipv8Port:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->ipv8:Lsk/mimac/slideshow/communication/IPv8;

    if-eqz v0, :cond_0

    sget-object v0, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Stopping ipv8 communication server"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->udtEndpoint:Lsk/mimac/slideshow/communication/udt/UdtEndpoint;

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/udt/UdtEndpoint;->close()V

    iget v0, p0, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->ipv8Port:I

    invoke-static {v0}, Lsk/mimac/slideshow/communication/upnp/UPnP;->closePortUDP(I)Z

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->ipv8:Lsk/mimac/slideshow/communication/IPv8;

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/IPv8;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->ipv8:Lsk/mimac/slideshow/communication/IPv8;

    iput-object v0, p0, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->community:Lsk/mimac/slideshow/communication/SlideshowCommunity;

    iput-object v0, p0, Lsk/mimac/slideshow/communication/Ipv8CommunicationServer;->networkDiscoveryStrategy:Lsk/mimac/slideshow/communication/NetworkDiscoveryStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method
