.class public Lorg/h2/mvstore/StreamStore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/mvstore/StreamStore$Stream;
    }
.end annotation


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "[B>;"
        }
    .end annotation
.end field

.field private maxBlockSize:I

.field private minBlockSize:I

.field private final nextBuffer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field

.field private final nextKey:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "[B>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    iput v0, p0, Lorg/h2/mvstore/StreamStore;->minBlockSize:I

    const/high16 v0, 0x40000

    iput v0, p0, Lorg/h2/mvstore/StreamStore;->maxBlockSize:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/h2/mvstore/StreamStore;->nextKey:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/h2/mvstore/StreamStore;->nextBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lorg/h2/mvstore/StreamStore;->map:Ljava/util/Map;

    return-void
.end method

.method private getAndIncrementNextKey()J
    .locals 10

    iget-object v0, p0, Lorg/h2/mvstore/StreamStore;->nextKey:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iget-object v2, p0, Lorg/h2/mvstore/StreamStore;->map:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    monitor-enter p0

    const-wide v2, 0x7fffffffffffffffL

    :goto_0
    const-wide/16 v4, 0x1

    cmp-long v6, v0, v2

    if-gez v6, :cond_2

    add-long v6, v0, v2

    const/4 v8, 0x1

    ushr-long/2addr v6, v8

    :try_start_0
    iget-object v8, p0, Lorg/h2/mvstore/StreamStore;->map:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    add-long/2addr v6, v4

    move-wide v0, v6

    goto :goto_0

    :cond_1
    move-wide v2, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/h2/mvstore/StreamStore;->nextKey:Ljava/util/concurrent/atomic/AtomicLong;

    add-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    monitor-exit p0

    return-wide v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private put(Ljava/io/ByteArrayOutputStream;Ljava/io/InputStream;I)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    if-lez p3, :cond_2

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :cond_0
    add-int/lit8 v2, p3, -0x1

    invoke-direct {p0, v1, p2, v2}, Lorg/h2/mvstore/StreamStore;->put(Ljava/io/ByteArrayOutputStream;Ljava/io/InputStream;I)Z

    move-result v2

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    iget v4, p0, Lorg/h2/mvstore/StreamStore;->maxBlockSize:I

    div-int/lit8 v4, v4, 0x2

    if-le v3, v4, :cond_1

    invoke-direct {p0, v1}, Lorg/h2/mvstore/StreamStore;->putIndirectId(Ljava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    return v2

    :cond_1
    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    return v0

    :cond_2
    iget-object p3, p0, Lorg/h2/mvstore/StreamStore;->nextBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    if-nez p3, :cond_3

    iget p3, p0, Lorg/h2/mvstore/StreamStore;->maxBlockSize:I

    new-array p3, p3, [B

    :cond_3
    invoke-static {p2, p3}, Lorg/h2/mvstore/StreamStore;->read(Ljava/io/InputStream;[B)[B

    move-result-object p2

    if-eq p2, p3, :cond_4

    iget-object v1, p0, Lorg/h2/mvstore/StreamStore;->nextBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_4
    array-length p3, p2

    if-nez p3, :cond_5

    return v0

    :cond_5
    iget v1, p0, Lorg/h2/mvstore/StreamStore;->maxBlockSize:I

    const/4 v2, 0x0

    if-ge p3, v1, :cond_6

    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Lorg/h2/mvstore/StreamStore;->minBlockSize:I

    if-ge p3, v3, :cond_7

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {p1, p3}, Lorg/h2/mvstore/DataUtils;->writeVarInt(Ljava/io/OutputStream;I)V

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    :cond_7
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {p1, p3}, Lorg/h2/mvstore/DataUtils;->writeVarInt(Ljava/io/OutputStream;I)V

    invoke-direct {p0, p2}, Lorg/h2/mvstore/StreamStore;->writeBlock([B)J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lorg/h2/mvstore/DataUtils;->writeVarLong(Ljava/io/OutputStream;J)V

    :goto_1
    return v1
.end method

.method private putIndirectId(Ljava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;
    .locals 3

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/StreamStore;->length([B)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/h2/mvstore/DataUtils;->writeVarLong(Ljava/io/OutputStream;J)V

    invoke-direct {p0, p1}, Lorg/h2/mvstore/StreamStore;->writeBlock([B)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lorg/h2/mvstore/DataUtils;->writeVarLong(Ljava/io/OutputStream;J)V

    return-object v0
.end method

.method private static read(Ljava/io/InputStream;[B)[B
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lez v0, :cond_1

    :try_start_0
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-gez v2, :cond_0

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/2addr v1, v2

    sub-int/2addr v0, v2

    goto :goto_0

    :goto_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    return-object p1
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    const-string v5, " len="

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const-string v3, "error"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v3

    invoke-static {p0}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    add-long/2addr v6, v1

    invoke-static {p0}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    const-string v4, "indirect block "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-wide v1, v6

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v1, v6

    invoke-static {p0}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    const-string v4, "block "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const-string v4, "data len="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    int-to-long v3, v3

    add-long/2addr v1, v3

    :goto_1
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string p0, "length="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private writeBlock([B)J
    .locals 4

    invoke-direct {p0}, Lorg/h2/mvstore/StreamStore;->getAndIncrementNextKey()J

    move-result-wide v0

    iget-object v2, p0, Lorg/h2/mvstore/StreamStore;->map:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length p1, p1

    invoke-virtual {p0, p1}, Lorg/h2/mvstore/StreamStore;->onStore(I)V

    return-wide v0
.end method


# virtual methods
.method public get([B)Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lorg/h2/mvstore/StreamStore$Stream;

    invoke-direct {v0, p0, p1}, Lorg/h2/mvstore/StreamStore$Stream;-><init>(Lorg/h2/mvstore/StreamStore;[B)V

    return-object v0
.end method

.method public getBlock(J)[B
    .locals 2

    iget-object v0, p0, Lorg/h2/mvstore/StreamStore;->map:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const/16 p1, 0x32

    const-string v0, "Block {0} not found"

    invoke-static {p1, v0, p2}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/mvstore/StreamStore;->map:Ljava/util/Map;

    return-object v0
.end method

.method public getMaxBlockKey([B)J
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-wide/16 v2, -0x1

    .line 7
    .line 8
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    if-eqz v4, :cond_4

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-eqz v4, :cond_3

    .line 19
    .line 20
    if-eq v4, v0, :cond_2

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    if-ne v4, v2, :cond_1

    .line 24
    .line 25
    invoke-static {v1}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    iget-object v4, p0, Lorg/h2/mvstore/StreamStore;->map:Ljava/util/Map;

    .line 33
    .line 34
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, [B

    .line 43
    .line 44
    invoke-virtual {p0, v4}, Lorg/h2/mvstore/StreamStore;->getMaxBlockKey([B)J

    .line 45
    .line 46
    .line 47
    move-result-wide v4

    .line 48
    const-wide/16 v6, 0x0

    .line 49
    .line 50
    cmp-long v8, v4, v6

    .line 51
    .line 52
    if-ltz v8, :cond_0

    .line 53
    .line 54
    :goto_1
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 55
    .line 56
    .line 57
    move-result-wide v2

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    new-array v0, v0, [Ljava/lang/Object;

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    aput-object p1, v0, v1

    .line 67
    .line 68
    const-string p1, "Unsupported id {0}"

    .line 69
    .line 70
    invoke-static {p1, v0}, Lorg/h2/mvstore/DataUtils;->newIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    throw p1

    .line 75
    :cond_2
    invoke-static {v1}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    .line 76
    .line 77
    .line 78
    invoke-static {v1}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    .line 79
    .line 80
    .line 81
    move-result-wide v4

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    invoke-static {v1}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    invoke-static {v1, v4}, LA/g;->B(Ljava/nio/ByteBuffer;I)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    return-wide v2
.end method

.method public getMaxBlockSize()J
    .locals 2

    iget v0, p0, Lorg/h2/mvstore/StreamStore;->maxBlockSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getMinBlockSize()I
    .locals 1

    iget v0, p0, Lorg/h2/mvstore/StreamStore;->minBlockSize:I

    return v0
.end method

.method public getNextKey()J
    .locals 2

    iget-object v0, p0, Lorg/h2/mvstore/StreamStore;->nextKey:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public isInPlace([B)Z
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    :cond_0
    invoke-static {p1}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {p1, v0}, LA/g;->B(Ljava/nio/ByteBuffer;I)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p1, 0x1

    .line 28
    return p1
.end method

.method public length([B)J
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    :goto_0
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    if-eqz v4, :cond_3

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-eqz v4, :cond_2

    .line 19
    .line 20
    if-eq v4, v0, :cond_1

    .line 21
    .line 22
    const/4 v5, 0x2

    .line 23
    if-ne v4, v5, :cond_0

    .line 24
    .line 25
    invoke-static {v1}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v4

    .line 29
    add-long/2addr v2, v4

    .line 30
    :goto_1
    invoke-static {v1}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    new-array v0, v0, [Ljava/lang/Object;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    aput-object p1, v0, v1

    .line 42
    .line 43
    const-string p1, "Unsupported id {0}"

    .line 44
    .line 45
    invoke-static {p1, v0}, Lorg/h2/mvstore/DataUtils;->newIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    throw p1

    .line 50
    :cond_1
    invoke-static {v1}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    int-to-long v4, v4

    .line 55
    add-long/2addr v2, v4

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    invoke-static {v1}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    invoke-static {v1, v4}, LA/g;->B(Ljava/nio/ByteBuffer;I)V

    .line 62
    .line 63
    .line 64
    int-to-long v4, v4

    .line 65
    add-long/2addr v2, v4

    .line 66
    goto :goto_0

    .line 67
    :cond_3
    return-wide v2
.end method

.method public onStore(I)V
    .locals 0

    return-void
.end method

.method public put(Ljava/io/InputStream;)[B
    .locals 4

    .line 2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    :cond_0
    :goto_0
    :try_start_0
    invoke-direct {p0, v0, p1, v1}, Lorg/h2/mvstore/StreamStore;->put(Ljava/io/ByteArrayOutputStream;Ljava/io/InputStream;I)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    iget v1, p0, Lorg/h2/mvstore/StreamStore;->minBlockSize:I

    mul-int/lit8 v1, v1, 0x2

    if-le p1, v1, :cond_1

    invoke-direct {p0, v0}, Lorg/h2/mvstore/StreamStore;->putIndirectId(Ljava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    iget v3, p0, Lorg/h2/mvstore/StreamStore;->maxBlockSize:I

    div-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_0

    invoke-direct {p0, v0}, Lorg/h2/mvstore/StreamStore;->putIndirectId(Ljava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/mvstore/StreamStore;->remove([B)V

    throw p1
.end method

.method public remove([B)V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    :goto_0
    invoke-virtual {v1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_3

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    if-eq v2, v0, :cond_1

    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    if-ne v2, v3, :cond_0

    .line 22
    .line 23
    invoke-static {v1}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    iget-object v4, p0, Lorg/h2/mvstore/StreamStore;->map:Ljava/util/Map;

    .line 31
    .line 32
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, [B

    .line 41
    .line 42
    invoke-virtual {p0, v4}, Lorg/h2/mvstore/StreamStore;->remove([B)V

    .line 43
    .line 44
    .line 45
    :goto_1
    iget-object v4, p0, Lorg/h2/mvstore/StreamStore;->map:Ljava/util/Map;

    .line 46
    .line 47
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    new-array v0, v0, [Ljava/lang/Object;

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    aput-object p1, v0, v1

    .line 63
    .line 64
    const-string p1, "Unsupported id {0}"

    .line 65
    .line 66
    invoke-static {p1, v0}, Lorg/h2/mvstore/DataUtils;->newIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    throw p1

    .line 71
    :cond_1
    invoke-static {v1}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    .line 72
    .line 73
    .line 74
    invoke-static {v1}, Lorg/h2/mvstore/DataUtils;->readVarLong(Ljava/nio/ByteBuffer;)J

    .line 75
    .line 76
    .line 77
    move-result-wide v2

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    invoke-static {v1}, Lorg/h2/mvstore/DataUtils;->readVarInt(Ljava/nio/ByteBuffer;)I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    invoke-static {v1, v2}, LA/g;->B(Ljava/nio/ByteBuffer;I)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    return-void
.end method

.method public setMaxBlockSize(I)V
    .locals 0

    iput p1, p0, Lorg/h2/mvstore/StreamStore;->maxBlockSize:I

    return-void
.end method

.method public setMinBlockSize(I)V
    .locals 0

    iput p1, p0, Lorg/h2/mvstore/StreamStore;->minBlockSize:I

    return-void
.end method

.method public setNextKey(J)V
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/StreamStore;->nextKey:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method
