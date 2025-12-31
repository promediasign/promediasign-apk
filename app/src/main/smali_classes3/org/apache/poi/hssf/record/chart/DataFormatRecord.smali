.class public final Lorg/apache/poi/hssf/record/chart/DataFormatRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final sid:S = 0x1006s

.field private static final useExcel4Colors:Lorg/apache/poi/util/BitField;


# instance fields
.field private field_1_pointNumber:S

.field private field_2_seriesIndex:S

.field private field_3_seriesNumber:S

.field private field_4_formatFlags:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->useExcel4Colors:Lorg/apache/poi/util/BitField;

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

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_1_pointNumber:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_2_seriesIndex:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_3_seriesNumber:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_4_formatFlags:S

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->clone()Lorg/apache/poi/hssf/record/chart/DataFormatRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/chart/DataFormatRecord;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;-><init>()V

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_1_pointNumber:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_1_pointNumber:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_2_seriesIndex:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_2_seriesIndex:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_3_seriesNumber:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_3_seriesNumber:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_4_formatFlags:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_4_formatFlags:S

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getFormatFlags()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_4_formatFlags:S

    return v0
.end method

.method public getPointNumber()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_1_pointNumber:S

    return v0
.end method

.method public getSeriesIndex()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_2_seriesIndex:S

    return v0
.end method

.method public getSeriesNumber()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_3_seriesNumber:S

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x1006

    return v0
.end method

.method public isUseExcel4Colors()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->useExcel4Colors:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_4_formatFlags:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_1_pointNumber:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_2_seriesIndex:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_3_seriesNumber:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_4_formatFlags:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setFormatFlags(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_4_formatFlags:S

    return-void
.end method

.method public setPointNumber(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_1_pointNumber:S

    return-void
.end method

.method public setSeriesIndex(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_2_seriesIndex:S

    return-void
.end method

.method public setSeriesNumber(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_3_seriesNumber:S

    return-void
.end method

.method public setUseExcel4Colors(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->useExcel4Colors:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_4_formatFlags:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->field_4_formatFlags:S

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[DATAFORMAT]\n    .pointNumber          = 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->getPointNumber()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->getPointNumber()S

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " )"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "    .seriesIndex          = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->getSeriesIndex()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->getSeriesIndex()S

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "    .seriesNumber         = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->getSeriesNumber()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->getSeriesNumber()S

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "    .formatFlags          = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->getFormatFlags()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->getFormatFlags()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "         .useExcel4Colors          = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/DataFormatRecord;->isUseExcel4Colors()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n[/DATAFORMAT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
