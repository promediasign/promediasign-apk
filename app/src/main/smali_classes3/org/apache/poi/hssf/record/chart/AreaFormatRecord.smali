.class public final Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final automatic:Lorg/apache/poi/util/BitField;

.field private static final invert:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x100as


# instance fields
.field private field_1_foregroundColor:I

.field private field_2_backgroundColor:I

.field private field_3_pattern:S

.field private field_4_formatFlags:S

.field private field_5_forecolorIndex:S

.field private field_6_backcolorIndex:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->automatic:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->invert:Lorg/apache/poi/util/BitField;

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

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_1_foregroundColor:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_2_backgroundColor:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_3_pattern:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_4_formatFlags:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_5_forecolorIndex:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_6_backcolorIndex:S

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->clone()Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;-><init>()V

    iget v1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_1_foregroundColor:I

    iput v1, v0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_1_foregroundColor:I

    iget v1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_2_backgroundColor:I

    iput v1, v0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_2_backgroundColor:I

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_3_pattern:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_3_pattern:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_4_formatFlags:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_4_formatFlags:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_5_forecolorIndex:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_5_forecolorIndex:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_6_backcolorIndex:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_6_backcolorIndex:S

    return-object v0
.end method

.method public getBackcolorIndex()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_6_backcolorIndex:S

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_2_backgroundColor:I

    return v0
.end method

.method public getDataSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public getForecolorIndex()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_5_forecolorIndex:S

    return v0
.end method

.method public getForegroundColor()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_1_foregroundColor:I

    return v0
.end method

.method public getFormatFlags()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_4_formatFlags:S

    return v0
.end method

.method public getPattern()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_3_pattern:S

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x100a

    return v0
.end method

.method public isAutomatic()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->automatic:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_4_formatFlags:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isInvert()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->invert:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_4_formatFlags:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_1_foregroundColor:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_2_backgroundColor:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_3_pattern:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_4_formatFlags:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_5_forecolorIndex:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_6_backcolorIndex:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setAutomatic(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->automatic:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_4_formatFlags:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_4_formatFlags:S

    return-void
.end method

.method public setBackcolorIndex(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_6_backcolorIndex:S

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_2_backgroundColor:I

    return-void
.end method

.method public setForecolorIndex(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_5_forecolorIndex:S

    return-void
.end method

.method public setForegroundColor(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_1_foregroundColor:I

    return-void
.end method

.method public setFormatFlags(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_4_formatFlags:S

    return-void
.end method

.method public setInvert(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->invert:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_4_formatFlags:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_4_formatFlags:S

    return-void
.end method

.method public setPattern(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->field_3_pattern:S

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[AREAFORMAT]\n    .foregroundColor      = 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->getForegroundColor()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->getForegroundColor()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " )"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "    .backgroundColor      = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->getBackgroundColor()I

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->getBackgroundColor()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "    .pattern              = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->getPattern()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->getPattern()S

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "    .formatFlags          = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->getFormatFlags()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->getFormatFlags()S

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "         .automatic                = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->isAutomatic()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v4, "\n         .invert                   = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->isInvert()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v4, "\n    .forecolorIndex       = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->getForecolorIndex()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->getForecolorIndex()S

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "    .backcolorIndex       = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->getBackcolorIndex()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AreaFormatRecord;->getBackcolorIndex()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "[/AREAFORMAT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
