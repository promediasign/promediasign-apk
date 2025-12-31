.class public abstract Lorg/h2/store/fs/FileBase;
.super Ljava/nio/channels/FileChannel;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/nio/channels/FileChannel;-><init>()V

    return-void
.end method


# virtual methods
.method public force(Z)V
    .locals 0

    return-void
.end method

.method public implCloseChannel()V
    .locals 0

    return-void
.end method

.method public lock(JJZ)Ljava/nio/channels/FileLock;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public abstract position()J
.end method

.method public abstract position(J)Ljava/nio/channels/FileChannel;
.end method

.method public bridge synthetic position(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/h2/store/fs/FileBase;->position(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public abstract read(Ljava/nio/ByteBuffer;)I
.end method

.method public declared-synchronized read(Ljava/nio/ByteBuffer;J)I
    .locals 2

    .line 1
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/store/fs/FileBase;->position()J

    move-result-wide v0

    invoke-virtual {p0, p2, p3}, Lorg/h2/store/fs/FileBase;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p0, p1}, Lorg/h2/store/fs/FileBase;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    invoke-virtual {p0, v0, v1}, Lorg/h2/store/fs/FileBase;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public abstract size()J
.end method

.method public transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public abstract truncate(J)Ljava/nio/channels/FileChannel;
.end method

.method public bridge synthetic truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/h2/store/fs/FileBase;->truncate(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public tryLock(JJZ)Ljava/nio/channels/FileLock;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public abstract write(Ljava/nio/ByteBuffer;)I
.end method

.method public declared-synchronized write(Ljava/nio/ByteBuffer;J)I
    .locals 2

    .line 1
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/h2/store/fs/FileBase;->position()J

    move-result-wide v0

    invoke-virtual {p0, p2, p3}, Lorg/h2/store/fs/FileBase;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p0, p1}, Lorg/h2/store/fs/FileBase;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    invoke-virtual {p0, v0, v1}, Lorg/h2/store/fs/FileBase;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
