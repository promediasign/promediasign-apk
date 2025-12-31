.class public final Lorg/apache/poi/ddf/UnknownEscherRecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final NO_BYTES:[B


# instance fields
.field private _childRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;"
        }
    .end annotation
.end field

.field private thedata:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/poi/ddf/UnknownEscherRecord;->NO_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    sget-object v0, Lorg/apache/poi/ddf/UnknownEscherRecord;->NO_BYTES:[B

    iput-object v0, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->_childRecords:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addChildRecord(Lorg/apache/poi/ddf/EscherRecord;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->getChildRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->clone()Lorg/apache/poi/ddf/UnknownEscherRecord;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/ddf/EscherRecord;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->clone()Lorg/apache/poi/ddf/UnknownEscherRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/ddf/UnknownEscherRecord;
    .locals 2

    .line 3
    new-instance v0, Lorg/apache/poi/ddf/UnknownEscherRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/UnknownEscherRecord;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getOptions()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherRecord;->setRecordId(S)V

    return-object v0
.end method

.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 4

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherRecord;->readHeader([BI)I

    move-result v0

    array-length v1, p1

    const/16 v2, 0x8

    add-int/2addr p2, v2

    sub-int/2addr v1, p2

    if-le v0, v1, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->isContainerRecord()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    new-array v1, v3, [B

    iput-object v1, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    :goto_0
    if-lez v0, :cond_1

    invoke-interface {p3, p1, p2}, Lorg/apache/poi/ddf/EscherRecordFactory;->createRecord([BI)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/poi/ddf/EscherRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr p2, v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->getChildRecords()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    if-gez v0, :cond_3

    const/4 v0, 0x0

    :cond_3
    new-array p3, v0, [B

    iput-object p3, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    invoke-static {p1, p2, p3, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v2

    return v0
.end method

.method public getAttributeMap()[[Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/UnknownEscherRecord;->getChildRecords()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x2

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v4

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    const-string v5, "children"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->_childRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ddf/EscherRecord;

    invoke-virtual {v5}, Lorg/apache/poi/ddf/EscherRecord;->getRecordName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->isContainerRecord()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "isContainer"

    aput-object v6, v5, v1

    aput-object v2, v5, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "Extra Data"

    aput-object v7, v6, v1

    aput-object v3, v6, v0

    const/4 v3, 0x3

    new-array v3, v3, [[Ljava/lang/Object;

    aput-object v5, v3, v1

    aput-object v2, v3, v0

    aput-object v6, v3, v4

    return-object v3
.end method

.method public getChildRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->_childRecords:Ljava/util/List;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    return-object v0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecordSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getOptions()S

    move-result v0

    invoke-static {p2, p1, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    iget-object v0, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    array-length v0, v0

    iget-object v1, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->_childRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherRecord;

    invoke-virtual {v2}, Lorg/apache/poi/ddf/EscherRecord;->getRecordSize()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p1, 0x4

    invoke-static {p2, v1, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    iget-object v0, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    add-int/lit8 v1, p1, 0x8

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->thedata:[B

    array-length v0, v0

    add-int/2addr v1, v0

    iget-object v0, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->_childRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherRecord;

    invoke-virtual {v2, v1, p2, p3}, Lorg/apache/poi/ddf/EscherRecord;->serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result p2

    sub-int p1, v1, p1

    invoke-interface {p3, v1, p2, p1, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    return p1
.end method

.method public setChildRecords(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/ddf/EscherRecord;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/ddf/UnknownEscherRecord;->_childRecords:Ljava/util/List;

    return-void
.end method
