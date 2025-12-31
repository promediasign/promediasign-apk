.class public Lorg/apache/poi/ddf/EscherSpRecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "SourceFile"


# static fields
.field public static final FLAG_BACKGROUND:I = 0x400

.field public static final FLAG_CHILD:I = 0x2

.field public static final FLAG_CONNECTOR:I = 0x100

.field public static final FLAG_DELETED:I = 0x8

.field public static final FLAG_FLIPHORIZ:I = 0x40

.field public static final FLAG_FLIPVERT:I = 0x80

.field public static final FLAG_GROUP:I = 0x1

.field public static final FLAG_HASSHAPETYPE:I = 0x800

.field public static final FLAG_HAVEANCHOR:I = 0x200

.field public static final FLAG_HAVEMASTER:I = 0x20

.field public static final FLAG_OLESHAPE:I = 0x10

.field public static final FLAG_PATRIARCH:I = 0x4

.field public static final RECORD_DESCRIPTION:Ljava/lang/String; = "MsofbtSp"

.field public static final RECORD_ID:S = -0xff6s


# instance fields
.field private field_1_shapeId:I

.field private field_2_flags:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    return-void
.end method

.method private decodeFlags(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    and-int/lit8 v1, p1, 0x1

    const-string v2, ""

    if-eqz v1, :cond_0

    const-string v1, "|GROUP"

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    const-string v1, "|CHILD"

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    const-string v1, "|PATRIARCH"

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    const-string v1, "|DELETED"

    goto :goto_3

    :cond_3
    move-object v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_4

    const-string v1, "|OLESHAPE"

    goto :goto_4

    :cond_4
    move-object v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_5

    const-string v1, "|HAVEMASTER"

    goto :goto_5

    :cond_5
    move-object v1, v2

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_6

    const-string v1, "|FLIPHORIZ"

    goto :goto_6

    :cond_6
    move-object v1, v2

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_7

    const-string v1, "|FLIPVERT"

    goto :goto_7

    :cond_7
    move-object v1, v2

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_8

    const-string v1, "|CONNECTOR"

    goto :goto_8

    :cond_8
    move-object v1, v2

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    and-int/lit16 v1, p1, 0x200

    if-eqz v1, :cond_9

    const-string v1, "|HAVEANCHOR"

    goto :goto_9

    :cond_9
    move-object v1, v2

    :goto_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_a

    const-string v1, "|BACKGROUND"

    goto :goto_a

    :cond_a
    move-object v1, v2

    :goto_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    and-int/lit16 p1, p1, 0x800

    if-eqz p1, :cond_b

    const-string v2, "|HASSHAPETYPE"

    :cond_b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-lez p1, :cond_c

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherRecord;->readHeader([BI)I

    add-int/lit8 p3, p2, 0x8

    invoke-static {p1, p3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p3

    iput p3, p0, Lorg/apache/poi/ddf/EscherSpRecord;->field_1_shapeId:I

    add-int/lit8 p2, p2, 0xc

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ddf/EscherSpRecord;->field_2_flags:I

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpRecord;->getRecordSize()I

    move-result p1

    return p1
.end method

.method public getAttributeMap()[[Ljava/lang/Object;
    .locals 8

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpRecord;->getShapeType()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ShapeType"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    iget v0, p0, Lorg/apache/poi/ddf/EscherSpRecord;->field_1_shapeId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "ShapeId"

    aput-object v6, v5, v4

    aput-object v0, v5, v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lorg/apache/poi/ddf/EscherSpRecord;->field_2_flags:I

    invoke-direct {p0, v6}, Lorg/apache/poi/ddf/EscherSpRecord;->decodeFlags(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " (0x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lorg/apache/poi/ddf/EscherSpRecord;->field_2_flags:I

    invoke-static {v6}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "Flags"

    aput-object v7, v6, v4

    aput-object v0, v6, v3

    const/4 v0, 0x3

    new-array v0, v0, [[Ljava/lang/Object;

    aput-object v2, v0, v4

    aput-object v5, v0, v3

    aput-object v6, v0, v1

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ddf/EscherSpRecord;->field_2_flags:I

    return v0
.end method

.method public getRecordId()S
    .locals 1

    const/16 v0, -0xff6

    return v0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 1

    const-string v0, "Sp"

    return-object v0
.end method

.method public getRecordSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public getShapeId()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ddf/EscherSpRecord;->field_1_shapeId:I

    return v0
.end method

.method public getShapeType()S
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getInstance()S

    move-result v0

    return v0
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpRecord;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getOptions()S

    move-result v0

    invoke-static {p2, p1, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpRecord;->getRecordId()S

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, p1, 0x4

    const/16 v1, 0x8

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x8

    iget v1, p0, Lorg/apache/poi/ddf/EscherSpRecord;->field_1_shapeId:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0xc

    iget v1, p0, Lorg/apache/poi/ddf/EscherSpRecord;->field_2_flags:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpRecord;->getRecordSize()I

    move-result p2

    add-int/2addr p2, p1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpRecord;->getRecordId()S

    move-result p1

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSpRecord;->getRecordSize()I

    move-result v0

    invoke-interface {p3, p2, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    const/16 p1, 0x10

    return p1
.end method

.method public setFlags(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherSpRecord;->field_2_flags:I

    return-void
.end method

.method public setShapeId(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherSpRecord;->field_1_shapeId:I

    return-void
.end method

.method public setShapeType(S)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/ddf/EscherRecord;->setInstance(S)V

    return-void
.end method
