.class Lorg/h2/store/fs/FileMem;
.super Lorg/h2/store/fs/FileBase;
.source "SourceFile"


# instance fields
.field final data:Lorg/h2/store/fs/FileMemData;

.field private pos:J

.field private final readOnly:Z


# direct methods
.method public constructor <init>(Lorg/h2/store/fs/FileMemData;Z)V
    .locals 0

    invoke-direct {p0}, Lorg/h2/store/fs/FileBase;-><init>()V

    iput-object p1, p0, Lorg/h2/store/fs/FileMem;->data:Lorg/h2/store/fs/FileMemData;

    iput-boolean p2, p0, Lorg/h2/store/fs/FileMem;->readOnly:Z

    return-void
.end method


# virtual methods
.method public force(Z)V
    .locals 0

    return-void
.end method

.method public implCloseChannel()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/h2/store/fs/FileMem;->pos:J

    return-void
.end method

.method public position()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/h2/store/fs/FileMem;->pos:J

    return-wide v0
.end method

.method public position(J)Ljava/nio/channels/FileChannel;
    .locals 0

    .line 2
    iput-wide p1, p0, Lorg/h2/store/fs/FileMem;->pos:J

    return-object p0
.end method

.method public bridge synthetic position(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/h2/store/fs/FileMem;->position(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 7

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    if-nez v5, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/h2/store/fs/FileMem;->data:Lorg/h2/store/fs/FileMemData;

    iget-wide v1, p0, Lorg/h2/store/fs/FileMem;->pos:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v6

    add-int/2addr v4, v6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/h2/store/fs/FileMemData;->readWrite(J[BIIZ)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/h2/store/fs/FileMem;->pos:J

    sub-long v2, v0, v2

    long-to-int v3, v2

    if-gtz v3, :cond_1

    const/4 p1, -0x1

    return p1

    .line 1
    :cond_1
    invoke-static {p1, v3}, LA/g;->B(Ljava/nio/ByteBuffer;I)V

    .line 2
    iput-wide v0, p0, Lorg/h2/store/fs/FileMem;->pos:J

    return v3
.end method

.method public read(Ljava/nio/ByteBuffer;J)I
    .locals 7

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    if-nez v5, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/h2/store/fs/FileMem;->data:Lorg/h2/store/fs/FileMemData;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int v4, v2, v1

    const/4 v6, 0x0

    move-wide v1, p2

    invoke-virtual/range {v0 .. v6}, Lorg/h2/store/fs/FileMemData;->readWrite(J[BIIZ)J

    move-result-wide v0

    sub-long/2addr v0, p2

    long-to-int p2, v0

    if-gtz p2, :cond_1

    const/4 p1, -0x1

    return p1

    .line 5
    :cond_1
    invoke-static {p1, p2}, LA/g;->B(Ljava/nio/ByteBuffer;I)V

    return p2
.end method

.method public size()J
    .locals 2

    iget-object v0, p0, Lorg/h2/store/fs/FileMem;->data:Lorg/h2/store/fs/FileMemData;

    invoke-virtual {v0}, Lorg/h2/store/fs/FileMemData;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/store/fs/FileMem;->data:Lorg/h2/store/fs/FileMemData;

    invoke-virtual {v0}, Lorg/h2/store/fs/FileMemData;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncate(J)Ljava/nio/channels/FileChannel;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/h2/store/fs/FileMem;->readOnly:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/h2/store/fs/FileMem;->size()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    iget-object v0, p0, Lorg/h2/store/fs/FileMem;->data:Lorg/h2/store/fs/FileMemData;

    iget-boolean v1, p0, Lorg/h2/store/fs/FileMem;->readOnly:Z

    invoke-virtual {v0, v1}, Lorg/h2/store/fs/FileMemData;->touch(Z)V

    iget-wide v0, p0, Lorg/h2/store/fs/FileMem;->pos:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/store/fs/FileMem;->pos:J

    iget-object v0, p0, Lorg/h2/store/fs/FileMem;->data:Lorg/h2/store/fs/FileMemData;

    invoke-virtual {v0, p1, p2}, Lorg/h2/store/fs/FileMemData;->truncate(J)V

    :cond_0
    return-object p0

    :cond_1
    new-instance p1, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {p1}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw p1
.end method

.method public bridge synthetic truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/h2/store/fs/FileMem;->truncate(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized tryLock(JJZ)Ljava/nio/channels/FileLock;
    .locals 10

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    :try_start_0
    iget-object v1, p0, Lorg/h2/store/fs/FileMem;->data:Lorg/h2/store/fs/FileMemData;

    invoke-virtual {v1}, Lorg/h2/store/fs/FileMemData;->lockShared()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/h2/store/fs/FileMem;->data:Lorg/h2/store/fs/FileMemData;

    invoke-virtual {v1}, Lorg/h2/store/fs/FileMemData;->lockExclusive()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    new-instance v0, Lorg/h2/store/fs/FileMem$1;

    const/4 v4, 0x0

    move-object v2, v0

    move-object v3, p0

    move-wide v5, p1

    move-wide v7, p3

    move v9, p5

    invoke-direct/range {v2 .. v9}, Lorg/h2/store/fs/FileMem$1;-><init>(Lorg/h2/store/fs/FileMem;Ljava/nio/channels/FileChannel;JJZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 8

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v7

    if-nez v7, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/h2/store/fs/FileMem;->data:Lorg/h2/store/fs/FileMemData;

    iget-boolean v1, p0, Lorg/h2/store/fs/FileMem;->readOnly:Z

    invoke-virtual {v0, v1}, Lorg/h2/store/fs/FileMemData;->touch(Z)V

    iget-object v0, p0, Lorg/h2/store/fs/FileMem;->data:Lorg/h2/store/fs/FileMemData;

    iget-wide v1, p0, Lorg/h2/store/fs/FileMem;->pos:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    const/4 v6, 0x1

    move v5, v7

    invoke-virtual/range {v0 .. v6}, Lorg/h2/store/fs/FileMemData;->readWrite(J[BIIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/store/fs/FileMem;->pos:J

    .line 1
    invoke-static {p1, v7}, LA/g;->B(Ljava/nio/ByteBuffer;I)V

    return v7
.end method

.method public write(Ljava/nio/ByteBuffer;J)I
    .locals 8

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v7

    if-nez v7, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/h2/store/fs/FileMem;->data:Lorg/h2/store/fs/FileMemData;

    iget-boolean v1, p0, Lorg/h2/store/fs/FileMem;->readOnly:Z

    invoke-virtual {v0, v1}, Lorg/h2/store/fs/FileMemData;->touch(Z)V

    iget-object v0, p0, Lorg/h2/store/fs/FileMem;->data:Lorg/h2/store/fs/FileMemData;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int v4, v2, v1

    const/4 v6, 0x1

    move-wide v1, p2

    move v5, v7

    invoke-virtual/range {v0 .. v6}, Lorg/h2/store/fs/FileMemData;->readWrite(J[BIIZ)J

    .line 4
    invoke-static {p1, v7}, LA/g;->B(Ljava/nio/ByteBuffer;I)V

    return v7
.end method
