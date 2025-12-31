.class public final Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;
.super Lorg/apache/poi/hssf/record/StandardRecord;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final defaultBase:Lorg/apache/poi/util/BitField;

.field private static final defaultCross:Lorg/apache/poi/util/BitField;

.field private static final defaultDateSettings:Lorg/apache/poi/util/BitField;

.field private static final defaultMajor:Lorg/apache/poi/util/BitField;

.field private static final defaultMaximum:Lorg/apache/poi/util/BitField;

.field private static final defaultMinimum:Lorg/apache/poi/util/BitField;

.field private static final defaultMinorUnit:Lorg/apache/poi/util/BitField;

.field private static final isDate:Lorg/apache/poi/util/BitField;

.field public static final sid:S = 0x1062s


# instance fields
.field private field_1_minimumCategory:S

.field private field_2_maximumCategory:S

.field private field_3_majorUnitValue:S

.field private field_4_majorUnit:S

.field private field_5_minorUnitValue:S

.field private field_6_minorUnit:S

.field private field_7_baseUnit:S

.field private field_8_crossingPoint:S

.field private field_9_options:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultMinimum:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultMaximum:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultMajor:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultMinorUnit:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->isDate:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x20

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultBase:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x40

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultCross:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x80

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultDateSettings:Lorg/apache/poi/util/BitField;

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

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_1_minimumCategory:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_2_maximumCategory:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_3_majorUnitValue:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_4_majorUnit:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_5_minorUnitValue:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_6_minorUnit:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_7_baseUnit:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_8_crossingPoint:S

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->clone()Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;-><init>()V

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_1_minimumCategory:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_1_minimumCategory:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_2_maximumCategory:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_2_maximumCategory:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_3_majorUnitValue:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_3_majorUnitValue:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_4_majorUnit:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_4_majorUnit:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_5_minorUnitValue:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_5_minorUnitValue:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_6_minorUnit:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_6_minorUnit:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_7_baseUnit:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_7_baseUnit:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_8_crossingPoint:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_8_crossingPoint:S

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    iput-short v1, v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    return-object v0
.end method

.method public getBaseUnit()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_7_baseUnit:S

    return v0
.end method

.method public getCrossingPoint()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_8_crossingPoint:S

    return v0
.end method

.method public getDataSize()I
    .locals 1

    const/16 v0, 0x12

    return v0
.end method

.method public getMajorUnit()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_4_majorUnit:S

    return v0
.end method

.method public getMajorUnitValue()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_3_majorUnitValue:S

    return v0
.end method

.method public getMaximumCategory()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_2_maximumCategory:S

    return v0
.end method

.method public getMinimumCategory()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_1_minimumCategory:S

    return v0
.end method

.method public getMinorUnit()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_6_minorUnit:S

    return v0
.end method

.method public getMinorUnitValue()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_5_minorUnitValue:S

    return v0
.end method

.method public getOptions()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    return v0
.end method

.method public getSid()S
    .locals 1

    const/16 v0, 0x1062

    return v0
.end method

.method public isDefaultBase()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultBase:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isDefaultCross()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultCross:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isDefaultDateSettings()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultDateSettings:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isDefaultMajor()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultMajor:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isDefaultMaximum()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultMaximum:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isDefaultMinimum()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultMinimum:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isDefaultMinorUnit()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultMinorUnit:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isIsDate()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->isDate:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_1_minimumCategory:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_2_maximumCategory:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_3_majorUnitValue:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_4_majorUnit:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_5_minorUnitValue:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_6_minorUnit:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_7_baseUnit:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_8_crossingPoint:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    iget-short v0, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeShort(I)V

    return-void
.end method

.method public setBaseUnit(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_7_baseUnit:S

    return-void
.end method

.method public setCrossingPoint(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_8_crossingPoint:S

    return-void
.end method

.method public setDefaultBase(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultBase:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    return-void
.end method

.method public setDefaultCross(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultCross:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    return-void
.end method

.method public setDefaultDateSettings(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultDateSettings:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    return-void
.end method

.method public setDefaultMajor(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultMajor:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    return-void
.end method

.method public setDefaultMaximum(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultMaximum:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    return-void
.end method

.method public setDefaultMinimum(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultMinimum:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    return-void
.end method

.method public setDefaultMinorUnit(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->defaultMinorUnit:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    return-void
.end method

.method public setIsDate(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->isDate:Lorg/apache/poi/util/BitField;

    iget-short v1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setShortBoolean(SZ)S

    move-result p1

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    return-void
.end method

.method public setMajorUnit(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_4_majorUnit:S

    return-void
.end method

.method public setMajorUnitValue(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_3_majorUnitValue:S

    return-void
.end method

.method public setMaximumCategory(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_2_maximumCategory:S

    return-void
.end method

.method public setMinimumCategory(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_1_minimumCategory:S

    return-void
.end method

.method public setMinorUnit(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_6_minorUnit:S

    return-void
.end method

.method public setMinorUnitValue(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_5_minorUnitValue:S

    return-void
.end method

.method public setOptions(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->field_9_options:S

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[AXCEXT]\n    .minimumCategory      = 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->getMinimumCategory()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->getMinimumCategory()S

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " )"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "    .maximumCategory      = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->getMaximumCategory()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->getMaximumCategory()S

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "    .majorUnitValue       = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->getMajorUnitValue()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->getMajorUnitValue()S

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "    .majorUnit            = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->getMajorUnit()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->getMajorUnit()S

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "    .minorUnitValue       = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->getMinorUnitValue()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->getMinorUnitValue()S

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "    .minorUnit            = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->getMinorUnit()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->getMinorUnit()S

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "    .baseUnit             = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->getBaseUnit()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->getBaseUnit()S

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "    .crossingPoint        = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->getCrossingPoint()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->getCrossingPoint()S

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "    .options              = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->getOptions()S

    move-result v4

    invoke-static {v4}, Lorg/apache/poi/util/HexDump;->toHex(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->getOptions()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "         .defaultMinimum           = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->isDefaultMinimum()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n         .defaultMaximum           = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->isDefaultMaximum()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n         .defaultMajor             = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->isDefaultMajor()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n         .defaultMinorUnit         = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->isDefaultMinorUnit()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n         .isDate                   = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->isIsDate()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n         .defaultBase              = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->isDefaultBase()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n         .defaultCross             = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->isDefaultCross()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n         .defaultDateSettings      = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/chart/AxisOptionsRecord;->isDefaultDateSettings()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "\n[/AXCEXT]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
