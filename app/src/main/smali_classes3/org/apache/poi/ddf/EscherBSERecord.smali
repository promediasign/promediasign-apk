.class public final Lorg/apache/poi/ddf/EscherBSERecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "SourceFile"


# static fields
.field public static final BT_DIB:B = 0x7t

.field public static final BT_EMF:B = 0x2t

.field public static final BT_ERROR:B = 0x0t

.field public static final BT_JPEG:B = 0x5t

.field public static final BT_PICT:B = 0x4t

.field public static final BT_PNG:B = 0x6t

.field public static final BT_UNKNOWN:B = 0x1t

.field public static final BT_WMF:B = 0x3t

.field public static final RECORD_DESCRIPTION:Ljava/lang/String; = "MsofbtBSE"

.field public static final RECORD_ID:S = -0xff9s


# instance fields
.field private _remainingData:[B

.field private field_10_unused2:B

.field private field_11_unused3:B

.field private field_12_blipRecord:Lorg/apache/poi/ddf/EscherBlipRecord;

.field private field_1_blipTypeWin32:B

.field private field_2_blipTypeMacOS:B

.field private final field_3_uid:[B

.field private field_4_tag:S

.field private field_5_size:I

.field private field_6_ref:I

.field private field_7_offset:I

.field private field_8_usage:B

.field private field_9_name:B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_3_uid:[B

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    const/16 v0, -0xff9

    invoke-virtual {p0, v0}, Lorg/apache/poi/ddf/EscherRecord;->setRecordId(S)V

    return-void
.end method

.method public static getBlipType(B)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/16 v0, 0x20

    if-ge p0, v0, :cond_0

    const-string p0, " NotKnown"

    return-object p0

    :cond_0
    const-string p0, " Client"

    return-object p0

    :pswitch_0
    const-string p0, " DIB"

    return-object p0

    :pswitch_1
    const-string p0, " PNG"

    return-object p0

    :pswitch_2
    const-string p0, " JPEG"

    return-object p0

    :pswitch_3
    const-string p0, " PICT"

    return-object p0

    :pswitch_4
    const-string p0, " WMF"

    return-object p0

    :pswitch_5
    const-string p0, " EMF"

    return-object p0

    :pswitch_6
    const-string p0, " UNKNOWN"

    return-object p0

    :pswitch_7
    const-string p0, " ERROR"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 6

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherRecord;->readHeader([BI)I

    move-result v0

    add-int/lit8 v1, p2, 0x8

    aget-byte v2, p1, v1

    iput-byte v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_1_blipTypeWin32:B

    add-int/lit8 v2, p2, 0x9

    aget-byte v2, p1, v2

    iput-byte v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_2_blipTypeMacOS:B

    add-int/lit8 v2, p2, 0xa

    iget-object v3, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_3_uid:[B

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-static {p1, v2, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, p2, 0x1a

    invoke-static {p1, v2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v2

    iput-short v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_4_tag:S

    add-int/lit8 v2, p2, 0x1c

    invoke-static {p1, v2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v2

    iput v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_5_size:I

    add-int/lit8 v2, p2, 0x20

    invoke-static {p1, v2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v2

    iput v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_6_ref:I

    add-int/lit8 v2, p2, 0x24

    invoke-static {p1, v2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v2

    iput v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_7_offset:I

    add-int/lit8 v2, p2, 0x28

    aget-byte v2, p1, v2

    iput-byte v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_8_usage:B

    add-int/lit8 v2, p2, 0x29

    aget-byte v2, p1, v2

    iput-byte v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_9_name:B

    add-int/lit8 v2, p2, 0x2a

    aget-byte v2, p1, v2

    iput-byte v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_10_unused2:B

    add-int/lit8 v2, p2, 0x2b

    aget-byte v2, p1, v2

    iput-byte v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_11_unused3:B

    add-int/lit8 v0, v0, -0x24

    if-lez v0, :cond_0

    add-int/lit8 p2, p2, 0x2c

    invoke-interface {p3, p1, p2}, Lorg/apache/poi/ddf/EscherRecordFactory;->createRecord([BI)Lorg/apache/poi/ddf/EscherRecord;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ddf/EscherBlipRecord;

    iput-object v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_12_blipRecord:Lorg/apache/poi/ddf/EscherBlipRecord;

    invoke-virtual {v2, p1, p2, p3}, Lorg/apache/poi/ddf/EscherBlipRecord;->fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    add-int/lit8 p3, p2, 0x24

    add-int/2addr p3, v1

    sub-int/2addr v0, p2

    new-array p2, v0, [B

    iput-object p2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    invoke-static {p1, p3, p2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x2c

    iget-object p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_12_blipRecord:Lorg/apache/poi/ddf/EscherBlipRecord;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/ddf/EscherBlipRecord;->getRecordSize()I

    move-result v5

    :goto_1
    add-int/2addr v0, v5

    return v0
.end method

.method public getAttributeMap()[[Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    iget-byte v1, v0, Lorg/apache/poi/ddf/EscherBSERecord;->field_1_blipTypeWin32:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "BlipTypeWin32"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    iget-byte v1, v0, Lorg/apache/poi/ddf/EscherBSERecord;->field_2_blipTypeMacOS:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "BlipTypeMacOS"

    aput-object v7, v6, v5

    aput-object v1, v6, v4

    iget-object v1, v0, Lorg/apache/poi/ddf/EscherBSERecord;->field_3_uid:[B

    new-array v7, v2, [Ljava/lang/Object;

    const-string v8, "SUID"

    aput-object v8, v7, v5

    aput-object v1, v7, v4

    iget-short v1, v0, Lorg/apache/poi/ddf/EscherBSERecord;->field_4_tag:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    new-array v8, v2, [Ljava/lang/Object;

    const-string v9, "Tag"

    aput-object v9, v8, v5

    aput-object v1, v8, v4

    iget v1, v0, Lorg/apache/poi/ddf/EscherBSERecord;->field_5_size:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v9, v2, [Ljava/lang/Object;

    const-string v10, "Size"

    aput-object v10, v9, v5

    aput-object v1, v9, v4

    iget v1, v0, Lorg/apache/poi/ddf/EscherBSERecord;->field_6_ref:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v10, v2, [Ljava/lang/Object;

    const-string v11, "Ref"

    aput-object v11, v10, v5

    aput-object v1, v10, v4

    iget v1, v0, Lorg/apache/poi/ddf/EscherBSERecord;->field_7_offset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v11, v2, [Ljava/lang/Object;

    const-string v12, "Offset"

    aput-object v12, v11, v5

    aput-object v1, v11, v4

    iget-byte v1, v0, Lorg/apache/poi/ddf/EscherBSERecord;->field_8_usage:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-array v12, v2, [Ljava/lang/Object;

    const-string v13, "Usage"

    aput-object v13, v12, v5

    aput-object v1, v12, v4

    iget-byte v1, v0, Lorg/apache/poi/ddf/EscherBSERecord;->field_9_name:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-array v13, v2, [Ljava/lang/Object;

    const-string v14, "Name"

    aput-object v14, v13, v5

    aput-object v1, v13, v4

    iget-byte v1, v0, Lorg/apache/poi/ddf/EscherBSERecord;->field_10_unused2:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-array v14, v2, [Ljava/lang/Object;

    const-string v15, "Unused2"

    aput-object v15, v14, v5

    aput-object v1, v14, v4

    iget-byte v1, v0, Lorg/apache/poi/ddf/EscherBSERecord;->field_11_unused3:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    new-array v15, v2, [Ljava/lang/Object;

    const-string v16, "Unused3"

    aput-object v16, v15, v5

    aput-object v1, v15, v4

    iget-object v1, v0, Lorg/apache/poi/ddf/EscherBSERecord;->field_12_blipRecord:Lorg/apache/poi/ddf/EscherBlipRecord;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v17, "Blip Record"

    aput-object v17, v4, v5

    const/16 v16, 0x1

    aput-object v1, v4, v16

    iget-object v1, v0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    new-array v0, v2, [Ljava/lang/Object;

    const-string v17, "Extra Data"

    aput-object v17, v0, v5

    aput-object v1, v0, v16

    const/16 v1, 0xd

    new-array v1, v1, [[Ljava/lang/Object;

    aput-object v3, v1, v5

    aput-object v6, v1, v16

    aput-object v7, v1, v2

    const/4 v2, 0x3

    aput-object v8, v1, v2

    const/4 v2, 0x4

    aput-object v9, v1, v2

    const/4 v2, 0x5

    aput-object v10, v1, v2

    const/4 v2, 0x6

    aput-object v11, v1, v2

    const/4 v2, 0x7

    aput-object v12, v1, v2

    const/16 v2, 0x8

    aput-object v13, v1, v2

    const/16 v2, 0x9

    aput-object v14, v1, v2

    const/16 v2, 0xa

    aput-object v15, v1, v2

    const/16 v2, 0xb

    aput-object v4, v1, v2

    const/16 v2, 0xc

    aput-object v0, v1, v2

    return-object v1
.end method

.method public getBlipRecord()Lorg/apache/poi/ddf/EscherBlipRecord;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_12_blipRecord:Lorg/apache/poi/ddf/EscherBlipRecord;

    return-object v0
.end method

.method public getBlipTypeMacOS()B
    .locals 1

    iget-byte v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_2_blipTypeMacOS:B

    return v0
.end method

.method public getBlipTypeWin32()B
    .locals 1

    iget-byte v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_1_blipTypeWin32:B

    return v0
.end method

.method public getName()B
    .locals 1

    iget-byte v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_9_name:B

    return v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_7_offset:I

    return v0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 1

    const-string v0, "BSE"

    return-object v0
.end method

.method public getRecordSize()I
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_12_blipRecord:Lorg/apache/poi/ddf/EscherBlipRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherBlipRecord;->getRecordSize()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    if-eqz v2, :cond_1

    array-length v1, v2

    :cond_1
    add-int/lit8 v0, v0, 0x2c

    add-int/2addr v0, v1

    return v0
.end method

.method public getRef()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_6_ref:I

    return v0
.end method

.method public getRemainingData()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_5_size:I

    return v0
.end method

.method public getTag()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_4_tag:S

    return v0
.end method

.method public getUid()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_3_uid:[B

    return-object v0
.end method

.method public getUnused2()B
    .locals 1

    iget-byte v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_10_unused2:B

    return v0
.end method

.method public getUnused3()B
    .locals 1

    iget-byte v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_11_unused3:B

    return v0
.end method

.method public getUsage()B
    .locals 1

    iget-byte v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_8_usage:B

    return v0
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getOptions()S

    move-result v0

    invoke-static {p2, p1, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v2

    invoke-static {p2, v0, v2}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_12_blipRecord:Lorg/apache/poi/ddf/EscherBlipRecord;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/ddf/EscherBlipRecord;->getRecordSize()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x24

    add-int/2addr v2, v0

    add-int/lit8 v0, p1, 0x4

    invoke-static {p2, v0, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x8

    iget-byte v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_1_blipTypeWin32:B

    aput-byte v2, p2, v0

    add-int/lit8 v0, p1, 0x9

    iget-byte v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_2_blipTypeMacOS:B

    aput-byte v2, p2, v0

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_3_uid:[B

    add-int/lit8 v2, p1, 0xa

    const/16 v3, 0x10

    invoke-static {v0, v1, p2, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, p1, 0x1a

    iget-short v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_4_tag:S

    invoke-static {p2, v0, v2}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, p1, 0x1c

    iget v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_5_size:I

    invoke-static {p2, v0, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x20

    iget v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_6_ref:I

    invoke-static {p2, v0, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x24

    iget v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_7_offset:I

    invoke-static {p2, v0, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x28

    iget-byte v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_8_usage:B

    aput-byte v2, p2, v0

    add-int/lit8 v0, p1, 0x29

    iget-byte v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_9_name:B

    aput-byte v2, p2, v0

    add-int/lit8 v0, p1, 0x2a

    iget-byte v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_10_unused2:B

    aput-byte v2, p2, v0

    add-int/lit8 v0, p1, 0x2b

    iget-byte v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_11_unused3:B

    aput-byte v2, p2, v0

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_12_blipRecord:Lorg/apache/poi/ddf/EscherBlipRecord;

    if-eqz v0, :cond_2

    add-int/lit8 v2, p1, 0x2c

    new-instance v3, Lorg/apache/poi/ddf/NullEscherSerializationListener;

    invoke-direct {v3}, Lorg/apache/poi/ddf/NullEscherSerializationListener;-><init>()V

    invoke-virtual {v0, v2, p2, v3}, Lorg/apache/poi/ddf/EscherBlipRecord;->serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    add-int/lit8 v3, p1, 0x2c

    add-int/2addr v3, v0

    array-length v4, v2

    invoke-static {v2, v1, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p2, p1, 0x2c

    iget-object v1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    array-length v1, v1

    add-int/2addr p2, v1

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result v0

    sub-int p1, p2, p1

    invoke-interface {p3, p2, v0, p1, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    return p1
.end method

.method public setBlipRecord(Lorg/apache/poi/ddf/EscherBlipRecord;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_12_blipRecord:Lorg/apache/poi/ddf/EscherBlipRecord;

    return-void
.end method

.method public setBlipTypeMacOS(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_2_blipTypeMacOS:B

    return-void
.end method

.method public setBlipTypeWin32(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_1_blipTypeWin32:B

    return-void
.end method

.method public setName(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_9_name:B

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_7_offset:I

    return-void
.end method

.method public setRef(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_6_ref:I

    return-void
.end method

.method public setRemainingData([B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [B

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->_remainingData:[B

    return-void
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_5_size:I

    return-void
.end method

.method public setTag(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_4_tag:S

    return-void
.end method

.method public setUid([B)V
    .locals 3

    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_3_uid:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "uid must be byte[16]"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUnused2(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_10_unused2:B

    return-void
.end method

.method public setUnused3(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_11_unused3:B

    return-void
.end method

.method public setUsage(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/ddf/EscherBSERecord;->field_8_usage:B

    return-void
.end method
