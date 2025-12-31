.class public Lsk/mimac/slideshow/communication/UdpEndpoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# instance fields
.field private packetListener:Lsk/mimac/slideshow/communication/PacketListener;

.field private shouldStop:Z

.field private final socket:Ljava/net/DatagramSocket;

.field private final udtEndpoint:Lsk/mimac/slideshow/communication/udt/UdtEndpoint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsk/mimac/slideshow/communication/UdpEndpoint;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/communication/UdpEndpoint;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lsk/mimac/slideshow/communication/udt/UdtEndpoint;

    invoke-direct {v0}, Lsk/mimac/slideshow/communication/udt/UdtEndpoint;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/communication/UdpEndpoint;->udtEndpoint:Lsk/mimac/slideshow/communication/udt/UdtEndpoint;

    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v0, p0, Lsk/mimac/slideshow/communication/UdpEndpoint;->socket:Ljava/net/DatagramSocket;

    return-void
.end method

.method private handleReceivedPacket(Ljava/net/DatagramPacket;)V
    .locals 4

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xf0

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_0

    new-instance v0, Lsk/mimac/slideshow/communication/address/IPv4Address;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lsk/mimac/slideshow/communication/address/IPv4Address;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result p1

    add-int/2addr p1, v3

    invoke-static {v1, v2, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    new-instance v1, Lsk/mimac/slideshow/communication/Packet;

    invoke-direct {v1, v0, p1}, Lsk/mimac/slideshow/communication/Packet;-><init>(Lsk/mimac/slideshow/communication/address/IPAddress;[B)V

    iget-object p1, p0, Lsk/mimac/slideshow/communication/UdpEndpoint;->packetListener:Lsk/mimac/slideshow/communication/PacketListener;

    invoke-interface {p1, v1}, Lsk/mimac/slideshow/communication/PacketListener;->onPacket(Lsk/mimac/slideshow/communication/Packet;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/communication/UdpEndpoint;->udtEndpoint:Lsk/mimac/slideshow/communication/udt/UdtEndpoint;

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/communication/udt/UdtEndpoint;->onPacket(Ljava/net/DatagramPacket;)V

    :goto_0
    return-void
.end method

.method private sendInternal(Lsk/mimac/slideshow/communication/address/IPAddress;[B)V
    .locals 3

    sget-object v0, Lsk/mimac/slideshow/communication/UdpEndpoint;->LOG:Lorg/slf4j/Logger;

    array-length v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Sending packet ({} B) to {}"

    invoke-interface {v0, v2, v1, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/net/DatagramPacket;

    array-length v1, p2

    invoke-interface {p1}, Lsk/mimac/slideshow/communication/address/IPAddress;->toSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    invoke-direct {v0, p2, v1, p1}, Ljava/net/DatagramPacket;-><init>([BILjava/net/SocketAddress;)V

    iget-object p1, p0, Lsk/mimac/slideshow/communication/UdpEndpoint;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {p1, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    return-void
.end method


# virtual methods
.method public getSocketPort()I
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/UdpEndpoint;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getUdtEndpoint()Lsk/mimac/slideshow/communication/udt/UdtEndpoint;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/UdpEndpoint;->udtEndpoint:Lsk/mimac/slideshow/communication/udt/UdtEndpoint;

    return-object v0
.end method

.method public run()V
    .locals 8

    const/16 v0, 0x546

    new-array v1, v0, [B

    new-instance v2, Ljava/net/DatagramPacket;

    invoke-direct {v2, v1, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lsk/mimac/slideshow/communication/UdpEndpoint;->shouldStop:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/communication/UdpEndpoint;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-direct {p0, v2}, Lsk/mimac/slideshow/communication/UdpEndpoint;->handleReceivedPacket(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lsk/mimac/slideshow/communication/UdpEndpoint;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Can\'t handle packet from {} ({} B)"

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    aput-object v5, v6, v4

    const/4 v4, 0x2

    aput-object v0, v6, v4

    invoke-interface {v1, v3, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lsk/mimac/slideshow/communication/UdpEndpoint;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Can\'t receive data"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/communication/UdpEndpoint;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    return-void
.end method

.method public send(Lsk/mimac/slideshow/communication/Peer;[B)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Peer;->getAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p2, Lsk/mimac/slideshow/communication/UdpEndpoint;->LOG:Lorg/slf4j/Logger;

    const-string v0, "Can\'t send packet to empty address of peer {}"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    :try_start_0
    array-length v1, p2

    const/16 v2, 0x500

    if-le v1, v2, :cond_2

    iget-object v0, p0, Lsk/mimac/slideshow/communication/UdpEndpoint;->udtEndpoint:Lsk/mimac/slideshow/communication/udt/UdtEndpoint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/communication/udt/UdtEndpoint;->getClient(I)Ludt/UDTClient;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Peer;->getAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v1

    invoke-interface {v1}, Lsk/mimac/slideshow/communication/address/IPAddress;->toInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/Peer;->getAddress()Lsk/mimac/slideshow/communication/address/IPAddress;

    move-result-object v2

    invoke-interface {v2}, Lsk/mimac/slideshow/communication/address/IPAddress;->getPort()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Ludt/UDTClient;->connect(Ljava/net/InetAddress;ILsk/mimac/slideshow/communication/Peer;)V

    invoke-virtual {v0, p2}, Ludt/UDTClient;->send([B)V

    invoke-virtual {v0}, Ludt/UDTClient;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ludt/UDTClient;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_1

    :catchall_0
    move-exception p2

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ludt/UDTClient;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2

    :cond_2
    invoke-virtual {p0, v0, p2}, Lsk/mimac/slideshow/communication/UdpEndpoint;->send(Lsk/mimac/slideshow/communication/address/IPAddress;[B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :goto_1
    instance-of v0, p2, Ljava/io/IOException;

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lsk/mimac/slideshow/communication/UdpEndpoint;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Can\'t send data to {}: {}"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    sget-object v0, Lsk/mimac/slideshow/communication/UdpEndpoint;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Can\'t send data to {}"

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public send(Lsk/mimac/slideshow/communication/address/IPAddress;[B)V
    .locals 2

    .line 2
    if-nez p1, :cond_0

    sget-object p1, Lsk/mimac/slideshow/communication/UdpEndpoint;->LOG:Lorg/slf4j/Logger;

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2}, Ljava/lang/IllegalArgumentException;-><init>()V

    const-string v0, "Can\'t send packet to empty address"

    invoke-interface {p1, v0, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/communication/UdpEndpoint;->sendInternal(Lsk/mimac/slideshow/communication/address/IPAddress;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    instance-of v0, p2, Ljava/io/IOException;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Network is unreachable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sget-object v0, Lsk/mimac/slideshow/communication/UdpEndpoint;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Can\'t send data to {}: {}"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lsk/mimac/slideshow/communication/UdpEndpoint;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Can\'t send data to {}"

    invoke-interface {v0, v1, p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/communication/UdpEndpoint;->udtEndpoint:Lsk/mimac/slideshow/communication/udt/UdtEndpoint;

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/communication/udt/UdtEndpoint;->setExecutor(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public setPacketListener(Lsk/mimac/slideshow/communication/PacketListener;)V
    .locals 1

    iput-object p1, p0, Lsk/mimac/slideshow/communication/UdpEndpoint;->packetListener:Lsk/mimac/slideshow/communication/PacketListener;

    iget-object v0, p0, Lsk/mimac/slideshow/communication/UdpEndpoint;->udtEndpoint:Lsk/mimac/slideshow/communication/udt/UdtEndpoint;

    invoke-virtual {v0, p1}, Lsk/mimac/slideshow/communication/udt/UdtEndpoint;->setPacketListener(Lsk/mimac/slideshow/communication/PacketListener;)V

    return-void
.end method

.method public start()V
    .locals 3

    sget-object v0, Lsk/mimac/slideshow/communication/UdpEndpoint;->LOG:Lorg/slf4j/Logger;

    iget-object v1, p0, Lsk/mimac/slideshow/communication/UdpEndpoint;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Opened UDP socket on port {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lsk/mimac/slideshow/communication/UdpEndpoint;->udtEndpoint:Lsk/mimac/slideshow/communication/udt/UdtEndpoint;

    iget-object v1, p0, Lsk/mimac/slideshow/communication/UdpEndpoint;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0, v1}, Lsk/mimac/slideshow/communication/udt/UdtEndpoint;->setSocket(Ljava/net/DatagramSocket;)V

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "IPv8 socket thread"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
