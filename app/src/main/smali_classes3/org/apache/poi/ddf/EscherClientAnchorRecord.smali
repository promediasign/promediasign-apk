.class public Lorg/apache/poi/ddf/EscherClientAnchorRecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "SourceFile"


# static fields
.field public static final RECORD_DESCRIPTION:Ljava/lang/String; = "MsofbtClientAnchor"

.field public static final RECORD_ID:S = -0xff0s


# instance fields
.field private field_1_flag:S

.field private field_2_col1:S

.field private field_3_dx1:S

.field private field_4_row1:S

.field private field_5_dy1:S

.field private field_6_col2:S

.field private field_7_dx2:S

.field private field_8_row2:S

.field private field_9_dy2:S

.field private remainingData:[B

.field private shortRecord:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->remainingData:[B

    iput-boolean v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->shortRecord:Z

    return-void
.end method


# virtual methods
.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 5

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherRecord;->readHeader([BI)I

    move-result p3

    add-int/lit8 v0, p2, 0x8

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eq p3, v1, :cond_1

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v1

    iput-short v1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_1_flag:S

    add-int/lit8 v1, p2, 0xa

    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v1

    iput-short v1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_2_col1:S

    add-int/lit8 v1, p2, 0xc

    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v1

    iput-short v1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_3_dx1:S

    add-int/lit8 v1, p2, 0xe

    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v1

    iput-short v1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_4_row1:S

    const/16 v1, 0x12

    if-lt p3, v1, :cond_0

    add-int/lit8 v4, p2, 0x10

    invoke-static {p1, v4}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v4

    iput-short v4, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_5_dy1:S

    add-int/lit8 v4, p2, 0x12

    invoke-static {p1, v4}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v4

    iput-short v4, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_6_col2:S

    add-int/lit8 v4, p2, 0x14

    invoke-static {p1, v4}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v4

    iput-short v4, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_7_dx2:S

    add-int/lit8 v4, p2, 0x16

    invoke-static {p1, v4}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v4

    iput-short v4, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_8_row2:S

    add-int/lit8 p2, p2, 0x18

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result p2

    iput-short p2, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_9_dy2:S

    iput-boolean v3, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->shortRecord:Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->shortRecord:Z

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    sub-int/2addr p3, v1

    new-array p2, p3, [B

    iput-object p2, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->remainingData:[B

    add-int/2addr v0, v1

    invoke-static {p1, v0, p2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    return v1
.end method

.method public getAttributeMap()[[Ljava/lang/Object;
    .locals 15

    iget-short v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_1_flag:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Flag"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    iget-short v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_2_col1:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "Col1"

    aput-object v6, v5, v4

    aput-object v0, v5, v3

    iget-short v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_3_dx1:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "DX1"

    aput-object v7, v6, v4

    aput-object v0, v6, v3

    iget-short v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_4_row1:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    new-array v7, v1, [Ljava/lang/Object;

    const-string v8, "Row1"

    aput-object v8, v7, v4

    aput-object v0, v7, v3

    iget-short v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_5_dy1:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "DY1"

    aput-object v9, v8, v4

    aput-object v0, v8, v3

    iget-short v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_6_col2:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    new-array v9, v1, [Ljava/lang/Object;

    const-string v10, "Col2"

    aput-object v10, v9, v4

    aput-object v0, v9, v3

    iget-short v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_7_dx2:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    new-array v10, v1, [Ljava/lang/Object;

    const-string v11, "DX2"

    aput-object v11, v10, v4

    aput-object v0, v10, v3

    iget-short v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_8_row2:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    new-array v11, v1, [Ljava/lang/Object;

    const-string v12, "Row2"

    aput-object v12, v11, v4

    aput-object v0, v11, v3

    iget-short v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_9_dy2:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    new-array v12, v1, [Ljava/lang/Object;

    const-string v13, "DY2"

    aput-object v13, v12, v4

    aput-object v0, v12, v3

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->remainingData:[B

    new-array v13, v1, [Ljava/lang/Object;

    const-string v14, "Extra Data"

    aput-object v14, v13, v4

    aput-object v0, v13, v3

    const/16 v0, 0xa

    new-array v0, v0, [[Ljava/lang/Object;

    aput-object v2, v0, v4

    aput-object v5, v0, v3

    aput-object v6, v0, v1

    const/4 v1, 0x3

    aput-object v7, v0, v1

    const/4 v1, 0x4

    aput-object v8, v0, v1

    const/4 v1, 0x5

    aput-object v9, v0, v1

    const/4 v1, 0x6

    aput-object v10, v0, v1

    const/4 v1, 0x7

    aput-object v11, v0, v1

    const/16 v1, 0x8

    aput-object v12, v0, v1

    const/16 v1, 0x9

    aput-object v13, v0, v1

    return-object v0
.end method

.method public getCol1()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_2_col1:S

    return v0
.end method

.method public getCol2()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_6_col2:S

    return v0
.end method

.method public getDx1()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_3_dx1:S

    return v0
.end method

.method public getDx2()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_7_dx2:S

    return v0
.end method

.method public getDy1()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_5_dy1:S

    return v0
.end method

.method public getDy2()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_9_dy2:S

    return v0
.end method

.method public getFlag()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_1_flag:S

    return v0
.end method

.method public getRecordId()S
    .locals 1

    const/16 v0, -0xff0

    return v0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 1

    const-string v0, "ClientAnchor"

    return-object v0
.end method

.method public getRecordSize()I
    .locals 2

    iget-boolean v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->shortRecord:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/16 v0, 0x12

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->remainingData:[B

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public getRemainingData()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->remainingData:[B

    return-object v0
.end method

.method public getRow1()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_4_row1:S

    return v0
.end method

.method public getRow2()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_8_row2:S

    return v0
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 7

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->remainingData:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->remainingData:[B

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getOptions()S

    move-result v0

    invoke-static {p2, p1, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getRecordId()S

    move-result v2

    invoke-static {p2, v0, v2}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->remainingData:[B

    array-length v0, v0

    iget-boolean v2, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->shortRecord:Z

    const/16 v3, 0x12

    const/16 v4, 0x8

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    goto :goto_0

    :cond_1
    const/16 v2, 0x12

    :goto_0
    add-int/2addr v0, v2

    add-int/lit8 v2, p1, 0x4

    invoke-static {p2, v2, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x8

    iget-short v2, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_1_flag:S

    invoke-static {p2, v0, v2}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v2, p1, 0xa

    iget-short v5, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_2_col1:S

    invoke-static {p2, v2, v5}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v2, p1, 0xc

    iget-short v5, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_3_dx1:S

    invoke-static {p2, v2, v5}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v2, p1, 0xe

    iget-short v5, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_4_row1:S

    invoke-static {p2, v2, v5}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    iget-boolean v2, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->shortRecord:Z

    if-nez v2, :cond_2

    add-int/lit8 v2, p1, 0x10

    iget-short v5, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_5_dy1:S

    invoke-static {p2, v2, v5}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v2, p1, 0x12

    iget-short v5, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_6_col2:S

    invoke-static {p2, v2, v5}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v2, p1, 0x14

    iget-short v5, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_7_dx2:S

    invoke-static {p2, v2, v5}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v2, p1, 0x16

    iget-short v5, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_8_row2:S

    invoke-static {p2, v2, v5}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v2, p1, 0x18

    iget-short v5, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_9_dy2:S

    invoke-static {p2, v2, v5}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    :cond_2
    iget-object v2, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->remainingData:[B

    iget-boolean v5, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->shortRecord:Z

    if-eqz v5, :cond_3

    const/16 v5, 0x10

    goto :goto_1

    :cond_3
    const/16 v5, 0x1a

    :goto_1
    add-int/2addr v5, p1

    array-length v6, v2

    invoke-static {v2, v1, p2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean p2, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->shortRecord:Z

    if-eqz p2, :cond_4

    const/16 v3, 0x8

    :cond_4
    add-int/2addr v0, v3

    iget-object p2, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->remainingData:[B

    array-length p2, p2

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->getRecordId()S

    move-result p2

    sub-int p1, v0, p1

    invoke-interface {p3, v0, p2, p1, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    return p1
.end method

.method public setCol1(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_2_col1:S

    return-void
.end method

.method public setCol2(S)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->shortRecord:Z

    iput-short p1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_6_col2:S

    return-void
.end method

.method public setDx1(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_3_dx1:S

    return-void
.end method

.method public setDx2(S)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->shortRecord:Z

    iput-short p1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_7_dx2:S

    return-void
.end method

.method public setDy1(S)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->shortRecord:Z

    iput-short p1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_5_dy1:S

    return-void
.end method

.method public setDy2(S)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->shortRecord:Z

    iput-short p1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_9_dy2:S

    return-void
.end method

.method public setFlag(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_1_flag:S

    return-void
.end method

.method public setRemainingData([B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->remainingData:[B

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->remainingData:[B

    :goto_0
    return-void
.end method

.method public setRow1(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_4_row1:S

    return-void
.end method

.method public setRow2(S)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->shortRecord:Z

    iput-short p1, p0, Lorg/apache/poi/ddf/EscherClientAnchorRecord;->field_8_row2:S

    return-void
.end method
