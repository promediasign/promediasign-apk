.class public final Lorg/apache/poi/hssf/record/chart/AxisLineFormatRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final AXIS_TYPE_AXIS_LINE:S = 0x0s

.field public static final AXIS_TYPE_MAJOR_GRID_LINE:S = 0x1s

.field public static final AXIS_TYPE_MINOR_GRID_LINE:S = 0x2s

.field public static final AXIS_TYPE_WALLS_OR_FLOOR:S = 0x3s

.field public static final sid:S = 0x1021s


# instance fields
.field private field_1_axisType:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/hssf/record/StandardRecord;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisLineFormatRecord;->field_1_axisType:S

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisLineFormatRecord;->clone()Lorg/apache/poi/hssf/record/chart/AxisLineFormatRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/chart/AxisLineFormatRecord;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/chart/AxisLineFormatRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/AxisLineFormatRecord;-><init>()V

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisLineFormatRecord;->field_1_axisType:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/AxisLineFormatRecord;->field_1_axisType:S

    return-object v0
.end method

.method public getAxisType()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisLineFormatRecord;->field_1_axisType:S

    return v0
.end method

.method public getDataSize()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x1021

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisLineFormatRecord;->field_1_axisType:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setAxisType(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisLineFormatRecord;->field_1_axisType:S

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[AXISLINEFORMAT]\n    .axisType             = 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisLineFormatRecord;->getAxisType()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisLineFormatRecord;->getAxisType()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "[/AXISLINEFORMAT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
