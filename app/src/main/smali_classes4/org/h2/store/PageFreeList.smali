.class public Lorg/h2/store/PageFreeList;
.super Lorg/h2/store/Page;
.source "SourceFile"


# static fields
.field private static final DATA_START:I = 0x3


# instance fields
.field private data:Lorg/h2/store/Data;

.field private full:Z

.field private final pageCount:I

.field private final store:Lorg/h2/store/PageStore;

.field private final used:Lorg/h2/util/BitField;


# direct methods
.method private constructor <init>(Lorg/h2/store/PageStore;I)V
    .locals 0

    invoke-direct {p0}, Lorg/h2/store/Page;-><init>()V

    invoke-virtual {p0, p2}, Lorg/h2/util/CacheObject;->setPos(I)V

    iput-object p1, p0, Lorg/h2/store/PageFreeList;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p1}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result p1

    add-int/lit8 p1, p1, -0x3

    mul-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/h2/store/PageFreeList;->pageCount:I

    new-instance p2, Lorg/h2/util/BitField;

    invoke-direct {p2, p1}, Lorg/h2/util/BitField;-><init>(I)V

    iput-object p2, p0, Lorg/h2/store/PageFreeList;->used:Lorg/h2/util/BitField;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lorg/h2/util/BitField;->set(I)V

    return-void
.end method

.method public static create(Lorg/h2/store/PageStore;I)Lorg/h2/store/PageFreeList;
    .locals 1

    new-instance v0, Lorg/h2/store/PageFreeList;

    invoke-direct {v0, p0, p1}, Lorg/h2/store/PageFreeList;-><init>(Lorg/h2/store/PageStore;I)V

    return-object v0
.end method

.method public static getPagesAddressed(I)I
    .locals 0

    add-int/lit8 p0, p0, -0x3

    mul-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static read(Lorg/h2/store/PageStore;Lorg/h2/store/Data;I)Lorg/h2/store/PageFreeList;
    .locals 1

    .line 1
    new-instance v0, Lorg/h2/store/PageFreeList;

    invoke-direct {v0, p0, p2}, Lorg/h2/store/PageFreeList;-><init>(Lorg/h2/store/PageStore;I)V

    iput-object p1, v0, Lorg/h2/store/PageFreeList;->data:Lorg/h2/store/Data;

    invoke-direct {v0}, Lorg/h2/store/PageFreeList;->read()V

    return-object v0
.end method

.method private read()V
    .locals 4

    .line 2
    iget-object v0, p0, Lorg/h2/store/PageFreeList;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->reset()V

    iget-object v0, p0, Lorg/h2/store/PageFreeList;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readByte()B

    iget-object v0, p0, Lorg/h2/store/PageFreeList;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readShortInt()S

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/h2/store/PageFreeList;->pageCount:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/h2/store/PageFreeList;->data:Lorg/h2/store/Data;

    invoke-virtual {v2}, Lorg/h2/store/Data;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p0, Lorg/h2/store/PageFreeList;->used:Lorg/h2/util/BitField;

    invoke-virtual {v3, v1, v2}, Lorg/h2/util/BitField;->setByte(II)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lorg/h2/store/PageFreeList;->full:Z

    return-void
.end method


# virtual methods
.method public allocate(Lorg/h2/util/BitField;I)I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/h2/store/PageFreeList;->full:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v0

    sub-int/2addr p2, v0

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    :cond_1
    iget-object v0, p0, Lorg/h2/store/PageFreeList;->used:Lorg/h2/util/BitField;

    invoke-virtual {v0, p2}, Lorg/h2/util/BitField;->nextClearBit(I)I

    move-result v0

    iget v2, p0, Lorg/h2/store/PageFreeList;->pageCount:I

    if-lt v0, v2, :cond_3

    if-nez p2, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/h2/store/PageFreeList;->full:Z

    :cond_2
    return v1

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result p2

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lorg/h2/util/BitField;->get(I)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result p2

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lorg/h2/util/BitField;->nextClearBit(I)I

    move-result p2

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v0

    sub-int/2addr p2, v0

    iget v0, p0, Lorg/h2/store/PageFreeList;->pageCount:I

    if-lt p2, v0, :cond_1

    return v1

    :cond_4
    iget-object p1, p0, Lorg/h2/store/PageFreeList;->used:Lorg/h2/util/BitField;

    invoke-virtual {p1, v0}, Lorg/h2/util/BitField;->set(I)V

    iget-object p1, p0, Lorg/h2/store/PageFreeList;->store:Lorg/h2/store/PageStore;

    iget-object p2, p0, Lorg/h2/store/PageFreeList;->data:Lorg/h2/store/Data;

    invoke-virtual {p1, p0, p2}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    iget-object p1, p0, Lorg/h2/store/PageFreeList;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p1, p0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result p1

    add-int/2addr p1, v0

    return p1
