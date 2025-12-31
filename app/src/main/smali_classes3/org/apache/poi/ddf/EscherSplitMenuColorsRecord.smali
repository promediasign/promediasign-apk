.class public Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;
.super Lorg/apache/poi/ddf/EscherRecord;
.source "SourceFile"


# static fields
.field public static final RECORD_DESCRIPTION:Ljava/lang/String; = "MsofbtSplitMenuColors"

.field public static final RECORD_ID:S = -0xee2s


# instance fields
.field private field_1_color1:I

.field private field_2_color2:I

.field private field_3_color3:I

.field private field_4_color4:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ddf/EscherRecord;-><init>()V

    return-void
.end method


# virtual methods
.method public fillFields([BILorg/apache/poi/ddf/EscherRecordFactory;)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ddf/EscherRecord;->readHeader([BI)I

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    add-int/lit8 v0, p2, 0x8

    .line 6
    .line 7
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_1_color1:I

    .line 12
    .line 13
    add-int/lit8 v0, p2, 0xc

    .line 14
    .line 15
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_2_color2:I

    .line 20
    .line 21
    add-int/lit8 v0, p2, 0x10

    .line 22
    .line 23
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_3_color3:I

    .line 28
    .line 29
    add-int/lit8 p2, p2, 0x14

    .line 30
    .line 31
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iput p1, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_4_color4:I

    .line 36
    .line 37
    add-int/lit8 p1, p3, -0x10

    .line 38
    .line 39
    if-nez p1, :cond_0

    .line 40
    .line 41
    add-int/lit8 p3, p3, 0x8

    .line 42
    .line 43
    return p3

    .line 44
    :cond_0
    new-instance p2, Lorg/apache/poi/util/RecordFormatException;

    .line 45
    .line 46
    const-string p3, "Expecting no remaining data but got "

    .line 47
    .line 48
    const-string v0, " byte(s)."

    .line 49
    .line 50
    invoke-static {p1, p3, v0}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {p2, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p2
.end method

.method public getAttributeMap()[[Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_1_color1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Color1"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    iget v0, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_2_color2:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "Color2"

    aput-object v6, v5, v4

    aput-object v0, v5, v3

    iget v0, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_3_color3:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "Color3"

    aput-object v7, v6, v4

    aput-object v0, v6, v3

    iget v0, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_4_color4:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v7, v1, [Ljava/lang/Object;

    const-string v8, "Color4"

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

.method public getColor1()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_1_color1:I

    return v0
.end method

.method public getColor2()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_2_color2:I

    return v0
.end method

.method public getColor3()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_3_color3:I

    return v0
.end method

.method public getColor4()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_4_color4:I

    return v0
.end method

.method public getRecordId()S
    .locals 1

    const/16 v0, -0xee2

    return v0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 1

    const-string v0, "SplitMenuColors"

    return-object v0
.end method

.method public getRecordSize()I
    .locals 1

    const/16 v0, 0x18

    return v0
.end method

.method public serialize(I[BLorg/apache/poi/ddf/EscherSerializationListener;)I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->getRecordId()S

    move-result v0

    invoke-interface {p3, p1, v0, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->beforeRecordSerialize(ISLorg/apache/poi/ddf/EscherRecord;)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherRecord;->getOptions()S

    move-result v0

    invoke-static {p2, p1, v0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->getRecordId()S

    move-result v1

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->getRecordSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x8

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x8

    iget v1, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_1_color1:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0xc

    iget v1, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_2_color2:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x10

    iget v1, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_3_color3:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 v0, p1, 0x14

    iget v1, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_4_color4:I

    invoke-static {p2, v0, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    add-int/lit8 p2, p1, 0x18

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->getRecordId()S

    move-result v0

    sub-int p1, p2, p1

    invoke-interface {p3, p2, v0, p1, p0}, Lorg/apache/poi/ddf/EscherSerializationListener;->afterRecordSerialize(ISILorg/apache/poi/ddf/EscherRecord;)V

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->getRecordSize()I

    move-result p1

    return p1
.end method

.method public setColor1(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_1_color1:I

    return-void
.end method

.method public setColor2(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_2_color2:I

    return-void
.end method

.method public setColor3(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_3_color3:I

    return-void
.end method

.method public setColor4(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ddf/EscherSplitMenuColorsRecord;->field_4_color4:I

    return-void
.end method
