.class public final Lorg/apache/poi/hssf/record/chart/LineFormatRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final LINE_PATTERN_DARK_GRAY_PATTERN:S = 0x6s

.field public static final LINE_PATTERN_DASH:S = 0x1s

.field public static final LINE_PATTERN_DASH_DOT:S = 0x3s

.field public static final LINE_PATTERN_DASH_DOT_DOT:S = 0x4s

.field public static final LINE_PATTERN_DOT:S = 0x2s

.field public static final LINE_PATTERN_LIGHT_GRAY_PATTERN:S = 0x8s

.field public static final LINE_PATTERN_MEDIUM_GRAY_PATTERN:S = 0x7s

.field public static final LINE_PATTERN_NONE:S = 0x5s

.field public static final LINE_PATTERN_SOLID:S = 0x0s

.field public static final WEIGHT_HAIRLINE:S = -0x1s

.field public static final WEIGHT_MEDIUM:S = 0x1s

.field public static final WEIGHT_NARROW:S = 0x0s

.field public static final WEIGHT_WIDE:S = 0x2s

.field private static final auto:Lorg/apache/poi/util/BitField;

.field private static final drawTicks:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x1007s

.field private static final unknown:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_1_lineColor:I

.field private field_2_linePattern:S

.field private field_3_weight:S

.field private field_4_format:S

.field private field_5_colourPaletteIndex:S


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->auto:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->drawTicks:Lorg/apache/poi/util/BitField;

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->unknown:Lorg/apache/poi/util/BitField;

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

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_1_lineColor:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_2_linePattern:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_3_weight:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_5_colourPaletteIndex:S

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->clone()Lorg/apache/poi/hssf/record/chart/LineFormatRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/chart/LineFormatRecord;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;-><init>()V

    iget v1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_1_lineColor:I

    iput v1, v0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_1_lineColor:I

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_2_linePattern:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_2_linePattern:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_3_weight:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_3_weight:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_5_colourPaletteIndex:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_5_colourPaletteIndex:S

    return-object v0
.end method

.method public getColourPaletteIndex()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_5_colourPaletteIndex:S

    return v0
.end method

.method public getDataSize()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public getFormat()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    return v0
.end method

.method public getLineColor()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_1_lineColor:I

    return v0
.end method

.method public getLinePattern()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_2_linePattern:S

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x1007

    return v0
.end method

.method public getWeight()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_3_weight:S

    return v0
.end method

.method public isAuto()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->auto:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isDrawTicks()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->drawTicks:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isUnknown()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->unknown:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_1_lineColor:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_2_linePattern:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_3_weight:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_5_colourPaletteIndex:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setAuto(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->auto:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    return-void
.end method

.method public setColourPaletteIndex(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_5_colourPaletteIndex:S

    return-void
.end method

.method public setDrawTicks(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->drawTicks:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    return-void
.end method

.method public setFormat(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    return-void
.end method

.method public setLineColor(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_1_lineColor:I

    return-void
.end method

.method public setLinePattern(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_2_linePattern:S

    return-void
.end method

.method public setUnknown(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->unknown:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_4_format:S

    return-void
.end method

.method public setWeight(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->field_3_weight:S

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[LINEFORMAT]\n    .lineColor            = 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->getLineColor()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->getLineColor()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " )"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "    .linePattern          = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->getLinePattern()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->getLinePattern()S

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "    .weight               = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->getWeight()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->getWeight()S

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "    .format               = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->getFormat()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->getFormat()S

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "         .auto                     = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->isAuto()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v4, "\n         .drawTicks                = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->isDrawTicks()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v4, "\n         .unknown                  = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->isUnknown()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v4, "\n    .colourPaletteIndex   = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->getColourPaletteIndex()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/LineFormatRecord;->getColourPaletteIndex()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "[/LINEFORMAT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
