.class public final Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;
.super Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/transport/socket/DatagramAcceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$DatagramChannelIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor<",
        "Lorg/apache/mina/transport/socket/nio/NioSession;",
        "Ljava/nio/channels/DatagramChannel;",
        ">;",
        "Lorg/apache/mina/transport/socket/DatagramAcceptor;"
    }
.end annotation


# instance fields
.field private volatile selector:Ljava/nio/channels/Selector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;

    invoke-direct {v0}, Lorg/apache/mina/transport/socket/DefaultDatagramSessionConfig;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/mina/core/polling/AbstractPollingConnectionlessIoAcceptor;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic close(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->close(Ljava/nio/channels/DatagramChannel;)V

    return-void
.end method

.method public close(Ljava/nio/channels/DatagramChannel;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1, v0}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/DatagramChannel;->disconnect()Ljava/nio/channels/DatagramChannel;

    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

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
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getDefaultLocalAddress()Ljava/net/InetSocketAddress;

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
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSessionConfig()Lorg/apache/mina/core/session/IoSessionConfig;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getSessionConfig()Lorg/apache/mina/transport/socket/DatagramSessionConfig;

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
    .locals 1

    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    return-void
.end method

.method public bridge synthetic isReadable(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->isReadable(Ljava/nio/channels/DatagramChannel;)Z

    move-result p1

    return p1
.end method

.method public isReadable(Ljava/nio/channels/DatagramChannel;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1, v0}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic isWritable(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->isWritable(Ljava/nio/channels/DatagramChannel;)Z

    move-result p1

    return p1
.end method

.method public isWritable(Ljava/nio/channels/DatagramChannel;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1, v0}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic localAddress(Ljava/lang/Object;)Ljava/net/SocketAddress;
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->localAddress(Ljava/nio/channels/DatagramChannel;)Ljava/net/SocketAddress;

    move-result-object p1

    return-object p1
.end method

.method public localAddress(Ljava/nio/channels/DatagramChannel;)Ljava/net/SocketAddress;
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/DatagramSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newSession(Lorg/apache/mina/core/service/IoProcessor;Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/apache/mina/core/session/AbstractIoSession;
    .locals 0

    .line 1
    check-cast p2, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->newSession(Lorg/apache/mina/core/service/IoProcessor;Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)Lorg/apache/mina/transport/socket/nio/NioSession;

    move-result-object p1

    return-object p1
.end method

.method public newSession(Lorg/apache/mina/core/service/IoProcessor;Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)Lorg/apache/mina/transport/socket/nio/NioSession;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;",
            "Ljava/nio/channels/DatagramChannel;",
            "Ljava/net/SocketAddress;",
            ")",
            "Lorg/apache/mina/transport/socket/nio/NioSession;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p2, v0}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/apache/mina/transport/socket/nio/NioDatagramSession;

    invoke-direct {v1, p0, p2, p1, p3}, Lorg/apache/mina/transport/socket/nio/NioDatagramSession;-><init>(Lorg/apache/mina/core/service/IoService;Ljava/nio/channels/DatagramChannel;Lorg/apache/mina/core/service/IoProcessor;Ljava/net/SocketAddress;)V

    invoke-virtual {v1, v0}, Lorg/apache/mina/transport/socket/nio/NioSession;->setSelectionKey(Ljava/nio/channels/SelectionKey;)V

    return-object v1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic open(Ljava/net/SocketAddress;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->open(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    move-result-object p1

    return-object p1
.end method

.method public open(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    .locals 3

    .line 2
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/apache/mina/transport/socket/nio/NioDatagramSessionConfig;

    invoke-direct {v1, v0}, Lorg/apache/mina/transport/socket/nio/NioDatagramSessionConfig;-><init>(Ljava/nio/channels/DatagramChannel;)V

    invoke-virtual {p0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->getSessionConfig()Lorg/apache/mina/transport/socket/DatagramSessionConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;->setAll(Lorg/apache/mina/core/session/IoSessionConfig;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    iget-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->close(Ljava/nio/channels/DatagramChannel;)V

    throw p1
.end method

.method public bridge synthetic receive(Ljava/lang/Object;Lorg/apache/mina/core/buffer/IoBuffer;)Ljava/net/SocketAddress;
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->receive(Ljava/nio/channels/DatagramChannel;Lorg/apache/mina/core/buffer/IoBuffer;)Ljava/net/SocketAddress;

    move-result-object p1

    return-object p1
.end method

.method public receive(Ljava/nio/channels/DatagramChannel;Lorg/apache/mina/core/buffer/IoBuffer;)Ljava/net/SocketAddress;
    .locals 0

    .line 2
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/channels/DatagramChannel;->receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;

    move-result-object p1

    return-object p1
.end method

.method public select()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->select()I

    move-result v0

    return v0
.end method

.method public select(J)I
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/Selector;->select(J)I

    move-result p1

    return p1
.end method

.method public selectedHandles()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/channels/DatagramChannel;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$DatagramChannelIterator;

    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$DatagramChannelIterator;-><init>(Ljava/util/Collection;Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor$1;)V

    return-object v0
.end method

.method public bridge synthetic send(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/buffer/IoBuffer;Ljava/net/SocketAddress;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->send(Lorg/apache/mina/transport/socket/nio/NioSession;Lorg/apache/mina/core/buffer/IoBuffer;Ljava/net/SocketAddress;)I

    move-result p1

    return p1
.end method

.method public send(Lorg/apache/mina/transport/socket/nio/NioSession;Lorg/apache/mina/core/buffer/IoBuffer;Ljava/net/SocketAddress;)I
    .locals 0

    .line 2
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object p1

    check-cast p1, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Ljava/nio/channels/DatagramChannel;->send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I

    move-result p1

    return p1
.end method

.method public setDefaultLocalAddress(Ljava/net/InetSocketAddress;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/service/AbstractIoAcceptor;->setDefaultLocalAddress(Ljava/net/SocketAddress;)V

    return-void
.end method

.method public bridge synthetic setInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;Z)V
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->setInterestedInWrite(Lorg/apache/mina/transport/socket/nio/NioSession;Z)V

    return-void
.end method

.method public setInterestedInWrite(Lorg/apache/mina/transport/socket/nio/NioSession;Z)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    if-eqz p2, :cond_1

    or-int/lit8 p2, v0, 0x4

    goto :goto_0

    :cond_1
    and-int/lit8 p2, v0, -0x5

    :goto_0
    invoke-virtual {p1, p2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    return-void
.end method

.method public wakeup()V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramAcceptor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    return-void
.end method
