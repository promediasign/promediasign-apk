.class public Lorg/h2/index/PageBtreeLeaf;
.super Lorg/h2/index/PageBtree;
.source "SourceFile"


# static fields
.field private static final OFFSET_LENGTH:I = 0x2


# instance fields
.field private final optimizeUpdate:Z

.field private writtenData:Z


# direct methods
.method private constructor <init>(Lorg/h2/index/PageBtreeIndex;ILorg/h2/store/Data;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/h2/index/PageBtree;-><init>(Lorg/h2/index/PageBtreeIndex;ILorg/h2/store/Data;)V

    invoke-virtual {p1}, Lorg/h2/engine/DbObjectBase;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object p1

    iget-boolean p1, p1, Lorg/h2/engine/DbSettings;->optimizeUpdate:Z

    iput-boolean p1, p0, Lorg/h2/index/PageBtreeLeaf;->optimizeUpdate:Z

    return-void
.end method

.method private addRow(Lorg/h2/result/SearchRow;Z)I
    .locals 7

    iget-object v0, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    iget-object v1, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    iget-boolean v2, p0, Lorg/h2/index/PageBtree;->onlyPosition:Z

    invoke-virtual {v0, v1, p1, v2}, Lorg/h2/index/PageBtreeIndex;->getRowSize(Lorg/h2/store/Data;Lorg/h2/result/SearchRow;Z)I

    move-result v0

    iget-object v1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v1}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v1

    iget v2, p0, Lorg/h2/index/PageBtree;->entryCount:I

    if-nez v2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/h2/index/PageBtree;->offsets:[I

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4

    :goto_0
    sub-int/2addr v3, v0

    iget v4, p0, Lorg/h2/index/PageBtree;->start:I

    add-int/lit8 v4, v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v3, v4, :cond_8

    if-eqz p2, :cond_4

    if-le v2, v6, :cond_4

    invoke-virtual {p0, p1, v5, v6, v6}, Lorg/h2/index/PageBtree;->find(Lorg/h2/result/SearchRow;ZZZ)I

    move-result p1

    iget p2, p0, Lorg/h2/index/PageBtree;->entryCount:I

    const/4 v0, 0x5

    if-ge p2, v0, :cond_1

    div-int/lit8 p2, p2, 0x2

    return p2

    :cond_1
    div-int/lit8 p2, p2, 0x3

    if-ge p1, p2, :cond_2

    :goto_1
    move p1, p2

    goto :goto_2

    :cond_2
    mul-int/lit8 p2, p2, 0x2

    if-lt p1, p2, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    return p1

    :cond_4
    invoke-virtual {p0}, Lorg/h2/index/PageBtree;->readAllRows()V

    iput-boolean v5, p0, Lorg/h2/index/PageBtreeLeaf;->writtenData:Z

    iput-boolean v6, p0, Lorg/h2/index/PageBtree;->onlyPosition:Z

    move v0, v1

    const/4 p2, 0x0

    :goto_3
    iget v2, p0, Lorg/h2/index/PageBtree;->entryCount:I

    if-ge p2, v2, :cond_5

    iget-object v2, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    iget-object v3, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {p0, p2}, Lorg/h2/index/PageBtree;->getRow(I)Lorg/h2/result/SearchRow;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v6}, Lorg/h2/index/PageBtreeIndex;->getRowSize(Lorg/h2/store/Data;Lorg/h2/result/SearchRow;Z)I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lorg/h2/index/PageBtree;->offsets:[I

    aput v0, v2, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_5
    if-nez v2, :cond_6

    move p2, v1

    goto :goto_4

    :cond_6
    iget-object p2, p0, Lorg/h2/index/PageBtree;->offsets:[I

    sub-int/2addr v2, v6

    aget p2, p2, v2

    :goto_4
    iget-object v0, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    iget-object v2, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, v2, p1, v6}, Lorg/h2/index/PageBtreeIndex;->getRowSize(Lorg/h2/store/Data;Lorg/h2/result/SearchRow;Z)I

    move-result v0

    sget-boolean v2, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v2, :cond_8

    sub-int/2addr p2, v0

    iget v2, p0, Lorg/h2/index/PageBtree;->start:I

    add-int/lit8 v2, v2, 0x2

    if-lt p2, v2, :cond_7

    goto :goto_5

    :cond_7
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_8
    :goto_5
    iget-object p2, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {p2}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p2

    iget-object v2, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {p2, p0, v2}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    iget-boolean p2, p0, Lorg/h2/index/PageBtreeLeaf;->optimizeUpdate:Z

    if-nez p2, :cond_9

    invoke-virtual {p0}, Lorg/h2/index/PageBtree;->readAllRows()V

    :cond_9
    iget-object p2, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {p2}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p2

    invoke-virtual {p2}, Lorg/h2/store/PageStore;->getChangeCount()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/h2/store/Page;->changeCount:J

    iput-boolean v5, p0, Lorg/h2/index/PageBtree;->written:Z

    iget p2, p0, Lorg/h2/index/PageBtree;->entryCount:I

    if-nez p2, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {p0, p1, v5, v6, v6}, Lorg/h2/index/PageBtree;->find(Lorg/h2/result/SearchRow;ZZZ)I

    move-result v5

    :goto_6
    iget p2, p0, Lorg/h2/index/PageBtree;->start:I

    add-int/lit8 p2, p2, 0x2

    iput p2, p0, Lorg/h2/index/PageBtree;->start:I

    if-nez v5, :cond_b

    goto :goto_7

    :cond_b
    iget-object p2, p0, Lorg/h2/index/PageBtree;->offsets:[I

    add-int/lit8 v1, v5, -0x1

    aget v1, p2, v1

    :goto_7
    sub-int/2addr v1, v0

    iget-boolean p2, p0, Lorg/h2/index/PageBtreeLeaf;->optimizeUpdate:Z

    if-eqz p2, :cond_d

    iget-boolean p2, p0, Lorg/h2/index/PageBtreeLeaf;->writtenData:Z

    if-eqz p2, :cond_d

    iget p2, p0, Lorg/h2/index/PageBtree;->entryCount:I

    if-lez p2, :cond_c

    iget-object p2, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {p2}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object p2

    iget-object v2, p0, Lorg/h2/index/PageBtree;->offsets:[I

    iget v3, p0, Lorg/h2/index/PageBtree;->entryCount:I

    sub-int/2addr v3, v6

    aget v2, v2, v3

    sub-int v3, v2, v0

    sub-int v4, v1, v2

    add-int/2addr v4, v0

    invoke-static {p2, v2, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c
    iget-object p2, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    iget-object v2, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    iget-boolean v3, p0, Lorg/h2/index/PageBtree;->onlyPosition:Z

    invoke-virtual {p2, v2, v1, p1, v3}, Lorg/h2/index/PageBtreeIndex;->writeRow(Lorg/h2/store/Data;ILorg/h2/result/SearchRow;Z)V

    :cond_d
    iget-object p2, p0, Lorg/h2/index/PageBtree;->offsets:[I

    iget v2, p0, Lorg/h2/index/PageBtree;->entryCount:I

    invoke-static {p2, v2, v5, v1}, Lorg/h2/store/Page;->insert([IIII)[I

    move-result-object p2

    iput-object p2, p0, Lorg/h2/index/PageBtree;->offsets:[I

    add-int/lit8 v1, v5, 0x1

    iget v2, p0, Lorg/h2/index/PageBtree;->entryCount:I

    add-int/2addr v2, v6

    neg-int v0, v0

    invoke-static {p2, v1, v2, v0}, Lorg/h2/store/Page;->add([IIII)V

    iget-object p2, p0, Lorg/h2/index/PageBtree;->rows:[Lorg/h2/result/SearchRow;

    iget v0, p0, Lorg/h2/index/PageBtree;->entryCount:I

    invoke-static {p2, v0, v5, p1}, Lorg/h2/store/Page;->insert([Ljava/lang/Object;IILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/h2/result/SearchRow;

    iput-object p1, p0, Lorg/h2/index/PageBtree;->rows:[Lorg/h2/result/SearchRow;

    iget p1, p0, Lorg/h2/index/PageBtree;->entryCount:I

    add-int/2addr p1, v6

    iput p1, p0, Lorg/h2/index/PageBtree;->entryCount:I

    iget-object p1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    const/4 p1, -0x1

    return p1
.end method

.method public static create(Lorg/h2/index/PageBtreeIndex;II)Lorg/h2/index/PageBtreeLeaf;
    .locals 2

    new-instance v0, Lorg/h2/index/PageBtreeLeaf;

    invoke-virtual {p0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/store/PageStore;->createData()Lorg/h2/store/Data;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lorg/h2/index/PageBtreeLeaf;-><init>(Lorg/h2/index/PageBtreeIndex;ILorg/h2/store/Data;)V

    invoke-virtual {p0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    sget-object p0, Lorg/h2/result/SearchRow;->EMPTY_ARRAY:[Lorg/h2/result/SearchRow;

    iput-object p0, v0, Lorg/h2/index/PageBtree;->rows:[Lorg/h2/result/SearchRow;

    iput p2, v0, Lorg/h2/index/PageBtree;->parentPageId:I

    invoke-direct {v0}, Lorg/h2/index/PageBtreeLeaf;->writeHead()V

    iget-object p0, v0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {p0}, Lorg/h2/store/Data;->length()I

    move-result p0

    iput p0, v0, Lorg/h2/index/PageBtree;->start:I

    return-object v0
.end method

.method public static read(Lorg/h2/index/PageBtreeIndex;Lorg/h2/store/Data;I)Lorg/h2/store/Page;
    .locals 1

    .line 1
    new-instance v0, Lorg/h2/index/PageBtreeLeaf;

    invoke-direct {v0, p0, p2, p1}, Lorg/h2/index/PageBtreeLeaf;-><init>(Lorg/h2/index/PageBtreeIndex;ILorg/h2/store/Data;)V

    invoke-direct {v0}, Lorg/h2/index/PageBtreeLeaf;->read()V

    return-object v0
.end method

.method private read()V
    .locals 4

    .line 2
    iget-object v0, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->reset()V

    iget-object v0, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readByte()B

    move-result v0

    iget-object v1, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->readShortInt()S

    iget-object v1, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->readInt()I

    move-result v1

    iput v1, p0, Lorg/h2/index/PageBtree;->parentPageId:I

    and-int/lit8 v0, v0, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/h2/index/PageBtree;->onlyPosition:Z

    iget-object v0, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readVarInt()I

    move-result v0

    iget-object v3, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v3}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readShortInt()S

    move-result v0

    iput v0, p0, Lorg/h2/index/PageBtree;->entryCount:I

    new-array v3, v0, [I

    iput-object v3, p0, Lorg/h2/index/PageBtree;->offsets:[I

    new-array v0, v0, [Lorg/h2/result/SearchRow;

    iput-object v0, p0, Lorg/h2/index/PageBtree;->rows:[Lorg/h2/result/SearchRow;

    :goto_1
    iget v0, p0, Lorg/h2/index/PageBtree;->entryCount:I

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lorg/h2/index/PageBtree;->offsets:[I

    iget-object v3, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {v3}, Lorg/h2/store/Data;->readShortInt()S

    move-result v3

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->length()I

    move-result v0

    iput v0, p0, Lorg/h2/index/PageBtree;->start:I

    iput-boolean v2, p0, Lorg/h2/index/PageBtree;->written:Z

    iput-boolean v2, p0, Lorg/h2/index/PageBtreeLeaf;->writtenData:Z

    return-void

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "page:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " expected index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v2}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "got:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x15fae

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method private removeRow(I)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lorg/h2/index/PageBtreeLeaf;->optimizeUpdate:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/h2/index/PageBtree;->readAllRows()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    .line 9
    .line 10
    invoke-virtual {v0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    .line 15
    .line 16
    invoke-virtual {v0, p0, v1}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 17
    .line 18
    .line 19
    iget v0, p0, Lorg/h2/index/PageBtree;->entryCount:I

    .line 20
    .line 21
    add-int/lit8 v0, v0, -0x1

    .line 22
    .line 23
    iput v0, p0, Lorg/h2/index/PageBtree;->entryCount:I

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lorg/h2/index/PageBtree;->written:Z

    .line 27
    .line 28
    iget-object v1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    .line 29
    .line 30
    invoke-virtual {v1}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lorg/h2/store/PageStore;->getChangeCount()J

    .line 35
    .line 36
    .line 37
    move-result-wide v1

    .line 38
    iput-wide v1, p0, Lorg/h2/store/Page;->changeCount:J

    .line 39
    .line 40
    iget v1, p0, Lorg/h2/index/PageBtree;->entryCount:I

    .line 41
    .line 42
    if-gtz v1, :cond_1

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v2, ""

    .line 47
    .line 48
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget v2, p0, Lorg/h2/index/PageBtree;->entryCount:I

    .line 52
    .line 53
    invoke-static {v1, v2}, Lorg/apache/ftpserver/main/a;->A(Ljava/lang/StringBuilder;I)V

    .line 54
    .line 55
    .line 56
    :cond_1
    if-lez p1, :cond_2

    .line 57
    .line 58
    iget-object v1, p0, Lorg/h2/index/PageBtree;->offsets:[I

    .line 59
    .line 60
    add-int/lit8 v2, p1, -0x1

    .line 61
    .line 62
    aget v1, v1, v2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iget-object v1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    .line 66
    .line 67
    invoke-virtual {v1}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lorg/h2/store/PageStore;->getPageSize()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    :goto_0
    iget-object v2, p0, Lorg/h2/index/PageBtree;->offsets:[I

    .line 76
    .line 77
    aget v2, v2, p1

    .line 78
    .line 79
    sub-int/2addr v1, v2

    .line 80
    iget v2, p0, Lorg/h2/index/PageBtree;->start:I

    .line 81
    .line 82
    add-int/lit8 v2, v2, -0x2

    .line 83
    .line 84
    iput v2, p0, Lorg/h2/index/PageBtree;->start:I

    .line 85
    .line 86
    iget-boolean v2, p0, Lorg/h2/index/PageBtreeLeaf;->optimizeUpdate:Z

    .line 87
    .line 88
    if-eqz v2, :cond_3

    .line 89
    .line 90
    iget-boolean v2, p0, Lorg/h2/index/PageBtreeLeaf;->writtenData:Z

    .line 91
    .line 92
    if-eqz v2, :cond_3

    .line 93
    .line 94
    iget-object v2, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    .line 95
    .line 96
    invoke-virtual {v2}, Lorg/h2/store/Data;->getBytes()[B

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    iget-object v3, p0, Lorg/h2/index/PageBtree;->offsets:[I

    .line 101
    .line 102
    iget v4, p0, Lorg/h2/index/PageBtree;->entryCount:I

    .line 103
    .line 104
    aget v4, v3, v4

    .line 105
    .line 106
    add-int v5, v4, v1

    .line 107
    .line 108
    aget v3, v3, p1

    .line 109
    .line 110
    sub-int/2addr v3, v4

    .line 111
    invoke-static {v2, v4, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    .line 113
    .line 114
    invoke-static {v2, v4, v5, v0}, Ljava/util/Arrays;->fill([BIIB)V

    .line 115
    .line 116
    .line 117
    :cond_3
    iget-object v0, p0, Lorg/h2/index/PageBtree;->offsets:[I

    .line 118
    .line 119
    iget v2, p0, Lorg/h2/index/PageBtree;->entryCount:I

    .line 120
    .line 121
    add-int/lit8 v2, v2, 0x1

    .line 122
    .line 123
    invoke-static {v0, v2, p1}, Lorg/h2/store/Page;->remove([III)[I

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iput-object v0, p0, Lorg/h2/index/PageBtree;->offsets:[I

    .line 128
    .line 129
    iget v2, p0, Lorg/h2/index/PageBtree;->entryCount:I

    .line 130
    .line 131
    invoke-static {v0, p1, v2, v1}, Lorg/h2/store/Page;->add([IIII)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lorg/h2/index/PageBtree;->rows:[Lorg/h2/result/SearchRow;

    .line 135
    .line 136
    iget v1, p0, Lorg/h2/index/PageBtree;->entryCount:I

    .line 137
    .line 138
    add-int/lit8 v1, v1, 0x1

    .line 139
    .line 140
    invoke-static {v0, v1, p1}, Lorg/h2/store/Page;->remove([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    check-cast p1, [Lorg/h2/result/SearchRow;

    .line 145
    .line 146
    iput-object p1, p0, Lorg/h2/index/PageBtree;->rows:[Lorg/h2/result/SearchRow;

    .line 147
    .line 148
    return-void
.end method

.method private writeData()V
    .locals 7

    iget-boolean v0, p0, Lorg/h2/index/PageBtree;->written:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/h2/index/PageBtreeLeaf;->optimizeUpdate:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/h2/index/PageBtree;->readAllRows()V

    :cond_1
    invoke-direct {p0}, Lorg/h2/index/PageBtreeLeaf;->writeHead()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/h2/index/PageBtree;->entryCount:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    iget-object v3, p0, Lorg/h2/index/PageBtree;->offsets:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Lorg/h2/store/Data;->writeShortInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lorg/h2/index/PageBtreeLeaf;->writtenData:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lorg/h2/index/PageBtreeLeaf;->optimizeUpdate:Z

    if-nez v1, :cond_5

    :cond_3
    :goto_1
    iget v1, p0, Lorg/h2/index/PageBtree;->entryCount:I

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    iget-object v3, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    iget-object v4, p0, Lorg/h2/index/PageBtree;->offsets:[I

    aget v4, v4, v0

    iget-object v5, p0, Lorg/h2/index/PageBtree;->rows:[Lorg/h2/result/SearchRow;

    aget-object v5, v5, v0

    iget-boolean v6, p0, Lorg/h2/index/PageBtree;->onlyPosition:Z

    invoke-virtual {v1, v3, v4, v5, v6}, Lorg/h2/index/PageBtreeIndex;->writeRow(Lorg/h2/store/Data;ILorg/h2/result/SearchRow;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iput-boolean v2, p0, Lorg/h2/index/PageBtreeLeaf;->writtenData:Z

    :cond_5
    iput-boolean v2, p0, Lorg/h2/index/PageBtree;->written:Z

    invoke-virtual {p0}, Lorg/h2/index/PageBtreeLeaf;->memoryChange()V

    return-void
.end method

.method private writeHead()V
    .locals 3

    iget-object v0, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->reset()V

    iget-object v0, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    iget-boolean v1, p0, Lorg/h2/index/PageBtree;->onlyPosition:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    :goto_0
    or-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    iget-object v0, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, v2}, Lorg/h2/store/Data;->writeShortInt(I)V

    iget-object v0, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    iget v1, p0, Lorg/h2/index/PageBtree;->parentPageId:I

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeInt(I)V

    iget-object v0, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    iget-object v1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeVarInt(I)V

    iget-object v0, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    iget v1, p0, Lorg/h2/index/PageBtree;->entryCount:I

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeShortInt(I)V

    return-void
.end method


# virtual methods
.method public addRowTry(Lorg/h2/result/SearchRow;)I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/h2/index/PageBtreeLeaf;->addRow(Lorg/h2/result/SearchRow;Z)I

    move-result p1

    invoke-virtual {p0}, Lorg/h2/index/PageBtreeLeaf;->memoryChange()V

    return p1
.end method

.method public find(Lorg/h2/index/PageBtreeCursor;Lorg/h2/result/SearchRow;Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, v0, v0}, Lorg/h2/index/PageBtree;->find(Lorg/h2/result/SearchRow;ZZZ)I

    move-result v0

    iget v1, p0, Lorg/h2/index/PageBtree;->entryCount:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lorg/h2/index/PageBtree;->parentPageId:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v1, v0}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object v0

    check-cast v0, Lorg/h2/index/PageBtreeNode;

    invoke-virtual {v0, p1, p2, p3}, Lorg/h2/index/PageBtreeNode;->find(Lorg/h2/index/PageBtreeCursor;Lorg/h2/result/SearchRow;Z)V

    return-void

    :cond_1
    invoke-virtual {p1, p0, v0}, Lorg/h2/index/PageBtreeCursor;->setCurrent(Lorg/h2/index/PageBtreeLeaf;I)V

    return-void
.end method

.method public freeRecursive()V
    .locals 2

    iget-object v0, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, p0, v1}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    iget-object v0, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/h2/store/PageStore;->free(I)V

    return-void
.end method

.method public getEntryCount()I
    .locals 1

    iget v0, p0, Lorg/h2/index/PageBtree;->entryCount:I

    return v0
.end method

.method public getFirstLeaf()Lorg/h2/index/PageBtreeLeaf;
    .locals 0

    return-object p0
.end method

.method public getLastLeaf()Lorg/h2/index/PageBtreeLeaf;
    .locals 0

    return-object p0
.end method

.method public getRowCount()I
    .locals 1

    iget v0, p0, Lorg/h2/index/PageBtree;->entryCount:I

    return v0
.end method

.method public last(Lorg/h2/index/PageBtreeCursor;)V
    .locals 1

    iget v0, p0, Lorg/h2/index/PageBtree;->entryCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, p0, v0}, Lorg/h2/index/PageBtreeCursor;->setCurrent(Lorg/h2/index/PageBtreeLeaf;I)V

    return-void
.end method

.method public memoryChange()V
    .locals 3

    invoke-static {}, Lorg/h2/index/PageBtreeIndex;->isMemoryChangeRequired()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v0

    add-int/lit16 v0, v0, 0xb8

    iget-object v1, p0, Lorg/h2/index/PageBtree;->rows:[Lorg/h2/result/SearchRow;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/h2/index/PageBtreeLeaf;->getEntryCount()I

    move-result v1

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v1, v0

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/h2/index/PageBtree;->entryCount:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/h2/index/PageBtree;->rows:[Lorg/h2/result/SearchRow;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/h2/result/SearchRow;->getMemory()I

    move-result v2

    add-int/2addr v1, v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    iget-object v1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    shr-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Lorg/h2/index/PageBtreeIndex;->memoryChange(I)V

    return-void
.end method

.method public moveTo(Lorg/h2/engine/Session;I)V
    .locals 3

    iget-object v0, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {p0}, Lorg/h2/index/PageBtree;->readAllRows()V

    iget-object v1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    iget v2, p0, Lorg/h2/index/PageBtree;->parentPageId:I

    invoke-static {v1, p2, v2}, Lorg/h2/index/PageBtreeLeaf;->create(Lorg/h2/index/PageBtreeIndex;II)Lorg/h2/index/PageBtreeLeaf;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, p0, v2}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    iget-object v2, p0, Lorg/h2/index/PageBtree;->rows:[Lorg/h2/result/SearchRow;

    iput-object v2, v1, Lorg/h2/index/PageBtree;->rows:[Lorg/h2/result/SearchRow;

    iget v2, p0, Lorg/h2/index/PageBtree;->entryCount:I

    iput v2, v1, Lorg/h2/index/PageBtree;->entryCount:I

    iget-object v2, p0, Lorg/h2/index/PageBtree;->offsets:[I

    iput-object v2, v1, Lorg/h2/index/PageBtree;->offsets:[I

    iget-boolean v2, p0, Lorg/h2/index/PageBtree;->onlyPosition:Z

    iput-boolean v2, v1, Lorg/h2/index/PageBtree;->onlyPosition:Z

    iget v2, p0, Lorg/h2/index/PageBtree;->parentPageId:I

    iput v2, v1, Lorg/h2/index/PageBtree;->parentPageId:I

    iget v2, p0, Lorg/h2/index/PageBtree;->start:I

    iput v2, v1, Lorg/h2/index/PageBtree;->start:I

    invoke-virtual {v0, v1}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    iget v1, p0, Lorg/h2/index/PageBtree;->parentPageId:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v1, p1, p2}, Lorg/h2/index/PageBtreeIndex;->setRootPageId(Lorg/h2/engine/Session;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    move-result-object p1

    check-cast p1, Lorg/h2/index/PageBtreeNode;

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v1

    invoke-virtual {p1, v1, p2}, Lorg/h2/index/PageBtreeNode;->moveChild(II)V

    :goto_0
    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/h2/store/PageStore;->free(I)V

    return-void
.end method

.method public nextPage(Lorg/h2/index/PageBtreeCursor;)V
    .locals 2

    iget v0, p0, Lorg/h2/index/PageBtree;->parentPageId:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/h2/index/PageBtreeCursor;->setCurrent(Lorg/h2/index/PageBtreeLeaf;I)V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v1, v0}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object v0

    check-cast v0, Lorg/h2/index/PageBtreeNode;

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/h2/index/PageBtreeNode;->nextPage(Lorg/h2/index/PageBtreeCursor;I)V

    return-void
.end method

.method public previousPage(Lorg/h2/index/PageBtreeCursor;)V
    .locals 2

    iget v0, p0, Lorg/h2/index/PageBtree;->parentPageId:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/h2/index/PageBtreeCursor;->setCurrent(Lorg/h2/index/PageBtreeLeaf;I)V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v1, v0}, Lorg/h2/index/PageBtreeIndex;->getPage(I)Lorg/h2/index/PageBtree;

    move-result-object v0

    check-cast v0, Lorg/h2/index/PageBtreeNode;

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/h2/index/PageBtreeNode;->previousPage(Lorg/h2/index/PageBtreeCursor;I)V

    return-void
.end method

.method public remapChildren()V
    .locals 0

    return-void
.end method

.method public remove(Lorg/h2/result/SearchRow;)Lorg/h2/result/SearchRow;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v0, v1}, Lorg/h2/index/PageBtree;->find(Lorg/h2/result/SearchRow;ZZZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/h2/index/PageBtree;->getRow(I)Lorg/h2/result/SearchRow;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v3, p1, v2}, Lorg/h2/index/BaseIndex;->compareRows(Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)I

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v2}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v2

    invoke-interface {p1}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-object v2, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v2}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v2

    iget-object v3, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {v2, p0, v3}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    iget v2, p0, Lorg/h2/index/PageBtree;->entryCount:I

    if-ne v2, v1, :cond_0

    return-object p1

    :cond_0
    invoke-direct {p0, v0}, Lorg/h2/index/PageBtreeLeaf;->removeRow(I)V

    invoke-virtual {p0}, Lorg/h2/index/PageBtreeLeaf;->memoryChange()V

    iget-object p1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    iget p1, p0, Lorg/h2/index/PageBtree;->entryCount:I

    if-ne v0, p1, :cond_1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/h2/index/PageBtree;->getRow(I)Lorg/h2/result/SearchRow;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v1}, Lorg/h2/schema/SchemaObjectBase;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x16000

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public setRowCountStored(I)V
    .locals 0

    return-void
.end method

.method public split(I)Lorg/h2/index/PageBtree;
    .locals 3

    iget-object v0, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->allocatePage()I

    move-result v0

    iget-object v1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    iget v2, p0, Lorg/h2/index/PageBtree;->parentPageId:I

    invoke-static {v1, v0, v2}, Lorg/h2/index/PageBtreeLeaf;->create(Lorg/h2/index/PageBtreeIndex;II)Lorg/h2/index/PageBtreeLeaf;

    move-result-object v0

    :goto_0
    iget v1, p0, Lorg/h2/index/PageBtree;->entryCount:I

    if-ge p1, v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/h2/index/PageBtree;->getRow(I)Lorg/h2/result/SearchRow;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/h2/index/PageBtreeLeaf;->addRow(Lorg/h2/result/SearchRow;Z)I

    invoke-direct {p0, p1}, Lorg/h2/index/PageBtreeLeaf;->removeRow(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/h2/index/PageBtreeLeaf;->memoryChange()V

    invoke-virtual {v0}, Lorg/h2/index/PageBtreeLeaf;->memoryChange()V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "page["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] b-tree leaf table:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " entries:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/index/PageBtree;->entryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write()V
    .locals 3

    invoke-direct {p0}, Lorg/h2/index/PageBtreeLeaf;->writeData()V

    iget-object v0, p0, Lorg/h2/index/PageBtree;->index:Lorg/h2/index/PageBtreeIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageBtreeIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v1

    iget-object v2, p0, Lorg/h2/index/PageBtree;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, v1, v2}, Lorg/h2/store/PageStore;->writePage(ILorg/h2/store/Data;)V

    return-void
.end method
