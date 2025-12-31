.class public final Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final crossesFarRight:Lorg/apache/poi/util/BitField;

.field private static final reversed:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x1020s

.field private static final valueAxisCrossing:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_1_crossingPoint:S

.field private field_2_labelFrequency:S

.field private field_3_tickMarkFrequency:S

.field private field_4_options:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->valueAxisCrossing:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->crossesFarRight:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->reversed:Lorg/apache/poi/util/BitField;

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

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_1_crossingPoint:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_2_labelFrequency:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_3_tickMarkFrequency:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->clone()Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;-><init>()V

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_1_crossingPoint:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_1_crossingPoint:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_2_labelFrequency:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_2_labelFrequency:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_3_tickMarkFrequency:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_3_tickMarkFrequency:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    return-object v0
.end method

.method public getCrossingPoint()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_1_crossingPoint:S

    return v0
.end method

.method public getDataSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getLabelFrequency()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_2_labelFrequency:S

    return v0
.end method

.method public getOptions()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x1020

    return v0
.end method

.method public getTickMarkFrequency()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_3_tickMarkFrequency:S

    return v0
.end method

.method public isCrossesFarRight()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->crossesFarRight:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isReversed()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->reversed:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isValueAxisCrossing()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->valueAxisCrossing:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_1_crossingPoint:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_2_labelFrequency:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_3_tickMarkFrequency:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setCrossesFarRight(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->crossesFarRight:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    return-void
.end method

.method public setCrossingPoint(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_1_crossingPoint:S

    return-void
.end method

.method public setLabelFrequency(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_2_labelFrequency:S

    return-void
.end method

.method public setOptions(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    return-void
.end method

.method public setReversed(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->reversed:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    return-void
.end method

.method public setTickMarkFrequency(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_3_tickMarkFrequency:S

    return-void
.end method

.method public setValueAxisCrossing(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->valueAxisCrossing:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->field_4_options:S

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[CATSERRANGE]\n    .crossingPoint        = 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->getCrossingPoint()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->getCrossingPoint()S

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " )"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "    .labelFrequency       = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->getLabelFrequency()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->getLabelFrequency()S

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "    .tickMarkFrequency    = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->getTickMarkFrequency()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->getTickMarkFrequency()S

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "    .options              = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->getOptions()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->getOptions()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "         .valueAxisCrossing        = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->isValueAxisCrossing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n         .crossesFarRight          = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->isCrossesFarRight()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n         .reversed                 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/CategorySeriesAxisRecord;->isReversed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n[/CATSERRANGE]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
