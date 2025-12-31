.class public final Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"


# static fields
.field public static final sid:S = 0x1014s

.field private static final varyDisplayPattern:Lorg/apache/poi/util/BitField;


# instance fields
.field private field1_x_position:I

.field private field2_y_position:I

.field private field3_width:I

.field private field4_height:I

.field private field5_grbit:I

.field private field6_unknown:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->varyDisplayPattern:Lorg/apache/poi/util/BitField;

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

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field1_x_position:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field2_y_position:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field3_width:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field4_height:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field5_grbit:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUShort()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field6_unknown:I

    return-void
.end method


# virtual methods
.method public getDataSize()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field4_height:I

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x1014

    return v0
.end method

.method public getVaryDisplayPattern()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->varyDisplayPattern:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field5_grbit:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field3_width:I

    return v0
.end method

.method public getXPosition()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field1_x_position:I

    return v0
.end method

.method public getYPosition()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field2_y_position:I

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->getXPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->getYPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->getWidth()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->getHeight()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field5_grbit:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field6_unknown:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field4_height:I

    return-void
.end method

.method public setVaryDisplayPattern(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->varyDisplayPattern:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field5_grbit:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field5_grbit:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field3_width:I

    return-void
.end method

.method public setXPosition(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field1_x_position:I

    return-void
.end method

.method public setYPosition(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field2_y_position:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[CHARTFORMAT]\n    .xPosition       = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->getXPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n    .yPosition       = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->getYPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n    .width           = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n    .height          = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\n    .grBit           = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/poi/hssf/record/chart/ChartFormatRecord;->field5_grbit:I

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->intToHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n[/CHARTFORMAT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
