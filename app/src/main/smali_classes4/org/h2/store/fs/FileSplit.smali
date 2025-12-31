.class Lorg/h2/store/fs/FileSplit;
.super Lorg/h2/store/fs/FileBase;
.source "SourceFile"


# instance fields
.field private final file:Lorg/h2/store/fs/FilePathSplit;

.field private filePointer:J

.field private length:J

.field private list:[Ljava/nio/channels/FileChannel;

.field private final maxLength:J

.field private final mode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/h2/store/fs/FilePathSplit;Ljava/lang/String;[Ljava/nio/channels/FileChannel;JJ)V
    .locals 0

    invoke-direct {p0}, Lorg/h2/store/fs/FileBase;-><init>()V

    iput-object p1, p0, Lorg/h2/store/fs/FileSplit;->file:Lorg/h2/store/fs/FilePathSplit;

    iput-object p2, p0, Lorg/h2/store/fs/FileSplit;->mode:Ljava/lang/String;

    iput-object p3, p0, Lorg/h2/store/fs/FileSplit;->list:[Ljava/nio/channels/FileChannel;

    iput-wide p4, p0, Lorg/h2/store/fs/FileSplit;->length:J

    iput-wide p6, p0, Lorg/h2/store/fs/FileSplit;->maxLength:J

    return-void
.end method

.method private getFileChannel(J)Ljava/nio/channels/FileChannel;
    .locals 3

    iget-wide v0, p0, Lorg/h2/store/fs/FileSplit;->maxLength:J

    div-long/2addr p1, v0

    long-to-int p2, p1

    :goto_0
    iget-object p1, p0, Lorg/h2/store/fs/FileSplit;->list:[Ljava/nio/channels/FileChannel;

    array-length v0, p1

    if-lt p2, v0, :cond_0

    array-length v0, p1

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/nio/channels/FileChannel;

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/h2/store/fs/FileSplit;->file:Lorg/h2/store/fs/FilePathSplit;

    invoke-virtual {p1, v0}, Lorg/h2/store/fs/FilePathSplit;->getBase(I)Lorg/h2/store/fs/FilePath;

    move-result-object p1

    iget-object v2, p0, Lorg/h2/store/fs/FileSplit;->mode:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/h2/store/fs/FilePath;->open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;

    move-result-object p1

    aput-object p1, v1, v0

    iput-object v1, p0, Lorg/h2/store/fs/FileSplit;->list:[Ljava/nio/channels/FileChannel;

    goto :goto_0

    :cond_0
    aget-object p1, p1, p2

    return-object p1
.end method


# virtual methods
.method public force(Z)V
    .locals 4

    iget-object v0, p0, Lorg/h2/store/fs/FileSplit;->list:[Ljava/nio/channels/FileChannel;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/nio/channels/FileChannel;->force(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public implCloseChannel()V
    .locals 4

    iget-object v0, p0, Lorg/h2/store/fs/FileSplit;->list:[Ljava/nio/channels/FileChannel;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public position()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/h2/store/fs/FileSplit;->filePointer:J

    return-wide v0
.end method

.method public position(J)Ljava/nio/channels/FileChannel;
    .locals 0

    .line 2
    iput-wide p1, p0, Lorg/h2/store/fs/FileSplit;->filePointer:J

    return-object p0
.end method

.method public bridge synthetic position(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/h2/store/fs/FileSplit;->position(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    int-to-long v0, v0

    iget-wide v2, p0, Lorg/h2/store/fs/FileSplit;->length:J

    iget-wide v4, p0, Lorg/h2/store/fs/FileSplit;->filePointer:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    if-gtz v1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    iget-wide v2, p0, Lorg/h2/store/fs/FileSplit;->filePointer:J

    iget-wide v4, p0, Lorg/h2/store/fs/FileSplit;->maxLength:J

    rem-long/2addr v2, v4

    int-to-long v0, v1

    sub-long/2addr v4, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    iget-wide v0, p0, Lorg/h2/store/fs/FileSplit;->filePointer:J

    invoke-direct {p0, v0, v1}, Lorg/h2/store/fs/FileSplit;->getFileChannel(J)Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    iget-wide v0, p0, Lorg/h2/store/fs/FileSplit;->filePointer:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/store/fs/FileSplit;->filePointer:J

    return p1
.end method

.method public declared-synchronized read(Ljava/nio/ByteBuffer;J)I
    .locals 6

    .line 2
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :cond_0
    int-to-long v0, v0

    :try_start_1
    iget-wide v2, p0, Lorg/h2/store/fs/FileSplit;->length:J

    sub-long/2addr v2, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    long-to-int v1, v0

    if-gtz v1, :cond_1

    monitor-exit p0

    const/4 p1, -0x1

    return p1

    :cond_1
    :try_start_2
    iget-wide v2, p0, Lorg/h2/store/fs/FileSplit;->maxLength:J

    rem-long v4, p2, v2

    int-to-long v0, v1

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    invoke-direct {p0, p2, p3}, Lorg/h2/store/fs/FileSplit;->getFileChannel(J)Ljava/nio/channels/FileChannel;

    move-result-object p2

    invoke-virtual {p2, p1, v4, v5}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public size()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/store/fs/FileSplit;->length:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/store/fs/FileSplit;->file:Lorg/h2/store/fs/FilePathSplit;

    invoke-virtual {v0}, Lorg/h2/store/fs/FilePath;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncate(J)Ljava/nio/channels/FileChannel;
    .locals 7

    .line 1
    iget-wide v0, p0, Lorg/h2/store/fs/FileSplit;->length:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    return-object p0

    :cond_0
    iget-wide v0, p0, Lorg/h2/store/fs/FileSplit;->filePointer:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/store/fs/FileSplit;->filePointer:J

    iget-wide v0, p0, Lorg/h2/store/fs/FileSplit;->maxLength:J

    div-long v0, p1, v0

    long-to-int v1, v0

    add-int/lit8 v0, v1, 0x1

    iget-object v2, p0, Lorg/h2/store/fs/FileSplit;->list:[Ljava/nio/channels/FileChannel;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    new-array v3, v0, [Ljava/nio/channels/FileChannel;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-lt v2, v0, :cond_1

    iget-object v4, p0, Lorg/h2/store/fs/FileSplit;->list:[Ljava/nio/channels/FileChannel;

    aget-object v4, v4, v2

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    iget-object v4, p0, Lorg/h2/store/fs/FileSplit;->list:[Ljava/nio/channels/FileChannel;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    :try_start_0
    iget-object v4, p0, Lorg/h2/store/fs/FileSplit;->file:Lorg/h2/store/fs/FilePathSplit;

    invoke-virtual {v4, v2}, Lorg/h2/store/fs/FilePathSplit;->getBase(I)Lorg/h2/store/fs/FilePath;

    move-result-object v4

    invoke-virtual {v4}, Lorg/h2/store/fs/FilePath;->delete()V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lorg/h2/message/DbException;->convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    iget-object v2, p0, Lorg/h2/store/fs/FileSplit;->list:[Ljava/nio/channels/FileChannel;

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lorg/h2/store/fs/FileSplit;->list:[Ljava/nio/channels/FileChannel;

    :cond_2
    iget-wide v2, p0, Lorg/h2/store/fs/FileSplit;->maxLength:J

    int-to-long v0, v1

    mul-long v2, v2, v0

    sub-long v0, p1, v2

    iget-object v2, p0, Lorg/h2/store/fs/FileSplit;->list:[Ljava/nio/channels/FileChannel;

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, v0, v1}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    iput-wide p1, p0, Lorg/h2/store/fs/FileSplit;->length:J

    return-object p0
.end method

.method public bridge synthetic truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/h2/store/fs/FileSplit;->truncate(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized tryLock(JJZ)Ljava/nio/channels/FileLock;
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/store/fs/FileSplit;->list:[Ljava/nio/channels/FileChannel;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;

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
    .locals 8

    .line 1
    iget-wide v0, p0, Lorg/h2/store/fs/FileSplit;->filePointer:J

    iget-wide v2, p0, Lorg/h2/store/fs/FileSplit;->length:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    iget-wide v4, p0, Lorg/h2/store/fs/FileSplit;->maxLength:J

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    rem-long v6, v2, v4

    sub-long/2addr v2, v6

    :goto_0
    add-long/2addr v2, v4

    iget-wide v4, p0, Lorg/h2/store/fs/FileSplit;->filePointer:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    iget-wide v4, p0, Lorg/h2/store/fs/FileSplit;->length:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    const-wide/16 v4, 0x1

    sub-long v4, v2, v4

    invoke-virtual {p0, v4, v5}, Lorg/h2/store/fs/FileSplit;->position(J)Ljava/nio/channels/FileChannel;

    const/4 v4, 0x1

    new-array v4, v4, [B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/h2/store/fs/FileSplit;->write(Ljava/nio/ByteBuffer;)I

    :cond_0
    iput-wide v0, p0, Lorg/h2/store/fs/FileSplit;->filePointer:J

    iget-wide v4, p0, Lorg/h2/store/fs/FileSplit;->maxLength:J

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lorg/h2/store/fs/FileSplit;->filePointer:J

    iget-wide v2, p0, Lorg/h2/store/fs/FileSplit;->maxLength:J

    rem-long/2addr v0, v2

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    iget-wide v3, p0, Lorg/h2/store/fs/FileSplit;->filePointer:J

    invoke-direct {p0, v3, v4}, Lorg/h2/store/fs/FileSplit;->getFileChannel(J)Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    int-to-long v4, v2

    iget-wide v6, p0, Lorg/h2/store/fs/FileSplit;->maxLength:J

    sub-long/2addr v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    if-ne v1, v2, :cond_2

    invoke-virtual {v3, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v3, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move p1, v1

    :goto_1
    iget-wide v0, p0, Lorg/h2/store/fs/FileSplit;->filePointer:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/store/fs/FileSplit;->filePointer:J

    iget-wide v2, p0, Lorg/h2/store/fs/FileSplit;->length:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/store/fs/FileSplit;->length:J

    return p1
.end method

.method public write(Ljava/nio/ByteBuffer;J)I
    .locals 8

    .line 2
    iget-wide v0, p0, Lorg/h2/store/fs/FileSplit;->length:J

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1

    iget-wide v2, p0, Lorg/h2/store/fs/FileSplit;->maxLength:J

    cmp-long v4, p2, v2

    if-lez v4, :cond_1

    rem-long v4, v0, v2

    sub-long/2addr v0, v4

    :goto_0
    add-long/2addr v0, v2

    cmp-long v2, v0, p2

    if-gez v2, :cond_1

    iget-wide v2, p0, Lorg/h2/store/fs/FileSplit;->length:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    invoke-virtual {p0, v2, v3}, Lorg/h2/store/fs/FileSplit;->position(J)Ljava/nio/channels/FileChannel;

    const/4 v2, 0x1

    new-array v2, v2, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/h2/store/fs/FileSplit;->write(Ljava/nio/ByteBuffer;)I

    :cond_0
    iget-wide v2, p0, Lorg/h2/store/fs/FileSplit;->maxLength:J

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lorg/h2/store/fs/FileSplit;->maxLength:J

    rem-long v0, p2, v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-direct {p0, p2, p3}, Lorg/h2/store/fs/FileSplit;->getFileChannel(J)Ljava/nio/channels/FileChannel;

    move-result-object v3

    int-to-long v4, v2

    iget-wide v6, p0, Lorg/h2/store/fs/FileSplit;->maxLength:J

    sub-long/2addr v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v5, v4

    if-ne v5, v2, :cond_2

    invoke-virtual {v3, p1, v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result p1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v3, p1, v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result v0

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move p1, v0

    :goto_1
    iget-wide v0, p0, Lorg/h2/store/fs/FileSplit;->length:J

    int-to-long v2, p1

    add-long/2addr p2, v2

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    iput-wide p2, p0, Lorg/h2/store/fs/FileSplit;->length:J

    return p1
.end method
