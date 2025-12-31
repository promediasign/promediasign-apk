.class public Lorg/h2/mvstore/cache/CacheLongKeyLIRS;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Config;,
        Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;,
        Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private maxMemory:J

.field private final nonResidentQueueSize:I

.field private final segmentCount:I

.field private final segmentMask:I

.field private final segmentShift:I

.field private final segments:[Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final stackMoveDistance:I


# direct methods
.method public constructor <init>(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Config;)V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v1, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Config;->maxMemory:J

    invoke-virtual {p0, v1, v2}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->setMaxMemory(J)V

    iget v1, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Config;->nonResidentQueueSize:I

    iput v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->nonResidentQueueSize:I

    iget v1, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Config;->segmentCount:I

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v3, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Config;->segmentCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v3, v4, v0

    const-string v0, "The segment count must be a power of 2, is {0}"

    invoke-static {v1, v0, v4}, Lorg/h2/mvstore/DataUtils;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget v0, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Config;->segmentCount:I

    iput v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->segmentCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->segmentMask:I

    iget p1, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Config;->stackMoveDistance:I

    iput p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->stackMoveDistance:I

    new-array p1, v0, [Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;

    iput-object p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->segments:[Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;

    invoke-virtual {p0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->clear()V

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x20

    iput p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->segmentShift:I

    return-void
.end method

.method private find(J)Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry<",
            "TV;>;"
        }
    .end annotation

    invoke-static {p1, p2}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->getHash(J)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->getSegment(I)Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->find(JI)Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    move-result-object p1

    return-object p1
.end method

.method public static getHash(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p1, p0

    ushr-int/lit8 p0, p1, 0x10

    xor-int/2addr p0, p1

    const p1, 0x45d9f3b

    mul-int p0, p0, p1

    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    mul-int p0, p0, p1

    ushr-int/lit8 p1, p0, 0x10

    xor-int/2addr p0, p1

    return p0
.end method

.method private getSegment(I)Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->segments:[Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;

    invoke-direct {p0, p1}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->getSegmentIndex(I)I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private getSegmentIndex(I)I
    .locals 1

    iget v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->segmentShift:I

    ushr-int/2addr p1, v0

    iget v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->segmentMask:I

    and-int/2addr p1, v0

    return p1
.end method

.method private resizeIfNeeded(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;I)Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment<",
            "TV;>;I)",
            "Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->getNewMapLen()I

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    iget-object v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->segments:[Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;

    aget-object v1, v1, p2

    if-ne p1, v1, :cond_1

    new-instance v1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;

    invoke-direct {v1, p1, v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;-><init>(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;I)V

    iget-object p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->segments:[Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;

    aput-object v1, p1, p2

    move-object p1, v1

    :cond_1
    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 11

    iget-wide v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->maxMemory:J

    iget v2, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->segmentCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->segmentCount:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->segments:[Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;

    new-instance v10, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;

    iget v7, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->stackMoveDistance:I

    const/16 v8, 0x8

    iget v9, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->nonResidentQueueSize:I

    move-object v4, v10

    move-wide v5, v0

    invoke-direct/range {v4 .. v9}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;-><init>(JIII)V

    aput-object v10, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public containsKey(J)Z
    .locals 2

    invoke-static {p1, p2}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->getHash(J)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->getSegment(I)Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->containsKey(JI)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized entrySet()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Long;",
            "TV;>;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->find(J)Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    move-result-object v3

    iget-object v3, v3, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public get(J)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    invoke-static {p1, p2}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->getHash(J)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->getSegment(I)Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->get(JI)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getHits()J
    .locals 7

    iget-object v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->segments:[Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;

    array-length v1, v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v5, v0, v4

    iget-wide v5, v5, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->hits:J

    add-long/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public getMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->find(J)Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    move-result-object v3

    iget-object v3, v3, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->value:Ljava/lang/Object;

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getMaxMemory()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->maxMemory:J

    return-wide v0
.end method

.method public getMemory(J)I
    .locals 2

    invoke-static {p1, p2}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->getHash(J)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->getSegment(I)Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->getMemory(JI)I

    move-result p1

    return p1
.end method

.method public getMisses()J
    .locals 7

    iget-object v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->segments:[Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    int-to-long v5, v3

    iget-wide v3, v4, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->misses:J

    add-long/2addr v5, v3

    long-to-int v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    int-to-long v0, v3

    return-wide v0
.end method

.method public getUsedMemory()J
    .locals 7

    iget-object v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->segments:[Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;

    array-length v1, v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v5, v0, v4

    iget-wide v5, v5, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->usedMemory:J

    add-long/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->segments:[Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public keys(ZZ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->segments:[Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4, p1, p2}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->keys(ZZ)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public peek(J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->find(J)Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->value:Ljava/lang/Object;

    :goto_0
    return-object p1
.end method

.method public put(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->sizeOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->put(JLjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(JLjava/lang/Object;I)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;I)TV;"
        }
    .end annotation

    .line 2
    invoke-static {p1, p2}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->getHash(J)I

    move-result v3

    invoke-direct {p0, v3}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->getSegmentIndex(I)I

    move-result v0

    iget-object v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->segments:[Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;

    aget-object v6, v1, v0

    monitor-enter v6

    :try_start_0
    invoke-direct {p0, v6, v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->resizeIfNeeded(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;I)Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;

    move-result-object v0

    move-wide v1, p1

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->put(JILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v6

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "+TV;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->put(JLjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(J)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    invoke-static {p1, p2}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->getHash(J)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->getSegmentIndex(I)I

    move-result v1

    iget-object v2, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->segments:[Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;

    aget-object v2, v2, v1

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, v2, v1}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->resizeIfNeeded(Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;I)Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->remove(JI)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v2

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setMaxMemory(J)V
    .locals 6

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    cmp-long v4, p1, v1

    if-lez v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v4, v0, [Ljava/lang/Object;

    aput-object v2, v4, v3

    const-string v2, "Max memory must be larger than 0, is {0}"

    invoke-static {v1, v2, v4}, Lorg/h2/mvstore/DataUtils;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-wide p1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->maxMemory:J

    iget-object v1, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->segments:[Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;

    if-eqz v1, :cond_1

    array-length v2, v1

    int-to-long v4, v2

    div-long/2addr p1, v4

    const-wide/16 v4, 0x1

    add-long/2addr p1, v4

    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4, p1, p2}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->setMaxMemory(J)V

    add-int/2addr v3, v0

    goto :goto_1

    :cond_1
    return-void
.end method

.method public size()I
    .locals 6

    iget-object v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->segments:[Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    iget v5, v4, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->mapSize:I

    iget v4, v4, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue2Size:I

    sub-int/2addr v5, v4

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public sizeHot()I
    .locals 7

    iget-object v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->segments:[Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    iget v5, v4, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->mapSize:I

    iget v6, v4, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queueSize:I

    sub-int/2addr v5, v6

    iget v4, v4, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue2Size:I

    sub-int/2addr v5, v4

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public sizeMapArray()I
    .locals 5

    iget-object v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->segments:[Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    iget-object v4, v4, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->entries:[Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public sizeNonResident()I
    .locals 5

    iget-object v0, p0, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->segments:[Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    iget v4, v4, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Segment;->queue2Size:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public sizeOf(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public values()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lorg/h2/mvstore/cache/CacheLongKeyLIRS;->find(J)Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;

    move-result-object v2

    iget-object v2, v2, Lorg/h2/mvstore/cache/CacheLongKeyLIRS$Entry;->value:Ljava/lang/Object;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
