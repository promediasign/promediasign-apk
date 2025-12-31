.class public Lorg/h2/util/CacheLRU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/util/Cache;


# static fields
.field static final TYPE_NAME:Ljava/lang/String; = "LRU"


# instance fields
.field private final fifo:Z

.field private final head:Lorg/h2/util/CacheObject;

.field private final len:I

.field private final mask:I

.field private maxMemory:I

.field private memory:I

.field private recordCount:I

.field private values:[Lorg/h2/util/CacheObject;

.field private final writer:Lorg/h2/util/CacheWriter;


# direct methods
.method public constructor <init>(Lorg/h2/util/CacheWriter;IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/h2/util/CacheHead;

    invoke-direct {v0}, Lorg/h2/util/CacheHead;-><init>()V

    iput-object v0, p0, Lorg/h2/util/CacheLRU;->head:Lorg/h2/util/CacheObject;

    iput-object p1, p0, Lorg/h2/util/CacheLRU;->writer:Lorg/h2/util/CacheWriter;

    iput-boolean p3, p0, Lorg/h2/util/CacheLRU;->fifo:Z

    invoke-virtual {p0, p2}, Lorg/h2/util/CacheLRU;->setMaxMemory(I)V

    iget p1, p0, Lorg/h2/util/CacheLRU;->maxMemory:I

    div-int/lit8 p1, p1, 0x40

    invoke-static {p1}, Lorg/h2/util/MathUtils;->nextPowerOf2(I)I

    move-result p1

    iput p1, p0, Lorg/h2/util/CacheLRU;->len:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/h2/util/CacheLRU;->mask:I

    invoke-virtual {p0}, Lorg/h2/util/CacheLRU;->clear()V

    return-void
.end method

.method private addToFront(Lorg/h2/util/CacheObject;)V
    .locals 2

    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/util/CacheLRU;->head:Lorg/h2/util/CacheObject;

    if-ne p1, v0, :cond_0

    const-string v0, "try to move head"

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lorg/h2/util/CacheLRU;->head:Lorg/h2/util/CacheObject;

    iput-object v0, p1, Lorg/h2/util/CacheObject;->cacheNext:Lorg/h2/util/CacheObject;

    iget-object v1, v0, Lorg/h2/util/CacheObject;->cachePrevious:Lorg/h2/util/CacheObject;

    iput-object v1, p1, Lorg/h2/util/CacheObject;->cachePrevious:Lorg/h2/util/CacheObject;

    iput-object p1, v1, Lorg/h2/util/CacheObject;->cacheNext:Lorg/h2/util/CacheObject;

    iput-object p1, v0, Lorg/h2/util/CacheObject;->cachePrevious:Lorg/h2/util/CacheObject;

    return-void
.end method

.method public static getCache(Lorg/h2/util/CacheWriter;Ljava/lang/String;I)Lorg/h2/util/Cache;
    .locals 2

    const-string v0, "SOFT_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/h2/util/SoftHashMap;

    invoke-direct {v0}, Lorg/h2/util/SoftHashMap;-><init>()V

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "LRU"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Lorg/h2/util/CacheLRU;

    const/4 v1, 0x0

    invoke-direct {p1, p0, p2, v1}, Lorg/h2/util/CacheLRU;-><init>(Lorg/h2/util/CacheWriter;IZ)V

    goto :goto_1

    :cond_1
    const-string v1, "TQ"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p1, Lorg/h2/util/CacheTQ;

    invoke-direct {p1, p0, p2}, Lorg/h2/util/CacheTQ;-><init>(Lorg/h2/util/CacheWriter;I)V

    :goto_1
    if-eqz v0, :cond_2

    new-instance p0, Lorg/h2/util/CacheSecondLevel;

    invoke-direct {p0, p1, v0}, Lorg/h2/util/CacheSecondLevel;-><init>(Lorg/h2/util/Cache;Ljava/util/Map;)V

    move-object p1, p0

    :cond_2
    return-object p1

    :cond_3
    const-string p0, "CACHE_TYPE"

    invoke-static {p0, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private removeFromLinkedList(Lorg/h2/util/CacheObject;)V
    .locals 2

    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/util/CacheLRU;->head:Lorg/h2/util/CacheObject;

    if-ne p1, v0, :cond_0

    const-string v0, "try to remove head"

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p1, Lorg/h2/util/CacheObject;->cachePrevious:Lorg/h2/util/CacheObject;

    iget-object v1, p1, Lorg/h2/util/CacheObject;->cacheNext:Lorg/h2/util/CacheObject;

    iput-object v1, v0, Lorg/h2/util/CacheObject;->cacheNext:Lorg/h2/util/CacheObject;

    iget-object v1, p1, Lorg/h2/util/CacheObject;->cacheNext:Lorg/h2/util/CacheObject;

    iput-object v0, v1, Lorg/h2/util/CacheObject;->cachePrevious:Lorg/h2/util/CacheObject;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/h2/util/CacheObject;->cacheNext:Lorg/h2/util/CacheObject;

    iput-object v0, p1, Lorg/h2/util/CacheObject;->cachePrevious:Lorg/h2/util/CacheObject;

    return-void
.end method

.method private removeOld()V
    .locals 10

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lorg/h2/util/CacheLRU;->memory:I

    iget v2, p0, Lorg/h2/util/CacheLRU;->recordCount:I

    iget-object v3, p0, Lorg/h2/util/CacheLRU;->head:Lorg/h2/util/CacheObject;

    iget-object v3, v3, Lorg/h2/util/CacheObject;->cacheNext:Lorg/h2/util/CacheObject;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/16 v7, 0x10

    if-gt v2, v7, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_1

    iget v7, p0, Lorg/h2/util/CacheLRU;->maxMemory:I

    if-gt v1, v7, :cond_2

    goto :goto_1

    :cond_1
    mul-int/lit8 v7, v1, 0x4

    iget v8, p0, Lorg/h2/util/CacheLRU;->maxMemory:I

    mul-int/lit8 v8, v8, 0x3

    if-gt v7, v8, :cond_2

    goto :goto_1

    :cond_2
    iget-object v7, v3, Lorg/h2/util/CacheObject;->cacheNext:Lorg/h2/util/CacheObject;

    const/4 v8, 0x1

    add-int/2addr v5, v8

    iget v9, p0, Lorg/h2/util/CacheLRU;->recordCount:I

    if-lt v5, v9, :cond_9

    if-nez v6, :cond_3

    iget-object v5, p0, Lorg/h2/util/CacheLRU;->writer:Lorg/h2/util/CacheWriter;

    invoke-interface {v5}, Lorg/h2/util/CacheWriter;->flushLog()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto/16 :goto_6

    :cond_3
    iget-object v1, p0, Lorg/h2/util/CacheLRU;->writer:Lorg/h2/util/CacheWriter;

    invoke-interface {v1}, Lorg/h2/util/CacheWriter;->getTrace()Lorg/h2/message/Trace;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cannot remove records, cache size too small? records:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/h2/util/CacheLRU;->recordCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " memory:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/h2/util/CacheLRU;->memory:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/h2/message/Trace;->info(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    if-nez v6, :cond_4

    iget-object v1, p0, Lorg/h2/util/CacheLRU;->writer:Lorg/h2/util/CacheWriter;

    invoke-interface {v1}, Lorg/h2/util/CacheWriter;->flushLog()V

    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget v1, p0, Lorg/h2/util/CacheLRU;->maxMemory:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const v3, 0x7fffffff

    :try_start_0
    iput v3, p0, Lorg/h2/util/CacheLRU;->maxMemory:I

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/util/CacheObject;

    iget-object v6, p0, Lorg/h2/util/CacheLRU;->writer:Lorg/h2/util/CacheWriter;

    invoke-interface {v6, v5}, Lorg/h2/util/CacheWriter;->writeBack(Lorg/h2/util/CacheObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_5
    iput v1, p0, Lorg/h2/util/CacheLRU;->maxMemory:I

    :goto_3
    if-ge v4, v2, :cond_8

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/util/CacheObject;

    invoke-virtual {v1}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/h2/util/CacheLRU;->remove(I)Z

    sget-boolean v3, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v3, :cond_7

    iget-object v1, v1, Lorg/h2/util/CacheObject;->cacheNext:Lorg/h2/util/CacheObject;

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_7
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :goto_5
    iput v1, p0, Lorg/h2/util/CacheLRU;->maxMemory:I

    throw v0

    :cond_8
    return-void

    :cond_9
    :goto_6
    sget-boolean v8, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v8, :cond_a

    iget-object v8, p0, Lorg/h2/util/CacheLRU;->head:Lorg/h2/util/CacheObject;

    if-ne v3, v8, :cond_a

    const-string v8, "try to remove head"

    invoke-static {v8}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_a
    invoke-virtual {v3}, Lorg/h2/util/CacheObject;->canRemove()Z

    move-result v8

    if-nez v8, :cond_b

    invoke-direct {p0, v3}, Lorg/h2/util/CacheLRU;->removeFromLinkedList(Lorg/h2/util/CacheObject;)V

    invoke-direct {p0, v3}, Lorg/h2/util/CacheLRU;->addToFront(Lorg/h2/util/CacheObject;)V

    :goto_7
    move-object v3, v7

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3}, Lorg/h2/util/CacheObject;->getMemory()I

    move-result v8

    sub-int/2addr v1, v8

    invoke-virtual {v3}, Lorg/h2/util/CacheObject;->isChanged()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    invoke-virtual {v3}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/h2/util/CacheLRU;->remove(I)Z

    goto :goto_7
.end method

.method private removeOldIfRequired()V
    .locals 2

    iget v0, p0, Lorg/h2/util/CacheLRU;->memory:I

    iget v1, p0, Lorg/h2/util/CacheLRU;->maxMemory:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/h2/util/CacheLRU;->removeOld()V

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lorg/h2/util/CacheLRU;->head:Lorg/h2/util/CacheObject;

    iput-object v0, v0, Lorg/h2/util/CacheObject;->cachePrevious:Lorg/h2/util/CacheObject;

    iput-object v0, v0, Lorg/h2/util/CacheObject;->cacheNext:Lorg/h2/util/CacheObject;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/util/CacheLRU;->values:[Lorg/h2/util/CacheObject;

    iget v0, p0, Lorg/h2/util/CacheLRU;->len:I

    new-array v1, v0, [Lorg/h2/util/CacheObject;

    iput-object v1, p0, Lorg/h2/util/CacheLRU;->values:[Lorg/h2/util/CacheObject;

    const/4 v1, 0x0

    iput v1, p0, Lorg/h2/util/CacheLRU;->recordCount:I

    mul-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/h2/util/CacheLRU;->memory:I

    return-void
.end method

.method public find(I)Lorg/h2/util/CacheObject;
    .locals 2

    iget-object v0, p0, Lorg/h2/util/CacheLRU;->values:[Lorg/h2/util/CacheObject;

    iget v1, p0, Lorg/h2/util/CacheLRU;->mask:I

    and-int/2addr v1, p1

    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v1

    if-eq v1, p1, :cond_0

    iget-object v0, v0, Lorg/h2/util/CacheObject;->cacheChained:Lorg/h2/util/CacheObject;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public get(I)Lorg/h2/util/CacheObject;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/h2/util/CacheLRU;->find(I)Lorg/h2/util/CacheObject;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lorg/h2/util/CacheLRU;->fifo:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/h2/util/CacheLRU;->removeFromLinkedList(Lorg/h2/util/CacheObject;)V

    invoke-direct {p0, p1}, Lorg/h2/util/CacheLRU;->addToFront(Lorg/h2/util/CacheObject;)V

    :cond_0
    return-object p1
.end method

.method public getAllChanged()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/util/CacheObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/util/CacheLRU;->head:Lorg/h2/util/CacheObject;

    :cond_0
    :goto_0
    iget-object v1, v1, Lorg/h2/util/CacheObject;->cacheNext:Lorg/h2/util/CacheObject;

    iget-object v2, p0, Lorg/h2/util/CacheLRU;->head:Lorg/h2/util/CacheObject;

    if-eq v1, v2, :cond_1

    invoke-virtual {v1}, Lorg/h2/util/CacheObject;->isChanged()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getMaxMemory()I
    .locals 4

    iget v0, p0, Lorg/h2/util/CacheLRU;->maxMemory:I

    int-to-long v0, v0

    const-wide/16 v2, 0x4

    mul-long v0, v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public getMemory()I
    .locals 4

    iget v0, p0, Lorg/h2/util/CacheLRU;->memory:I

    int-to-long v0, v0

    const-wide/16 v2, 0x4

    mul-long v0, v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public put(Lorg/h2/util/CacheObject;)V
    .locals 3

    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/h2/util/CacheLRU;->find(I)Lorg/h2/util/CacheObject;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "try to add a record twice at pos "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_0
    invoke-virtual {p1}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v0

    iget v1, p0, Lorg/h2/util/CacheLRU;->mask:I

    and-int/2addr v0, v1

    iget-object v1, p0, Lorg/h2/util/CacheLRU;->values:[Lorg/h2/util/CacheObject;

    aget-object v2, v1, v0

    iput-object v2, p1, Lorg/h2/util/CacheObject;->cacheChained:Lorg/h2/util/CacheObject;

    aput-object p1, v1, v0

    iget v0, p0, Lorg/h2/util/CacheLRU;->recordCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/h2/util/CacheLRU;->recordCount:I

    iget v0, p0, Lorg/h2/util/CacheLRU;->memory:I

    invoke-virtual {p1}, Lorg/h2/util/CacheObject;->getMemory()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lorg/h2/util/CacheLRU;->memory:I

    invoke-direct {p0, p1}, Lorg/h2/util/CacheLRU;->addToFront(Lorg/h2/util/CacheObject;)V

    invoke-direct {p0}, Lorg/h2/util/CacheLRU;->removeOldIfRequired()V

    return-void
.end method

.method public remove(I)Z
    .locals 4

    iget v0, p0, Lorg/h2/util/CacheLRU;->mask:I

    and-int/2addr v0, p1

    iget-object v1, p0, Lorg/h2/util/CacheLRU;->values:[Lorg/h2/util/CacheObject;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v1}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v3

    if-ne v3, p1, :cond_1

    iget-object v2, p0, Lorg/h2/util/CacheLRU;->values:[Lorg/h2/util/CacheObject;

    iget-object v3, v1, Lorg/h2/util/CacheObject;->cacheChained:Lorg/h2/util/CacheObject;

    aput-object v3, v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, v1, Lorg/h2/util/CacheObject;->cacheChained:Lorg/h2/util/CacheObject;

    if-nez v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {v0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v3

    if-ne v3, p1, :cond_4

    iget-object v2, v0, Lorg/h2/util/CacheObject;->cacheChained:Lorg/h2/util/CacheObject;

    iput-object v2, v1, Lorg/h2/util/CacheObject;->cacheChained:Lorg/h2/util/CacheObject;

    move-object v1, v0

    :goto_1
    iget v0, p0, Lorg/h2/util/CacheLRU;->recordCount:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/h2/util/CacheLRU;->recordCount:I

    iget v0, p0, Lorg/h2/util/CacheLRU;->memory:I

    invoke-virtual {v1}, Lorg/h2/util/CacheObject;->getMemory()I

    move-result v3

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/h2/util/CacheLRU;->memory:I

    invoke-direct {p0, v1}, Lorg/h2/util/CacheLRU;->removeFromLinkedList(Lorg/h2/util/CacheObject;)V

    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, v1, Lorg/h2/util/CacheObject;->cacheChained:Lorg/h2/util/CacheObject;

    invoke-virtual {p0, p1}, Lorg/h2/util/CacheLRU;->find(I)Lorg/h2/util/CacheObject;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "not removed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_3
    return v2

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method

.method public setMaxMemory(I)V
    .locals 4

    int-to-long v0, p1

    const-wide/16 v2, 0x400

    mul-long v0, v0, v2

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Lorg/h2/util/CacheLRU;->maxMemory:I

    invoke-direct {p0}, Lorg/h2/util/CacheLRU;->removeOldIfRequired()V

    return-void
.end method

.method public update(ILorg/h2/util/CacheObject;)Lorg/h2/util/CacheObject;
    .locals 3

    invoke-virtual {p0, p1}, Lorg/h2/util/CacheLRU;->find(I)Lorg/h2/util/CacheObject;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/h2/util/CacheLRU;->put(Lorg/h2/util/CacheObject;)V

    goto :goto_0

    :cond_0
    sget-boolean v1, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v1, :cond_1

    if-eq v0, p2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "old!=record pos:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " old:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " new:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_1
    iget-boolean p1, p0, Lorg/h2/util/CacheLRU;->fifo:Z

    if-nez p1, :cond_2

    invoke-direct {p0, p2}, Lorg/h2/util/CacheLRU;->removeFromLinkedList(Lorg/h2/util/CacheObject;)V

    invoke-direct {p0, p2}, Lorg/h2/util/CacheLRU;->addToFront(Lorg/h2/util/CacheObject;)V

    :cond_2
    :goto_0
    return-object v0
.end method
