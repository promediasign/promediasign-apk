.class abstract Lorg/h2/index/PageData;
.super Lorg/h2/store/Page;
.source "SourceFile"


# static fields
.field static final ROOT:I = 0x0

.field static final START_PARENT:I = 0x3

.field static final UNKNOWN_ROWCOUNT:I = -0x1


# instance fields
.field protected final data:Lorg/h2/store/Data;

.field protected entryCount:I

.field protected final index:Lorg/h2/index/PageDataIndex;

.field protected keys:[J

.field private final memoryEstimated:I

.field protected parentPageId:I

.field protected written:Z


# direct methods
.method public constructor <init>(Lorg/h2/index/PageDataIndex;ILorg/h2/store/Data;)V
    .locals 0

    invoke-direct {p0}, Lorg/h2/store/Page;-><init>()V

    iput-object p1, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    iput-object p3, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {p0, p2}, Lorg/h2/util/CacheObject;->setPos(I)V

    invoke-virtual {p1}, Lorg/h2/index/PageDataIndex;->getMemoryPerPage()I

    move-result p1

    iput p1, p0, Lorg/h2/index/PageData;->memoryEstimated:I

    return-void
.end method


# virtual methods
.method public abstract addRowTry(Lorg/h2/result/Row;)I
.end method

.method public canRemove()Z
    .locals 5

    iget-wide v0, p0, Lorg/h2/store/Page;->changeCount:J

    iget-object v2, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v2}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/store/PageStore;->getChangeCount()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public find(J)I
    .locals 6

    .line 1
    iget v0, p0, Lorg/h2/index/PageData;->entryCount:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lorg/h2/index/PageData;->keys:[J

    aget-wide v4, v3, v2

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    return v2

    :cond_0
    if-lez v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_0

    :cond_2
    return v1
.end method

.method public abstract find(Lorg/h2/engine/Session;JJZ)Lorg/h2/index/Cursor;
.end method

.method public abstract freeRecursive()V
.end method

.method public abstract getDiskSpaceUsed()J
.end method

.method public abstract getFirstLeaf()Lorg/h2/index/PageDataLeaf;
.end method

.method public getKey(I)J
    .locals 3

    iget-object v0, p0, Lorg/h2/index/PageData;->keys:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public abstract getLastKey()J
.end method

.method public getMemory()I
    .locals 1

    iget v0, p0, Lorg/h2/index/PageData;->memoryEstimated:I

    return v0
.end method

.method public getParentPageId()I
    .locals 1

    iget v0, p0, Lorg/h2/index/PageData;->parentPageId:I

    return v0
.end method

.method public abstract getRowCount()I
.end method

.method public abstract getRowWithKey(J)Lorg/h2/result/Row;
.end method

.method public abstract remapChildren(I)V
.end method

.method public abstract remove(J)Z
.end method

.method public setPageId(I)V
    .locals 3

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v0

    iget-object v1, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v1}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v1

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/h2/store/PageStore;->removeFromCache(I)V

    invoke-virtual {p0, p1}, Lorg/h2/util/CacheObject;->setPos(I)V

    iget-object p1, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    invoke-virtual {p0, v0}, Lorg/h2/index/PageData;->remapChildren(I)V

    return-void
.end method

.method public setParentPageId(I)V
    .locals 2

    iget-object v0, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, p0, v1}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    iput p1, p0, Lorg/h2/index/PageData;->parentPageId:I

    iget-boolean p1, p0, Lorg/h2/index/PageData;->written:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/store/PageStore;->getChangeCount()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/store/Page;->changeCount:J

    iget-object p1, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    const/4 v0, 0x3

    iget v1, p0, Lorg/h2/index/PageData;->parentPageId:I

    invoke-virtual {p1, v0, v1}, Lorg/h2/store/Data;->setInt(II)V

    :cond_0
    return-void
.end method

.method public abstract setRowCountStored(I)V
.end method

.method public abstract split(I)Lorg/h2/index/PageData;
.end method
