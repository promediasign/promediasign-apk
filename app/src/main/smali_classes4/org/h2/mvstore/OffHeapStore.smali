.class public Lorg/h2/mvstore/OffHeapStore;
.super Lorg/h2/mvstore/FileStore;
.source "SourceFile"


# instance fields
.field private final memory:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Long;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/h2/mvstore/FileStore;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/h2/mvstore/OffHeapStore;->memory:Ljava/util/TreeMap;

    return-void
.end method

.method private writeNewEntry(JLjava/nio/ByteBuffer;)V
    .locals 5

    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget-wide v1, p0, Lorg/h2/mvstore/FileStore;->writeCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/h2/mvstore/FileStore;->writeCount:J

    iget-wide v1, p0, Lorg/h2/mvstore/FileStore;->writeBytes:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/h2/mvstore/FileStore;->writeBytes:J

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object p3, p0, Lorg/h2/mvstore/OffHeapStore;->memory:Ljava/util/TreeMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/OffHeapStore;->memory:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    return-void
.end method

.method public free(JI)V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/h2/mvstore/FileStore;->freeSpace:Lorg/h2/mvstore/FreeSpaceBitSet;

    invoke-virtual {v1, p1, p2, p3}, Lorg/h2/mvstore/FreeSpaceBitSet;->free(JI)V

    iget-object v1, p0, Lorg/h2/mvstore/OffHeapStore;->memory:Ljava/util/TreeMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-ne v1, p3, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    const-string p1, "Partial remove is not supported at position {0}"

    invoke-static {v0, p1, p2}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public getDefaultRetentionTime()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public open(Ljava/lang/String;Z[C)V
    .locals 0

    iget-object p1, p0, Lorg/h2/mvstore/OffHeapStore;->memory:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->clear()V

    return-void
.end method

.method public readFully(JI)Ljava/nio/ByteBuffer;
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/h2/mvstore/OffHeapStore;->memory:Ljava/util/TreeMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lorg/h2/mvstore/FileStore;->readCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/h2/mvstore/FileStore;->readCount:J

    iget-wide v2, p0, Lorg/h2/mvstore/FileStore;->readBytes:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/h2/mvstore/FileStore;->readBytes:J

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long/2addr p1, v1

    long-to-int p2, p1

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/2addr p3, p2

    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    const-string p1, "Could not read from position {0}"

    invoke-static {v0, p1, p2}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method

.method public sync()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/h2/mvstore/OffHeapStore;->memory:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncate(J)V
    .locals 6

    const/4 v0, 0x1

    iget-wide v1, p0, Lorg/h2/mvstore/FileStore;->writeCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/h2/mvstore/FileStore;->writeCount:J

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    iput-wide v1, p0, Lorg/h2/mvstore/FileStore;->fileSize:J

    iget-object p1, p0, Lorg/h2/mvstore/OffHeapStore;->memory:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->clear()V

    return-void

    :cond_0
    iput-wide p1, p0, Lorg/h2/mvstore/FileStore;->fileSize:J

    iget-object v1, p0, Lorg/h2/mvstore/OffHeapStore;->memory:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-gez v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/h2/mvstore/OffHeapStore;->memory:Ljava/util/TreeMap;

    invoke-virtual {v3, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    int-to-long v3, v3

    cmp-long v5, v3, p1

    if-gtz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    new-array p1, v0, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object v2, p1, p2

    const-string p2, "Could not truncate to {0}; partial truncate is not supported"

    invoke-static {v0, p2, p1}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public writeFully(JLjava/nio/ByteBuffer;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-wide v2, p0, Lorg/h2/mvstore/FileStore;->fileSize:J

    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/h2/mvstore/FileStore;->fileSize:J

    iget-object v2, p0, Lorg/h2/mvstore/OffHeapStore;->memory:Ljava/util/TreeMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lorg/h2/mvstore/OffHeapStore;->writeNewEntry(JLjava/nio/ByteBuffer;)V

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v5

    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    const-string v7, "Could not write to position {0}; partial overwrite is not supported"

    cmp-long v8, v3, p1

    if-nez v8, :cond_2

    if-ne v5, v6, :cond_1

    iget-wide p1, p0, Lorg/h2/mvstore/FileStore;->writeCount:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/h2/mvstore/FileStore;->writeCount:J

    iget-wide p1, p0, Lorg/h2/mvstore/FileStore;->writeBytes:J

    int-to-long v0, v6

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/h2/mvstore/FileStore;->writeBytes:J

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v2, p3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    invoke-static {v1, v7, p2}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1

    :cond_2
    int-to-long v5, v5

    add-long/2addr v3, v5

    cmp-long v2, v3, p1

    if-gtz v2, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lorg/h2/mvstore/OffHeapStore;->writeNewEntry(JLjava/nio/ByteBuffer;)V

    return-void

    :cond_3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    invoke-static {v1, v7, p2}, Lorg/h2/mvstore/DataUtils;->newIllegalStateException(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p1

    throw p1
.end method
