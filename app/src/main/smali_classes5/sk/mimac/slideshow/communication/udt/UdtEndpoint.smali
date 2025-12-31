.class public Lsk/mimac/slideshow/communication/udt/UdtEndpoint;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/communication/udt/UdtEndpoint$SessionConsumer;,
        Lsk/mimac/slideshow/communication/udt/UdtEndpoint$IPv8UDTEndpoint;,
        Lsk/mimac/slideshow/communication/udt/UdtEndpoint$IPv8inUdtProcessor;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private final endpoint:Lsk/mimac/slideshow/communication/udt/UdtEndpoint$IPv8UDTEndpoint;

.field private executor:Ljava/util/concurrent/Executor;

.field private network:Lsk/mimac/slideshow/communication/Network;

.field private packetListener:Lsk/mimac/slideshow/communication/PacketListener;

.field private privateKey:Lsk/mimac/slideshow/communication/key/PrivateKey;

.field private serverSessionConsumer:Lsk/mimac/slideshow/communication/udt/UdtEndpoint$SessionConsumer;

.field private socket:Ljava/net/DatagramSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/communication/udt/UdtEndpoint;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/communication/udt/UdtEndpoint;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lsk/mimac/slideshow/communication/udt/UdtEndpoint$IPv8UDTEndpoint;

    invoke-direct {v0, p0}, Lsk/mimac/slideshow/communication/udt/UdtEndpoint$IPv8UDTEndpoint;-><init>(Lsk/mimac/slideshow/communication/udt/UdtEndpoint;)V

    iput-object v0, p0, Lsk/mimac/slideshow/communication/udt/UdtEndpoint;->endpoint:Lsk/mimac/slideshow/communication/udt/UdtEndpoint$IPv8UDTEndpoint;

    return-void
.end method

.method public static synthetic access$000(Lsk/mimac/slideshow/communication/udt/UdtEndpoint;)Ljava/net/DatagramSocket;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/communication/udt/UdtEndpoint;->socket:Ljava/net/DatagramSocket;

    return-object p0
.end method

.method public static synthetic access$100()Lorg/slf4j/Logger;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/communication/udt/UdtEndpoint;->LOG:Lorg/slf4j/Logger;

    return-object v0
.end method

.method public static synthetic access$200(Lsk/mimac/slideshow/communication/udt/UdtEndpoint;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/communication/udt/UdtEndpoint;->executor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static synthetic access$300(Lsk/mimac/slideshow/communication/udt/UdtEndpoint;)Lsk/mimac/slideshow/communication/udt/UdtEndpoint$SessionConsumer;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/communication/udt/UdtEndpoint;->serverSessionConsumer:Lsk/mimac/slideshow/communication/udt/UdtEndpoint$SessionConsumer;

    return-object p0
.end method

.method public static synthetic access$400(Lsk/mimac/slideshow/communication/udt/UdtEndpoint;)Lsk/mimac/slideshow/communication/PacketListener;
    .locals 0

    iget-object p0, p0, Lsk/mimac/slideshow/communication/udt/UdtEndpoint;->packetListener:Lsk/mimac/slideshow/communication/PacketListener;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/udt/UdtEndpoint;->endpoint:Lsk/mimac/slideshow/communication/udt/UdtEndpoint$IPv8UDTEndpoint;

    invoke-virtual {v0}, Ludt/AbstractUDPEndPoint;->stop()V

    return-void
.end method

.method public getClient(I)Ludt/UDTClient;
    .locals 2

    new-instance v0, Ludt/UDTClient;

    iget-object v1, p0, Lsk/mimac/slideshow/communication/udt/UdtEndpoint;->endpoint:Lsk/mimac/slideshow/communication/udt/UdtEndpoint$IPv8UDTEndpoint;

    invoke-direct {v0, v1, p1}, Ludt/UDTClient;-><init>(Ludt/AbstractUDPEndPoint;I)V

    return-object v0
.end method

.method public onPacket(Ljava/net/DatagramPacket;)V
    .locals 3

    new-instance v0, Lsk/mimac/slideshow/communication/address/IPv4Address;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/communication/address/IPv4Address;-><init>(Ljava/net/InetAddress;I)V

    iget-object v1, p0, Lsk/mimac/slideshow/communication/udt/UdtEndpoint;->network:Lsk/mimac/slideshow/communication/Network;

    invoke-virtual {v1, v0}, Lsk/mimac/slideshow/communication/Network;->getPeerByAddress(Lsk/mimac/slideshow/communication/address/IPv4Address;)Lsk/mimac/slideshow/communication/Peer;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object p1, Lsk/mimac/slideshow/communication/udt/UdtEndpoint;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Received packet from unknown address: {}"

    invoke-interface {p1, v1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/communication/udt/UdtEndpoint;->endpoint:Lsk/mimac/slideshow/communication/udt/UdtEndpoint$IPv8UDTEndpoint;

    iget-object v2, p0, Lsk/mimac/slideshow/communication/udt/UdtEndpoint;->privateKey:Lsk/mimac/slideshow/communication/key/PrivateKey;

    invoke-virtual {v0, p1, v2, v1}, Ludt/AbstractUDPEndPoint;->processReceivedPacket(Ljava/net/DatagramPacket;Lsk/mimac/slideshow/communication/key/PrivateKey;Lsk/mimac/slideshow/communication/Peer;)V

    return-void
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/communication/udt/UdtEndpoint;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public setNetwork(Lsk/mimac/slideshow/communication/Network;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/communication/udt/UdtEndpoint;->network:Lsk/mimac/slideshow/communication/Network;

    return-void
.end method

.method public setPacketListener(Lsk/mimac/slideshow/communication/PacketListener;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/communication/udt/UdtEndpoint;->packetListener:Lsk/mimac/slideshow/communication/PacketListener;

    return-void
.end method

.method public setPrivateKey(Lsk/mimac/slideshow/communication/key/PrivateKey;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/communication/udt/UdtEndpoint;->privateKey:Lsk/mimac/slideshow/communication/key/PrivateKey;

    return-void
.end method

.method public setServerSessionConsumer(Lsk/mimac/slideshow/communication/udt/UdtEndpoint$SessionConsumer;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/communication/udt/UdtEndpoint;->serverSessionConsumer:Lsk/mimac/slideshow/communication/udt/UdtEndpoint$SessionConsumer;

    return-void
.end method

.method public setSocket(Ljava/net/DatagramSocket;)V
    .locals 0

    iput-object p1, p0, Lsk/mimac/slideshow/communication/udt/UdtEndpoint;->socket:Ljava/net/DatagramSocket;

    return-void
.end method
