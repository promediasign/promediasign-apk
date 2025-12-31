.class public final Lorg/apache/poi/hssf/record/chart/LegendRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final SPACING_CLOSE:B = 0x0t

.field public static final SPACING_MEDIUM:B = 0x1t

.field public static final SPACING_OPEN:B = 0x2t

.field public static final TYPE_BOTTOM:B = 0x0t

.field public static final TYPE_CORNER:B = 0x1t

.field public static final TYPE_LEFT:B = 0x4t

.field public static final TYPE_RIGHT:B = 0x3t

.field public static final TYPE_TOP:B = 0x2t

.field public static final TYPE_UNDOCKED:B = 0x7t

.field private static final autoPosition:Lorg/apache/poi/util/BitField;

.field private static final autoSeries:Lorg/apache/poi/util/BitField;

.field private static final autoXPositioning:Lorg/apache/poi/util/BitField;

.field private static final autoYPositioning:Lorg/apache/poi/util/BitField;

.field private static final dataTable:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x1015s

.field private static final vertical:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_1_xAxisUpperLeft:I

.field private field_2_yAxisUpperLeft:I

.field private field_3_xSize:I

.field private field_4_ySize:I

.field private field_5_type:B

.field private field_6_spacing:B

.field private field_7_options:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->autoPosition:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->autoSeries:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->autoXPositioning:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->autoYPositioning:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->vertical:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x20

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->dataTable:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_1_xAxisUpperLeft:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_2_yAxisUpperLeft:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_3_xSize:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_4_ySize:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_5_type:B

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_6_spacing:B

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LegendRecord;->clone()Lorg/apache/poi/hssf/record/chart/LegendRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/chart/LegendRecord;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/LegendRecord;-><init>()V

    iget v1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_1_xAxisUpperLeft:I

    iput v1, v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_1_xAxisUpperLeft:I

    iget v1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_2_yAxisUpperLeft:I

    iput v1, v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_2_yAxisUpperLeft:I

    iget v1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_3_xSize:I

    iput v1, v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_3_xSize:I

    iget v1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_4_ySize:I

    iput v1, v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_4_ySize:I

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_5_type:B

    iput-byte v1, v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_5_type:B

    iget-byte v1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_6_spacing:B

    iput-byte v1, v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_6_spacing:B

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public getOptions()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x1015

    return v0
.end method

.method public getSpacing()B
    .locals 1

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_6_spacing:B

    return v0
.end method

.method public getType()B
    .locals 1

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_5_type:B

    return v0
.end method

.method public getXAxisUpperLeft()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_1_xAxisUpperLeft:I

    return v0
.end method

.method public getXSize()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_3_xSize:I

    return v0
.end method

.method public getYAxisUpperLeft()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_2_yAxisUpperLeft:I

    return v0
.end method

.method public getYSize()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_4_ySize:I

    return v0
.end method

.method public isAutoPosition()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->autoPosition:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isAutoSeries()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->autoSeries:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isAutoXPositioning()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->autoXPositioning:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isAutoYPositioning()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->autoYPositioning:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isDataTable()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->dataTable:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isVertical()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->vertical:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_1_xAxisUpperLeft:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_2_yAxisUpperLeft:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_3_xSize:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_4_ySize:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_5_type:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-byte v0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_6_spacing:B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeByte(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setAutoPosition(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->autoPosition:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    return-void
.end method

.method public setAutoSeries(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->autoSeries:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    return-void
.end method

.method public setAutoXPositioning(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->autoXPositioning:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    return-void
.end method

.method public setAutoYPositioning(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->autoYPositioning:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    return-void
.end method

.method public setDataTable(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->dataTable:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    return-void
.end method

.method public setOptions(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    return-void
.end method

.method public setSpacing(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_6_spacing:B

    return-void
.end method

.method public setType(B)V
    .locals 0

    iput-byte p1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_5_type:B

    return-void
.end method

.method public setVertical(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->vertical:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_7_options:S

    return-void
.end method

.method public setXAxisUpperLeft(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_1_xAxisUpperLeft:I

    return-void
.end method

.method public setXSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_3_xSize:I

    return-void
.end method

.method public setYAxisUpperLeft(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_2_yAxisUpperLeft:I

    return-void
.end method

.method public setYSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/LegendRecord;->field_4_ySize:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[LEGEND]\n    .xAxisUpperLeft       = 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LegendRecord;->getXAxisUpperLeft()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LegendRecord;->getXAxisUpperLeft()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " )"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "    .yAxisUpperLeft       = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LegendRecord;->getYAxisUpperLeft()I

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LegendRecord;->getYAxisUpperLeft()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "    .xSize                = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LegendRecord;->getXSize()I

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LegendRecord;->getXSize()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "    .ySize                = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LegendRecord;->getYSize()I

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LegendRecord;->getYSize()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "    .type                 = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LegendRecord;->getType()B

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LegendRecord;->getType()B

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "    .spacing              = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LegendRecord;->getSpacing()B

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LegendRecord;->getSpacing()B

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "    .options              = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LegendRecord;->getOptions()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LegendRecord;->getOptions()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "         .autoPosition             = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LegendRecord;->isAutoPosition()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n         .autoSeries               = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LegendRecord;->isAutoSeries()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n         .autoXPositioning         = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LegendRecord;->isAutoXPositioning()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n         .autoYPositioning         = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LegendRecord;->isAutoYPositioning()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n         .vertical                 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LegendRecord;->isVertical()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n         .dataTable                = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LegendRecord;->isDataTable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n[/LEGEND]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
