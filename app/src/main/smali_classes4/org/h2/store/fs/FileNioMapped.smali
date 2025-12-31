.class Lorg/h2/store/fs/FileNioMapped;
.super Lorg/h2/store/fs/FileBase;
.source "SourceFile"


# static fields
.field private static final GC_TIMEOUT_MS:J = 0x2710L


# instance fields
.field private file:Ljava/io/RandomAccessFile;

.field private fileLength:J

.field private mapped:Ljava/nio/MappedByteBuffer;

.field private final mode:Ljava/nio/channels/FileChannel$MapMode;

.field private final name:Ljava/lang/String;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/h2/store/fs/FileBase;-><init>()V

    const-string v0, "r"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    :goto_0
    iput-object v0, p0, Lorg/h2/store/fs/FileNioMapped;->mode:Ljava/nio/channels/FileChannel$MapMode;

    goto :goto_1

    :cond_0
    sget-object v0, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    goto :goto_0

    :goto_1
    iput-object p1, p0, Lorg/h2/store/fs/FileNioMapped;->name:Ljava/lang/String;

    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/h2/store/fs/FileNioMapped;->file:Ljava/io/RandomAccessFile;

    invoke-direct {p0}, Lorg/h2/store/fs/FileNioMapped;->reMap()V

    return-void
.end method

.method private static checkFileSizeLimit(J)V
    .locals 3

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "File over 2GB is not supported yet when using this file system"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private reMap()V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/h2/store/fs/FileNioMapped;->mapped:Ljava/nio/MappedByteBuffer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lorg/h2/store/fs/FileNioMapped;->pos:I

    .line 6
    .line 7
    invoke-direct {p0}, Lorg/h2/store/fs/FileNioMapped;->unMap()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    iget-object v1, p0, Lorg/h2/store/fs/FileNioMapped;->file:Ljava/io/RandomAccessFile;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    iput-wide v1, p0, Lorg/h2/store/fs/FileNioMapped;->fileLength:J

    .line 19
    .line 20
    invoke-static {v1, v2}, Lorg/h2/store/fs/FileNioMapped;->checkFileSizeLimit(J)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lorg/h2/store/fs/FileNioMapped;->file:Ljava/io/RandomAccessFile;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v3, p0, Lorg/h2/store/fs/FileNioMapped;->mode:Ljava/nio/channels/FileChannel$MapMode;

    .line 30
    .line 31
    const-wide/16 v4, 0x0

    .line 32
    .line 33
    iget-wide v6, p0, Lorg/h2/store/fs/FileNioMapped;->fileLength:J

    .line 34
    .line 35
    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput-object v1, p0, Lorg/h2/store/fs/FileNioMapped;->mapped:Ljava/nio/MappedByteBuffer;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    iget-object v2, p0, Lorg/h2/store/fs/FileNioMapped;->mapped:Ljava/nio/MappedByteBuffer;

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    int-to-long v3, v1

    .line 52
    iget-wide v5, p0, Lorg/h2/store/fs/FileNioMapped;->fileLength:J

    .line 53
    .line 54
    cmp-long v7, v3, v5

    .line 55
    .line 56
    if-ltz v7, :cond_2

    .line 57
    .line 58
    int-to-long v3, v2

    .line 59
    cmp-long v7, v3, v5

    .line 60
    .line 61
    if-ltz v7, :cond_2

    .line 62
    .line 63
    sget-boolean v1, Lorg/h2/engine/SysProperties;->NIO_LOAD_MAPPED:Z

    .line 64
    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    iget-object v1, p0, Lorg/h2/store/fs/FileNioMapped;->mapped:Ljava/nio/MappedByteBuffer;

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->load()Ljava/nio/MappedByteBuffer;

    .line 70
    .line 71
    .line 72
    :cond_1
    iget-wide v1, p0, Lorg/h2/store/fs/FileNioMapped;->fileLength:J

    .line 73
    .line 74
    long-to-int v2, v1

    .line 75
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    iput v0, p0, Lorg/h2/store/fs/FileNioMapped;->pos:I

    .line 80
    .line 81
    return-void

    .line 82
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 83
    .line 84
    const-string v3, "Unable to map: length="

    .line 85
    .line 86
    const-string v4, " capacity="

    .line 87
    .line 88
    const-string v5, " length="

    .line 89
    .line 90
    invoke-static {v3, v1, v4, v2, v5}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    iget-wide v2, p0, Lorg/h2/store/fs/FileNioMapped;->fileLength:J

    .line 95
    .line 96
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v0
.end method

