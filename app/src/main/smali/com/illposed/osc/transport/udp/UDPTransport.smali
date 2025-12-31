.class public Lcom/illposed/osc/transport/udp/UDPTransport;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/illposed/osc/transport/Transport;


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private final channel:Ljava/nio/channels/DatagramChannel;

.field private final local:Ljava/net/SocketAddress;

.field private final oscChannel:Lcom/illposed/osc/transport/channel/OSCDatagramChannel;

.field private final remote:Ljava/net/SocketAddress;


# direct methods
.method public constructor <init>(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lcom/illposed/osc/OSCSerializerAndParserBuilder;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xffe3

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/illposed/osc/transport/udp/UDPTransport;->buffer:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/illposed/osc/transport/udp/UDPTransport;->local:Ljava/net/SocketAddress;

    iput-object p2, p0, Lcom/illposed/osc/transport/udp/UDPTransport;->remote:Ljava/net/SocketAddress;

    instance-of v1, p1, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/illposed/osc/LibraryInfo;->hasStandardProtocolFamily()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Ljava/net/InetSocketAddress;

    check-cast p2, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p2

    instance-of p2, p2, Ljava/net/Inet4Address;

    if-eqz p2, :cond_0

    invoke-static {}, LA/c;->f()Ljava/net/StandardProtocolFamily;

    move-result-object p2

    :goto_0
    invoke-static {p2}, LA/c;->g(Ljava/net/StandardProtocolFamily;)Ljava/nio/channels/DatagramChannel;

    move-result-object p2

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p2

    instance-of p2, p2, Ljava/net/Inet6Address;

    if-eqz p2, :cond_1

    invoke-static {}, LA/c;->y()Ljava/net/StandardProtocolFamily;

    move-result-object p2

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unknown address type: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "local and remote addresses are not of the same family (IP v4 vs v6)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object p2

    :goto_1
    iput-object p2, p0, Lcom/illposed/osc/transport/udp/UDPTransport;->channel:Ljava/nio/channels/DatagramChannel;

    invoke-static {}, Lcom/illposed/osc/LibraryInfo;->hasStandardProtocolFamily()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, LA/c;->d()Ljava/net/SocketOption;

    move-result-object v0

    invoke-static {p2, v0}, LA/c;->q(Ljava/nio/channels/DatagramChannel;Ljava/net/SocketOption;)V

    invoke-static {}, LA/c;->x()Ljava/net/SocketOption;

    move-result-object v0

    invoke-static {p2, v0}, LA/c;->A(Ljava/nio/channels/DatagramChannel;Ljava/net/SocketOption;)V

    invoke-static {}, LA/c;->B()Ljava/net/SocketOption;

    move-result-object v0

    invoke-static {p2, v0}, LA/c;->A(Ljava/nio/channels/DatagramChannel;Ljava/net/SocketOption;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->setSendBufferSize(I)V

    invoke-virtual {p2}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    invoke-virtual {p2}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setBroadcast(Z)V

    :goto_2
    invoke-virtual {p2}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    new-instance p1, Lcom/illposed/osc/transport/channel/OSCDatagramChannel;

    invoke-direct {p1, p2, p3}, Lcom/illposed/osc/transport/channel/OSCDatagramChannel;-><init>(Ljava/nio/channels/DatagramChannel;Lcom/illposed/osc/OSCSerializerAndParserBuilder;)V

    iput-object p1, p0, Lcom/illposed/osc/transport/udp/UDPTransport;->oscChannel:Lcom/illposed/osc/transport/channel/OSCDatagramChannel;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/illposed/osc/transport/udp/UDPTransport;->channel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    return-void
.end method

.method public isBlocking()Z
    .locals 1

    iget-object v0, p0, Lcom/illposed/osc/transport/udp/UDPTransport;->channel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->isBlocking()Z

    move-result v0

    return v0
.end method

.method public receive()Lcom/illposed/osc/OSCPacket;
    .locals 2

    iget-object v0, p0, Lcom/illposed/osc/transport/udp/UDPTransport;->oscChannel:Lcom/illposed/osc/transport/channel/OSCDatagramChannel;

    iget-object v1, p0, Lcom/illposed/osc/transport/udp/UDPTransport;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/illposed/osc/transport/channel/OSCDatagramChannel;->read(Ljava/nio/ByteBuffer;)Lcom/illposed/osc/OSCPacket;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/illposed/osc/transport/udp/UDPTransport;->local:Ljava/net/SocketAddress;

    iget-object v2, p0, Lcom/illposed/osc/transport/udp/UDPTransport;->remote:Ljava/net/SocketAddress;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const-string v0, "%s: local=%s, remote=%s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
