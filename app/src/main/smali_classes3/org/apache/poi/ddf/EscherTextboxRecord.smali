.class public final Lorg/apache/poi/ddf/EscherTextboxRecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final NO_BYTES:[B

.field public static final RECORD_DESCRIPTION:Ljava/lang/String; = "msofbtClientTextbox"

.field public static final RECORD_ID:S = -0xff3s


# instance fields
.field private thedata:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/poi/ddf/EscherTextboxRecord;->NO_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    sget-object v0, Lorg/apache/poi/ddf/EscherTextboxRecord;->NO_BYTES:[B

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherTextboxRecord;->clone()Lorg/apache/poi/ddf/EscherTextboxRecord;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/ddf/EscherRecord;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherTextboxRecord;->clone()Lorg/apache/poi/ddf/EscherTextboxRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/ddf/EscherTextboxRecord;
    .locals 2

    .line 3
    new-instance v0, Lorg/apache/poi/ddf/EscherTextboxRecord;

    invoke-direct {v0}, Lorg/apache/poi/ddf/EscherTextboxRecord;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getOptions()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherRecord;->setOptions(S)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherRecord;->setRecordId(S)V

    iget-object v1, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    return-object v0
.end method

.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherRecord;->readHeader([BI)I

    move-result p3

    new-array v0, p3, [B

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    add-int/lit8 p2, p2, 0x8

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p3, p3, 0x8

    return p3
.end method

.method public getAttributeMap()[[Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getChildRecords()Ljava/util/List;

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

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getChildRecords()Ljava/util/List;

    move-result-object v2

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

    iget-object v3, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

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

.method public getData()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    return-object v0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 1

    const-string v0, "ClientTextbox"

    return-object v0
.end method

.method public getRecordSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

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

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    array-length v0, v0

    add-int/lit8 v1, p1, 0x4

    invoke-static {p2, v1, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    add-int/lit8 v1, p1, 0x8

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    array-length p2, p2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result p2

    sub-int p1, v1, p1

    invoke-interface {p3, v1, p2, p1, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherTextboxRecord;->getRecordSize()I

    move-result p2

    if-ne p1, p2, :cond_0

    return p1

    :cond_0
    new-instance p2, Lorg/apache/poi/util/RecordFormatException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes written but getRecordSize() reports "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherTextboxRecord;->getRecordSize()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setData([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/poi/ddf/EscherTextboxRecord;->setData([BII)V

    return-void
.end method

.method public setData([BII)V
    .locals 2

    .line 2
    new-array v0, p3, [B

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherTextboxRecord;->thedata:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
