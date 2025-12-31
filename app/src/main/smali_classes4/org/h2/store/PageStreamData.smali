.class public Lorg/h2/store/PageStreamData;
.super Lorg/h2/store/Page;
.source "SourceFile"


# static fields
.field private static final DATA_START:I = 0xb


# instance fields
.field private data:Lorg/h2/store/Data;

.field private logKey:I

.field private remaining:I

.field private final store:Lorg/h2/store/PageStore;

.field private trunk:I


# direct methods
.method private constructor <init>(Lorg/h2/store/PageStore;III)V
    .locals 0

    invoke-direct {p0}, Lorg/h2/store/Page;-><init>()V

    invoke-virtual {p0, p2}, Lorg/h2/util/CacheObject;->setPos(I)V

    iput-object p1, p0, Lorg/h2/store/PageStreamData;->store:Lorg/h2/store/PageStore;

    iput p3, p0, Lorg/h2/store/PageStreamData;->trunk:I

    iput p4, p0, Lorg/h2/store/PageStreamData;->logKey:I

    return-void
.end method

.method public static create(Lorg/h2/store/PageStore;III)Lorg/h2/store/PageStreamData;
    .locals 1

    new-instance v0, Lorg/h2/store/PageStreamData;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/h2/store/PageStreamData;-><init>(Lorg/h2/store/PageStore;III)V

    return-object v0
.end method

.method public static getCapacity(I)I
    .locals 0

    add-int/lit8 p0, p0, -0xb

    return p0
.end method

.method public static getReadStart()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method public static read(Lorg/h2/store/PageStore;Lorg/h2/store/Data;I)Lorg/h2/store/PageStreamData;
    .locals 2

    .line 1
    new-instance v0, Lorg/h2/store/PageStreamData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1, v1}, Lorg/h2/store/PageStreamData;-><init>(Lorg/h2/store/PageStore;III)V

    iput-object p1, v0, Lorg/h2/store/PageStreamData;->data:Lorg/h2/store/Data;

    invoke-direct {v0}, Lorg/h2/store/PageStreamData;->read()V

    return-object v0
.end method

.method private read()V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/h2/store/PageStreamData;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->reset()V

    iget-object v0, p0, Lorg/h2/store/PageStreamData;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readByte()B

    iget-object v0, p0, Lorg/h2/store/PageStreamData;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readShortInt()S

    iget-object v0, p0, Lorg/h2/store/PageStreamData;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    iput v0, p0, Lorg/h2/store/PageStreamData;->trunk:I

    iget-object v0, p0, Lorg/h2/store/PageStreamData;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    iput v0, p0, Lorg/h2/store/PageStreamData;->logKey:I

    return-void
.end method


# virtual methods
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

.method public getLogKey()I
    .locals 1

    iget v0, p0, Lorg/h2/store/PageStreamData;->logKey:I

    return v0
.end method

.method public getMemory()I
    .locals 1

    iget-object v0, p0, Lorg/h2/store/PageStreamData;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getRemaining()I
    .locals 1

    iget v0, p0, Lorg/h2/store/PageStreamData;->remaining:I

    return v0
.end method

.method public initWrite()V
    .locals 2

    iget-object v0, p0, Lorg/h2/store/PageStreamData;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->createData()Lorg/h2/store/Data;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/PageStreamData;->data:Lorg/h2/store/Data;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeByte(B)V

    iget-object v0, p0, Lorg/h2/store/PageStreamData;->data:Lorg/h2/store/Data;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeShortInt(I)V

    iget-object v0, p0, Lorg/h2/store/PageStreamData;->data:Lorg/h2/store/Data;

    iget v1, p0, Lorg/h2/store/PageStreamData;->trunk:I

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeInt(I)V

    iget-object v0, p0, Lorg/h2/store/PageStreamData;->data:Lorg/h2/store/Data;

    iget v1, p0, Lorg/h2/store/PageStreamData;->logKey:I

    invoke-virtual {v0, v1}, Lorg/h2/store/Data;->writeInt(I)V

    iget-object v0, p0, Lorg/h2/store/PageStreamData;->store:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getPageSize()I

    move-result v0

    iget-object v1, p0, Lorg/h2/store/PageStreamData;->data:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->length()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/h2/store/PageStreamData;->remaining:I

    return-void
.end method

.method public moveTo(Lorg/h2/engine/Session;I)V
    .locals 0

    return-void
.end method

.method public read(I[BII)V
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/h2/store/PageStreamData;->data:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] stream data key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/store/PageStreamData;->logKey:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/store/PageStreamData;->data:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " remaining:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/store/PageStreamData;->remaining:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write([BII)I
    .locals 1

    .line 1
    iget v0, p0, Lorg/h2/store/PageStreamData;->remaining:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lorg/h2/store/PageStreamData;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, p1, p2, p3}, Lorg/h2/store/Data;->write([BII)V

    iget p1, p0, Lorg/h2/store/PageStreamData;->remaining:I

    sub-int/2addr p1, p3

    iput p1, p0, Lorg/h2/store/PageStreamData;->remaining:I

    return p3
.end method

.method public write()V
    .locals 3

    .line 2
    iget-object v0, p0, Lorg/h2/store/PageStreamData;->store:Lorg/h2/store/PageStore;

    invoke-virtual {p0}, Lorg/h2/util/CacheObject;->getPos()I

    move-result v1

    iget-object v2, p0, Lorg/h2/store/PageStreamData;->data:Lorg/h2/store/Data;

    invoke-virtual {v0, v1, v2}, Lorg/h2/store/PageStore;->writePage(ILorg/h2/store/Data;)V

    return-void
.end method
