.class Lorg/apache/mina/transport/socket/nio/NioSocketSession;
.super Lorg/apache/mina/transport/socket/nio/NioSession;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;
    }
.end annotation


# static fields
.field static final METADATA:Lorg/apache/mina/core/service/TransportMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v8, Lorg/apache/mina/core/service/DefaultTransportMetadata;

    const/4 v0, 0x2

    new-array v7, v0, [Ljava/lang/Class;

    const-class v0, Lorg/apache/mina/core/buffer/IoBuffer;

    const/4 v1, 0x0

    aput-object v0, v7, v1

    const-class v0, Lorg/apache/mina/core/file/FileRegion;

    const/4 v1, 0x1

    aput-object v0, v7, v1

    const-string v1, "nio"

    const-string v2, "socket"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-class v5, Ljava/net/InetSocketAddress;

    const-class v6, Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/apache/mina/core/service/DefaultTransportMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)V

    sput-object v8, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->METADATA:Lorg/apache/mina/core/service/TransportMetadata;

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/service/IoService;Lorg/apache/mina/core/service/IoProcessor;Ljava/nio/channels/SocketChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/service/IoService;",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;",
            "Ljava/nio/channels/SocketChannel;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p1, p3}, Lorg/apache/mina/transport/socket/nio/NioSession;-><init>(Lorg/apache/mina/core/service/IoProcessor;Lorg/apache/mina/core/service/IoService;Ljava/nio/channels/Channel;)V

    new-instance p2, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lorg/apache/mina/transport/socket/nio/NioSocketSession$SessionConfigImpl;-><init>(Lorg/apache/mina/transport/socket/nio/NioSocketSession;Lorg/apache/mina/transport/socket/nio/NioSocketSession$1;)V

    iput-object p2, p0, Lorg/apache/mina/core/session/AbstractIoSession;->config:Lorg/apache/mina/core/session/IoSessionConfig;

    invoke-interface {p1}, Lorg/apache/mina/core/service/IoService;->getSessionConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/apache/mina/core/session/IoSessionConfig;->setAll(Lorg/apache/mina/core/session/IoSessionConfig;)V

    return-void
.end method

.method public static synthetic access$100(Lorg/apache/mina/transport/socket/nio/NioSocketSession;)Ljava/net/Socket;
    .locals 0

    invoke-direct {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getSocket()Ljava/net/Socket;

    move-result-object p0

    return-object p0
.end method

.method private getSocket()Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSession;->channel:Ljava/nio/channels/Channel;

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getChannel()Ljava/nio/channels/ByteChannel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSession;->channel:Ljava/nio/channels/Channel;

    check-cast v0, Ljava/nio/channels/SocketChannel;

    return-object v0
.end method

.method public bridge synthetic getConfig()Lorg/apache/mina/core/session/IoSessionConfig;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/mina/core/session/AbstractIoSession;->config:Lorg/apache/mina/core/session/IoSessionConfig;

    check-cast v0, Lorg/apache/mina/transport/socket/SocketSessionConfig;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetSocketAddress;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSession;->channel:Ljava/nio/channels/Channel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getSocket()Ljava/net/Socket;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetSocketAddress;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSession;->channel:Ljava/nio/channels/Channel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getSocket()Ljava/net/Socket;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getServiceAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/apache/mina/core/session/AbstractIoSession;->getServiceAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic getServiceAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->getServiceAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;
    .locals 1

    sget-object v0, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->METADATA:Lorg/apache/mina/core/service/TransportMetadata;

    return-object v0
.end method
