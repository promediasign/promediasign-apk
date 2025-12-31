.class public Lorg/apache/poi/ddf/EscherBitmapBlip;
.super Lorg/apache/poi/ddf/EscherBlipRecord;
.source "SourceFile"


# static fields
.field public static final RECORD_ID_DIB:S = -0xfe1s

.field public static final RECORD_ID_JPEG:S = -0xfe3s

.field public static final RECORD_ID_PNG:S = -0xfe2s


# instance fields
.field private final field_1_UID:[B

.field private field_2_marker:B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherBlipRecord;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_1_UID:[B

    const/4 v0, -0x1

    iput-byte v0, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_2_marker:B

    return-void
.end method


# virtual methods
.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 4

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherRecord;->readHeader([BI)I

    move-result p3

    add-int/lit8 v0, p2, 0x8

    iget-object v1, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_1_UID:[B

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, p2, 0x18

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_2_marker:B

    add-int/lit8 p2, p2, 0x19

    add-int/lit8 v0, p3, -0x11

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/poi/ddf/EscherBlipRecord;->setPictureData([BII)V

    add-int/lit8 p3, p3, 0x8

    return p3
.end method

.method public getAttributeMap()[[Ljava/lang/Object;
    .locals 7

    iget-byte v0, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_2_marker:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Marker"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBlipRecord;->getPicturedata()[B

    move-result-object v0

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "Extra Data"

    aput-object v6, v5, v4

    aput-object v0, v5, v3

    new-array v0, v1, [[Ljava/lang/Object;

    aput-object v2, v0, v4

    aput-object v5, v0, v3

    return-object v0
.end method

.method public getMarker()B
    .locals 1

    iget-byte v0, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_2_marker:B

    return v0
.end method

.method public getRecordSize()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBlipRecord;->getPicturedata()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x19

    return v0
.end method

.method public getUID()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_1_UID:[B

    return-object v0
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

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBitmapBlip;->getRecordSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x8

    iget-object v1, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_1_UID:[B

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-static {v1, v3, p2, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, p1, 0x18

    iget-byte v1, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_2_marker:B

    aput-byte v1, p2, v0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBlipRecord;->getPicturedata()[B

    move-result-object v0

    add-int/lit8 v1, p1, 0x19

    array-length v2, v0

    invoke-static {v0, v3, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBitmapBlip;->getRecordSize()I

    move-result p2

    add-int/2addr p2, p1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result p1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBitmapBlip;->getRecordSize()I

    move-result v1

    invoke-interface {p3, p2, p1, v1, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    array-length p1, v0

    add-int/lit8 p1, p1, 0x19

    return p1
.end method

.method public setMarker(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_2_marker:B

    return-void
.end method

.method public setUID([B)V
    .locals 3

    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBitmapBlip;->field_1_UID:[B

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "field_1_UID must be byte[16]"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
