.class public final Lorg/apache/poi/hssf/record/OldFormulaRecord;
.super Lorg/apache/poi/hssf/record/OldCellRecord;
.source "SourceFile"


# static fields
.field public static final biff2_sid:S = 0x6s

.field public static final biff3_sid:S = 0x206s

.field public static final biff4_sid:S = 0x406s

.field public static final biff5_sid:S = 0x6s


# instance fields
.field private field_4_value:D

.field private field_5_options:S

.field private field_6_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

.field private specialCachedValue:Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->getSid()S

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/record/OldCellRecord;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;Z)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/OldCellRecord;->isBiff2()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readDouble()D

    move-result-wide v0

    :goto_1
    iput-wide v0, p0, Lorg/apache/poi/hssf/record/OldFormulaRecord;->field_4_value:D

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->create(J)Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/hssf/record/OldFormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/OldCellRecord;->isBiff2()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readUByte()I

    move-result v0

    int-to-short v0, v0

    :goto_3
    iput-short v0, p0, Lorg/apache/poi/hssf/record/OldFormulaRecord;->field_5_options:S

    goto :goto_4

    :cond_3
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    goto :goto_3

    :goto_4
    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readShort()S

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    move-result v1

    invoke-static {v0, p1, v1}, Lorg/apache/poi/ss/formula/Formula;->read(ILorg/apache/poi/util/LittleEndianInput;I)Lorg/apache/poi/ss/formula/Formula;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/record/OldFormulaRecord;->field_6_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    return-void
.end method


# virtual methods
.method public appendValueText(Ljava/lang/StringBuilder;)V
    .locals 2

    const-string v0, "    .value       = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/OldFormulaRecord;->getValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public getCachedBooleanValue()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/OldFormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->getBooleanValue()Z

    move-result v0

    return v0
.end method

.method public getCachedErrorValue()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/OldFormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->getErrorValue()I

    move-result v0

    return v0
.end method

.method public getCachedResultType()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/OldFormulaRecord;->specialCachedValue:Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellType;->getCode()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/FormulaRecord$SpecialCachedValue;->getValueType()I

    move-result v0

    return v0
.end method

.method public getFormula()Lorg/apache/poi/ss/formula/Formula;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/OldFormulaRecord;->field_6_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    return-object v0
.end method

.method public getOptions()S
    .locals 1

    iget-short v0, p0, Lorg/apache/poi/hssf/record/OldFormulaRecord;->field_5_options:S

    return v0
.end method

.method public getParsedExpression()[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/OldFormulaRecord;->field_6_parsed_expr:Lorg/apache/poi/ss/formula/Formula;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/Formula;->getTokens()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    return-object v0
.end method

.method public getRecordName()Ljava/lang/String;
    .locals 1

    const-string v0, "Old Formula"

    return-object v0
.end method

.method public getValue()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hssf/record/OldFormulaRecord;->field_4_value:D

    return-wide v0
.end method
