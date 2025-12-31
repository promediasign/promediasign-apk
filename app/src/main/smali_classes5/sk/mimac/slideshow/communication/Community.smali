.class public abstract Lsk/mimac/slideshow/communication/Community;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field public static final TRACKER_ADDRESSES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/communication/address/IPAddress;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected endpoint:Lsk/mimac/slideshow/communication/UdpEndpoint;

.field protected estimatedLanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;

.field private executor:Ljava/util/concurrent/Executor;

.field protected final network:Lsk/mimac/slideshow/communication/Network;

.field private final packetHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lsk/mimac/slideshow/communication/PacketListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final serviceId:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/communication/Community;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/communication/Community;->LOG:Lorg/slf4j/Logger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lsk/mimac/slideshow/communication/Community;->TRACKER_ADDRESSES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/communication/Community;->packetHandlers:Ljava/util/Map;

    new-instance v0, Lsk/mimac/slideshow/communication/Network;

    invoke-direct {v0}, Lsk/mimac/slideshow/communication/Network;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/communication/Community;->network:Lsk/mimac/slideshow/communication/Network;

    iput-object p1, p0, Lsk/mimac/slideshow/communication/Community;->serviceId:[B

    sget-object p1, Lsk/mimac/slideshow/communication/Community;->TRACKER_ADDRESSES:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/communication/address/IPAddress;

    iget-object v1, p0, Lsk/mimac/slideshow/communication/Community;->network:Lsk/mimac/slideshow/communication/Network;

    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/communication/Network;->addBlacklistAddress(Lsk/mimac/slideshow/communication/address/IPAddress;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic a(Lsk/mimac/slideshow/communication/PacketListener;Lsk/mimac/slideshow/communication/Packet;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lsk/mimac/slideshow/communication/Community;->lambda$onPacket$0(Lsk/mimac/slideshow/communication/PacketListener;Lsk/mimac/slideshow/communication/Packet;I)V

    return-void
.end method

.method private static synthetic lambda$onPacket$0(Lsk/mimac/slideshow/communication/PacketListener;Lsk/mimac/slideshow/communication/Packet;I)V
    .locals 3

    :try_start_0
    invoke-interface {p0, p1}, Lsk/mimac/slideshow/communication/PacketListener;->onPacket(Lsk/mimac/slideshow/communication/Packet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lsk/mimac/slideshow/communication/Community;->LOG:Lorg/slf4j/Logger;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Packet;->getAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object p1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const/4 p1, 0x2

    aput-object p0, v1, p1

    const-string p0, "Can\'t handle packet (type={}) from {}"

    invoke-interface {v0, p0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addPacketHandler(ILsk/mimac/slideshow/communication/PacketListener;)V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Community;->packetHandlers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public estimateLan()V
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InterfaceAddress;

    invoke-virtual {v2}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet4Address;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v0, Lsk/mimac/slideshow/communication/address/IPv4Address;

    invoke-virtual {v2}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    iget-object v2, p0, Lsk/mimac/slideshow/communication/Community;->endpoint:Lsk/mimac/slideshow/communication/UdpEndpoint;

    invoke-virtual {v2}, Lsk/mimac/slideshow/communication/UdpEndpoint;->getSocketPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/communication/address/IPv4Address;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p0, v0}, Lsk/mimac/slideshow/communication/Community;->onEstimatedLanChanged(Lsk/mimac/slideshow/communication/address/IPAddress;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/communication/Community;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t estimate LAN address"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public getNetwork()Lsk/mimac/slideshow/communication/Network;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Community;->network:Lsk/mimac/slideshow/communication/Network;

    return-object v0
.end method

.method public getPeerAndUpdateLastResponse(Lsk/mimac/slideshow/communication/Packet;)Lsk/mimac/slideshow/communication/Peer;
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Community;->network:Lsk/mimac/slideshow/communication/Network;

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Packet;->getPeerMid()[B

    move-result-object p1

    invoke-static {p1}, Lsk/mimac/slideshow/communication/utils/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/communication/Network;->getPeerByMid(Ljava/lang/String;)Lsk/mimac/slideshow/communication/Peer;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsk/mimac/slideshow/communication/Peer;->setLastResponse(Ljava/lang/Long;)V

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Community;->network:Lsk/mimac/slideshow/communication/Network;

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/communication/Network;->addPeer(Lsk/mimac/slideshow/communication/Peer;)V

    return-object p1
.end method

.method public onEstimatedLanChanged(Lsk/mimac/slideshow/communication/address/IPAddress;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/communication/Community;->estimatedLanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;

    iget-object p1, p0, Lsk/mimac/slideshow/communication/Community;->network:Lsk/mimac/slideshow/communication/Network;

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Network;->getWanEstimationLog()Lsk/mimac/slideshow/communication/utils/WanEstimationLog;

    move-result-object p1

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/utils/WanEstimationLog;->clear()V

    return-void
.end method

.method public onPacket(Lsk/mimac/slideshow/communication/Packet;)V
    .locals 5

    sget-object v0, Lsk/mimac/slideshow/communication/Community;->LOG:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Packet;->getData()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Packet;->getAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v2

    const-string v3, "Received packet ({} B) from {}"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Packet;->getData()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lsk/mimac/slideshow/communication/Community;->packetHandlers:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/communication/PacketListener;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Community;->executor:Ljava/util/concurrent/Executor;

    new-instance v3, LW/a;

    const/4 v4, 0x2

    invoke-direct {v3, v2, p1, v1, v4}, LW/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "Received unknown packet type={}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public send(Lsk/mimac/slideshow/communication/Peer;[B)V
    .locals 3

    new-instance v0, Lsk/mimac/slideshow/communication/Peer;

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Peer;->getMid()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lsk/mimac/slideshow/communication/Peer;-><init>([B)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/communication/Peer;->setLastRequest(Ljava/lang/Long;)V

    iget-object v1, p0, Lsk/mimac/slideshow/communication/Community;->network:Lsk/mimac/slideshow/communication/Network;

    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/communication/Network;->addPeer(Lsk/mimac/slideshow/communication/Peer;)V

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Community;->endpoint:Lsk/mimac/slideshow/communication/UdpEndpoint;

    invoke-virtual {v0, p1, p2}, Lsk/mimac/slideshow/communication/UdpEndpoint;->send(Lsk/mimac/slideshow/communication/Peer;[B)V

    return-void
.end method

.method public serializePacket(I[B)[B
    .locals 5

    array-length v0, p2

    const/16 v1, 0x15

    add-int/2addr v0, v1

    new-array v0, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v0, v2

    iget-object p1, p0, Lsk/mimac/slideshow/communication/Community;->network:Lsk/mimac/slideshow/communication/Network;

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Network;->getMyPeer()Lsk/mimac/slideshow/communication/Peer;

    move-result-object p1

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Peer;->getMid()[B

    move-result-object p1

    const/4 v3, 0x1

    const/16 v4, 0x14

    invoke-static {p1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p2

    invoke-static {p2, v2, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public setEndpoint(Lsk/mimac/slideshow/communication/UdpEndpoint;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/communication/Community;->endpoint:Lsk/mimac/slideshow/communication/UdpEndpoint;

    return-void
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/communication/Community;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method
