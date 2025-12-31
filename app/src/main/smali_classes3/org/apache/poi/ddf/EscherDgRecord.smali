.class public Lorg/apache/poi/ddf/EscherDgRecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "SourceFile"


# static fields
.field public static final RECORD_DESCRIPTION:Ljava/lang/String; = "MsofbtDg"

.field public static final RECORD_ID:S = -0xff8s


# instance fields
.field private field_1_numShapes:I

.field private field_2_lastMSOSPID:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    return-void
.end method


# virtual methods
.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherRecord;->readHeader([BI)I

    add-int/lit8 p3, p2, 0x8

    invoke-static {p1, p3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p3

    iput p3, p0, Lorg/apache/poi/ddf/EscherDgRecord;->field_1_numShapes:I

    add-int/lit8 p2, p2, 0xc

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ddf/EscherDgRecord;->field_2_lastMSOSPID:I

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDgRecord;->getRecordSize()I

    move-result p1

    return p1
.end method

.method public getAttributeMap()[[Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lorg/apache/poi/ddf/EscherDgRecord;->field_1_numShapes:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "NumShapes"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    iget v0, p0, Lorg/apache/poi/ddf/EscherDgRecord;->field_2_lastMSOSPID:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "LastMSOSPID"

    aput-object v6, v5, v4

    aput-object v0, v5, v3

    new-array v0, v1, [[Ljava/lang/Object;

    aput-object v2, v0, v4

    aput-object v5, v0, v3

    return-object v0
.end method

.method public getDrawingGroupId()S
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getOptions()S

    move-result v0

    shr-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    return v0
.end method

.method public getLastMSOSPID()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ddf/EscherDgRecord;->field_2_lastMSOSPID:I

    return v0
.end method

.method public getNumShapes()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ddf/EscherDgRecord;->field_1_numShapes:I

    return v0
.end method

.method public getRecordId()S
    .locals 1

    const/16 v0, -0xff8

    return v0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 1

    const-string v0, "Dg"

    return-object v0
.end method

.method public getRecordSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public incrementShapeCount()V
    .locals 1

    iget v0, p0, Lorg/apache/poi/ddf/EscherDgRecord;->field_1_numShapes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/poi/ddf/EscherDgRecord;->field_1_numShapes:I

    return-void
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDgRecord;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getOptions()S

    move-result v0

    invoke-static {p2, p1, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDgRecord;->getRecordId()S

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, p1, 0x4

    const/16 v1, 0x8

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x8

    iget v1, p0, Lorg/apache/poi/ddf/EscherDgRecord;->field_1_numShapes:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0xc

    iget v1, p0, Lorg/apache/poi/ddf/EscherDgRecord;->field_2_lastMSOSPID:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 p1, p1, 0x10

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDgRecord;->getRecordId()S

    move-result p2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDgRecord;->getRecordSize()I

    move-result v0

    invoke-interface {p3, p1, p2, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherDgRecord;->getRecordSize()I

    move-result p1

    return p1
.end method

.method public setLastMSOSPID(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherDgRecord;->field_2_lastMSOSPID:I

    return-void
.end method

.method public setNumShapes(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherDgRecord;->field_1_numShapes:I

    return-void
.end method
