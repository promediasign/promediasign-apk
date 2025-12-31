.class public final Lorg/apache/poi/hssf/record/chart/AxisRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final AXIS_TYPE_CATEGORY_OR_X_AXIS:S = 0x0s

.field public static final AXIS_TYPE_SERIES_AXIS:S = 0x2s

.field public static final AXIS_TYPE_VALUE_AXIS:S = 0x1s

.field public static final sid:S = 0x101ds


# instance fields
.field private field_1_axisType:S

.field private field_2_reserved1:I

.field private field_3_reserved2:I

.field private field_4_reserved3:I

.field private field_5_reserved4:I


# direct methods
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

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_1_axisType:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_2_reserved1:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_3_reserved2:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_4_reserved3:I

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_5_reserved4:I

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisRecord;->clone()Lorg/apache/poi/hssf/record/chart/AxisRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/chart/AxisRecord;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/chart/AxisRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/AxisRecord;-><init>()V

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_1_axisType:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_1_axisType:S

    iget v1, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_2_reserved1:I

    iput v1, v0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_2_reserved1:I

    iget v1, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_3_reserved2:I

    iput v1, v0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_3_reserved2:I

    iget v1, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_4_reserved3:I

    iput v1, v0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_4_reserved3:I

    iget v1, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_5_reserved4:I

    iput v1, v0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_5_reserved4:I

    return-object v0
.end method

.method public getAxisType()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_1_axisType:S

    return v0
.end method

.method public getDataSize()I
    .locals 1

    const/16 v0, 0x12

    return v0
.end method

.method public getReserved1()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_2_reserved1:I

    return v0
.end method

.method public getReserved2()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_3_reserved2:I

    return v0
.end method

.method public getReserved3()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_4_reserved3:I

    return v0
.end method

.method public getReserved4()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_5_reserved4:I

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x101d

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_1_axisType:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_2_reserved1:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_3_reserved2:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_4_reserved3:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_5_reserved4:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    return-void
.end method

.method public setAxisType(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_1_axisType:S

    return-void
.end method

.method public setReserved1(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_2_reserved1:I

    return-void
.end method

.method public setReserved2(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_3_reserved2:I

    return-void
.end method

.method public setReserved3(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_4_reserved3:I

    return-void
.end method

.method public setReserved4(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/chart/AxisRecord;->field_5_reserved4:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[AXIS]\n    .axisType             = 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisRecord;->getAxisType()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisRecord;->getAxisType()S

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " )"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "    .reserved1            = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisRecord;->getReserved1()I

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisRecord;->getReserved1()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "    .reserved2            = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisRecord;->getReserved2()I

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisRecord;->getReserved2()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "    .reserved3            = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisRecord;->getReserved3()I

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisRecord;->getReserved3()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "    .reserved4            = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisRecord;->getReserved4()I

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisRecord;->getReserved4()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "[/AXIS]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
