.class public final Lorg/apache/mina/transport/socket/nio/NioProcessor;
.super Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/transport/socket/nio/NioProcessor$IoSessionIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<",
        "Lorg/apache/mina/transport/socket/nio/NioSession;",
        ">;"
    }
.end annotation


# instance fields
.field private selector:Ljava/nio/channels/Selector;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;-><init>(Ljava/util/concurrent/Executor;)V

    :try_start_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/mina/core/RuntimeIoException;

    const-string v1, "Failed to open a selector."

    invoke-direct {v0, v1, p1}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public allSessions()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/mina/transport/socket/nio/NioProcessor$IoSessionIterator;

    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/transport/socket/nio/NioProcessor$IoSessionIterator;-><init>(Ljava/util/Set;Lorg/apache/mina/transport/socket/nio/NioProcessor$1;)V

    return-object v0
.end method

.method public bridge synthetic destroy(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->destroy(Lorg/apache/mina/transport/socket/nio/NioSession;)V

    return-void
.end method

.method public destroy(Lorg/apache/mina/transport/socket/nio/NioSession;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    :cond_0
    invoke-interface {v0}, Ljava/nio/channels/Channel;->close()V

    return-void
.end method

.method public doDispose()V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V

    return-void
.end method

.method public bridge synthetic getState(Lorg/apache/mina/core/session/AbstractIoSession;)Lorg/apache/mina/core/session/SessionState;
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->getState(Lorg/apache/mina/transport/socket/nio/NioSession;)Lorg/apache/mina/core/session/SessionState;

    move-result-object p1

    return-object p1
.end method

.method public getState(Lorg/apache/mina/transport/socket/nio/NioSession;)Lorg/apache/mina/core/session/SessionState;
    .locals 0

    .line 2
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/mina/core/session/SessionState;->OPENING:Lorg/apache/mina/core/session/SessionState;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lorg/apache/mina/core/session/SessionState;->OPENED:Lorg/apache/mina/core/session/SessionState;

    return-object p1

    :cond_1
    sget-object p1, Lorg/apache/mina/core/session/SessionState;->CLOSING:Lorg/apache/mina/core/session/SessionState;

    return-object p1
.end method

.method public bridge synthetic init(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->init(Lorg/apache/mina/transport/socket/nio/NioSession;)V

    return-void
.end method

.method public init(Lorg/apache/mina/transport/socket/nio/NioSession;)V
    .locals 3

    .line 2
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectableChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/mina/transport/socket/nio/NioSession;->setSelectionKey(Ljava/nio/channels/SelectionKey;)V

    return-void
.end method

.method public isBrokenConnection()Z
    .locals 6

    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SelectionKey;

    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v4

    instance-of v5, v4, Ljava/nio/channels/DatagramChannel;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v5}, Ljava/nio/channels/DatagramChannel;->isConnected()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    instance-of v5, v4, Ljava/nio/channels/SocketChannel;

    if-eqz v5, :cond_0

    check-cast v4, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v0

    return v2

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic isInterestedInRead(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->isInterestedInRead(Lorg/apache/mina/transport/socket/nio/NioSession;)Z

    move-result p1

    return p1
.end method

.method public isInterestedInRead(Lorg/apache/mina/transport/socket/nio/NioSession;)Z
    .locals 1

    .line 2
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result p1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic isInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->isInterestedInWrite(Lorg/apache/mina/transport/socket/nio/NioSession;)Z

    move-result p1

    return p1
.end method

.method public isInterestedInWrite(Lorg/apache/mina/transport/socket/nio/NioSession;)Z
    .locals 1

    .line 2
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic isReadable(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->isReadable(Lorg/apache/mina/transport/socket/nio/NioSession;)Z

    move-result p1

    return p1
.end method

.method public isReadable(Lorg/apache/mina/transport/socket/nio/NioSession;)Z
    .locals 1

    .line 2
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSelectorEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isWritable(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->isWritable(Lorg/apache/mina/transport/socket/nio/NioSession;)Z

    move-result p1

    return p1
.end method

.method public isWritable(Lorg/apache/mina/transport/socket/nio/NioSession;)Z
    .locals 1

    .line 2
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic read(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/buffer/IoBuffer;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->read(Lorg/apache/mina/transport/socket/nio/NioSession;Lorg/apache/mina/core/buffer/IoBuffer;)I

    move-result p1

    return p1
.end method

.method public read(Lorg/apache/mina/transport/socket/nio/NioSession;Lorg/apache/mina/core/buffer/IoBuffer;)I
    .locals 0

    .line 2
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getChannel()Ljava/nio/channels/ByteChannel;

    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object p1

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public registerNewSelector()V
    .locals 6

    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v1

    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SelectionKey;

    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v4

    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v3

    invoke-virtual {v4, v2, v3, v5}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v3

    invoke-virtual {v5, v3}, Lorg/apache/mina/transport/socket/nio/NioSession;->setSelectionKey(Ljava/nio/channels/SelectionKey;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V

    iput-object v2, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public select()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->select()I

    move-result v0

    return v0
.end method

.method public select(J)I
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/Selector;->select(J)I

    move-result p1

    return p1
.end method

.method public selectedSessions()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/mina/transport/socket/nio/NioSession;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/mina/transport/socket/nio/NioProcessor$IoSessionIterator;

    iget-object v1, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/transport/socket/nio/NioProcessor$IoSessionIterator;-><init>(Ljava/util/Set;Lorg/apache/mina/transport/socket/nio/NioProcessor$1;)V

    return-object v0
.end method

.method public bridge synthetic setInterestedInRead(Lorg/apache/mina/core/session/AbstractIoSession;Z)V
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->setInterestedInRead(Lorg/apache/mina/transport/socket/nio/NioSession;Z)V

    return-void
.end method

.method public setInterestedInRead(Lorg/apache/mina/transport/socket/nio/NioSession;Z)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getSelectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    if-eqz p2, :cond_0

    or-int/lit8 p2, v0, 0x1

    goto :goto_0

    :cond_0
    and-int/lit8 p2, v0, -0x2

    :goto_0
    if-eq v0, p2, :cond_1

    invoke-virtual {p1, p2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :cond_1
    return-void
.end method

.method public bridge synthetic setInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;Z)V
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->setInterestedInWrite(Lorg/apache/mina/transport/socket/nio/NioSession;Z)V

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

.method public bridge synthetic transferFile(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/file/FileRegion;I)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->transferFile(Lorg/apache/mina/transport/socket/nio/NioSession;Lorg/apache/mina/core/file/FileRegion;I)I

    move-result p1

    return p1
.end method

.method public transferFile(Lorg/apache/mina/transport/socket/nio/NioSession;Lorg/apache/mina/core/file/FileRegion;I)I
    .locals 6

    .line 2
    :try_start_0
    invoke-interface {p2}, Lorg/apache/mina/core/file/FileRegion;->getFileChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/mina/core/file/FileRegion;->getPosition()J

    move-result-wide v1

    int-to-long v3, p3

    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int p2, p1

    return p2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p3, "temporarily unavailable"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    throw p1
.end method

.method public wakeup()V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->wakeupCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioProcessor;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    return-void
.end method

.method public bridge synthetic write(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/buffer/IoBuffer;I)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/mina/transport/socket/nio/NioSession;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/mina/transport/socket/nio/NioProcessor;->write(Lorg/apache/mina/transport/socket/nio/NioSession;Lorg/apache/mina/core/buffer/IoBuffer;I)I

    move-result p1

    return p1
.end method

.method public write(Lorg/apache/mina/transport/socket/nio/NioSession;Lorg/apache/mina/core/buffer/IoBuffer;I)I
    .locals 2

    .line 2
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v0

    if-gt v0, p3, :cond_0

    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object p1

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p2, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/nio/NioSession;->getChannel()Ljava/nio/channels/ByteChannel;

    move-result-object p1

    invoke-virtual {p2}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p2, v0}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    throw p1
.end method