.method private unMap()V
    .locals 8

    iget-object v0, p0, Lorg/h2/store/fs/FileNioMapped;->mapped:Ljava/nio/MappedByteBuffer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;

    sget-boolean v0, Lorg/h2/engine/SysProperties;->NIO_CLEANER_HACK:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lorg/h2/store/fs/FileNioMapped;->mapped:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "cleaner"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object v2, p0, Lorg/h2/store/fs/FileNioMapped;->mapped:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "clean"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iput-object v1, p0, Lorg/h2/store/fs/FileNioMapped;->mapped:Ljava/nio/MappedByteBuffer;

    goto :goto_1

    :catchall_0
    iput-object v1, p0, Lorg/h2/store/fs/FileNioMapped;->mapped:Ljava/nio/MappedByteBuffer;

    :cond_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lorg/h2/store/fs/FileNioMapped;->mapped:Ljava/nio/MappedByteBuffer;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/h2/store/fs/FileNioMapped;->mapped:Ljava/nio/MappedByteBuffer;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-gtz v7, :cond_3

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Timeout (10000 ms) reached while trying to GC mapped buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public force(Z)V
    .locals 0

    iget-object p1, p0, Lorg/h2/store/fs/FileNioMapped;->mapped:Ljava/nio/MappedByteBuffer;

    invoke-virtual {p1}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;

    iget-object p1, p0, Lorg/h2/store/fs/FileNioMapped;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V

    return-void
.end method

.method public implCloseChannel()V
    .locals 1

    iget-object v0, p0, Lorg/h2/store/fs/FileNioMapped;->file:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/h2/store/fs/FileNioMapped;->unMap()V

    iget-object v0, p0, Lorg/h2/store/fs/FileNioMapped;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/store/fs/FileNioMapped;->file:Ljava/io/RandomAccessFile;

    :cond_0
    return-void
.end method

.method public position()J
    .locals 2

    .line 1
    iget v0, p0, Lorg/h2/store/fs/FileNioMapped;->pos:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public position(J)Ljava/nio/channels/FileChannel;
    .locals 0

    .line 2
    invoke-static {p1, p2}, Lorg/h2/store/fs/FileNioMapped;->checkFileSizeLimit(J)V

    long-to-int p2, p1

    iput p2, p0, Lorg/h2/store/fs/FileNioMapped;->pos:I

    return-object p0
.end method

.method public bridge synthetic position(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/h2/store/fs/FileNioMapped;->position(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized read(Ljava/nio/ByteBuffer;)I
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :cond_0
    int-to-long v0, v0

    :try_start_1
    iget-wide v2, p0, Lorg/h2/store/fs/FileNioMapped;->fileLength:J

    iget v4, p0, Lorg/h2/store/fs/FileNioMapped;->pos:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    long-to-int v1, v0

    if-gtz v1, :cond_1

    monitor-exit p0

    const/4 p1, -0x1

    return p1

    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/h2/store/fs/FileNioMapped;->mapped:Ljava/nio/MappedByteBuffer;

    iget v2, p0, Lorg/h2/store/fs/FileNioMapped;->pos:I

    invoke-virtual {v0, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/h2/store/fs/FileNioMapped;->mapped:Ljava/nio/MappedByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v2, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget p1, p0, Lorg/h2/store/fs/FileNioMapped;->pos:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/h2/store/fs/FileNioMapped;->pos:I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    :try_start_3
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :goto_1
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFileLength(J)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Lorg/h2/store/fs/FileNioMapped;->checkFileSizeLimit(J)V

    iget v0, p0, Lorg/h2/store/fs/FileNioMapped;->pos:I

    invoke-direct {p0}, Lorg/h2/store/fs/FileNioMapped;->unMap()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :goto_0
    :try_start_1
    iget-object v2, p0, Lorg/h2/store/fs/FileNioMapped;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0}, Lorg/h2/store/fs/FileNioMapped;->reMap()V

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p2, p1

    iput p2, p0, Lorg/h2/store/fs/FileNioMapped;->pos:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v2

    const/16 v3, 0x10

    if-gt v1, v3, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "user-mapped section open"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    invoke-static {}, Ljava/lang/System;->gc()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized size()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/h2/store/fs/FileNioMapped;->fileLength:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "nioMapped:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/h2/store/fs/FileNioMapped;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized truncate(J)Ljava/nio/channels/FileChannel;
    .locals 3

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/store/fs/FileNioMapped;->mode:Ljava/nio/channels/FileChannel$MapMode;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/h2/store/fs/FileNioMapped;->size()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/h2/store/fs/FileNioMapped;->setFileLength(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object p0

    :cond_1
    :try_start_1
    new-instance p1, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {p1}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/h2/store/fs/FileNioMapped;->truncate(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized tryLock(JJZ)Ljava/nio/channels/FileLock;
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/h2/store/fs/FileNioMapped;->file:Ljava/io/RandomAccessFile;

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

.method public declared-synchronized write(Ljava/nio/ByteBuffer;)I
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lorg/h2/store/fs/FileNioMapped;->mapped:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    iget v2, p0, Lorg/h2/store/fs/FileNioMapped;->pos:I

    add-int v3, v2, v0

    if-ge v1, v3, :cond_0

    add-int/2addr v2, v0

    int-to-long v1, v2

    invoke-virtual {p0, v1, v2}, Lorg/h2/store/fs/FileNioMapped;->setFileLength(J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/h2/store/fs/FileNioMapped;->mapped:Ljava/nio/MappedByteBuffer;

    iget v2, p0, Lorg/h2/store/fs/FileNioMapped;->pos:I

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lorg/h2/store/fs/FileNioMapped;->mapped:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget p1, p0, Lorg/h2/store/fs/FileNioMapped;->pos:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/h2/store/fs/FileNioMapped;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :goto_1
    monitor-exit p0

    throw p1
.end method
