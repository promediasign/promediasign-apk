.class public Lorg/h2/mvstore/cache/FilePathCache$FileCache;
.super Lorg/h2/store/fs/FileBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/mvstore/cache/FilePathCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileCache"
.end annotation


# static fields
.field private static final CACHE_BLOCK_SIZE:I = 0x1000


# instance fields
.field private final base:Ljava/nio/channels/FileChannel;

.field private final cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/nio/channels/FileChannel;)V
    .locals 3

    invoke-direct {p0}, Lorg/h2/store/fs/FileBase;-><init>()V

    new-instance v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Config;

    invoke-direct {v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Config;-><init>()V

    const-wide/32 v1, 0x100000

    iput-wide v1, v0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Config;->maxMemory:J

    new-instance v1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    invoke-direct {v1, v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;-><init>(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Config;)V

    iput-object v1, p0, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    iput-object p1, p0, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->base:Ljava/nio/channels/FileChannel;

    return-void
.end method

.method private clearCache(Ljava/nio/ByteBuffer;J)V
    .locals 2

    iget-object v0, p0, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    invoke-virtual {v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    invoke-static {p2, p3}, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->getCachePos(J)J

    move-result-wide p2

    :goto_0
    if-lez p1, :cond_0

    iget-object v0, p0, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    invoke-virtual {v0, p2, p3}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->remove(J)Ljava/lang/Object;

    const-wide/16 v0, 0x1000

    add-long/2addr p2, v0

    add-int/lit16 p1, p1, -0x1000

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getCachePos(J)J
    .locals 2

    const-wide/16 v0, 0x1000

    div-long/2addr p0, v0

    mul-long p0, p0, v0

    return-wide p0
.end method


# virtual methods
.method public force(Z)V
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->base:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->force(Z)V

    return-void
.end method

.method public implCloseChannel()V
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->base:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    return-void
.end method

.method public position()J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->base:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public position(J)Ljava/nio/channels/FileChannel;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->base:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    return-object p0
.end method

.method public bridge synthetic position(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->position(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->base:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public declared-synchronized read(Ljava/nio/ByteBuffer;J)I
    .locals 9

    .line 2
    monitor-enter p0

    :try_start_0
    invoke-static {p2, p3}, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->getCachePos(J)J

    move-result-wide v0

    sub-long/2addr p2, v0

    long-to-int p3, p2

    rsub-int p2, p3, 0x1000

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v2, p0, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    invoke-virtual {v2, v0, v1}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    const/4 v3, -0x1

    if-nez v2, :cond_4

    const/16 v2, 0x1000

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    move-wide v5, v0

    :goto_0
    iget-object v7, p0, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->base:Ljava/nio/channels/FileChannel;

    invoke-virtual {v7, v4, v5, v6}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v7

    if-gtz v7, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    move-result v8

    if-nez v8, :cond_3

    :goto_1
    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    move-result v5

    if-ne v5, v2, :cond_1

    iget-object v5, p0, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    invoke-virtual {v5, v0, v1, v4, v2}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->put(JLjava/lang/Object;I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    move-object v2, v4

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_1
    if-gtz v5, :cond_2

    monitor-exit p0

    return v3

    :cond_2
    sub-int/2addr v5, p3

    :try_start_1
    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_2

    :cond_3
    int-to-long v7, v7

    add-long/2addr v5, v7

    goto :goto_0

    :cond_4
    :goto_3
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0, p3, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_5

    goto :goto_4

    :cond_5
    move v3, p2

    :goto_4
    monitor-exit p0

    return v3

    :goto_5
    monitor-exit p0

    throw p1
.end method

.method public size()J
    .locals 2

    iget-object v0, p0, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->base:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cache:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->base:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized truncate(J)Ljava/nio/channels/FileChannel;
    .locals 1

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->cache:Lorg/h2/mvstore/cache/CacheLongKeyLIRS;

    invoke-virtual {v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->clear()V

    iget-object v0, p0, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->base:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->truncate(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public tryLock(JJZ)Ljava/nio/channels/FileLock;
    .locals 6

    iget-object v0, p0, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->base:Ljava/nio/channels/FileChannel;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized write(Ljava/nio/ByteBuffer;)I
    .locals 2

    .line 1
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->position()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->clearCache(Ljava/nio/ByteBuffer;J)V

    iget-object v0, p0, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->base:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized write(Ljava/nio/ByteBuffer;J)I
    .locals 1

    .line 2
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->clearCache(Ljava/nio/ByteBuffer;J)V

    iget-object v0, p0, Lorg/h2/mvstore/cache/FilePathCache$FileCache;->base:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
