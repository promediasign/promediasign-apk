.class public abstract Lcom/illposed/osc/transport/OSCPort;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final transport:Lcom/illposed/osc/transport/Transport;


# direct methods
.method public constructor <init>(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lcom/illposed/osc/OSCSerializerAndParserBuilder;Lcom/illposed/osc/transport/NetworkProtocol;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/illposed/osc/transport/OSCPort$1;->$SwitchMap$com$illposed$osc$transport$NetworkProtocol:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    instance-of p4, p1, Ljava/net/InetSocketAddress;

    if-eqz p4, :cond_0

    instance-of p4, p2, Ljava/net/InetSocketAddress;

    if-eqz p4, :cond_0

    new-instance p4, Lcom/illposed/osc/transport/tcp/TCPTransport;

    check-cast p1, Ljava/net/InetSocketAddress;

    check-cast p2, Ljava/net/InetSocketAddress;

    invoke-direct {p4, p1, p2, p3}, Lcom/illposed/osc/transport/tcp/TCPTransport;-><init>(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcom/illposed/osc/OSCSerializerAndParserBuilder;)V

    :goto_0
    iput-object p4, p0, Lcom/illposed/osc/transport/OSCPort;->transport:Lcom/illposed/osc/transport/Transport;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only InetSocketAddress is supported for TCP transport."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unexpected NetworkProtocol: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p4, Lcom/illposed/osc/transport/udp/UDPTransport;

    invoke-direct {p4, p1, p2, p3}, Lcom/illposed/osc/transport/udp/UDPTransport;-><init>(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lcom/illposed/osc/OSCSerializerAndParserBuilder;)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static extractFamily(Ljava/net/SocketAddress;)I
    .locals 2

    instance-of v0, p0, Ljava/net/InetSocketAddress;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p0

    instance-of p0, p0, Ljava/net/Inet6Address;

    if-eqz p0, :cond_1

    const/4 v1, 0x6

    :cond_1
    :goto_0
    return v1
.end method

.method public static generateWildcard(Ljava/net/SocketAddress;)Ljava/net/InetAddress;
    .locals 1

    invoke-static {p0}, Lcom/illposed/osc/transport/OSCPort;->extractFamily(Ljava/net/SocketAddress;)I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const-string p0, "0.0.0.0"

    goto :goto_0

    :cond_0
    const-string p0, "::"

    :goto_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/illposed/osc/transport/OSCPort;->transport:Lcom/illposed/osc/transport/Transport;

    invoke-interface {v0}, Lcom/illposed/osc/transport/Transport;->close()V

    return-void
.end method

.method public getTransport()Lcom/illposed/osc/transport/Transport;
    .locals 1

    iget-object v0, p0, Lcom/illposed/osc/transport/OSCPort;->transport:Lcom/illposed/osc/transport/Transport;

    return-object v0
.end method
