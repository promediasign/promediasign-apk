.class public Lorg/h2/store/PageOutputStream;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final atEnd:Z

.field private data:Lorg/h2/store/PageStreamData;

.field private final exclude:Lorg/h2/util/BitField;

.field private logKey:I

.field private final minPageId:I

.field private needFlush:Z

.field private pageCount:I

.field private reserved:I

.field private reservedPages:Lorg/h2/util/IntArray;

.field private store:Lorg/h2/store/PageStore;

.field private final trace:Lorg/h2/message/Trace;

.field private trunk:Lorg/h2/store/PageStreamTrunk;

.field private trunkIndex:I

.field private trunkNext:I

.field private trunkPageId:I

.field private writing:Z


# direct methods
.method public constructor <init>(Lorg/h2/store/PageStore;ILorg/h2/util/BitField;IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/h2/util/IntArray;

    invoke-direct {v0}, Lorg/h2/util/IntArray;-><init>()V

    iput-object v0, p0, Lorg/h2/store/PageOutputStream;->reservedPages:Lorg/h2/util/IntArray;

    invoke-virtual {p1}, Lorg/h2/store/PageStore;->getTrace()Lorg/h2/message/Trace;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/PageOutputStream;->trace:Lorg/h2/message/Trace;

    iput-object p1, p0, Lorg/h2/store/PageOutputStream;->store:Lorg/h2/store/PageStore;

    iput p2, p0, Lorg/h2/store/PageOutputStream;->trunkPageId:I

    iput-object p3, p0, Lorg/h2/store/PageOutputStream;->exclude:Lorg/h2/util/BitField;

    add-int/lit8 p4, p4, -0x1

    iput p4, p0, Lorg/h2/store/PageOutputStream;->logKey:I

    iput-boolean p5, p0, Lorg/h2/store/PageOutputStream;->atEnd:Z

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput p2, p0, Lorg/h2/store/PageOutputStream;->minPageId:I

    return-void
.end method

.method private initNextData()V
    .locals 8

    iget-object v0, p0, Lorg/h2/store/PageOutputStream;->trunk:Lorg/h2/store/PageStreamTrunk;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/h2/store/PageOutputStream;->trunkIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/h2/store/PageOutputStream;->trunkIndex:I

    invoke-virtual {v0, v2}, Lorg/h2/store/PageStreamTrunk;->getPageData(I)I

    move-result v0

    :goto_0
    if-ne v0, v1, :cond_3

    iget v3, p0, Lorg/h2/store/PageOutputStream;->trunkPageId:I

    iget v0, p0, Lorg/h2/store/PageOutputStream;->trunkNext:I

    if-eqz v0, :cond_1

    iput v0, p0, Lorg/h2/store/PageOutputStream;->trunkPageId:I

    :cond_1
    iget-object v0, p0, Lorg/h2/store/PageOutputStream;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v0

    invoke-static {v0}, Lorg/h2/store/PageStreamTrunk;->getPagesAddressed(I)I

    move-result v0

    new-array v7, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    iget-object v4, p0, Lorg/h2/store/PageOutputStream;->reservedPages:Lorg/h2/util/IntArray;

    invoke-virtual {v4, v2}, Lorg/h2/util/IntArray;->get(I)I

    move-result v4

    aput v4, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/h2/store/PageOutputStream;->reservedPages:Lorg/h2/util/IntArray;

    invoke-virtual {v2, v0}, Lorg/h2/util/IntArray;->get(I)I

    move-result v5

    iput v5, p0, Lorg/h2/store/PageOutputStream;->trunkNext:I

    iget v2, p0, Lorg/h2/store/PageOutputStream;->logKey:I

    add-int/lit8 v6, v2, 0x1

    iput v6, p0, Lorg/h2/store/PageOutputStream;->logKey:I

    iget-object v2, p0, Lorg/h2/store/PageOutputStream;->store:Lorg/h2/store/PageStore;

    iget v4, p0, Lorg/h2/store/PageOutputStream;->trunkPageId:I

    invoke-static/range {v2 .. v7}, Lorg/h2/store/PageStreamTrunk;->create(Lorg/h2/store/PageStore;IIII[I)Lorg/h2/store/PageStreamTrunk;

    move-result-object v2

    iput-object v2, p0, Lorg/h2/store/PageOutputStream;->trunk:Lorg/h2/store/PageStreamTrunk;

    iput v1, p0, Lorg/h2/store/PageOutputStream;->trunkIndex:I

    iget v3, p0, Lorg/h2/store/PageOutputStream;->pageCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/h2/store/PageOutputStream;->pageCount:I

    invoke-virtual {v2}, Lorg/h2/store/PageStreamTrunk;->write()V

    iget-object v2, p0, Lorg/h2/store/PageOutputStream;->reservedPages:Lorg/h2/util/IntArray;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v1, v0}, Lorg/h2/util/IntArray;->removeRange(II)V

    iget-object v0, p0, Lorg/h2/store/PageOutputStream;->trunk:Lorg/h2/store/PageStreamTrunk;

    iget v1, p0, Lorg/h2/store/PageOutputStream;->trunkIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/h2/store/PageOutputStream;->trunkIndex:I

    invoke-virtual {v0, v1}, Lorg/h2/store/PageStreamTrunk;->getPageData(I)I

    move-result v0

    :cond_3
    iget-object v1, p0, Lorg/h2/store/PageOutputStream;->store:Lorg/h2/store/PageStore;

    iget-object v2, p0, Lorg/h2/store/PageOutputStream;->trunk:Lorg/h2/store/PageStreamTrunk;

    invoke-virtual {v2}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v2

    iget v3, p0, Lorg/h2/store/PageOutputStream;->logKey:I

    invoke-static {v1, v0, v2, v3}, Lorg/h2/store/PageStreamData;->create(Lorg/h2/store/PageStore;III)Lorg/h2/store/PageStreamData;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/PageOutputStream;->data:Lorg/h2/store/PageStreamData;

    iget v1, p0, Lorg/h2/store/PageOutputStream;->pageCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/h2/store/PageOutputStream;->pageCount:I

    invoke-virtual {v0}, Lorg/h2/store/PageStreamData;->initWrite()V

    return-void
.end method

.method private storePage()V
    .locals 3

    iget-object v0, p0, Lorg/h2/store/PageOutputStream;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/store/PageOutputStream;->trace:Lorg/h2/message/Trace;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pageOut.storePage "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/h2/store/PageOutputStream;->data:Lorg/h2/store/PageStreamData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/h2/store/PageOutputStream;->data:Lorg/h2/store/PageStreamData;

    invoke-virtual {v0}, Lorg/h2/store/PageStreamData;->write()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/store/PageOutputStream;->store:Lorg/h2/store/PageStore;

    return-void
.end method

.method public fillPage()V
    .locals 3

    iget-object v0, p0, Lorg/h2/store/PageOutputStream;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/store/PageOutputStream;->trace:Lorg/h2/message/Trace;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pageOut.storePage fill "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/h2/store/PageOutputStream;->data:Lorg/h2/store/PageStreamData;

    invoke-virtual {v2}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/h2/store/PageOutputStream;->data:Lorg/h2/store/PageStreamData;

    invoke-virtual {v0}, Lorg/h2/store/PageStreamData;->getRemaining()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/h2/store/PageOutputStream;->reserve(I)V

    iget v0, p0, Lorg/h2/store/PageOutputStream;->reserved:I

    iget-object v1, p0, Lorg/h2/store/PageOutputStream;->data:Lorg/h2/store/PageStreamData;

    invoke-virtual {v1}, Lorg/h2/store/PageStreamData;->getRemaining()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/h2/store/PageOutputStream;->reserved:I

    iget-object v0, p0, Lorg/h2/store/PageOutputStream;->data:Lorg/h2/store/PageStreamData;

    invoke-virtual {v0}, Lorg/h2/store/PageStreamData;->write()V

    invoke-direct {p0}, Lorg/h2/store/PageOutputStream;->initNextData()V

    return-void
.end method

.method public flush()V
    .locals 1

    iget-boolean v0, p0, Lorg/h2/store/PageOutputStream;->needFlush:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/h2/store/PageOutputStream;->storePage()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/h2/store/PageOutputStream;->needFlush:Z

    :cond_0
    return-void
.end method

.method public free(Lorg/h2/store/PageStreamTrunk;)V
    .locals 2

    iget v0, p0, Lorg/h2/store/PageOutputStream;->pageCount:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/h2/store/PageStreamTrunk;->free(I)I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/h2/store/PageOutputStream;->pageCount:I

    return-void
.end method

.method public freeReserved()V
    .locals 6

    iget-object v0, p0, Lorg/h2/store/PageOutputStream;->reservedPages:Lorg/h2/util/IntArray;

    invoke-virtual {v0}, Lorg/h2/util/IntArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/h2/store/PageOutputStream;->reservedPages:Lorg/h2/util/IntArray;

    invoke-virtual {v0}, Lorg/h2/util/IntArray;->size()I

    move-result v0

    new-array v1, v0, [I

    iget-object v2, p0, Lorg/h2/store/PageOutputStream;->reservedPages:Lorg/h2/util/IntArray;

    invoke-virtual {v2, v1}, Lorg/h2/util/IntArray;->toArray([I)V

    new-instance v2, Lorg/h2/util/IntArray;

    invoke-direct {v2}, Lorg/h2/util/IntArray;-><init>()V

    iput-object v2, p0, Lorg/h2/store/PageOutputStream;->reservedPages:Lorg/h2/util/IntArray;

    const/4 v2, 0x0

    iput v2, p0, Lorg/h2/store/PageOutputStream;->reserved:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget v4, v1, v3

    iget-object v5, p0, Lorg/h2/store/PageOutputStream;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v5, v4, v2}, Lorg/h2/store/PageStore;->free(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCurrentDataPageId()I
    .locals 1

    iget-object v0, p0, Lorg/h2/store/PageOutputStream;->data:Lorg/h2/store/PageStreamData;

    invoke-virtual {v0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v0

    return v0
.end method

.method public getMinPageId()I
    .locals 1

    iget v0, p0, Lorg/h2/store/PageOutputStream;->minPageId:I

    return v0
.end method

.method public getSize()J
    .locals 2

    iget v0, p0, Lorg/h2/store/PageOutputStream;->pageCount:I

    iget-object v1, p0, Lorg/h2/store/PageOutputStream;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v1}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v1

    mul-int v1, v1, v0

    int-to-long v0, v1

    return-wide v0
.end method

.method public reserve(I)V
    .locals 6

    iget v0, p0, Lorg/h2/store/PageOutputStream;->reserved:I

    if-ge v0, p1, :cond_2

    iget-object v0, p0, Lorg/h2/store/PageOutputStream;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v0

    invoke-static {v0}, Lorg/h2/store/PageStreamData;->getCapacity(I)I

    move-result v1

    invoke-static {v0}, Lorg/h2/store/PageStreamTrunk;->getPagesAddressed(I)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    add-int/lit8 v5, v0, 0x1

    add-int/2addr v3, v5

    mul-int v5, v0, v1

    add-int/2addr v4, v5

    if-lt v4, p1, :cond_0

    iget-boolean p1, p0, Lorg/h2/store/PageOutputStream;->atEnd:Z

    if-eqz p1, :cond_1

    iget v2, p0, Lorg/h2/store/PageOutputStream;->trunkPageId:I

    :cond_1
    iget-object p1, p0, Lorg/h2/store/PageOutputStream;->store:Lorg/h2/store/PageStore;

    iget-object v0, p0, Lorg/h2/store/PageOutputStream;->reservedPages:Lorg/h2/util/IntArray;

    iget-object v1, p0, Lorg/h2/store/PageOutputStream;->exclude:Lorg/h2/util/BitField;

    invoke-virtual {p1, v0, v3, v1, v2}, Lorg/h2/store/PageStore;->allocatePages(Lorg/h2/util/IntArray;ILorg/h2/util/BitField;I)V

    iget p1, p0, Lorg/h2/store/PageOutputStream;->reserved:I

    add-int/2addr p1, v4

    iput p1, p0, Lorg/h2/store/PageOutputStream;->reserved:I

    iget-object p1, p0, Lorg/h2/store/PageOutputStream;->data:Lorg/h2/store/PageStreamData;

    if-nez p1, :cond_2

    invoke-direct {p0}, Lorg/h2/store/PageOutputStream;->initNextData()V

    :cond_2
    return-void
.end method

.method public write([BII)V
    .locals 4

    if-gtz p3, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/h2/store/PageOutputStream;->writing:Z

    if-eqz v0, :cond_1

    const-string v0, "writing while still writing"

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p3}, Lorg/h2/store/PageOutputStream;->reserve(I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/h2/store/PageOutputStream;->writing:Z

    :goto_0
    if-lez p3, :cond_3

    iget-object v2, p0, Lorg/h2/store/PageOutputStream;->data:Lorg/h2/store/PageStreamData;

    invoke-virtual {v2, p1, p2, p3}, Lorg/h2/store/PageStreamData;->write([BII)I

    move-result v2

    if-ge v2, p3, :cond_2

    invoke-direct {p0}, Lorg/h2/store/PageOutputStream;->storePage()V

    invoke-direct {p0}, Lorg/h2/store/PageOutputStream;->initNextData()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    iget v3, p0, Lorg/h2/store/PageOutputStream;->reserved:I

    sub-int/2addr v3, v2

    iput v3, p0, Lorg/h2/store/PageOutputStream;->reserved:I

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lorg/h2/store/PageOutputStream;->needFlush:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lorg/h2/store/PageOutputStream;->writing:Z

    return-void

    :goto_2
    iput-boolean v0, p0, Lorg/h2/store/PageOutputStream;->writing:Z

    throw p1
.end method
