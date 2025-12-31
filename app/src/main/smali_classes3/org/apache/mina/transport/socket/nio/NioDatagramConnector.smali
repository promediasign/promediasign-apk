.class public final Lorg/apache/mina/transport/socket/nio/NioDatagramConnector;
.super Lorg/apache/mina/core/polling/AbstractPollingIoConnector;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/transport/socket/DatagramConnector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<",
        "Lorg/apache/mina/transport/socket/nio/NioSession;",
        "Ljava/nio/channels/DatagramChannel;",
        ">;",
        "Lorg/apache/mina/transport/socket/DatagramConnector;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;-><init>()V

    const-class v1, Lorg/apache/mina/transport/socket/nio/NioProcessor;

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;-><init>()V

    const-class v1, Lorg/apache/mina/transport/socket/nio/NioProcessor;

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;>;)V"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;>;I)V"
        }
    .end annotation

    .line 4
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/mina/core/service/IoProcessor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;)V"
        }
    .end annotation

    .line 5
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Lorg/apache/mina/core/service/IoProcessor;)V

    return-void
.end method


# virtual methods
.method public allHandles()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/channels/DatagramChannel;",
            ">;"
        }
    .end annotation

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic close(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramConnector;->close(Ljava/nio/channels/DatagramChannel;)V

    return-void
.end method

.method public close(Ljava/nio/channels/DatagramChannel;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/nio/channels/DatagramChannel;->disconnect()Ljava/nio/channels/DatagramChannel;

    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    return-void
.end method

.method public bridge synthetic connect(Ljava/lang/Object;Ljava/net/SocketAddress;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioDatagramConnector;->connect(Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)Z

    move-result p1

    return p1
.end method

.method public connect(Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)Z
    .locals 0

    .line 2
    invoke-virtual {p1, p2}, Ljava/nio/channels/DatagramChannel;->connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    const/4 p1, 0x1

    return p1
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public bridge synthetic finishConnect(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramConnector;->finishConnect(Ljava/nio/channels/DatagramChannel;)Z

    move-result p1

    return p1
.end method

.method public finishConnect(Ljava/nio/channels/DatagramChannel;)Z
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic getConnectionRequest(Ljava/lang/Object;)Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramConnector;->getConnectionRequest(Ljava/nio/channels/DatagramChannel;)Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;

    move-result-object p1

    return-object p1
.end method

.method public getConnectionRequest(Ljava/nio/channels/DatagramChannel;)Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/DatagramChannel;",
            ")",
            "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            "Ljava/nio/channels/DatagramChannel;",
            ">.ConnectionRequest;"
        }
    .end annotation

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getDefaultRemoteAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/apache/mina/core/service/AbstractIoConnector;->getDefaultRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic getDefaultRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramConnector;->getDefaultRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSessionConfig()Lorg/apache/mina/core/session/IoSessionConfig;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramConnector;->getSessionConfig()Lorg/apache/mina/transport/socket/DatagramSessionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getSessionConfig()Lorg/apache/mina/transport/socket/DatagramSessionConfig;
    .locals 1

    .line 2
    invoke-super {p0}, Lorg/apache/mina/core/service/AbstractIoService;->getSessionConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/transport/socket/DatagramSessionConfig;

    return-object v0
.end method

.method public getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;
    .locals 1

    sget-object v0, Lorg/apache/mina/transport/socket/nio/NioDatagramSession;->METADATA:Lorg/apache/mina/core/service/TransportMetadata;

    return-object v0
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public bridge synthetic newHandle(Ljava/net/SocketAddress;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramConnector;->newHandle(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    move-result-object p1

    return-object p1
.end method

.method public newHandle(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    .locals 2

    .line 2
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    throw p1

    :cond_0
    :goto_0
    return-object v0
.end method

.method public bridge synthetic newSession(Lorg/apache/mina/core/service/IoProcessor;Ljava/lang/Object;)Lorg/apache/mina/core/session/AbstractIoSession;
    .locals 0

    .line 1
    check-cast p2, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioDatagramConnector;->newSession(Lorg/apache/mina/core/service/IoProcessor;Ljava/nio/channels/DatagramChannel;)Lorg/apache/mina/transport/socket/nio/NioSession;

    move-result-object p1

    return-object p1
.end method

.method public newSession(Lorg/apache/mina/core/service/IoProcessor;Ljava/nio/channels/DatagramChannel;)Lorg/apache/mina/transport/socket/nio/NioSession;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;",
            "Ljava/nio/channels/DatagramChannel;",
            ")",
            "Lorg/apache/mina/transport/socket/nio/NioSession;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/mina/transport/socket/nio/NioDatagramSession;

    invoke-direct {v0, p0, p2, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramSession;-><init>(Lorg/apache/mina/core/service/IoService;Ljava/nio/channels/DatagramChannel;Lorg/apache/mina/core/service/IoProcessor;)V

    invoke-virtual {v0}, Lorg/apache/mina/transport/socket/nio/NioDatagramSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramConnector;->getSessionConfig()Lorg/apache/mina/transport/socket/DatagramSessionConfig;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/mina/core/session/IoSessionConfig;->setAll(Lorg/apache/mina/core/session/IoSessionConfig;)V

    return-object v0
.end method

.method public bridge synthetic register(Ljava/lang/Object;Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioDatagramConnector;->register(Ljava/nio/channels/DatagramChannel;Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;)V

    return-void
.end method

.method public register(Ljava/nio/channels/DatagramChannel;Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/DatagramChannel;",
            "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            "Ljava/nio/channels/DatagramChannel;",
            ">.ConnectionRequest;)V"
        }
    .end annotation

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public select(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public selectedHandles()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/channels/DatagramChannel;",
            ">;"
        }
    .end annotation

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultRemoteAddress(Ljava/net/InetSocketAddress;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/service/AbstractIoConnector;->setDefaultRemoteAddress(Ljava/net/SocketAddress;)V

    return-void
.end method

.method public wakeup()V
    .locals 0

    return-void
.end method
