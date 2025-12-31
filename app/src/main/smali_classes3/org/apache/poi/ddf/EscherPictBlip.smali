.class public final Lorg/apache/poi/ddf/EscherPictBlip;
.super Lorg/apache/poi/ddf/EscherBlipRecord;
.source "SourceFile"


# static fields
.field public static final RECORD_ID_EMF:S = -0xfe6s

.field public static final RECORD_ID_PICT:S = -0xfe4s

.field public static final RECORD_ID_WMF:S = -0xfe5s

.field private static final log:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final field_1_UID:[B

.field private field_2_cb:I

.field private field_3_rcBounds_x1:I

.field private field_3_rcBounds_x2:I

.field private field_3_rcBounds_y1:I

.field private field_3_rcBounds_y2:I

.field private field_4_ptSize_h:I

.field private field_4_ptSize_w:I

.field private field_5_cbSave:I

.field private field_6_fCompression:B

.field private field_7_fFilter:B

.field private raw_pictureData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/ddf/EscherPictBlip;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ddf/EscherPictBlip;->log:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherBlipRecord;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_1_UID:[B

    return-void
.end method

.method private static inflatePictureData([B)[B
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/zip/InflaterInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x1000

    new-array v3, v3, [B

    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    sget-object v2, Lorg/apache/poi/ddf/EscherPictBlip;->log:Lorg/apache/poi/util/POILogger;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Possibly corrupt compression or non-compressed data"

    aput-object v4, v3, v0

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 4

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherRecord;->readHeader([BI)I

    move-result p3

    add-int/lit8 v0, p2, 0x8

    iget-object v1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_1_UID:[B

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, p2, 0x18

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_2_cb:I

    add-int/lit8 v0, p2, 0x1c

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_x1:I

    add-int/lit8 v0, p2, 0x20

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_y1:I

    add-int/lit8 v0, p2, 0x24

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_x2:I

    add-int/lit8 v0, p2, 0x28

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_y2:I

    add-int/lit8 v0, p2, 0x2c

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_4_ptSize_w:I

    add-int/lit8 v0, p2, 0x30

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_4_ptSize_h:I

    add-int/lit8 v0, p2, 0x34

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_5_cbSave:I

    add-int/lit8 v1, p2, 0x38

    aget-byte v1, p1, v1

    iput-byte v1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_6_fCompression:B

    add-int/lit8 v1, p2, 0x39

    aget-byte v1, p1, v1

    iput-byte v1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_7_fFilter:B

    add-int/lit8 p2, p2, 0x3a

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->raw_pictureData:[B

    invoke-static {p1, p2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-byte p1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_6_fCompression:B

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->raw_pictureData:[B

    invoke-static {p1}, Lorg/apache/poi/ddf/EscherPictBlip;->inflatePictureData([B)[B

    move-result-object p1

    invoke-super {p0, p1}, Lorg/apache/poi/ddf/EscherBlipRecord;->setPictureData([B)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->raw_pictureData:[B

    invoke-super {p0, p1}, Lorg/apache/poi/ddf/EscherBlipRecord;->setPictureData([B)V

    :goto_0
    add-int/lit8 p3, p3, 0x8

    return p3
.end method

.method public getAttributeMap()[[Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_1_UID:[B

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "UID"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    iget v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_2_cb:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "Uncompressed Size"

    aput-object v6, v5, v4

    aput-object v0, v5, v3

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherPictBlip;->getBounds()Ljava/awt/Rectangle;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/Rectangle;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "Bounds"

    aput-object v7, v6, v4

    aput-object v0, v6, v3

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherPictBlip;->getSizeEMU()Ljava/awt/Dimension;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/Dimension;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v7, v1, [Ljava/lang/Object;

    const-string v8, "Size in EMU"

    aput-object v8, v7, v4

    aput-object v0, v7, v3

    iget v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_5_cbSave:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "Compressed Size"

    aput-object v9, v8, v4

    aput-object v0, v8, v3

    iget-byte v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_6_fCompression:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    new-array v9, v1, [Ljava/lang/Object;

    const-string v10, "Compression"

    aput-object v10, v9, v4

    aput-object v0, v9, v3

    iget-byte v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_7_fFilter:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    new-array v10, v1, [Ljava/lang/Object;

    const-string v11, "Filter"

    aput-object v11, v10, v4

    aput-object v0, v10, v3

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherBlipRecord;->getPicturedata()[B

    move-result-object v0

    new-array v11, v1, [Ljava/lang/Object;

    const-string v12, "Extra Data"

    aput-object v12, v11, v4

    aput-object v0, v11, v3

    const/16 v0, 0x8

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

    return-object v0
.end method

.method public getBounds()Ljava/awt/Rectangle;
    .locals 5

    new-instance v0, Ljava/awt/Rectangle;

    iget v1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_x1:I

    iget v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_y1:I

    iget v3, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_x2:I

    sub-int/2addr v3, v1

    iget v4, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_y2:I

    sub-int/2addr v4, v2

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/awt/Rectangle;-><init>(IIII)V

    return-object v0
.end method

.method public getCompressedSize()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_5_cbSave:I

    return v0
.end method

.method public getFilter()B
    .locals 1

    iget-byte v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_7_fFilter:B

    return v0
.end method

.method public getRecordSize()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->raw_pictureData:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x3a

    return v0
.end method

.method public getSizeEMU()Ljava/awt/Dimension;
    .locals 3

    new-instance v0, Ljava/awt/Dimension;

    iget v1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_4_ptSize_w:I

    iget v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_4_ptSize_h:I

    invoke-direct {v0, v1, v2}, Ljava/awt/Dimension;-><init>(II)V

    return-object v0
.end method

.method public getUID()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_1_UID:[B

    return-object v0
.end method

.method public getUncompressedSize()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_2_cb:I

    return v0
.end method

.method public isCompressed()Z
    .locals 1

    iget-byte v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_6_fCompression:B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
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

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherPictBlip;->getRecordSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x8

    iget-object v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_1_UID:[B

    const/16 v3, 0x10

    invoke-static {v2, v1, p2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, p1, 0x18

    iget v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_2_cb:I

    invoke-static {p2, v0, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x1c

    iget v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_x1:I

    invoke-static {p2, v0, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x20

    iget v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_y1:I

    invoke-static {p2, v0, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x24

    iget v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_x2:I

    invoke-static {p2, v0, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x28

    iget v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_y2:I

    invoke-static {p2, v0, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x2c

    iget v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_4_ptSize_w:I

    invoke-static {p2, v0, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x30

    iget v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_4_ptSize_h:I

    invoke-static {p2, v0, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x34

    iget v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_5_cbSave:I

    invoke-static {p2, v0, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x38

    iget-byte v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_6_fCompression:B

    aput-byte v2, p2, v0

    add-int/lit8 v0, p1, 0x39

    iget-byte v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_7_fFilter:B

    aput-byte v2, p2, v0

    add-int/lit8 v0, p1, 0x3a

    iget-object v2, p0, Lorg/apache/poi/ddf/EscherPictBlip;->raw_pictureData:[B

    array-length v3, v2

    invoke-static {v2, v1, p2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherPictBlip;->getRecordSize()I

    move-result p2

    add-int/2addr p2, p1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getRecordId()S

    move-result p1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherPictBlip;->getRecordSize()I

    move-result v0

    invoke-interface {p3, p2, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    iget-object p1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->raw_pictureData:[B

    array-length p1, p1

    add-int/lit8 p1, p1, 0x19

    return p1
.end method

.method public setBounds(Ljava/awt/Rectangle;)V
    .locals 2

    iget v0, p1, Ljava/awt/Rectangle;->x:I

    iput v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_x1:I

    iget v0, p1, Ljava/awt/Rectangle;->y:I

    iput v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_y1:I

    iget v0, p1, Ljava/awt/Rectangle;->x:I

    iget v1, p1, Ljava/awt/Rectangle;->width:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_x2:I

    iget v0, p1, Ljava/awt/Rectangle;->y:I

    iget p1, p1, Ljava/awt/Rectangle;->height:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_3_rcBounds_y2:I

    return-void
.end method

.method public setCompressed(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    :goto_0
    iput-byte p1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_6_fCompression:B

    return-void
.end method

.method public setCompressedSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_5_cbSave:I

    return-void
.end method

.method public setFilter(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_7_fFilter:B

    return-void
.end method

.method public setSizeEMU(Ljava/awt/Dimension;)V
    .locals 1

    iget v0, p1, Ljava/awt/Dimension;->width:I

    iput v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_4_ptSize_w:I

    iget p1, p1, Ljava/awt/Dimension;->height:I

    iput p1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_4_ptSize_h:I

    return-void
.end method

.method public setUID([B)V
    .locals 3

    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_1_UID:[B

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

.method public setUncompressedSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherPictBlip;->field_2_cb:I

    return-void
.end method
