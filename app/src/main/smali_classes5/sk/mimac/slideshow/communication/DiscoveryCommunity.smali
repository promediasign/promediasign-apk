.class public abstract Lsk/mimac/slideshow/communication/DiscoveryCommunity;
.super Lsk/mimac/slideshow/communication/Community;
.source "SourceFile"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;

.field public static final RANDOM:Ljava/util/Random;


# instance fields
.field private final pingCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final pingRequestCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/communication/DiscoveryCommunity;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/communication/DiscoveryCommunity;->LOG:Lorg/slf4j/Logger;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lsk/mimac/slideshow/communication/DiscoveryCommunity;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/communication/Community;-><init>([B)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/communication/DiscoveryCommunity;->pingRequestCache:Ljava/util/Map;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lsk/mimac/slideshow/communication/DiscoveryCommunity;->pingCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Lg1/c;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lg1/c;-><init>(Lsk/mimac/slideshow/communication/DiscoveryCommunity;I)V

    const/16 v0, 0xa0

    invoke-virtual {p0, v0, p1}, Lsk/mimac/slideshow/communication/Community;->addPacketHandler(ILsk/mimac/slideshow/communication/PacketListener;)V

    new-instance p1, Lg1/c;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lg1/c;-><init>(Lsk/mimac/slideshow/communication/DiscoveryCommunity;I)V

    const/16 v0, 0xa1

    invoke-virtual {p0, v0, p1}, Lsk/mimac/slideshow/communication/Community;->addPacketHandler(ILsk/mimac/slideshow/communication/PacketListener;)V

    new-instance p1, Lg1/c;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lg1/c;-><init>(Lsk/mimac/slideshow/communication/DiscoveryCommunity;I)V

    const/16 v0, 0xa2

    invoke-virtual {p0, v0, p1}, Lsk/mimac/slideshow/communication/Community;->addPacketHandler(ILsk/mimac/slideshow/communication/PacketListener;)V

    new-instance p1, Lg1/c;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Lg1/c;-><init>(Lsk/mimac/slideshow/communication/DiscoveryCommunity;I)V

    const/16 v0, 0xa3

    invoke-virtual {p0, v0, p1}, Lsk/mimac/slideshow/communication/Community;->addPacketHandler(ILsk/mimac/slideshow/communication/PacketListener;)V

    new-instance p1, Lg1/c;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0}, Lg1/c;-><init>(Lsk/mimac/slideshow/communication/DiscoveryCommunity;I)V

    const/16 v0, 0xa5

    invoke-virtual {p0, v0, p1}, Lsk/mimac/slideshow/communication/Community;->addPacketHandler(ILsk/mimac/slideshow/communication/PacketListener;)V

    new-instance p1, Lg1/c;

    const/4 v0, 0x5

    invoke-direct {p1, p0, v0}, Lg1/c;-><init>(Lsk/mimac/slideshow/communication/DiscoveryCommunity;I)V

    const/16 v0, 0xa6

    invoke-virtual {p0, v0, p1}, Lsk/mimac/slideshow/communication/Community;->addPacketHandler(ILsk/mimac/slideshow/communication/PacketListener;)V

    new-instance p1, Lg1/d;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0, p1}, Lsk/mimac/slideshow/communication/Community;->addPacketHandler(ILsk/mimac/slideshow/communication/PacketListener;)V

    return-void
.end method

