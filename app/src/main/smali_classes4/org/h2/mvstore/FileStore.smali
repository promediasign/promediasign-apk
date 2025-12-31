.class public Lorg/h2/mvstore/FileStore;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected encryptedFile:Ljava/nio/channels/FileChannel;

.field protected file:Ljava/nio/channels/FileChannel;

.field protected fileLock:Ljava/nio/channels/FileLock;

.field protected fileName:Ljava/lang/String;

.field protected fileSize:J

.field protected final freeSpace:Lorg/h2/mvstore/FreeSpaceBitSet;

.field protected readBytes:J

.field protected readCount:J

.field protected readOnly:Z

.field protected writeBytes:J

.field protected writeCount:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/h2/mvstore/FreeSpaceBitSet;

    const/4 v1, 0x2

    const/16 v2, 0x1000

    invoke-direct {v0, v1, v2}, Lorg/h2/mvstore/FreeSpaceBitSet;-><init>(II)V

    iput-object v0, p0, Lorg/h2/mvstore/FileStore;->freeSpace:Lorg/h2/mvstore/FreeSpaceBitSet;

    return-void
.end method


# virtual methods
.method public allocate(I)J
    .locals 2

    iget-object v0, p0, Lorg/h2/mvstore/FileStore;->freeSpace:Lorg/h2/mvstore/FreeSpaceBitSet;

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/FreeSpaceBitSet;->allocate(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/FileStore;->freeSpace:Lorg/h2/mvstore/FreeSpaceBitSet;

    invoke-virtual {v0}, Lorg/h2/mvstore/FreeSpaceBitSet;->clear()V

    return-void
.end method

.method public close()V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/h2/mvstore/FileStore;->fileLock:Ljava/nio/channels/FileLock;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V

    iput-object v1, p0, Lorg/h2/mvstore/FileStore;->fileLock:Ljava/nio/channels/FileLock;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/h2/mvstore/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    iget-object v2, p0, Lorg/h2/mvstore/FileStore;->freeSpace:Lorg/h2/mvstore/FreeSpaceBitSet;

    invoke-virtual {v2}, Lorg/h2/mvstore/FreeSpaceBitSet;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lorg/h2/mvstore/FileStore;->file:Ljava/nio/channels/FileChannel;

    return-void

    :goto_1
    :try_start_1
    const-string v3, "Closing failed for file {0}"

    iget-object v4, p0, Lorg/h2/mvstore/FileStore;->fileName:Ljava/lang/String;

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/4 v4, 0x1

    aput-object v2, v5, v4

    invoke-static {v0, v3, v5}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    iput-object v1, p0, Lorg/h2/mvstore/FileStore;->file:Ljava/nio/channels/FileChannel;

    throw v0
.end method

.method public free(JI)V
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/FileStore;->freeSpace:Lorg/h2/mvstore/FreeSpaceBitSet;

    invoke-virtual {v0, p1, p2, p3}, Lorg/h2/mvstore/FreeSpaceBitSet;->free(JI)V

    return-void
.end method

.method public getDefaultRetentionTime()I
    .locals 1

    const v0, 0xafc8

    return v0
.end method

.method public getEncryptedFile()Ljava/nio/channels/FileChannel;
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/FileStore;->encryptedFile:Ljava/nio/channels/FileChannel;

    return-object v0
.end method

.method public getFile()Ljava/nio/channels/FileChannel;
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/FileStore;->file:Ljava/nio/channels/FileChannel;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/FileStore;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFillRate()I
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/FileStore;->freeSpace:Lorg/h2/mvstore/FreeSpaceBitSet;

    invoke-virtual {v0}, Lorg/h2/mvstore/FreeSpaceBitSet;->getFillRate()I

    move-result v0

    return v0
.end method

.method public getFirstFree()J
    .locals 2

    iget-object v0, p0, Lorg/h2/mvstore/FileStore;->freeSpace:Lorg/h2/mvstore/FreeSpaceBitSet;

    invoke-virtual {v0}, Lorg/h2/mvstore/FreeSpaceBitSet;->getFirstFree()J

    move-result-wide v0

    return-wide v0
.end method

.method public getReadBytes()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/mvstore/FileStore;->readBytes:J

    return-wide v0
.end method

.method public getReadCount()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/mvstore/FileStore;->readCount:J

    return-wide v0
.end method

.method public getWriteBytes()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/mvstore/FileStore;->writeBytes:J

    return-wide v0
.end method

.method public getWriteCount()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/mvstore/FileStore;->writeCount:J

    return-wide v0
.end method

.method public isReadOnly()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/mvstore/FileStore;->readOnly:Z

    return v0
.end method

.method public markUsed(JI)V
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/FileStore;->freeSpace:Lorg/h2/mvstore/FreeSpaceBitSet;

    invoke-virtual {v0, p1, p2, p3}, Lorg/h2/mvstore/FreeSpaceBitSet;->markUsed(JI)V

    return-void
.end method

.method public open(Ljava/lang/String;Z[C)V
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/h2/mvstore/FileStore;->file:Ljava/nio/channels/FileChannel;

    if-eqz v3, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    sget-object v3, Lorg/h2/mvstore/cache/FilePathCache;->INSTANCE:Lorg/h2/mvstore/cache/FilePathCache;

    invoke-virtual {v3}, Lorg/h2/mvstore/cache/FilePathCache;->getScheme()Ljava/lang/String;

    invoke-static {p1}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object v3

    instance-of v4, v3, Lorg/h2/store/fs/FilePathDisk;

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lorg/h2/store/fs/FilePath;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "nio:"

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lorg/h2/mvstore/FileStore;->fileName:Ljava/lang/String;

    invoke-static {p1}, Lorg/h2/store/fs/FilePath;->get(Ljava/lang/String;)Lorg/h2/store/fs/FilePath;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/store/fs/FilePath;->getParent()Lorg/h2/store/fs/FilePath;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lorg/h2/store/fs/FilePath;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "Directory does not exist: {0}"

    new-array p2, v2, [Ljava/lang/Object;

    aput-object v4, p2, v1

    invoke-static {p1, p2}, Lorg/h2/mvstore/DataUtils;->newIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_0
    invoke-virtual {v3}, Lorg/h2/store/fs/FilePath;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lorg/h2/store/fs/FilePath;->canWrite()Z

    move-result v4

    if-nez v4, :cond_4

    const/4 p2, 0x1

    :cond_4
    iput-boolean p2, p0, Lorg/h2/mvstore/FileStore;->readOnly:Z

    if-eqz p2, :cond_5

    :try_start_0
    const-string v4, "r"

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_5

    :cond_5
    const-string v4, "rw"

    :goto_1
    invoke-virtual {v3, v4}, Lorg/h2/store/fs/FilePath;->open(Ljava/lang/String;)Ljava/nio/channels/FileChannel;

    move-result-object v3

    iput-object v3, p0, Lorg/h2/mvstore/FileStore;->file:Ljava/nio/channels/FileChannel;

    if-eqz p3, :cond_6

    invoke-static {p3}, Lorg/h2/store/fs/FilePathEncrypt;->getPasswordBytes([C)[B

    move-result-object p3

    iget-object v3, p0, Lorg/h2/mvstore/FileStore;->file:Ljava/nio/channels/FileChannel;

    iput-object v3, p0, Lorg/h2/mvstore/FileStore;->encryptedFile:Ljava/nio/channels/FileChannel;

    new-instance v3, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;

    iget-object v4, p0, Lorg/h2/mvstore/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-direct {v3, p1, p3, v4}, Lorg/h2/store/fs/FilePathEncrypt$FileEncrypt;-><init>(Ljava/lang/String;[BLjava/nio/channels/FileChannel;)V

    iput-object v3, p0, Lorg/h2/mvstore/FileStore;->file:Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    const-string p3, "The file is locked: {0}"

    const/4 v3, 0x7

    if-eqz p2, :cond_7

    :try_start_1
    iget-object v4, p0, Lorg/h2/mvstore/FileStore;->file:Ljava/nio/channels/FileChannel;

    const-wide v7, 0x7fffffffffffffffL

    const/4 v9, 0x1

    const-wide/16 v5, 0x0

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->tryLock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object p2

    :goto_2
    iput-object p2, p0, Lorg/h2/mvstore/FileStore;->fileLock:Ljava/nio/channels/FileLock;

    goto :goto_3

    :catch_1
    move-exception p2

    goto :goto_4

    :cond_7
    iget-object p2, p0, Lorg/h2/mvstore/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object p2
    :try_end_1
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_3
    :try_start_2
    iget-object p2, p0, Lorg/h2/mvstore/FileStore;->fileLock:Ljava/nio/channels/FileLock;

    if-eqz p2, :cond_8

    iget-object p2, p0, Lorg/h2/mvstore/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide p2

    iput-wide p2, p0, Lorg/h2/mvstore/FileStore;->fileSize:J

    return-void

    :cond_8
    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    invoke-static {v3, p3, p2}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p2

    throw p2

    :goto_4
    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    aput-object p2, v4, v2

    invoke-static {v3, p3, v4}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p2

    throw p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_5
    const-string p3, "Could not open file {0}"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    invoke-static {v2, p3, v0}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public readFully(JI)Ljava/nio/ByteBuffer;
    .locals 3

    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/mvstore/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-static {v1, p1, p2, v0}, Lorg/h2/mvstore/DataUtils;->readFully(Ljava/nio/channels/FileChannel;JLjava/nio/ByteBuffer;)V

    iget-wide p1, p0, Lorg/h2/mvstore/FileStore;->readCount:J

    const-wide/16 v1, 0x1

    add-long/2addr p1, v1

    iput-wide p1, p0, Lorg/h2/mvstore/FileStore;->readCount:J

    iget-wide p1, p0, Lorg/h2/mvstore/FileStore;->readBytes:J

    int-to-long v1, p3

    add-long/2addr p1, v1

    iput-wide p1, p0, Lorg/h2/mvstore/FileStore;->readBytes:J

    return-object v0
.end method

.method public size()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/mvstore/FileStore;->fileSize:J

    return-wide v0
.end method

.method public sync()V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lorg/h2/mvstore/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v1}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    iget-object v3, p0, Lorg/h2/mvstore/FileStore;->fileName:Ljava/lang/String;

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    aput-object v2, v4, v1

    const-string v1, "Could not sync file {0}"

    invoke-static {v0, v1, v4}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/FileStore;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public truncate(J)V
    .locals 5

    const/4 v0, 0x2

    :try_start_0
    iget-wide v1, p0, Lorg/h2/mvstore/FileStore;->writeCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/h2/mvstore/FileStore;->writeCount:J

    iget-object v1, p0, Lorg/h2/mvstore/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1, p1, p2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    iget-wide v1, p0, Lorg/h2/mvstore/FileStore;->fileSize:J

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/h2/mvstore/FileStore;->fileSize:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    iget-object v2, p0, Lorg/h2/mvstore/FileStore;->fileName:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, p2, v3

    const/4 v2, 0x1

    aput-object p1, p2, v2

    aput-object v1, p2, v0

    const-string p1, "Could not truncate file {0} to size {1}"

    invoke-static {v0, p1, p2}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public writeFully(JLjava/nio/ByteBuffer;)V
    .locals 7

    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget-wide v1, p0, Lorg/h2/mvstore/FileStore;->fileSize:J

    int-to-long v3, v0

    add-long v5, p1, v3

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/mvstore/FileStore;->fileSize:J

    iget-object v0, p0, Lorg/h2/mvstore/FileStore;->file:Ljava/nio/channels/FileChannel;

    invoke-static {v0, p1, p2, p3}, Lorg/h2/mvstore/DataUtils;->writeFully(Ljava/nio/channels/FileChannel;JLjava/nio/ByteBuffer;)V

    iget-wide p1, p0, Lorg/h2/mvstore/FileStore;->writeCount:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/h2/mvstore/FileStore;->writeCount:J

    iget-wide p1, p0, Lorg/h2/mvstore/FileStore;->writeBytes:J

    add-long/2addr p1, v3

    iput-wide p1, p0, Lorg/h2/mvstore/FileStore;->writeBytes:J

    return-void
.end method