.end method

.method public allocate(I)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v0

    sub-int/2addr p1, v0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/h2/store/PageFreeList;->used:Lorg/h2/util/BitField;

    invoke-virtual {v0, p1}, Lorg/h2/util/BitField;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/h2/store/PageFreeList;->used:Lorg/h2/util/BitField;

    invoke-virtual {v0, p1}, Lorg/h2/util/BitField;->set(I)V

    iget-object p1, p0, Lorg/h2/store/PageFreeList;->store:Lorg/h2/store/PageStore;

    iget-object v0, p0, Lorg/h2/store/PageFreeList;->data:Lorg/h2/store/Data;

    invoke-virtual {p1, p0, v0}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    iget-object p1, p0, Lorg/h2/store/PageFreeList;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p1, p0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    :cond_0
    return-void
.end method

.method public canMove()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canRemove()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public free(I)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/h2/store/PageFreeList;->full:Z

    iget-object v0, p0, Lorg/h2/store/PageFreeList;->store:Lorg/h2/store/PageStore;

    iget-object v1, p0, Lorg/h2/store/PageFreeList;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, p0, v1}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    iget-object v0, p0, Lorg/h2/store/PageFreeList;->used:Lorg/h2/util/BitField;

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lorg/h2/util/BitField;->clear(I)V

    iget-object p1, p0, Lorg/h2/store/PageFreeList;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p1, p0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    return-void
.end method

.method public getFirstFree(I)I
    .locals 2

    iget-boolean v0, p0, Lorg/h2/store/PageFreeList;->full:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lorg/h2/store/PageFreeList;->used:Lorg/h2/util/BitField;

    invoke-virtual {v0, p1}, Lorg/h2/util/BitField;->nextClearBit(I)I

    move-result p1

    iget v0, p0, Lorg/h2/store/PageFreeList;->pageCount:I

    if-lt p1, v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public getLastUsed()I
    .locals 2

    iget-object v0, p0, Lorg/h2/store/PageFreeList;->used:Lorg/h2/util/BitField;

    invoke-virtual {v0}, Lorg/h2/util/BitField;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public getMemory()I
    .locals 1

    iget-object v0, p0, Lorg/h2/store/PageFreeList;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public isUsed(I)Z
    .locals 2

    iget-object v0, p0, Lorg/h2/store/PageFreeList;->used:Lorg/h2/util/BitField;

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lorg/h2/util/BitField;->get(I)Z

    move-result p1

    return p1
.end method

.method public moveTo(Lorg/h2/engine/Session;I)V
    .locals 1

    iget-object p1, p0, Lorg/h2/store/PageFreeList;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/h2/store/PageStore;->free(IZ)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "page ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] freeList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/h2/store/PageFreeList;->full:Z

    if-eqz v1, :cond_0

    const-string v1, "full"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write()V
    .locals 3

    iget-object v0, p0, Lorg/h2/store/PageFreeList;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->createData()Lorg/h2/store/Data;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/PageFreeList;->data:Lorg/h2/store/Data;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    iget-object v0, p0, Lorg/h2/store/PageFreeList;->data:Lorg/h2/store/Data;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeShortInt(I)V

    :goto_0
    iget v0, p0, Lorg/h2/store/PageFreeList;->pageCount:I

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lorg/h2/store/PageFreeList;->data:Lorg/h2/store/Data;

    iget-object v2, p0, Lorg/h2/store/PageFreeList;->used:Lorg/h2/util/BitField;

    invoke-virtual {v2, v1}, Lorg/h2/util/BitField;->getByte(I)I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Lorg/h2/store/Data;->writeByte(B)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/store/PageFreeList;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v1

    iget-object v2, p0, Lorg/h2/store/PageFreeList;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, v1, v2}, Lorg/h2/store/PageStore;->writePage(ILorg/h2/store/Data;)V

    return-void
.end method
