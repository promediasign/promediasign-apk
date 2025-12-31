.class public Lsk/mimac/slideshow/communication/SlideshowCommunity;
.super Lsk/mimac/slideshow/communication/DiscoveryCommunity;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field private static final MESSAGE_ID_GENERATOR:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private lastUPnPcheck:J

.field private final privateKey:Lsk/mimac/slideshow/communication/key/PrivateKey;

.field private upnpActive:Z

.field private upnpRouterIp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/communication/SlideshowCommunity;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/communication/SlideshowCommunity;->LOG:Lorg/slf4j/Logger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lsk/mimac/slideshow/communication/SlideshowCommunity;->MESSAGE_ID_GENERATOR:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>([BLsk/mimac/slideshow/communication/key/PrivateKey;)V
    .locals 4

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/communication/DiscoveryCommunity;-><init>([B)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0x3b9aca00

    div-long/2addr v0, v2

    iput-wide v0, p0, Lsk/mimac/slideshow/communication/SlideshowCommunity;->lastUPnPcheck:J

    new-instance v0, Lg1/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg1/f;-><init>(Lsk/mimac/slideshow/communication/Community;I)V

    const/16 v1, 0xaa

    invoke-virtual {p0, v1, v0}, Lsk/mimac/slideshow/communication/Community;->addPacketHandler(ILsk/mimac/slideshow/communication/PacketListener;)V

    new-instance v0, Lg1/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg1/f;-><init>(Lsk/mimac/slideshow/communication/Community;I)V

    const/16 v1, 0xab

    invoke-virtual {p0, v1, v0}, Lsk/mimac/slideshow/communication/Community;->addPacketHandler(ILsk/mimac/slideshow/communication/PacketListener;)V

    new-instance v0, Lg1/f;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lg1/f;-><init>(Lsk/mimac/slideshow/communication/Community;I)V

    const/16 v1, 0xac

    invoke-virtual {p0, v1, v0}, Lsk/mimac/slideshow/communication/Community;->addPacketHandler(ILsk/mimac/slideshow/communication/PacketListener;)V

    iput-object p2, p0, Lsk/mimac/slideshow/communication/SlideshowCommunity;->privateKey:Lsk/mimac/slideshow/communication/key/PrivateKey;

    sget-object p2, Lsk/mimac/slideshow/communication/SlideshowCommunity;->LOG:Lorg/slf4j/Logger;

    const-string v0, "Prepared communication community with serviceId={}"

    invoke-static {p1}, Lsk/mimac/slideshow/communication/utils/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic i(Lsk/mimac/slideshow/communication/SlideshowCommunity;Lsk/mimac/slideshow/communication/Packet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/communication/SlideshowCommunity;->processApiRequest(Lsk/mimac/slideshow/communication/Packet;)V

    return-void
.end method

.method public static synthetic j(Lsk/mimac/slideshow/communication/SlideshowCommunity;Lsk/mimac/slideshow/communication/Packet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/communication/SlideshowCommunity;->processApiResponse(Lsk/mimac/slideshow/communication/Packet;)V

    return-void
.end method

.method private processApiRequest(Lsk/mimac/slideshow/communication/Packet;)V
    .locals 6

    :try_start_0
    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/communication/Community;->getPeerAndUpdateLastResponse(Lsk/mimac/slideshow/communication/Packet;)Lsk/mimac/slideshow/communication/Peer;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lsk/mimac/slideshow/communication/SlideshowCommunity;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Received message from unknown peer: {}, address: {}"

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Packet;->getPeerMid()[B

    move-result-object v2

    invoke-static {v2}, Lsk/mimac/slideshow/communication/utils/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Packet;->getAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Packet;->getData()[B

    move-result-object v1

    iget-object v2, p0, Lsk/mimac/slideshow/communication/SlideshowCommunity;->privateKey:Lsk/mimac/slideshow/communication/key/PrivateKey;

    const/16 v3, 0x15

    invoke-static {v1, v3, v2}, Lsk/mimac/slideshow/communication/message/ApiRequestMessage;->deserialize([BILsk/mimac/slideshow/communication/key/PrivateKey;)Lsk/mimac/slideshow/communication/message/ApiRequestMessage;

    move-result-object v1

    sget-object v2, Lsk/mimac/slideshow/communication/SlideshowCommunity;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Received command {} from {}"

    invoke-virtual {v1}, Lsk/mimac/slideshow/communication/message/ApiRequestMessage;->getOperation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Packet;->getAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Packet;->getData()[B

    move-result-object v2

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    const/16 v3, -0x56

    if-ne v2, v3, :cond_1

    invoke-direct {p0, v1}, Lsk/mimac/slideshow/communication/SlideshowCommunity;->processCommand(Lsk/mimac/slideshow/communication/message/ApiRequestMessage;)Z

    goto :goto_1

    :cond_1
    invoke-direct {p0, v1}, Lsk/mimac/slideshow/communication/SlideshowCommunity;->processCommandWithResponse(Lsk/mimac/slideshow/communication/message/ApiRequestMessage;)Lsk/mimac/slideshow/communication/message/ApiResponseMessage;

    move-result-object v1

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/Peer;->getPublicKey()Lsk/mimac/slideshow/communication/key/PublicKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/communication/message/ApiResponseMessage;->serialize(Lsk/mimac/slideshow/communication/key/PublicKey;)[B

    move-result-object v1

    const/16 v2, 0xac

    invoke-virtual {p0, v2, v1}, Lsk/mimac/slideshow/communication/Community;->serializePacket(I[B)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lsk/mimac/slideshow/communication/Community;->send(Lsk/mimac/slideshow/communication/Peer;[B)V
    :try_end_0
    .catch Lsk/mimac/slideshow/communication/PacketDecodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object v1, Lsk/mimac/slideshow/communication/SlideshowCommunity;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t decode command message from {}"

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Packet;->getAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object p1

    invoke-interface {v1, v2, p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private processApiResponse(Lsk/mimac/slideshow/communication/Packet;)V
    .locals 5

    :try_start_0
    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/communication/Community;->getPeerAndUpdateLastResponse(Lsk/mimac/slideshow/communication/Packet;)Lsk/mimac/slideshow/communication/Peer;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lsk/mimac/slideshow/communication/SlideshowCommunity;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Received message from unknown peer: {}, address: {}"

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Packet;->getPeerMid()[B

    move-result-object v2

    invoke-static {v2}, Lsk/mimac/slideshow/communication/utils/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Packet;->getAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Packet;->getData()[B

    move-result-object v0

    iget-object v1, p0, Lsk/mimac/slideshow/communication/SlideshowCommunity;->privateKey:Lsk/mimac/slideshow/communication/key/PrivateKey;

    const/16 v2, 0x15

    invoke-static {v0, v2, v1}, Lsk/mimac/slideshow/communication/message/ApiResponseMessage;->deserialize([BILsk/mimac/slideshow/communication/key/PrivateKey;)Lsk/mimac/slideshow/communication/message/ApiResponseMessage;

    move-result-object v0

    sget-object v1, Lsk/mimac/slideshow/communication/SlideshowCommunity;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Received response {} from {}"

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/message/ApiResponseMessage;->getCorrelationId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Packet;->getAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/message/ApiResponseMessage;->getCorrelationId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1, v0}, Lsk/mimac/slideshow/communication/AsyncCommandHelper;->publishResponse(Ljava/lang/Long;Lsk/mimac/slideshow/communication/payload/Payload;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object v1, Lsk/mimac/slideshow/communication/SlideshowCommunity;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t decode response message from {}"

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Packet;->getAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object p1

    invoke-interface {v1, v2, p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private processCommand(Lsk/mimac/slideshow/communication/message/ApiRequestMessage;)Z
    .locals 3

    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getApiService()Lsk/mimac/slideshow/ApiService;

    move-result-object v0

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/message/ApiRequestMessage;->getOperation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/message/ApiRequestMessage;->getParams()Ljava/util/Map;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lsk/mimac/slideshow/ApiService;->process(Ljava/lang/String;Ljava/util/Map;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lsk/mimac/slideshow/exception/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    sget-object v0, Lsk/mimac/slideshow/communication/SlideshowCommunity;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Can\'t process command message"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method private processCommandWithResponse(Lsk/mimac/slideshow/communication/message/ApiRequestMessage;)Lsk/mimac/slideshow/communication/message/ApiResponseMessage;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getApiService()Lsk/mimac/slideshow/ApiService;

    move-result-object v1

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/message/ApiRequestMessage;->getOperation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/message/ApiRequestMessage;->getParams()Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lsk/mimac/slideshow/ApiService;->process(Ljava/lang/String;Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lsk/mimac/slideshow/communication/message/ApiResponseMessage;

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/message/ApiRequestMessage;->getCorrelationId()J

    move-result-wide v5

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-direct {v2, v5, v6, v4, v1}, Lsk/mimac/slideshow/communication/message/ApiResponseMessage;-><init>(JZLjava/lang/String;)V
    :try_end_0
    .catch Lsk/mimac/slideshow/exception/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :goto_1
    sget-object v2, Lsk/mimac/slideshow/communication/SlideshowCommunity;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Can\'t process command message"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lsk/mimac/slideshow/communication/message/ApiResponseMessage;

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/message/ApiRequestMessage;->getCorrelationId()J

    move-result-wide v2

    const/4 p1, 0x0

    invoke-direct {v1, v2, v3, p1, v0}, Lsk/mimac/slideshow/communication/message/ApiResponseMessage;-><init>(JZLjava/lang/String;)V

    return-object v1
.end method

.method private setUPnP()V
    .locals 4

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->COMMUNICATION_TRACKER_ENABLED:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Community;->estimatedLanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lsk/mimac/slideshow/communication/address/IPAddress;->getPort()I

    move-result v0

    invoke-static {v0}, Lsk/mimac/slideshow/communication/upnp/UPnP;->openPortUDP(I)Z

    move-result v0

    invoke-static {}, Lsk/mimac/slideshow/communication/upnp/UPnP;->getDefaultGatewayIP()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsk/mimac/slideshow/communication/SlideshowCommunity;->upnpRouterIp:Ljava/lang/String;

    invoke-static {}, Lsk/mimac/slideshow/communication/upnp/UPnP;->getExternalIP()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v0, Lsk/mimac/slideshow/communication/address/IPv4Address;

    iget-object v2, p0, Lsk/mimac/slideshow/communication/Community;->estimatedLanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;

    invoke-interface {v2}, Lsk/mimac/slideshow/communication/address/IPAddress;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/communication/address/IPv4Address;-><init>(Ljava/lang/String;I)V

    sget-object v1, Lsk/mimac/slideshow/communication/SlideshowCommunity;->LOG:Lorg/slf4j/Logger;

    const-string v2, "UPnP gateway {} opened address {}"

    iget-object v3, p0, Lsk/mimac/slideshow/communication/SlideshowCommunity;->upnpRouterIp:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lsk/mimac/slideshow/communication/Community;->network:Lsk/mimac/slideshow/communication/Network;

    invoke-virtual {v1}, Lsk/mimac/slideshow/communication/Network;->getWanEstimationLog()Lsk/mimac/slideshow/communication/utils/WanEstimationLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/communication/utils/WanEstimationLog;->setOverrideWanAddress(Lsk/mimac/slideshow/communication/address/IPAddress;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsk/mimac/slideshow/communication/SlideshowCommunity;->upnpActive:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/communication/SlideshowCommunity;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t set UPnP"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lsk/mimac/slideshow/communication/SlideshowCommunity;->LOG:Lorg/slf4j/Logger;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "UPnP was not set up (externalIp={}, upnpOpened={})"

    invoke-interface {v2, v3, v1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Community;->network:Lsk/mimac/slideshow/communication/Network;

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/Network;->getWanEstimationLog()Lsk/mimac/slideshow/communication/utils/WanEstimationLog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/communication/utils/WanEstimationLog;->setOverrideWanAddress(Lsk/mimac/slideshow/communication/address/IPAddress;)V

    invoke-static {}, Lsk/mimac/slideshow/communication/upnp/UPnP;->resetGatewaySearch()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsk/mimac/slideshow/communication/SlideshowCommunity;->upnpActive:Z

    iput-object v1, p0, Lsk/mimac/slideshow/communication/SlideshowCommunity;->upnpRouterIp:Ljava/lang/String;

    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0x3b9aca00

    div-long/2addr v0, v2

    iput-wide v0, p0, Lsk/mimac/slideshow/communication/SlideshowCommunity;->lastUPnPcheck:J

    :cond_1
    return-void
.end method


# virtual methods
.method public checkUPnP()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0x3b9aca00

    div-long/2addr v0, v2

    iget-boolean v2, p0, Lsk/mimac/slideshow/communication/SlideshowCommunity;->upnpActive:Z

    if-eqz v2, :cond_0

    iget-wide v3, p0, Lsk/mimac/slideshow/communication/SlideshowCommunity;->lastUPnPcheck:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0xa8c

    cmp-long v7, v3, v5

    if-gtz v7, :cond_1

    :cond_0
    if-nez v2, :cond_2

    iget-wide v2, p0, Lsk/mimac/slideshow/communication/SlideshowCommunity;->lastUPnPcheck:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x258

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    :cond_1
    invoke-direct {p0}, Lsk/mimac/slideshow/communication/SlideshowCommunity;->setUPnP()V

    :cond_2
    return-void
.end method

.method public getAdditionalInfo()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lsk/mimac/slideshow/settings/UserSettings;->DEVICE_NAME:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v1}, Lsk/mimac/slideshow/settings/UserSettings;->getString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nm"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "id"

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "vr"

    sget-object v2, Lsk/mimac/slideshow/BuildInfo;->VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getVersionCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "vc"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lsk/mimac/slideshow/PlatformDependentFactory;->getNetworkInfo()Lsk/mimac/slideshow/network/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Lsk/mimac/slideshow/network/NetworkInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lsk/mimac/slideshow/http/HttpServer;->getActualHttpPort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ur"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string v1, "pn"

    invoke-static {}, Lsk/mimac/slideshow/communication/PanelStateUtils;->serializeCurrentPanels()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lsk/mimac/slideshow/communication/SlideshowCommunity;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Can\'t serialize current panels"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public getExternalIp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Community;->network:Lsk/mimac/slideshow/communication/Network;

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/Network;->getWanEstimationLog()Lsk/mimac/slideshow/communication/utils/WanEstimationLog;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/utils/WanEstimationLog;->estimateWan()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lsk/mimac/slideshow/communication/address/IPAddress;->formatIp()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "unknown"

    :goto_0
    return-object v0
.end method

.method public getPrivateKey()Lsk/mimac/slideshow/communication/key/PrivateKey;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/SlideshowCommunity;->privateKey:Lsk/mimac/slideshow/communication/key/PrivateKey;

    return-object v0
.end method

.method public getUpnpRouterIp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/SlideshowCommunity;->upnpRouterIp:Ljava/lang/String;

    return-object v0
.end method

.method public isUpnpActive()Z
    .locals 1

    iget-boolean v0, p0, Lsk/mimac/slideshow/communication/SlideshowCommunity;->upnpActive:Z

    return v0
.end method

.method public onEstimatedLanChanged(Lsk/mimac/slideshow/communication/address/IPAddress;)V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Community;->estimatedLanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lsk/mimac/slideshow/communication/Community;->onEstimatedLanChanged(Lsk/mimac/slideshow/communication/address/IPAddress;)V

    invoke-static {}, Lsk/mimac/slideshow/communication/upnp/UPnP;->resetGatewaySearch()V

    invoke-direct {p0}, Lsk/mimac/slideshow/communication/SlideshowCommunity;->setUPnP()V

    :cond_0
    return-void
.end method

.method public sendApi(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Lsk/mimac/slideshow/communication/message/ApiRequestMessage;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p2, p3}, Lsk/mimac/slideshow/communication/message/ApiRequestMessage;-><init>(JLjava/lang/String;Ljava/util/Map;)V

    iget-object p2, p0, Lsk/mimac/slideshow/communication/Community;->network:Lsk/mimac/slideshow/communication/Network;

    invoke-virtual {p2}, Lsk/mimac/slideshow/communication/Network;->getMyPeer()Lsk/mimac/slideshow/communication/Peer;

    move-result-object p2

    invoke-virtual {p2}, Lsk/mimac/slideshow/communication/Peer;->getMidAsString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/communication/SlideshowCommunity;->processCommand(Lsk/mimac/slideshow/communication/message/ApiRequestMessage;)Z

    :cond_0
    iget-object p2, p0, Lsk/mimac/slideshow/communication/Community;->network:Lsk/mimac/slideshow/communication/Network;

    invoke-virtual {p2}, Lsk/mimac/slideshow/communication/Network;->getPeers()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lsk/mimac/slideshow/communication/Peer;

    invoke-virtual {p3}, Lsk/mimac/slideshow/communication/Peer;->getMidAsString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {p3}, Lsk/mimac/slideshow/communication/Peer;->getPublicKey()Lsk/mimac/slideshow/communication/key/PublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/communication/message/ApiRequestMessage;->serialize(Lsk/mimac/slideshow/communication/key/PublicKey;)[B

    move-result-object v1

    const/16 v2, 0xaa

    invoke-virtual {p0, v2, v1}, Lsk/mimac/slideshow/communication/Community;->serializePacket(I[B)[B

    move-result-object v1

    sget-object v2, Lsk/mimac/slideshow/communication/SlideshowCommunity;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Sending data {} to {}"

    invoke-virtual {p3}, Lsk/mimac/slideshow/communication/Peer;->getAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v4

    invoke-interface {v2, v3, v0, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p3, v1}, Lsk/mimac/slideshow/communication/Community;->send(Lsk/mimac/slideshow/communication/Peer;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v1, Lsk/mimac/slideshow/communication/SlideshowCommunity;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t send data {} to {}"

    invoke-interface {v1, v2, v0, p3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public sendApiWithResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lsk/mimac/slideshow/communication/message/ApiRequestMessage;

    sget-object v1, Lsk/mimac/slideshow/communication/SlideshowCommunity;->MESSAGE_ID_GENERATOR:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p2, p3}, Lsk/mimac/slideshow/communication/message/ApiRequestMessage;-><init>(JLjava/lang/String;Ljava/util/Map;)V

    iget-object p2, p0, Lsk/mimac/slideshow/communication/Community;->network:Lsk/mimac/slideshow/communication/Network;

    invoke-virtual {p2}, Lsk/mimac/slideshow/communication/Network;->getMyPeer()Lsk/mimac/slideshow/communication/Peer;

    move-result-object p2

    invoke-virtual {p2}, Lsk/mimac/slideshow/communication/Peer;->getMidAsString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, v0}, Lsk/mimac/slideshow/communication/SlideshowCommunity;->processCommandWithResponse(Lsk/mimac/slideshow/communication/message/ApiRequestMessage;)Lsk/mimac/slideshow/communication/message/ApiResponseMessage;

    move-result-object p1

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/message/ApiResponseMessage;->getResponse()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p2, p0, Lsk/mimac/slideshow/communication/Community;->network:Lsk/mimac/slideshow/communication/Network;

    invoke-virtual {p2}, Lsk/mimac/slideshow/communication/Network;->getPeers()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lsk/mimac/slideshow/communication/Peer;

    invoke-virtual {p3}, Lsk/mimac/slideshow/communication/Peer;->getMidAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-virtual {p3}, Lsk/mimac/slideshow/communication/Peer;->getPublicKey()Lsk/mimac/slideshow/communication/key/PublicKey;

    move-result-object p1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/communication/message/ApiRequestMessage;->serialize(Lsk/mimac/slideshow/communication/key/PublicKey;)[B

    move-result-object p1

    const/16 p2, 0xab

    invoke-virtual {p0, p2, p1}, Lsk/mimac/slideshow/communication/Community;->serializePacket(I[B)[B

    move-result-object p1

    sget-object p2, Lsk/mimac/slideshow/communication/SlideshowCommunity;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Sending data {} to {}"

    invoke-virtual {p3}, Lsk/mimac/slideshow/communication/Peer;->getAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v3

    invoke-interface {p2, v2, v0, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p3, p1}, Lsk/mimac/slideshow/communication/Community;->send(Lsk/mimac/slideshow/communication/Peer;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/message/ApiRequestMessage;->getCorrelationId()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/16 p2, 0x4e20

    invoke-static {p1, p2}, Lsk/mimac/slideshow/communication/AsyncCommandHelper;->awaitResponse(Ljava/lang/Long;I)Lsk/mimac/slideshow/communication/payload/Payload;

    move-result-object p1

    check-cast p1, Lsk/mimac/slideshow/communication/message/ApiResponseMessage;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/message/ApiResponseMessage;->getResponse()Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1

    :catch_0
    sget-object p1, Lsk/mimac/slideshow/communication/SlideshowCommunity;->LOG:Lorg/slf4j/Logger;

    const-string p2, "Can\'t send data {} to {}"

    invoke-interface {p1, p2, v0, p3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    return-object v1
.end method
