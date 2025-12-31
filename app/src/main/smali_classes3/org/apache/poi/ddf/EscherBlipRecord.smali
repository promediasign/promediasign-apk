.class public Lorg/apache/poi/ddf/EscherBlipRecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "SourceFile"


# static fields
.field public static final RECORD_DESCRIPTION:Ljava/lang/String; = "msofbtBlip"

.field public static final RECORD_ID_END:S = -0xee9s

.field public static final RECORD_ID_START:S = -0xfe8s


# instance fields
.field private field_pictureData:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    return-void
.end method


# virtual methods
.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherRecord;->readHeader([BI)I

    move-result p3

    add-int/lit8 p2, p2, 0x8

    new-array v0, p3, [B

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherBlipRecord;->field_pictureData:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p3, p3, 0x8

    return p3
.end method

.method public getAttributeMap()[[Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBlipRecord;->getPicturedata()[B

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Extra Data"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    new-array v0, v2, [[Ljava/lang/Object;

    aput-object v1, v0, v3

    return-object v0
.end method

.method public getPicturedata()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBlipRecord;->field_pictureData:[B

    return-object v0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 1

    const-string v0, "Blip"

    return-object v0
.end method

.method public getRecordSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBlipRecord;->field_pictureData:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 3

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

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBlipRecord;->field_pictureData:[B

    add-int/lit8 p1, p1, 0x4

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lorg/apache/poi/ddf/EscherBlipRecord;->field_pictureData:[B

    array-length p2, p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result p2

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherBlipRecord;->field_pictureData:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    invoke-interface {p3, p1, p2, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    iget-object p1, p0, Lorg/apache/poi/ddf/EscherBlipRecord;->field_pictureData:[B

    array-length p1, p1

    add-int/lit8 p1, p1, 0x4

    return p1
.end method

.method public setPictureData([B)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/poi/ddf/EscherBlipRecord;->setPictureData([BII)V

    return-void
.end method

.method public setPictureData([BII)V
    .locals 2

    .line 2
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_0

    new-array v0, p3, [B

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherBlipRecord;->field_pictureData:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "picture data can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
