.class Lorg/apache/mina/handler/stream/IoSessionOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field private lastWriteFuture:Lorg/apache/mina/core/future/WriteFuture;

.field private final session:Lorg/apache/mina/core/session/IoSession;


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/handler/stream/IoSessionOutputStream;->session:Lorg/apache/mina/core/session/IoSession;

    return-void
.end method

.method private checkClosed()V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionOutputStream;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSession;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The session has been closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized write(Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 1

    .line 2
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/mina/handler/stream/IoSessionOutputStream;->checkClosed()V

    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionOutputStream;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v0, p1}, Lorg/apache/mina/core/session/IoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/handler/stream/IoSessionOutputStream;->lastWriteFuture:Lorg/apache/mina/core/future/WriteFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/handler/stream/IoSessionOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionOutputStream;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v1, v0}, Lorg/apache/mina/core/session/IoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/future/CloseFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/CloseFuture;

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/mina/handler/stream/IoSessionOutputStream;->session:Lorg/apache/mina/core/session/IoSession;

    invoke-interface {v2, v0}, Lorg/apache/mina/core/session/IoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/future/CloseFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/CloseFuture;

    throw v1
.end method

.method public declared-synchronized flush()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionOutputStream;->lastWriteFuture:Lorg/apache/mina/core/future/WriteFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {v0}, Lorg/apache/mina/core/future/WriteFuture;->awaitUninterruptibly()Lorg/apache/mina/core/future/WriteFuture;

    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionOutputStream;->lastWriteFuture:Lorg/apache/mina/core/future/WriteFuture;

    invoke-interface {v0}, Lorg/apache/mina/core/future/WriteFuture;->isWritten()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The bytes could not be written to the session"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(B)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-direct {p0, v0}, Lorg/apache/mina/handler/stream/IoSessionOutputStream;->write(Lorg/apache/mina/core/buffer/IoBuffer;)V

    return-void
.end method

.method public write([BII)V
    .locals 0

    .line 3
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1, p2, p3}, Lorg/apache/mina/core/buffer/IoBuffer;->wrap([BII)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/mina/handler/stream/IoSessionOutputStream;->write(Lorg/apache/mina/core/buffer/IoBuffer;)V

    return-void
.end method
