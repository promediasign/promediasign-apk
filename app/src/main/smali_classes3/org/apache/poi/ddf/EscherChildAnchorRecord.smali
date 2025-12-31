.class public Lorg/apache/poi/ddf/EscherChildAnchorRecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "SourceFile"


# static fields
.field public static final RECORD_DESCRIPTION:Ljava/lang/String; = "MsofbtChildAnchor"

.field public static final RECORD_ID:S = -0xff1s


# instance fields
.field private field_1_dx1:I

.field private field_2_dy1:I

.field private field_3_dx2:I

.field private field_4_dy2:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    return-void
.end method


# virtual methods
.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 3

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherRecord;->readHeader([BI)I

    move-result p3

    add-int/lit8 v0, p2, 0x8

    const/16 v1, 0x8

    if-eq p3, v1, :cond_1

    const/16 v2, 0x10

    if-ne p3, v2, :cond_0

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p3

    iput p3, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_1_dx1:I

    add-int/lit8 p3, p2, 0xc

    invoke-static {p1, p3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p3

    iput p3, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_2_dy1:I

    add-int/lit8 p3, p2, 0x10

    invoke-static {p1, p3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p3

    iput p3, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_3_dx2:I

    add-int/lit8 p2, p2, 0x14

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_4_dy2:I

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid EscherChildAnchorRecord - neither 8 nor 16 bytes."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result p3

    iput p3, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_1_dx1:I

    add-int/lit8 p3, p2, 0xa

    invoke-static {p1, p3}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result p3

    iput p3, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_2_dy1:I

    add-int/lit8 p3, p2, 0xc

    invoke-static {p1, p3}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result p3

    iput p3, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_3_dx2:I

    add-int/lit8 p2, p2, 0xe

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result p1

    iput p1, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_4_dy2:I

    const/16 v2, 0x8

    :goto_0
    add-int/2addr v2, v1

    return v2
.end method

.method public getAttributeMap()[[Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_1_dx1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "X1"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    iget v0, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_2_dy1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "Y1"

    aput-object v6, v5, v4

    aput-object v0, v5, v3

    iget v0, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_3_dx2:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "X2"

    aput-object v7, v6, v4

    aput-object v0, v6, v3

    iget v0, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_4_dy2:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v7, v1, [Ljava/lang/Object;

    const-string v8, "Y2"

    aput-object v8, v7, v4

    aput-object v0, v7, v3

    const/4 v0, 0x4

    new-array v0, v0, [[Ljava/lang/Object;

    aput-object v2, v0, v4

    aput-object v5, v0, v3

    aput-object v6, v0, v1

    const/4 v1, 0x3

    aput-object v7, v0, v1

    return-object v0
.end method

.method public getDx1()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_1_dx1:I

    return v0
.end method

.method public getDx2()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_3_dx2:I

    return v0
.end method

.method public getDy1()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_2_dy1:I

    return v0
.end method

.method public getDy2()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_4_dy2:I

    return v0
.end method

.method public getRecordId()S
    .locals 1

    const/16 v0, -0xff1

    return v0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 1

    const-string v0, "ChildAnchor"

    return-object v0
.end method

.method public getRecordSize()I
    .locals 1

    const/16 v0, 0x18

    return v0
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getOptions()S

    move-result v0

    invoke-static {p2, p1, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->getRecordId()S

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->getRecordSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x8

    iget v1, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_1_dx1:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0xc

    iget v1, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_2_dy1:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x10

    iget v1, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_3_dx2:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x14

    iget v1, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_4_dy2:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 p2, p1, 0x18

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->getRecordId()S

    move-result v0

    sub-int p1, p2, p1

    invoke-interface {p3, p2, v0, p1, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    return p1
.end method

.method public setDx1(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_1_dx1:I

    return-void
.end method

.method public setDx2(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_3_dx2:I

    return-void
.end method

.method public setDy1(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_2_dy1:I

    return-void
.end method

.method public setDy2(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherChildAnchorRecord;->field_4_dy2:I

    return-void
.end method
