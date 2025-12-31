.class public final Lorg/apache/mina/transport/socket/nio/NioSocketConnector;
.super Lorg/apache/mina/core/polling/AbstractPollingIoConnector;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/transport/socket/SocketConnector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/transport/socket/nio/NioSocketConnector$SocketChannelIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<",
        "Lorg/apache/mina/transport/socket/nio/NioSession;",
        "Ljava/nio/channels/SocketChannel;",
        ">;",
        "Lorg/apache/mina/transport/socket/SocketConnector;"
    }
.end annotation


# instance fields
.field private volatile selector:Ljava/nio/channels/Selector;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;-><init>()V

    const-class v1, Lorg/apache/mina/transport/socket/nio/NioProcessor;

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-virtual {v0, p0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->init(Lorg/apache/mina/core/service/IoService;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;-><init>()V

    const-class v1, Lorg/apache/mina/transport/socket/nio/NioProcessor;

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/lang/Class;I)V

    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-virtual {p1, p0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->init(Lorg/apache/mina/core/service/IoService;)V

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
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;-><init>()V

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
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;)V"
        }
    .end annotation

    .line 5
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;)V

    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-virtual {p1, p0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->init(Lorg/apache/mina/core/service/IoService;)V

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

    .line 6
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoConnector;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Lorg/apache/mina/core/service/IoProcessor;)V

    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-virtual {p1, p0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->init(Lorg/apache/mina/core/service/IoService;)V

    return-void
.end method


# virtual methods
.method public allHandles()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/channels/SocketChannel;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/mina/transport/socket/nio/NioSocketConnector$SocketChannelIterator;

    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector$SocketChannelIterator;-><init>(Ljava/util/Collection;Lorg/apache/mina/transport/socket/nio/NioSocketConnector$1;)V

    return-object v0
.end method

.method public bridge synthetic close(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/channels/SocketChannel;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->close(Ljava/nio/channels/SocketChannel;)V

    return-void
.end method

.method public close(Ljava/nio/channels/SocketChannel;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1, v0}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    return-void
.end method

.method public bridge synthetic connect(Ljava/lang/Object;Ljava/net/SocketAddress;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/channels/SocketChannel;

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->connect(Ljava/nio/channels/SocketChannel;Ljava/net/SocketAddress;)Z

    move-result p1

    return p1
.end method

.method public connect(Ljava/nio/channels/SocketChannel;Ljava/net/SocketAddress;)Z
    .locals 0

    .line 2
    invoke-virtual {p1, p2}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    move-result p1

    return p1
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->selector:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V

    :cond_0
    return-void
.end method

.method public bridge synthetic finishConnect(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/channels/SocketChannel;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->finishConnect(Ljava/nio/channels/SocketChannel;)Z

    move-result p1

    return p1
.end method

.method public finishConnect(Ljava/nio/channels/SocketChannel;)Z
    .locals 1

    .line 2
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1, v0}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic getConnectionRequest(Ljava/lang/Object;)Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/channels/SocketChannel;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->getConnectionRequest(Ljava/nio/channels/SocketChannel;)Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;

    move-result-object p1

    return-object p1
.end method

.method public getConnectionRequest(Ljava/nio/channels/SocketChannel;)Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/SocketChannel;",
            ")",
            "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            "Ljava/nio/channels/SocketChannel;",
            ">.ConnectionRequest;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1, v0}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
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
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->getDefaultRemoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSessionConfig()Lorg/apache/mina/core/session/IoSessionConfig;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;
    .locals 1

    .line 2
    invoke-super {p0}, Lorg/apache/mina/core/service/AbstractIoService;->getSessionConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/transport/socket/SocketSessionConfig;

    return-object v0
.end method

.method public getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;
    .locals 1

    sget-object v0, Lorg/apache/mina/transport/socket/nio/NioSocketSession;->METADATA:Lorg/apache/mina/core/service/TransportMetadata;

    return-object v0
.end method

.method public init()V
    .locals 1

    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->selector:Ljava/nio/channels/Selector;

    return-void
.end method

.method public bridge synthetic newHandle(Ljava/net/SocketAddress;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->newHandle(Ljava/net/SocketAddress;)Ljava/nio/channels/SocketChannel;

    move-result-object p1

    return-object p1
.end method

.method public newHandle(Ljava/net/SocketAddress;)Ljava/nio/channels/SocketChannel;
    .locals 3

    .line 2
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->getReceiveBufferSize()I

    move-result v1

    const v2, 0xffff

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    return-object v0
.end method

.method public bridge synthetic newSession(Lorg/apache/mina/core/service/IoProcessor;Ljava/lang/Object;)Lorg/apache/mina/core/session/AbstractIoSession;
    .locals 0

    .line 1
    check-cast p2, Ljava/nio/channels/SocketChannel;

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->newSession(Lorg/apache/mina/core/service/IoProcessor;Ljava/nio/channels/SocketChannel;)Lorg/apache/mina/transport/socket/nio/NioSession;

    move-result-object p1

    return-object p1
.end method

.method public newSession(Lorg/apache/mina/core/service/IoProcessor;Ljava/nio/channels/SocketChannel;)Lorg/apache/mina/transport/socket/nio/NioSession;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;",
            "Ljava/nio/channels/SocketChannel;",
            ")",
            "Lorg/apache/mina/transport/socket/nio/NioSession;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;-><init>(Lorg/apache/mina/core/service/IoService;Lorg/apache/mina/core/service/IoProcessor;Ljava/nio/channels/SocketChannel;)V

    return-object v0
.end method

.method public bridge synthetic register(Ljava/lang/Object;Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/channels/SocketChannel;

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->register(Ljava/nio/channels/SocketChannel;Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;)V

    return-void
.end method

.method public register(Ljava/nio/channels/SocketChannel;Lorg/apache/mina/core/polling/AbstractPollingIoConnector$ConnectionRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/channels/SocketChannel;",
            "Lorg/apache/mina/core/polling/AbstractPollingIoConnector<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            "Ljava/nio/channels/SocketChannel;",
            ">.ConnectionRequest;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->selector:Ljava/nio/channels/Selector;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, p2}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    return-void
.end method

.method public select(I)I
    .locals 3

    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->selector:Ljava/nio/channels/Selector;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/Selector;->select(J)I

    move-result p1

    return p1
.end method

.method public selectedHandles()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/channels/SocketChannel;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/mina/transport/socket/nio/NioSocketConnector$SocketChannelIterator;

    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/transport/socket/nio/NioSocketConnector$SocketChannelIterator;-><init>(Ljava/util/Collection;Lorg/apache/mina/transport/socket/nio/NioSocketConnector$1;)V

    return-object v0
.end method

.method public setDefaultRemoteAddress(Ljava/net/InetSocketAddress;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/service/AbstractIoConnector;->setDefaultRemoteAddress(Ljava/net/SocketAddress;)V

    return-void
.end method

.method public wakeup()V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketConnector;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    return-void
.end method
