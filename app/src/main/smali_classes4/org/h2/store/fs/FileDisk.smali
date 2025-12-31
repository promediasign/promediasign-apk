.class Lorg/h2/store/fs/FileDisk;
.super Lorg/h2/store/fs/FileBase;
.source "SourceFile"


# instance fields
.field private final file:Ljava/io/RandomAccessFile;

.field private final name:Ljava/lang/String;

.field private final readOnly:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/h2/store/fs/FileBase;-><init>()V

    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/h2/store/fs/FileDisk;->file:Ljava/io/RandomAccessFile;

    iput-object p1, p0, Lorg/h2/store/fs/FileDisk;->name:Ljava/lang/String;

    const-string p1, "r"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/h2/store/fs/FileDisk;->readOnly:Z

    return-void
.end method


# virtual methods
.method public force(Z)V
    .locals 1

    sget-object p1, Lorg/h2/engine/SysProperties;->SYNC_METHOD:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "sync"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object p1, p0, Lorg/h2/store/fs/FileDisk;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V

    goto :goto_1

    :cond_2
    const-string v0, "force"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lorg/h2/store/fs/FileDisk;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->force(Z)V

    goto :goto_1

    :cond_3
    const-string v0, "forceFalse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/h2/store/fs/FileDisk;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public implCloseChannel()V
    .locals 1

    iget-object v0, p0, Lorg/h2/store/fs/FileDisk;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public position()J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/h2/store/fs/FileDisk;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    return-wide v0
.end method

.method public position(J)Ljava/nio/channels/FileChannel;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/h2/store/fs/FileDisk;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-object p0
.end method

.method public bridge synthetic position(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/h2/store/fs/FileDisk;->position(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/h2/store/fs/FileDisk;->file:Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    add-int/2addr v3, v2

    .line 16
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-lez v0, :cond_0

    .line 25
    .line 26
    invoke-static {p1, v0}, LA/g;->B(Ljava/nio/ByteBuffer;I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return v0
.end method

.method public size()J
    .locals 2

    iget-object v0, p0, Lorg/h2/store/fs/FileDisk;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/store/fs/FileDisk;->name:Ljava/lang/String;

    return-object v0
.end method

.method public truncate(J)Ljava/nio/channels/FileChannel;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/h2/store/fs/FileDisk;->readOnly:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/h2/store/fs/FileDisk;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    iget-object v0, p0, Lorg/h2/store/fs/FileDisk;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V

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
    invoke-virtual {p0, p1, p2}, Lorg/h2/store/fs/FileDisk;->truncate(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized tryLock(JJZ)Ljava/nio/channels/FileLock;
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/store/fs/FileDisk;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 5

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lorg/h2/store/fs/FileDisk;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v1, v2, v4, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return v0
.end method