.method public static synthetic b(Lsk/mimac/slideshow/communication/DiscoveryCommunity;Lsk/mimac/slideshow/communication/Packet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/communication/DiscoveryCommunity;->onPongPacket(Lsk/mimac/slideshow/communication/Packet;)V

    return-void
.end method

.method public static synthetic c(Lsk/mimac/slideshow/communication/DiscoveryCommunity;Lsk/mimac/slideshow/communication/Packet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/communication/DiscoveryCommunity;->onTrackerResponsePacket(Lsk/mimac/slideshow/communication/Packet;)V

    return-void
.end method

.method public static synthetic d(Lsk/mimac/slideshow/communication/DiscoveryCommunity;Lsk/mimac/slideshow/communication/Packet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/communication/DiscoveryCommunity;->onIntroductionResponsePacket(Lsk/mimac/slideshow/communication/Packet;)V

    return-void
.end method

.method public static synthetic e(Lsk/mimac/slideshow/communication/DiscoveryCommunity;Lsk/mimac/slideshow/communication/Packet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/communication/DiscoveryCommunity;->onPunctureRequestPacket(Lsk/mimac/slideshow/communication/Packet;)V

    return-void
.end method

.method public static synthetic f(Lsk/mimac/slideshow/communication/DiscoveryCommunity;Lsk/mimac/slideshow/communication/Packet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/communication/DiscoveryCommunity;->onIntroductionRequestPacket(Lsk/mimac/slideshow/communication/Packet;)V

    return-void
.end method

.method public static synthetic g(Lsk/mimac/slideshow/communication/Packet;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lsk/mimac/slideshow/communication/DiscoveryCommunity;->lambda$new$0(Lsk/mimac/slideshow/communication/Packet;)V

    return-void
.end method

.method public static synthetic h(Lsk/mimac/slideshow/communication/DiscoveryCommunity;Lsk/mimac/slideshow/communication/Packet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/communication/DiscoveryCommunity;->onPingPacket(Lsk/mimac/slideshow/communication/Packet;)V

    return-void
.end method

.method private static synthetic lambda$new$0(Lsk/mimac/slideshow/communication/Packet;)V
    .locals 0

    return-void
.end method

.method private onIntroductionRequestPacket(Lsk/mimac/slideshow/communication/Packet;)V
    .locals 8

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Packet;->getData()[B

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {p0}, Lsk/mimac/slideshow/communication/DiscoveryCommunity;->getPrivateKey()Lsk/mimac/slideshow/communication/key/PrivateKey;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lsk/mimac/slideshow/communication/payload/IntroductionRequestPayload;->deserialize([BILsk/mimac/slideshow/communication/key/PrivateKey;)Lsk/mimac/slideshow/communication/payload/IntroductionRequestPayload;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/payload/IntroductionPayload;->getServiceId()[B

    move-result-object v1

    iget-object v2, p0, Lsk/mimac/slideshow/communication/Community;->serviceId:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p1, Lsk/mimac/slideshow/communication/DiscoveryCommunity;->LOG:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/payload/IntroductionPayload;->getServiceId()[B

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/communication/utils/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received IntroductionRequestPayload with unknown serviceId: {}"

    invoke-interface {p1, v1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v1, Lsk/mimac/slideshow/communication/Peer;

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/payload/IntroductionPayload;->getPublicKey()[B

    move-result-object v2

    sget-object v3, Lsk/mimac/slideshow/communication/IPv8;->LAZY_SODIUM_INSTANCE:Lcom/goterl/lazysodium/LazySodium;

    invoke-static {v2, v3}, Lsk/mimac/slideshow/communication/key/LibNaClPK;->fromBin([BLcom/goterl/lazysodium/LazySodium;)Lsk/mimac/slideshow/communication/key/LibNaClPK;

    move-result-object v2

    invoke-direct {v1, v2}, Lsk/mimac/slideshow/communication/Peer;-><init>(Lsk/mimac/slideshow/communication/key/PublicKey;)V

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/payload/IntroductionPayload;->getLanAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/communication/Peer;->setLanAddress(Lsk/mimac/slideshow/communication/address/IPAddress;)V

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/payload/IntroductionPayload;->getWanAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/communication/Peer;->setWanAddress(Lsk/mimac/slideshow/communication/address/IPAddress;)V

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/payload/IntroductionPayload;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/communication/Peer;->setAdditionalInfo(Ljava/util/Map;)V

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Packet;->getAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/communication/Peer;->setAddress(Lsk/mimac/slideshow/communication/address/IPAddress;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/communication/Peer;->setLastResponse(Ljava/lang/Long;)V

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Packet;->getPeerMid()[B

    move-result-object v0

    invoke-virtual {v1}, Lsk/mimac/slideshow/communication/Peer;->getMid()[B

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lsk/mimac/slideshow/communication/DiscoveryCommunity;->LOG:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Packet;->getPeerMid()[B

    move-result-object p1

    invoke-static {p1}, Lsk/mimac/slideshow/communication/utils/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Received IntroductionRequestPayload with wrong peer mid: {} - {}"

    invoke-interface {v0, v2, p1, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object p1, p0, Lsk/mimac/slideshow/communication/Community;->network:Lsk/mimac/slideshow/communication/Network;

    invoke-virtual {p1, v1}, Lsk/mimac/slideshow/communication/Network;->addPeer(Lsk/mimac/slideshow/communication/Peer;)V

    new-instance p1, Lsk/mimac/slideshow/communication/payload/IntroductionResponsePayload;

    iget-object v3, p0, Lsk/mimac/slideshow/communication/Community;->serviceId:[B

    iget-object v4, p0, Lsk/mimac/slideshow/communication/Community;->estimatedLanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Community;->network:Lsk/mimac/slideshow/communication/Network;

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/Network;->getWanEstimationLog()Lsk/mimac/slideshow/communication/utils/WanEstimationLog;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/utils/WanEstimationLog;->estimateWan()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v5

    invoke-virtual {p0}, Lsk/mimac/slideshow/communication/DiscoveryCommunity;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v6

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Community;->network:Lsk/mimac/slideshow/communication/Network;

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/Network;->getMyPeer()Lsk/mimac/slideshow/communication/Peer;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/Peer;->getPublicKey()Lsk/mimac/slideshow/communication/key/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Lsk/mimac/slideshow/communication/key/PublicKey;->keyToBin()[B

    move-result-object v7

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lsk/mimac/slideshow/communication/payload/IntroductionResponsePayload;-><init>([BLsk/mimac/slideshow/communication/address/IPAddress;Lsk/mimac/slideshow/communication/address/IPAddress;Ljava/util/Map;[B)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/communication/DiscoveryCommunity;->getPrivateKey()Lsk/mimac/slideshow/communication/key/PrivateKey;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsk/mimac/slideshow/communication/payload/IntroductionResponsePayload;->serialize(Lsk/mimac/slideshow/communication/key/PrivateKey;)[B

    move-result-object p1

    const/16 v0, 0xa1

    invoke-virtual {p0, v0, p1}, Lsk/mimac/slideshow/communication/Community;->serializePacket(I[B)[B

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lsk/mimac/slideshow/communication/Community;->send(Lsk/mimac/slideshow/communication/Peer;[B)V

    return-void
.end method

.method private onIntroductionResponsePacket(Lsk/mimac/slideshow/communication/Packet;)V
    .locals 4

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Packet;->getData()[B

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {p0}, Lsk/mimac/slideshow/communication/DiscoveryCommunity;->getPrivateKey()Lsk/mimac/slideshow/communication/key/PrivateKey;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lsk/mimac/slideshow/communication/payload/IntroductionResponsePayload;->deserialize([BILsk/mimac/slideshow/communication/key/PrivateKey;)Lsk/mimac/slideshow/communication/payload/IntroductionResponsePayload;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/payload/IntroductionPayload;->getServiceId()[B

    move-result-object v1

    iget-object v2, p0, Lsk/mimac/slideshow/communication/Community;->serviceId:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p1, Lsk/mimac/slideshow/communication/DiscoveryCommunity;->LOG:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/payload/IntroductionPayload;->getServiceId()[B

    move-result-object v0

    invoke-static {v0}, Lsk/mimac/slideshow/communication/utils/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received IntroductionResponsePayload with unknown serviceId: {}"

    invoke-interface {p1, v1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v1, Lsk/mimac/slideshow/communication/Peer;

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/payload/IntroductionPayload;->getPublicKey()[B

    move-result-object v2

    sget-object v3, Lsk/mimac/slideshow/communication/IPv8;->LAZY_SODIUM_INSTANCE:Lcom/goterl/lazysodium/LazySodium;

    invoke-static {v2, v3}, Lsk/mimac/slideshow/communication/key/LibNaClPK;->fromBin([BLcom/goterl/lazysodium/LazySodium;)Lsk/mimac/slideshow/communication/key/LibNaClPK;

    move-result-object v2

    invoke-direct {v1, v2}, Lsk/mimac/slideshow/communication/Peer;-><init>(Lsk/mimac/slideshow/communication/key/PublicKey;)V

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/payload/IntroductionPayload;->getLanAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/communication/Peer;->setLanAddress(Lsk/mimac/slideshow/communication/address/IPAddress;)V

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/payload/IntroductionPayload;->getWanAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/communication/Peer;->setWanAddress(Lsk/mimac/slideshow/communication/address/IPAddress;)V

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/payload/IntroductionPayload;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/communication/Peer;->setAdditionalInfo(Ljava/util/Map;)V

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Packet;->getAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/communication/Peer;->setAddress(Lsk/mimac/slideshow/communication/address/IPAddress;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/communication/Peer;->setLastResponse(Ljava/lang/Long;)V

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Packet;->getPeerMid()[B

    move-result-object v0

    invoke-virtual {v1}, Lsk/mimac/slideshow/communication/Peer;->getMid()[B

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lsk/mimac/slideshow/communication/DiscoveryCommunity;->LOG:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Packet;->getPeerMid()[B

    move-result-object p1

    invoke-static {p1}, Lsk/mimac/slideshow/communication/utils/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Received IntroductionResponsePayload with wrong peer mid: {} - {}"

    invoke-interface {v0, v2, p1, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object p1, p0, Lsk/mimac/slideshow/communication/Community;->network:Lsk/mimac/slideshow/communication/Network;

    invoke-virtual {p1, v1}, Lsk/mimac/slideshow/communication/Network;->addPeer(Lsk/mimac/slideshow/communication/Peer;)V

    return-void
.end method

.method private onPingPacket(Lsk/mimac/slideshow/communication/Packet;)V
    .locals 3

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/communication/Community;->getPeerAndUpdateLastResponse(Lsk/mimac/slideshow/communication/Packet;)Lsk/mimac/slideshow/communication/Peer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Packet;->getData()[B

    move-result-object p1

    const/16 v1, 0x15

    invoke-virtual {p0}, Lsk/mimac/slideshow/communication/DiscoveryCommunity;->getPrivateKey()Lsk/mimac/slideshow/communication/key/PrivateKey;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lsk/mimac/slideshow/communication/payload/PingPayload;->deserialize([BILsk/mimac/slideshow/communication/key/PrivateKey;)Lsk/mimac/slideshow/communication/payload/PingPayload;

    move-result-object p1

    new-instance v1, Lsk/mimac/slideshow/communication/payload/PongPayload;

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/payload/PingPayload;->getIdentifier()I

    move-result p1

    invoke-direct {v1, p1}, Lsk/mimac/slideshow/communication/payload/PongPayload;-><init>(I)V

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/Peer;->getPublicKey()Lsk/mimac/slideshow/communication/key/PublicKey;

    move-result-object p1

    invoke-virtual {v1, p1}, Lsk/mimac/slideshow/communication/payload/PongPayload;->serialize(Lsk/mimac/slideshow/communication/key/PublicKey;)[B

    move-result-object p1

    const/16 v1, 0xa3

    invoke-virtual {p0, v1, p1}, Lsk/mimac/slideshow/communication/Community;->serializePacket(I[B)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lsk/mimac/slideshow/communication/Community;->send(Lsk/mimac/slideshow/communication/Peer;[B)V

    return-void
.end method

.method private onPongPacket(Lsk/mimac/slideshow/communication/Packet;)V
    .locals 5

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/communication/Community;->getPeerAndUpdateLastResponse(Lsk/mimac/slideshow/communication/Packet;)Lsk/mimac/slideshow/communication/Peer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Packet;->getData()[B

    move-result-object p1

    const/16 v1, 0x15

    invoke-virtual {p0}, Lsk/mimac/slideshow/communication/DiscoveryCommunity;->getPrivateKey()Lsk/mimac/slideshow/communication/key/PrivateKey;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lsk/mimac/slideshow/communication/payload/PongPayload;->deserialize([BILsk/mimac/slideshow/communication/key/PrivateKey;)Lsk/mimac/slideshow/communication/payload/PongPayload;

    move-result-object p1

    iget-object v1, p0, Lsk/mimac/slideshow/communication/DiscoveryCommunity;->pingRequestCache:Ljava/util/Map;

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/payload/PongPayload;->getIdentifier()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int p1, v1

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/communication/Peer;->addPing(I)V

    :cond_1
    return-void
.end method

.method private onPunctureRequestPacket(Lsk/mimac/slideshow/communication/Packet;)V
    .locals 3

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Packet;->getData()[B

    move-result-object p1

    const/16 v0, 0x15

    invoke-static {p1, v0}, Lsk/mimac/slideshow/communication/payload/PunctureRequestPayload;->deserialize([BI)Lsk/mimac/slideshow/communication/payload/PunctureRequestPayload;

    move-result-object p1

    new-instance v0, Lsk/mimac/slideshow/communication/payload/PuncturePayload;

    invoke-direct {v0}, Lsk/mimac/slideshow/communication/payload/PuncturePayload;-><init>()V

    const/16 v1, 0xa6

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/payload/PuncturePayload;->serialize()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lsk/mimac/slideshow/communication/Community;->serializePacket(I[B)[B

    move-result-object v0

    iget-object v1, p0, Lsk/mimac/slideshow/communication/Community;->endpoint:Lsk/mimac/slideshow/communication/UdpEndpoint;

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/payload/PunctureRequestPayload;->getLanAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lsk/mimac/slideshow/communication/UdpEndpoint;->send(Lsk/mimac/slideshow/communication/address/IPAddress;[B)V

    iget-object v1, p0, Lsk/mimac/slideshow/communication/Community;->endpoint:Lsk/mimac/slideshow/communication/UdpEndpoint;

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/payload/PunctureRequestPayload;->getWanAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lsk/mimac/slideshow/communication/UdpEndpoint;->send(Lsk/mimac/slideshow/communication/address/IPAddress;[B)V

    return-void
.end method

.method private onTrackerResponsePacket(Lsk/mimac/slideshow/communication/Packet;)V
    .locals 9

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Packet;->getData()[B

    move-result-object p1

    const/16 v0, 0x15

    invoke-static {p1, v0}, Lsk/mimac/slideshow/communication/payload/TrackerResponsePayload;->deserialize([BI)Lsk/mimac/slideshow/communication/payload/TrackerResponsePayload;

    move-result-object p1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Community;->network:Lsk/mimac/slideshow/communication/Network;

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/Network;->getWanEstimationLog()Lsk/mimac/slideshow/communication/utils/WanEstimationLog;

    move-result-object v0

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/payload/TrackerResponsePayload;->getWanAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/communication/utils/WanEstimationLog;->add(Lsk/mimac/slideshow/communication/address/IPAddress;)V

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Community;->network:Lsk/mimac/slideshow/communication/Network;

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/Network;->getNumPeers()I

    move-result v0

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/payload/TrackerResponsePayload;->getIntroductionMids()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/payload/TrackerResponsePayload;->getIntroductionMids()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iget-object v3, p0, Lsk/mimac/slideshow/communication/Community;->network:Lsk/mimac/slideshow/communication/Network;

    invoke-static {v2}, Lsk/mimac/slideshow/communication/utils/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lsk/mimac/slideshow/communication/Network;->getPeerByMid(Ljava/lang/String;)Lsk/mimac/slideshow/communication/Peer;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lsk/mimac/slideshow/communication/strategy/PingStrategy;->isInactive(Lsk/mimac/slideshow/communication/Peer;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Lsk/mimac/slideshow/communication/payload/IntroductionRequestPayload;

    iget-object v4, p0, Lsk/mimac/slideshow/communication/Community;->serviceId:[B

    iget-object v5, p0, Lsk/mimac/slideshow/communication/Community;->estimatedLanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;

    iget-object v2, p0, Lsk/mimac/slideshow/communication/Community;->network:Lsk/mimac/slideshow/communication/Network;

    invoke-virtual {v2}, Lsk/mimac/slideshow/communication/Network;->getWanEstimationLog()Lsk/mimac/slideshow/communication/utils/WanEstimationLog;

    move-result-object v2

    invoke-virtual {v2}, Lsk/mimac/slideshow/communication/utils/WanEstimationLog;->estimateWan()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v6

    invoke-virtual {p0}, Lsk/mimac/slideshow/communication/DiscoveryCommunity;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v7

    iget-object v2, p0, Lsk/mimac/slideshow/communication/Community;->network:Lsk/mimac/slideshow/communication/Network;

    invoke-virtual {v2}, Lsk/mimac/slideshow/communication/Network;->getMyPeer()Lsk/mimac/slideshow/communication/Peer;

    move-result-object v2

    invoke-virtual {v2}, Lsk/mimac/slideshow/communication/Peer;->getPublicKey()Lsk/mimac/slideshow/communication/key/PublicKey;

    move-result-object v2

    invoke-interface {v2}, Lsk/mimac/slideshow/communication/key/PublicKey;->keyToBin()[B

    move-result-object v8

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lsk/mimac/slideshow/communication/payload/IntroductionRequestPayload;-><init>([BLsk/mimac/slideshow/communication/address/IPAddress;Lsk/mimac/slideshow/communication/address/IPAddress;Ljava/util/Map;[B)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/communication/DiscoveryCommunity;->getPrivateKey()Lsk/mimac/slideshow/communication/key/PrivateKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsk/mimac/slideshow/communication/payload/IntroductionRequestPayload;->serialize(Lsk/mimac/slideshow/communication/key/PrivateKey;)[B

    move-result-object v0

    const/16 v2, 0xa0

    invoke-virtual {p0, v2, v0}, Lsk/mimac/slideshow/communication/Community;->serializePacket(I[B)[B

    move-result-object v0

    :cond_2
    iget-object v2, p0, Lsk/mimac/slideshow/communication/Community;->endpoint:Lsk/mimac/slideshow/communication/UdpEndpoint;

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/payload/TrackerResponsePayload;->getLanIntroductionAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsk/mimac/slideshow/communication/address/IPAddress;

    invoke-virtual {v2, v3, v0}, Lsk/mimac/slideshow/communication/UdpEndpoint;->send(Lsk/mimac/slideshow/communication/address/IPAddress;[B)V

    iget-object v2, p0, Lsk/mimac/slideshow/communication/Community;->network:Lsk/mimac/slideshow/communication/Network;

    invoke-virtual {v2}, Lsk/mimac/slideshow/communication/Network;->getWanEstimationLog()Lsk/mimac/slideshow/communication/utils/WanEstimationLog;

    move-result-object v2

    invoke-virtual {v2}, Lsk/mimac/slideshow/communication/utils/WanEstimationLog;->estimateWan()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lsk/mimac/slideshow/communication/address/IPAddress;->getIp()[B

    move-result-object v2

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/payload/TrackerResponsePayload;->getWanIntroductionAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsk/mimac/slideshow/communication/address/IPAddress;

    invoke-interface {v3}, Lsk/mimac/slideshow/communication/address/IPAddress;->getIp()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p0, Lsk/mimac/slideshow/communication/Community;->endpoint:Lsk/mimac/slideshow/communication/UdpEndpoint;

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/payload/TrackerResponsePayload;->getWanIntroductionAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsk/mimac/slideshow/communication/address/IPAddress;

    invoke-virtual {v2, v3, v0}, Lsk/mimac/slideshow/communication/UdpEndpoint;->send(Lsk/mimac/slideshow/communication/address/IPAddress;[B)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public abstract getAdditionalInfo()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrivateKey()Lsk/mimac/slideshow/communication/key/PrivateKey;
.end method

.method public sendIntroductionRequestPacket(Lsk/mimac/slideshow/communication/address/IPAddress;)V
    .locals 7

    new-instance v6, Lsk/mimac/slideshow/communication/payload/IntroductionRequestPayload;

    iget-object v1, p0, Lsk/mimac/slideshow/communication/Community;->serviceId:[B

    iget-object v2, p0, Lsk/mimac/slideshow/communication/Community;->estimatedLanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Community;->network:Lsk/mimac/slideshow/communication/Network;

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/Network;->getWanEstimationLog()Lsk/mimac/slideshow/communication/utils/WanEstimationLog;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/utils/WanEstimationLog;->estimateWan()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v3

    invoke-virtual {p0}, Lsk/mimac/slideshow/communication/DiscoveryCommunity;->getAdditionalInfo()Ljava/util/Map;

    move-result-object v4

    iget-object v0, p0, Lsk/mimac/slideshow/communication/Community;->network:Lsk/mimac/slideshow/communication/Network;

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/Network;->getMyPeer()Lsk/mimac/slideshow/communication/Peer;

    move-result-object v0

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/Peer;->getPublicKey()Lsk/mimac/slideshow/communication/key/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Lsk/mimac/slideshow/communication/key/PublicKey;->keyToBin()[B

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lsk/mimac/slideshow/communication/payload/IntroductionRequestPayload;-><init>([BLsk/mimac/slideshow/communication/address/IPAddress;Lsk/mimac/slideshow/communication/address/IPAddress;Ljava/util/Map;[B)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/communication/DiscoveryCommunity;->getPrivateKey()Lsk/mimac/slideshow/communication/key/PrivateKey;

    move-result-object v0

    invoke-virtual {v6, v0}, Lsk/mimac/slideshow/communication/payload/IntroductionRequestPayload;->serialize(Lsk/mimac/slideshow/communication/key/PrivateKey;)[B

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {p0, v1, v0}, Lsk/mimac/slideshow/communication/Community;->serializePacket(I[B)[B

    move-result-object v0

    iget-object v1, p0, Lsk/mimac/slideshow/communication/Community;->endpoint:Lsk/mimac/slideshow/communication/UdpEndpoint;

    invoke-virtual {v1, p1, v0}, Lsk/mimac/slideshow/communication/UdpEndpoint;->send(Lsk/mimac/slideshow/communication/address/IPAddress;[B)V

    return-void
.end method

.method public sendPing(Lsk/mimac/slideshow/communication/Peer;)V
    .locals 5

    new-instance v0, Lsk/mimac/slideshow/communication/payload/PingPayload;

    iget-object v1, p0, Lsk/mimac/slideshow/communication/DiscoveryCommunity;->pingCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-direct {v0, v1}, Lsk/mimac/slideshow/communication/payload/PingPayload;-><init>(I)V

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Peer;->getPublicKey()Lsk/mimac/slideshow/communication/key/PublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/communication/payload/PingPayload;->serialize(Lsk/mimac/slideshow/communication/key/PublicKey;)[B

    move-result-object v1

    const/16 v2, 0xa2

    invoke-virtual {p0, v2, v1}, Lsk/mimac/slideshow/communication/Community;->serializePacket(I[B)[B

    move-result-object v1

    iget-object v2, p0, Lsk/mimac/slideshow/communication/DiscoveryCommunity;->pingRequestCache:Ljava/util/Map;

    invoke-virtual {v0}, Lsk/mimac/slideshow/communication/payload/PingPayload;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Lsk/mimac/slideshow/communication/Community;->send(Lsk/mimac/slideshow/communication/Peer;[B)V

    return-void
.end method

.method public sendTrackerRequestPayload()V
    .locals 5

    sget-object v0, Lsk/mimac/slideshow/communication/Community;->TRACKER_ADDRESSES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lsk/mimac/slideshow/communication/DiscoveryCommunity;->RANDOM:Ljava/util/Random;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/communication/address/IPAddress;

    new-instance v1, Lsk/mimac/slideshow/communication/payload/TrackerRequestPayload;

    iget-object v2, p0, Lsk/mimac/slideshow/communication/Community;->serviceId:[B

    iget-object v3, p0, Lsk/mimac/slideshow/communication/Community;->estimatedLanAddress:Lsk/mimac/slideshow/communication/address/IPAddress;

    iget-object v4, p0, Lsk/mimac/slideshow/communication/Community;->network:Lsk/mimac/slideshow/communication/Network;

    invoke-virtual {v4}, Lsk/mimac/slideshow/communication/Network;->getWanEstimationLog()Lsk/mimac/slideshow/communication/utils/WanEstimationLog;

    move-result-object v4

    invoke-virtual {v4}, Lsk/mimac/slideshow/communication/utils/WanEstimationLog;->estimateWan()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lsk/mimac/slideshow/communication/payload/TrackerRequestPayload;-><init>([BLsk/mimac/slideshow/communication/address/IPAddress;Lsk/mimac/slideshow/communication/address/IPAddress;)V

    invoke-virtual {p0}, Lsk/mimac/slideshow/communication/DiscoveryCommunity;->getPrivateKey()Lsk/mimac/slideshow/communication/key/PrivateKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsk/mimac/slideshow/communication/payload/TrackerRequestPayload;->serialize(Lsk/mimac/slideshow/communication/key/PrivateKey;)[B

    move-result-object v1

    const/16 v2, 0xa4

    invoke-virtual {p0, v2, v1}, Lsk/mimac/slideshow/communication/Community;->serializePacket(I[B)[B

    move-result-object v1

    iget-object v2, p0, Lsk/mimac/slideshow/communication/Community;->endpoint:Lsk/mimac/slideshow/communication/UdpEndpoint;

    invoke-virtual {v2, v0, v1}, Lsk/mimac/slideshow/communication/UdpEndpoint;->send(Lsk/mimac/slideshow/communication/address/IPAddress;[B)V

    return-void
.end method
