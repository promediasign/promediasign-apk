.class public Lorg/h2/index/PageDataNode;
.super Lorg/h2/index/PageData;
.source "SourceFile"


# instance fields
.field private childPageIds:[I

.field private length:I

.field private rowCount:I

.field private rowCountStored:I


# direct methods
.method private constructor <init>(Lorg/h2/index/PageDataIndex;ILorg/h2/store/Data;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/h2/index/PageData;-><init>(Lorg/h2/index/PageDataIndex;ILorg/h2/store/Data;)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/h2/index/PageDataNode;->rowCountStored:I

    iput p1, p0, Lorg/h2/index/PageDataNode;->rowCount:I

    return-void
.end method

.method private addChild(IIJ)V
    .locals 3

    iget-object v0, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, p0, v1}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/h2/index/PageData;->written:Z

    iget-object v0, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getChangeCount()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/store/Page;->changeCount:J

    iget-object v0, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    iget v1, p0, Lorg/h2/index/PageData;->entryCount:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, p1, 0x1

    invoke-static {v0, v1, v2, p2}, Lorg/h2/store/Page;->insert([IIII)[I

    move-result-object p2

    iput-object p2, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    iget-object p2, p0, Lorg/h2/index/PageData;->keys:[J

    iget v0, p0, Lorg/h2/index/PageData;->entryCount:I

    invoke-static {p2, v0, p1, p3, p4}, Lorg/h2/store/Page;->insert([JIIJ)[J

    move-result-object p1

    iput-object p1, p0, Lorg/h2/index/PageData;->keys:[J

    iget p1, p0, Lorg/h2/index/PageData;->entryCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/h2/index/PageData;->entryCount:I

    iget p1, p0, Lorg/h2/index/PageDataNode;->length:I

    invoke-static {p3, p4}, Lorg/h2/store/Data;->getVarLongLen(J)I

    move-result p2

    add-int/lit8 p2, p2, 0x4

    add-int/2addr p2, p1

    iput p2, p0, Lorg/h2/index/PageDataNode;->length:I

    return-void
.end method

.method private check()V
    .locals 2

    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/h2/index/PageData;->entryCount:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    aget v1, v1, v0

    if-nez v1, :cond_0

    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static create(Lorg/h2/index/PageDataIndex;II)Lorg/h2/index/PageDataNode;
    .locals 2

    new-instance v0, Lorg/h2/index/PageDataNode;

    invoke-virtual {p0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/store/PageStore;->createData()Lorg/h2/store/Data;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lorg/h2/index/PageDataNode;-><init>(Lorg/h2/index/PageDataIndex;ILorg/h2/store/Data;)V

    invoke-virtual {p0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    iput p2, v0, Lorg/h2/index/PageData;->parentPageId:I

    invoke-direct {v0}, Lorg/h2/index/PageDataNode;->writeHead()V

    iget-object p0, v0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {p0}, Lorg/h2/store/Data;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    iput p0, v0, Lorg/h2/index/PageDataNode;->length:I

    return-object v0
.end method

.method public static read(Lorg/h2/index/PageDataIndex;Lorg/h2/store/Data;I)Lorg/h2/store/Page;
    .locals 1

    .line 1
    new-instance v0, Lorg/h2/index/PageDataNode;

    invoke-direct {v0, p0, p2, p1}, Lorg/h2/index/PageDataNode;-><init>(Lorg/h2/index/PageDataIndex;ILorg/h2/store/Data;)V

    invoke-direct {v0}, Lorg/h2/index/PageDataNode;->read()V

    return-object v0
.end method

.method private read()V
    .locals 4

    .line 2
    iget-object v0, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->reset()V

    iget-object v0, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readByte()B

    iget-object v0, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readShortInt()S

    iget-object v0, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    iput v0, p0, Lorg/h2/index/PageData;->parentPageId:I

    iget-object v0, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readVarInt()I

    move-result v0

    iget-object v1, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    iput v0, p0, Lorg/h2/index/PageDataNode;->rowCountStored:I

    iput v0, p0, Lorg/h2/index/PageDataNode;->rowCount:I

    iget-object v0, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readShortInt()S

    move-result v0

    iput v0, p0, Lorg/h2/index/PageData;->entryCount:I

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    iget-object v2, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {v2}, Lorg/h2/store/Data;->readInt()I

    move-result v2

    aput v2, v1, v0

    iget v0, p0, Lorg/h2/index/PageData;->entryCount:I

    invoke-static {v0}, Lorg/h2/util/Utils;->newLongArray(I)[J

    move-result-object v0

    iput-object v0, p0, Lorg/h2/index/PageData;->keys:[J

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/h2/index/PageData;->entryCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    iget-object v2, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {v2}, Lorg/h2/store/Data;->readInt()I

    move-result v2

    aput v2, v1, v0

    iget-object v1, p0, Lorg/h2/index/PageData;->keys:[J

    iget-object v2, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {v2}, Lorg/h2/store/Data;->readVarLong()J

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->length()I

    move-result v0

    iput v0, p0, Lorg/h2/index/PageDataNode;->length:I

    invoke-direct {p0}, Lorg/h2/index/PageDataNode;->check()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/index/PageData;->written:Z

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "page:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " expected index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

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

.method private removeChild(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    .line 8
    .line 9
    invoke-virtual {v0, p0, v1}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lorg/h2/index/PageData;->written:Z

    .line 14
    .line 15
    iget-object v0, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    .line 16
    .line 17
    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getChangeCount()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    iput-wide v0, p0, Lorg/h2/store/Page;->changeCount:J

    .line 26
    .line 27
    iget v0, p0, Lorg/h2/index/PageData;->entryCount:I

    .line 28
    .line 29
    if-ge p1, v0, :cond_0

    .line 30
    .line 31
    move v1, p1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    add-int/lit8 v1, p1, -0x1

    .line 34
    .line 35
    :goto_0
    add-int/lit8 v0, v0, -0x1

    .line 36
    .line 37
    iput v0, p0, Lorg/h2/index/PageData;->entryCount:I

    .line 38
    .line 39
    iget v0, p0, Lorg/h2/index/PageDataNode;->length:I

    .line 40
    .line 41
    iget-object v2, p0, Lorg/h2/index/PageData;->keys:[J

    .line 42
    .line 43
    aget-wide v3, v2, v1

    .line 44
    .line 45
    invoke-static {v3, v4}, Lorg/h2/store/Data;->getVarLongLen(J)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    add-int/lit8 v2, v2, 0x4

    .line 50
    .line 51
    sub-int/2addr v0, v2

    .line 52
    iput v0, p0, Lorg/h2/index/PageDataNode;->length:I

    .line 53
    .line 54
    iget v0, p0, Lorg/h2/index/PageData;->entryCount:I

    .line 55
    .line 56
    if-gez v0, :cond_1

    .line 57
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v2, ""

    .line 61
    .line 62
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget v2, p0, Lorg/h2/index/PageData;->entryCount:I

    .line 66
    .line 67
    invoke-static {v0, v2}, Lorg/apache/ftpserver/main/a;->A(Ljava/lang/StringBuilder;I)V

    .line 68
    .line 69
    .line 70
    :cond_1
    iget-object v0, p0, Lorg/h2/index/PageData;->keys:[J

    .line 71
    .line 72
    iget v2, p0, Lorg/h2/index/PageData;->entryCount:I

    .line 73
    .line 74
    add-int/lit8 v2, v2, 0x1

    .line 75
    .line 76
    invoke-static {v0, v2, v1}, Lorg/h2/store/Page;->remove([JII)[J

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Lorg/h2/index/PageData;->keys:[J

    .line 81
    .line 82
    iget-object v0, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    .line 83
    .line 84
    iget v1, p0, Lorg/h2/index/PageData;->entryCount:I

    .line 85
    .line 86
    add-int/lit8 v1, v1, 0x2

    .line 87
    .line 88
    invoke-static {v0, v1, p1}, Lorg/h2/store/Page;->remove([III)[I

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    iput-object p1, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    .line 93
    .line 94
    return-void
.end method

.method private updateRowCount(I)V
    .locals 2

    iget v0, p0, Lorg/h2/index/PageDataNode;->rowCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/2addr v0, p1

    iput v0, p0, Lorg/h2/index/PageDataNode;->rowCount:I

    :cond_0
    iget p1, p0, Lorg/h2/index/PageDataNode;->rowCountStored:I

    if-eq p1, v1, :cond_2

    iput v1, p0, Lorg/h2/index/PageDataNode;->rowCountStored:I

    iget-object p1, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {p1, p0, v0}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    iget-boolean p1, p0, Lorg/h2/index/PageData;->written:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lorg/h2/index/PageDataNode;->writeHead()V

    :cond_1
    iget-object p1, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    :cond_2
    return-void
.end method

.method private writeData()V
    .locals 5

    iget-boolean v0, p0, Lorg/h2/index/PageData;->written:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/h2/index/PageDataNode;->check()V

    invoke-direct {p0}, Lorg/h2/index/PageDataNode;->writeHead()V

    iget-object v0, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    iget-object v1, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    iget v2, p0, Lorg/h2/index/PageData;->entryCount:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/h2/index/PageData;->entryCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    iget-object v2, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lorg/h2/store/Data;->writeInt(I)V

    iget-object v1, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    iget-object v2, p0, Lorg/h2/index/PageData;->keys:[J

    aget-wide v3, v2, v0

    invoke-virtual {v1, v3, v4}, Lorg/h2/store/Data;->writeVarLong(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/h2/index/PageDataNode;->length:I

    iget-object v1, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->length()I

    move-result v1

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "expected pos: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/h2/index/PageDataNode;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " got: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/index/PageData;->written:Z

    return-void
.end method

.method private writeHead()V
    .locals 2

    iget-object v0, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->reset()V

    iget-object v0, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    iget-object v0, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeShortInt(I)V

    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK2:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    iget v1, p0, Lorg/h2/index/PageData;->parentPageId:I

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeInt(I)V

    iget-object v0, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    iget-object v1, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeVarInt(I)V

    iget-object v0, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    iget v1, p0, Lorg/h2/index/PageDataNode;->rowCountStored:I

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeInt(I)V

    iget-object v0, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    iget v1, p0, Lorg/h2/index/PageData;->entryCount:I

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeShortInt(I)V

    return-void
.end method


# virtual methods
.method public addRowTry(Lorg/h2/result/Row;)I
    .locals 7

    iget-object v0, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, p0, v1}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    invoke-interface {p1}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/store/Data;->getVarLongLen(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    :goto_0
    invoke-interface {p1}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/h2/index/PageData;->find(J)I

    move-result v1

    iget-object v2, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    iget-object v3, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    aget v3, v3, v1

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/h2/index/PageData;->addRowTry(Lorg/h2/result/Row;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lorg/h2/index/PageDataNode;->updateRowCount(I)V

    return v4

    :cond_0
    iget v4, p0, Lorg/h2/index/PageDataNode;->length:I

    add-int/2addr v4, v0

    iget-object v5, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v5}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v5

    invoke-virtual {v5}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v5

    if-le v4, v5, :cond_1

    iget p1, p0, Lorg/h2/index/PageData;->entryCount:I

    div-int/lit8 p1, p1, 0x2

    return p1

    :cond_1
    if-nez v3, :cond_2

    invoke-interface {p1}, Lorg/h2/result/SearchRow;->getKey()J

    move-result-wide v4

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v2, v4}, Lorg/h2/index/PageData;->getKey(I)J

    move-result-wide v4

    :goto_1
    invoke-virtual {v2, v3}, Lorg/h2/index/PageData;->split(I)Lorg/h2/index/PageData;

    move-result-object v3

    iget-object v6, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v6}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v6

    invoke-virtual {v6, v2}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    iget-object v2, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v2}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    invoke-virtual {v3}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v2

    invoke-direct {p0, v1, v2, v4, v5}, Lorg/h2/index/PageDataNode;->addChild(IIJ)V

    iget-object v1, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v1}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    goto :goto_0
.end method

.method public bridge synthetic canRemove()Z
    .locals 1

    invoke-super {p0}, Lorg/h2/index/PageData;->canRemove()Z

    move-result v0

    return v0
.end method

.method public find(Lorg/h2/engine/Session;JJZ)Lorg/h2/index/Cursor;
    .locals 7

    invoke-virtual {p0, p2, p3}, Lorg/h2/index/PageData;->find(J)I

    move-result v0

    iget-object v1, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    aget v0, v1, v0

    iget-object v1, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v4

    invoke-virtual {v1, v0, v4}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/h2/index/PageData;->find(Lorg/h2/engine/Session;JJZ)Lorg/h2/index/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public freeRecursive()V
    .locals 4

    iget-object v0, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, p0, v1}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    iget-object v0, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/h2/store/PageStore;->free(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/h2/index/PageData;->entryCount:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    aget v1, v1, v0

    iget-object v2, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/index/PageData;->freeRecursive()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getDiskSpaceUsed()J
    .locals 8

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lorg/h2/index/PageData;->entryCount:I

    add-int/lit8 v4, v4, 0x1

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    aget v4, v4, v3

    iget-object v5, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v6

    invoke-virtual {v5, v4, v6}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v4

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v5

    invoke-virtual {v4}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v6

    if-eq v5, v6, :cond_0

    invoke-virtual {v4}, Lorg/h2/index/PageData;->getDiskSpaceUsed()J

    move-result-wide v4

    add-long/2addr v0, v4

    iget-object v4, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v4}, Lorg/h2/engine/DbObjectBase;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v6}, Lorg/h2/index/BaseIndex;->getTable()Lorg/h2/table/Table;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v6}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    shr-long v6, v0, v6

    long-to-int v7, v6

    const v6, 0x7fffffff

    invoke-virtual {v4, v2, v5, v7, v6}, Lorg/h2/engine/Database;->setProgress(ILjava/lang/String;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Page is its own child: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1
    return-wide v0
.end method

.method public getFirstLeaf()Lorg/h2/index/PageDataLeaf;
    .locals 3

    iget-object v0, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/index/PageData;->getFirstLeaf()Lorg/h2/index/PageDataLeaf;

    move-result-object v0

    return-object v0
.end method

.method public getLastKey()J
    .locals 3

    iget-object v0, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    iget-object v1, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    iget v2, p0, Lorg/h2/index/PageData;->entryCount:I

    aget v1, v1, v2

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/index/PageData;->getLastKey()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getMemory()I
    .locals 1

    invoke-super {p0}, Lorg/h2/index/PageData;->getMemory()I

    move-result v0

    return v0
.end method

.method public getNextPage(J)Lorg/h2/index/PageDataLeaf;
    .locals 3

    invoke-virtual {p0, p1, p2}, Lorg/h2/index/PageData;->find(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/h2/index/PageData;->entryCount:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lorg/h2/index/PageData;->parentPageId:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v0

    check-cast v0, Lorg/h2/index/PageDataNode;

    invoke-virtual {v0, p1, p2}, Lorg/h2/index/PageDataNode;->getNextPage(J)Lorg/h2/index/PageDataLeaf;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    iget-object p2, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    aget p2, p2, v0

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/index/PageData;->getFirstLeaf()Lorg/h2/index/PageDataLeaf;

    move-result-object p1

    return-object p1
.end method

.method public getRowCount()I
    .locals 6

    iget v0, p0, Lorg/h2/index/PageDataNode;->rowCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lorg/h2/index/PageData;->entryCount:I

    add-int/lit8 v3, v3, 0x1

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    aget v3, v3, v1

    iget-object v4, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v3

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v4

    invoke-virtual {v3}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v5

    if-eq v4, v5, :cond_0

    invoke-virtual {v3}, Lorg/h2/index/PageData;->getRowCount()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v3}, Lorg/h2/engine/DbObjectBase;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v5}, Lorg/h2/index/BaseIndex;->getTable()Lorg/h2/table/Table;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v5}, Lorg/h2/engine/DbObjectBase;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7fffffff

    invoke-virtual {v3, v0, v4, v2, v5}, Lorg/h2/engine/Database;->setProgress(ILjava/lang/String;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Page is its own child: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1
    iput v2, p0, Lorg/h2/index/PageDataNode;->rowCount:I

    :cond_2
    iget v0, p0, Lorg/h2/index/PageDataNode;->rowCount:I

    return v0
.end method

.method public getRowWithKey(J)Lorg/h2/result/Row;
    .locals 3

    invoke-virtual {p0, p1, p2}, Lorg/h2/index/PageData;->find(J)I

    move-result v0

    iget-object v1, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    iget-object v2, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    aget v0, v2, v0

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/h2/index/PageData;->getRowWithKey(J)Lorg/h2/result/Row;

    move-result-object p1

    return-object p1
.end method

.method public init(Lorg/h2/index/PageData;JLorg/h2/index/PageData;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lorg/h2/index/PageData;->entryCount:I

    invoke-virtual {p1}, Lorg/h2/util/CacheObject;->getPos()I

    move-result p1

    invoke-virtual {p4}, Lorg/h2/util/CacheObject;->getPos()I

    move-result p4

    filled-new-array {p1, p4}, [I

    move-result-object p1

    iput-object p1, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    new-array p1, v0, [J

    const/4 p4, 0x0

    aput-wide p2, p1, p4

    iput-object p1, p0, Lorg/h2/index/PageData;->keys:[J

    iget p1, p0, Lorg/h2/index/PageDataNode;->length:I

    invoke-static {p2, p3}, Lorg/h2/store/Data;->getVarLongLen(J)I

    move-result p2

    add-int/lit8 p2, p2, 0x4

    add-int/2addr p2, p1

    iput p2, p0, Lorg/h2/index/PageDataNode;->length:I

    invoke-direct {p0}, Lorg/h2/index/PageDataNode;->check()V

    return-void
.end method

.method public moveChild(II)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/h2/index/PageData;->entryCount:I

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    iget-object p1, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    iget-object v2, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {p1, p0, v2}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    iput-boolean v0, p0, Lorg/h2/index/PageData;->written:Z

    iget-object p1, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/store/PageStore;->getChangeCount()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/h2/store/Page;->changeCount:J

    iget-object p1, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    aput p2, p1, v1

    iget-object p1, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public moveTo(Lorg/h2/engine/Session;I)V
    .locals 4

    iget-object v0, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lorg/h2/index/PageData;->entryCount:I

    add-int/lit8 v3, v3, 0x1

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/h2/index/PageData;->parentPageId:I

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    :cond_1
    iget-object v2, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, p0, v2}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    iget-object v2, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    iget v3, p0, Lorg/h2/index/PageData;->parentPageId:I

    invoke-static {v2, p2, v3}, Lorg/h2/index/PageDataNode;->create(Lorg/h2/index/PageDataIndex;II)Lorg/h2/index/PageDataNode;

    move-result-object v2

    iget v3, p0, Lorg/h2/index/PageDataNode;->rowCountStored:I

    iput v3, v2, Lorg/h2/index/PageDataNode;->rowCountStored:I

    iget v3, p0, Lorg/h2/index/PageDataNode;->rowCount:I

    iput v3, v2, Lorg/h2/index/PageDataNode;->rowCount:I

    iget-object v3, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    iput-object v3, v2, Lorg/h2/index/PageDataNode;->childPageIds:[I

    iget-object v3, p0, Lorg/h2/index/PageData;->keys:[J

    iput-object v3, v2, Lorg/h2/index/PageData;->keys:[J

    iget v3, p0, Lorg/h2/index/PageData;->entryCount:I

    iput v3, v2, Lorg/h2/index/PageData;->entryCount:I

    iget v3, p0, Lorg/h2/index/PageDataNode;->length:I

    iput v3, v2, Lorg/h2/index/PageDataNode;->length:I

    invoke-virtual {v0, v2}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    iget v2, p0, Lorg/h2/index/PageData;->parentPageId:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v2, p1, p2}, Lorg/h2/index/PageDataIndex;->setRootPageId(Lorg/h2/engine/Session;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v2}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    move-result-object p1

    check-cast p1, Lorg/h2/index/PageDataNode;

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v2

    invoke-virtual {p1, v2, p2}, Lorg/h2/index/PageDataNode;->moveChild(II)V

    :goto_1
    iget p1, p0, Lorg/h2/index/PageData;->entryCount:I

    add-int/lit8 p1, p1, 0x1

    if-ge v1, p1, :cond_3

    iget-object p1, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    aget p1, p1, v1

    invoke-virtual {v0, p1}, Lorg/h2/store/PageStore;->getPage(I)Lorg/h2/store/Page;

    move-result-object p1

    check-cast p1, Lorg/h2/index/PageData;

    invoke-virtual {p1, p2}, Lorg/h2/index/PageData;->setParentPageId(I)V

    invoke-virtual {v0, p1}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/h2/store/PageStore;->free(I)V

    return-void
.end method

.method public remapChildren(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/h2/index/PageData;->entryCount:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    aget v1, v1, v0

    iget-object v2, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v2, v1, p1}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v1

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/h2/index/PageData;->setParentPageId(I)V

    iget-object v2, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v2}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(J)Z
    .locals 4

    invoke-virtual {p0, p1, p2}, Lorg/h2/index/PageData;->find(J)I

    move-result v0

    iget-object v1, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    iget-object v2, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    aget v2, v2, v0

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/h2/index/PageDataIndex;->getPage(II)Lorg/h2/index/PageData;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/h2/index/PageData;->remove(J)Z

    move-result p1

    iget-object p2, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p2}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p2

    iget-object v2, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {p2, p0, v2}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    const/4 p2, -0x1

    invoke-direct {p0, p2}, Lorg/h2/index/PageDataNode;->updateRowCount(I)V

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    iget-object p1, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    invoke-virtual {v1}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/h2/store/PageStore;->free(I)V

    iget p1, p0, Lorg/h2/index/PageData;->entryCount:I

    const/4 v1, 0x1

    if-ge p1, v1, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, v0}, Lorg/h2/index/PageDataNode;->removeChild(I)V

    iget-object p1, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    return p2
.end method

.method public setRowCountStored(I)V
    .locals 2

    iput p1, p0, Lorg/h2/index/PageDataNode;->rowCount:I

    iget v0, p0, Lorg/h2/index/PageDataNode;->rowCountStored:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lorg/h2/index/PageDataNode;->rowCountStored:I

    iget-object p1, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {p1, p0, v0}, Lorg/h2/store/PageStore;->logUndo(Lorg/h2/store/Page;Lorg/h2/store/Data;)V

    iget-boolean p1, p0, Lorg/h2/index/PageData;->written:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/store/PageStore;->getChangeCount()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/store/Page;->changeCount:J

    invoke-direct {p0}, Lorg/h2/index/PageDataNode;->writeHead()V

    :cond_0
    iget-object p1, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {p1}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/h2/store/PageStore;->update(Lorg/h2/store/Page;)V

    :cond_1
    return-void
.end method

.method public split(I)Lorg/h2/index/PageData;
    .locals 7

    iget-object v0, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->allocatePage()I

    move-result v0

    iget-object v1, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    iget v2, p0, Lorg/h2/index/PageData;->parentPageId:I

    invoke-static {v1, v0, v2}, Lorg/h2/index/PageDataNode;->create(Lorg/h2/index/PageDataIndex;II)Lorg/h2/index/PageDataNode;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    aget v1, v1, p1

    :goto_0
    iget v2, p0, Lorg/h2/index/PageData;->entryCount:I

    if-ge p1, v2, :cond_0

    iget v2, v0, Lorg/h2/index/PageData;->entryCount:I

    iget-object v3, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    add-int/lit8 v4, p1, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lorg/h2/index/PageData;->keys:[J

    aget-wide v5, v4, p1

    invoke-direct {v0, v2, v3, v5, v6}, Lorg/h2/index/PageDataNode;->addChild(IIJ)V

    invoke-direct {p0, p1}, Lorg/h2/index/PageDataNode;->removeChild(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    add-int/lit8 p1, p1, -0x1

    aget v2, v2, p1

    invoke-direct {p0, p1}, Lorg/h2/index/PageDataNode;->removeChild(I)V

    iget-object v3, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    aput v2, v3, p1

    iget-object p1, v0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    const/4 v2, 0x0

    aput v1, p1, v2

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/h2/index/PageDataNode;->remapChildren(I)V

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

    const-string v1, "] data node table:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v1}, Lorg/h2/engine/DbObjectBase;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " entries:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/index/PageData;->entryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/index/PageDataNode;->childPageIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write()V
    .locals 3

    invoke-direct {p0}, Lorg/h2/index/PageDataNode;->writeData()V

    iget-object v0, p0, Lorg/h2/index/PageData;->index:Lorg/h2/index/PageDataIndex;

    invoke-virtual {v0}, Lorg/h2/index/PageDataIndex;->getPageStore()Lorg/h2/store/PageStore;

    move-result-object v0

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v1

    iget-object v2, p0, Lorg/h2/index/PageData;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, v1, v2}, Lorg/h2/store/PageStore;->writePage(ILorg/h2/store/Data;)V

    return-void
.end method
