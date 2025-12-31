.class Lorg/apache/mina/handler/stream/IoSessionInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private final buf:Lorg/apache/mina/core/buffer/IoBuffer;

.field private volatile closed:Z

.field private exception:Ljava/io/IOException;

.field private final mutex:Ljava/lang/Object;

.field private volatile released:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->allocate(I)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->setAutoExpand(Z)Lorg/apache/mina/core/buffer/IoBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit(I)Lorg/apache/mina/core/buffer/IoBuffer;

    return-void
.end method

.method private releaseBuffer()V
    .locals 1

    iget-boolean v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->released:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->released:Z

    return-void
.end method

.method private waitForData()Z
    .locals 4

    iget-boolean v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->released:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->released:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->exception:Ljava/io/IOException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :try_start_1
    iget-object v2, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Interrupted while waiting for more data"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2

    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->closed:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/apache/mina/handler/stream/IoSessionInputStream;->releaseBuffer()V

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    invoke-direct {p0}, Lorg/apache/mina/handler/stream/IoSessionInputStream;->releaseBuffer()V

    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->exception:Ljava/io/IOException;

    throw v0

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method


# virtual methods
.method public available()I
    .locals 2

    iget-boolean v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->released:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->closed:Z

    invoke-direct {p0}, Lorg/apache/mina/handler/stream/IoSessionInputStream;->releaseBuffer()V

    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public read()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/mina/handler/stream/IoSessionInputStream;->waitForData()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 v0, -0x1

    return v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    monitor-exit v0

    return v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public read([BII)I
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/mina/handler/stream/IoSessionInputStream;->waitForData()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 p1, -0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v1

    if-le p3, v1, :cond_1

    iget-object p3, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result p3

    :cond_1
    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/mina/core/buffer/IoBuffer;->get([BII)Lorg/apache/mina/core/buffer/IoBuffer;

    monitor-exit v0

    return p3

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public throwException(Ljava/io/IOException;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->exception:Ljava/io/IOException;

    if-nez v1, :cond_0

    iput-object p1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->exception:Ljava/io/IOException;

    iget-object p1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public write(Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->closed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->compact()Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object p1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/core/buffer/IoBuffer;->clear()Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object v1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v1, p1}, Lorg/apache/mina/core/buffer/IoBuffer;->put(Lorg/apache/mina/core/buffer/IoBuffer;)Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object p1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->buf:Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->flip()Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object p1, p0, Lorg/apache/mina/handler/stream/IoSessionInputStream;->mutex:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
