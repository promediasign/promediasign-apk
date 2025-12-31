.class Lorg/h2/store/fs/FileMemData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/store/fs/FileMemData$CompressItem;,
        Lorg/h2/store/fs/FileMemData$Cache;
    }
.end annotation


# static fields
.field private static final BLOCK_SIZE:I = 0x400

.field private static final BLOCK_SIZE_MASK:I = 0x3ff

.field private static final BLOCK_SIZE_SHIFT:I = 0xa

.field private static final BUFFER:[B

.field private static final CACHE_SIZE:I = 0x8

.field private static final COMPRESSED_EMPTY_BLOCK:[B

.field private static final COMPRESS_LATER:Lorg/h2/store/fs/FileMemData$Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/store/fs/FileMemData$Cache<",
            "Lorg/h2/store/fs/FileMemData$CompressItem;",
            "Lorg/h2/store/fs/FileMemData$CompressItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final LZF:Lorg/h2/compress/CompressLZF;


# instance fields
.field private final compress:Z

.field private data:[Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field

.field private final id:I

.field private isLockedExclusive:Z

.field private isReadOnly:Z

.field private lastModified:J

.field private length:J

.field private name:Ljava/lang/String;

.field private sharedLockCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/h2/compress/CompressLZF;

    invoke-direct {v0}, Lorg/h2/compress/CompressLZF;-><init>()V

    sput-object v0, Lorg/h2/store/fs/FileMemData;->LZF:Lorg/h2/compress/CompressLZF;

    const/16 v1, 0x800

    new-array v1, v1, [B

    sput-object v1, Lorg/h2/store/fs/FileMemData;->BUFFER:[B

    new-instance v2, Lorg/h2/store/fs/FileMemData$Cache;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lorg/h2/store/fs/FileMemData$Cache;-><init>(I)V

    sput-object v2, Lorg/h2/store/fs/FileMemData;->COMPRESS_LATER:Lorg/h2/store/fs/FileMemData$Cache;

    const/16 v2, 0x400

    new-array v3, v2, [B

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v1, v4}, Lorg/h2/compress/CompressLZF;->compress([BI[BI)I

    move-result v0

    new-array v2, v0, [B

    sput-object v2, Lorg/h2/store/fs/FileMemData;->COMPRESSED_EMPTY_BLOCK:[B

    invoke-static {v1, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/h2/store/fs/FileMemData;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lorg/h2/store/fs/FileMemData;->id:I

    iput-boolean p2, p0, Lorg/h2/store/fs/FileMemData;->compress:Z

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lorg/h2/store/fs/FileMemData;->data:[Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/h2/store/fs/FileMemData;->lastModified:J

    return-void
.end method

.method private changeLength(J)V
    .locals 3

    iput-wide p1, p0, Lorg/h2/store/fs/FileMemData;->length:J

    const-wide/16 v0, 0x400

    invoke-static {p1, p2, v0, v1}, Lorg/h2/util/MathUtils;->roundUpLong(JJ)J

    move-result-wide p1

    const/16 v0, 0xa

    ushr-long/2addr p1, v0

    long-to-int p2, p1

    iget-object p1, p0, Lorg/h2/store/fs/FileMemData;->data:[Ljava/util/concurrent/atomic/AtomicReference;

    array-length v0, p1

    if-eq p2, v0, :cond_1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v0, p0, Lorg/h2/store/fs/FileMemData;->data:[Ljava/util/concurrent/atomic/AtomicReference;

    array-length v0, v0

    :goto_0
    if-ge v0, p2, :cond_0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lorg/h2/store/fs/FileMemData;->COMPRESSED_EMPTY_BLOCK:[B

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lorg/h2/store/fs/FileMemData;->data:[Ljava/util/concurrent/atomic/AtomicReference;

    :cond_1
    return-void
.end method

.method private compressLater(I)V
    .locals 2

    new-instance v0, Lorg/h2/store/fs/FileMemData$CompressItem;

    invoke-direct {v0}, Lorg/h2/store/fs/FileMemData$CompressItem;-><init>()V

    iput-object p0, v0, Lorg/h2/store/fs/FileMemData$CompressItem;->file:Lorg/h2/store/fs/FileMemData;

    iput p1, v0, Lorg/h2/store/fs/FileMemData$CompressItem;->page:I

    sget-object p1, Lorg/h2/store/fs/FileMemData;->LZF:Lorg/h2/compress/CompressLZF;

    monitor-enter p1

    :try_start_0
    sget-object v1, Lorg/h2/store/fs/FileMemData;->COMPRESS_LATER:Lorg/h2/store/fs/FileMemData$Cache;

    invoke-virtual {v1, v0, v0}, Lorg/h2/store/fs/FileMemData$Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private expand(I)[B
    .locals 10

    invoke-virtual {p0, p1}, Lorg/h2/store/fs/FileMemData;->getPage(I)[B

    move-result-object v7

    array-length v0, v7

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    return-object v7

    :cond_0
    new-array v8, v1, [B

    sget-object v0, Lorg/h2/store/fs/FileMemData;->COMPRESSED_EMPTY_BLOCK:[B

    if-eq v7, v0, :cond_1

    sget-object v9, Lorg/h2/store/fs/FileMemData;->LZF:Lorg/h2/compress/CompressLZF;

    monitor-enter v9

    :try_start_0
    array-length v3, v7

    const/4 v5, 0x0

    const/16 v6, 0x400

    const/4 v2, 0x0

    move-object v0, v9

    move-object v1, v7

    move-object v4, v8

    invoke-virtual/range {v0 .. v6}, Lorg/h2/compress/CompressLZF;->expand([BII[BII)V

    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v7, v8, v0}, Lorg/h2/store/fs/FileMemData;->setPage(I[B[BZ)V

    return-object v8
.end method


# virtual methods
.method public canWrite()Z
    .locals 1

    iget-boolean v0, p0, Lorg/h2/store/fs/FileMemData;->isReadOnly:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public compress(I)V
    .locals 6

    invoke-virtual {p0, p1}, Lorg/h2/store/fs/FileMemData;->getPage(I)[B

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    const/16 v2, 0x400

    if-eq v1, v2, :cond_0

    goto :goto_2

    :cond_0
    sget-object v1, Lorg/h2/store/fs/FileMemData;->LZF:Lorg/h2/compress/CompressLZF;

    monitor-enter v1

    :try_start_0
    sget-object v3, Lorg/h2/store/fs/FileMemData;->BUFFER:[B

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lorg/h2/compress/CompressLZF;->compress([BI[BI)I

    move-result v5

    if-gt v5, v2, :cond_1

    new-array v2, v5, [B

    invoke-static {v3, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, p1, v0, v2, v4}, Lorg/h2/store/fs/FileMemData;->setPage(I[B[BZ)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_2
    return-void
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lorg/h2/store/fs/FileMemData;->id:I

    return v0
.end method

.method public getLastModified()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/store/fs/FileMemData;->lastModified:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/store/fs/FileMemData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPage(I)[B
    .locals 2

    iget-object v0, p0, Lorg/h2/store/fs/FileMemData;->data:[Ljava/util/concurrent/atomic/AtomicReference;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public length()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/store/fs/FileMemData;->length:J

    return-wide v0
.end method

.method public declared-synchronized lockExclusive()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/h2/store/fs/FileMemData;->sharedLockCount:I

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lorg/h2/store/fs/FileMemData;->isLockedExclusive:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/store/fs/FileMemData;->isLockedExclusive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized lockShared()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/h2/store/fs/FileMemData;->isLockedExclusive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lorg/h2/store/fs/FileMemData;->sharedLockCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/h2/store/fs/FileMemData;->sharedLockCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public readWrite(J[BIIZ)J
    .locals 6

    int-to-long v0, p5

    add-long/2addr v0, p1

    iget-wide v2, p0, Lorg/h2/store/fs/FileMemData;->length:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    if-eqz p6, :cond_0

    invoke-direct {p0, v0, v1}, Lorg/h2/store/fs/FileMemData;->changeLength(J)V

    goto :goto_0

    :cond_0
    sub-long/2addr v2, p1

    long-to-int p5, v2

    :cond_1
    :goto_0
    if-lez p5, :cond_4

    int-to-long v0, p5

    const-wide/16 v2, 0x3ff

    and-long/2addr v2, p1

    const-wide/16 v4, 0x400

    sub-long/2addr v4, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    const/16 v0, 0xa

    ushr-long v4, p1, v0

    long-to-int v0, v4

    invoke-direct {p0, v0}, Lorg/h2/store/fs/FileMemData;->expand(I)[B

    move-result-object v4

    long-to-int v3, v2

    if-eqz p6, :cond_2

    array-length v2, v4

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-static {p3, p4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v4, v2, v3}, Lorg/h2/store/fs/FileMemData;->setPage(I[B[BZ)V

    goto :goto_1

    :cond_2
    invoke-static {v4, v3, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    iget-boolean v2, p0, Lorg/h2/store/fs/FileMemData;->compress:Z

    if-eqz v2, :cond_3

    invoke-direct {p0, v0}, Lorg/h2/store/fs/FileMemData;->compressLater(I)V

    :cond_3
    add-int/2addr p4, v1

    int-to-long v2, v1

    add-long/2addr p1, v2

    sub-int/2addr p5, v1

    goto :goto_0

    :cond_4
    return-wide p1
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/h2/store/fs/FileMemData;->name:Ljava/lang/String;

    return-void
.end method

.method public setPage(I[B[BZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/h2/store/fs/FileMemData;->data:[Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-lt p1, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    if-eqz p4, :cond_1

    .line 8
    .line 9
    aget-object p1, v0, p1

    .line 10
    .line 11
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    aget-object p1, v0, p1

    .line 16
    .line 17
    :cond_2
    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p4

    .line 21
    if-eqz p4, :cond_3

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_3
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p4

    .line 28
    if-eq p4, p2, :cond_2

    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method public setReadOnly()Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/store/fs/FileMemData;->isReadOnly:Z

    return v0
.end method

.method public touch(Z)V
    .locals 2

    iget-boolean v0, p0, Lorg/h2/store/fs/FileMemData;->isReadOnly:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/store/fs/FileMemData;->lastModified:J

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Read only"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public truncate(J)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lorg/h2/store/fs/FileMemData;->changeLength(J)V

    const-wide/16 v0, 0x400

    invoke-static {p1, p2, v0, v1}, Lorg/h2/util/MathUtils;->roundUpLong(JJ)J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-eqz v2, :cond_1

    const/16 v0, 0xa

    ushr-long v0, p1, v0

    long-to-int v1, v0

    invoke-direct {p0, v1}, Lorg/h2/store/fs/FileMemData;->expand(I)[B

    move-result-object v0

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    const-wide/16 v3, 0x3ff

    and-long/2addr p1, v3

    long-to-int p2, p1

    :goto_0
    const/16 p1, 0x400

    if-ge p2, p1, :cond_0

    const/4 p1, 0x0

    aput-byte p1, v2, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, v1, v0, v2, p1}, Lorg/h2/store/fs/FileMemData;->setPage(I[B[BZ)V

    iget-boolean p1, p0, Lorg/h2/store/fs/FileMemData;->compress:Z

    if-eqz p1, :cond_1

    invoke-direct {p0, v1}, Lorg/h2/store/fs/FileMemData;->compressLater(I)V

    :cond_1
    return-void
.end method

.method public declared-synchronized unlock()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/h2/store/fs/FileMemData;->isLockedExclusive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lorg/h2/store/fs/FileMemData;->isLockedExclusive:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/h2/store/fs/FileMemData;->sharedLockCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/h2/store/fs/FileMemData;->sharedLockCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method
