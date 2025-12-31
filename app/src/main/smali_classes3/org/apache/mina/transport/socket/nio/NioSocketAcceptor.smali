.class public final Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;
.super Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/transport/socket/SocketAcceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor$ServerSocketChannelIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor<",
        "Lorg/apache/mina/transport/socket/nio/NioSession;",
        "Ljava/nio/channels/ServerSocketChannel;",
        ">;",
        "Lorg/apache/mina/transport/socket/SocketAcceptor;"
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

    invoke-direct {p0, v0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

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

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/lang/Class;I)V

    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-virtual {p1, p0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->init(Lorg/apache/mina/core/service/IoService;)V

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

    .line 3
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;Lorg/apache/mina/core/service/IoProcessor;)V

    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

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

    .line 4
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Lorg/apache/mina/core/service/IoProcessor;)V

    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;

    invoke-virtual {p1, p0}, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->init(Lorg/apache/mina/core/service/IoService;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Lorg/apache/mina/core/service/IoProcessor;Ljava/lang/Object;)Lorg/apache/mina/core/session/AbstractIoSession;
    .locals 0

    .line 1
    check-cast p2, Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->accept(Lorg/apache/mina/core/service/IoProcessor;Ljava/nio/channels/ServerSocketChannel;)Lorg/apache/mina/transport/socket/nio/NioSession;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lorg/apache/mina/core/service/IoProcessor;Ljava/nio/channels/ServerSocketChannel;)Lorg/apache/mina/transport/socket/nio/NioSession;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;",
            "Ljava/nio/channels/ServerSocketChannel;",
            ")",
            "Lorg/apache/mina/transport/socket/nio/NioSession;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p2, v0}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object p2

    if-nez p2, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Lorg/apache/mina/transport/socket/nio/NioSocketSession;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioSocketSession;-><init>(Lorg/apache/mina/core/service/IoService;Lorg/apache/mina/core/service/IoProcessor;Ljava/nio/channels/SocketChannel;)V

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public bridge synthetic close(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->close(Ljava/nio/channels/ServerSocketChannel;)V

    return-void
.end method

.method public close(Ljava/nio/channels/ServerSocketChannel;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1, v0}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V

    :cond_0
    return-void
.end method

.method public getDefaultLocalAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getDefaultLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic getDefaultLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->getDefaultLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSessionConfig()Lorg/apache/mina/core/session/IoSessionConfig;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

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

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    return-void
.end method

.method public bridge synthetic localAddress(Ljava/lang/Object;)Ljava/net/SocketAddress;
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->localAddress(Ljava/nio/channels/ServerSocketChannel;)Ljava/net/SocketAddress;

    move-result-object p1

    return-object p1
.end method

.method public localAddress(Ljava/nio/channels/ServerSocketChannel;)Ljava/net/SocketAddress;
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/ServerSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic open(Ljava/net/SocketAddress;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->open(Ljava/net/SocketAddress;)Ljava/nio/channels/ServerSocketChannel;

    move-result-object p1

    return-object p1
.end method

.method public open(Ljava/net/SocketAddress;)Ljava/nio/channels/ServerSocketChannel;
    .locals 3

    .line 2
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->isReuseAddress()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    invoke-virtual {p0}, Lorg/apache/mina/core/polling/AbstractPollingIoAcceptor;->getBacklog()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    iget-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    const/16 v1, 0x10

    invoke-virtual {v0, p1, v1}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->close(Ljava/nio/channels/ServerSocketChannel;)V

    throw p1
.end method

.method public select()I
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->select()I

    move-result v0

    return v0
.end method

.method public selectedHandles()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/channels/ServerSocketChannel;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor$ServerSocketChannelIterator;

    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor$ServerSocketChannelIterator;-><init>(Ljava/util/Collection;Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor$1;)V

    return-object v0
.end method

.method public setDefaultLocalAddress(Ljava/net/InetSocketAddress;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->setDefaultLocalAddress(Ljava/net/SocketAddress;)V

    return-void
.end method

.method public wakeup()V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    return-void
.end method
