.class public final Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hssf/record/common/SharedFeature;


# static fields
.field private static final CHECK_CALCULATION_ERRORS:Lorg/apache/poi/util/BitField;

.field private static final CHECK_DATETIME_FORMATS:Lorg/apache/poi/util/BitField;

.field private static final CHECK_EMPTY_CELL_REF:Lorg/apache/poi/util/BitField;

.field private static final CHECK_INCONSISTENT_FORMULAS:Lorg/apache/poi/util/BitField;

.field private static final CHECK_INCONSISTENT_RANGES:Lorg/apache/poi/util/BitField;

.field private static final CHECK_NUMBERS_AS_TEXT:Lorg/apache/poi/util/BitField;

.field private static final CHECK_UNPROTECTED_FORMULAS:Lorg/apache/poi/util/BitField;

.field private static final PERFORM_DATA_VALIDATION:Lorg/apache/poi/util/BitField;


# instance fields
.field private errorCheck:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_CALCULATION_ERRORS:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_EMPTY_CELL_REF:Lorg/apache/poi/util/BitField;

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_NUMBERS_AS_TEXT:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_INCONSISTENT_RANGES:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x10

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_INCONSISTENT_FORMULAS:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x20

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_DATETIME_FORMATS:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x40

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_UNPROTECTED_FORMULAS:Lorg/apache/poi/util/BitField;

    const/16 v0, 0x80

    invoke-static {v0}, Lorg/apache/poi/util/BitFieldFactory;->getInstance(I)Lorg/apache/poi/util/BitField;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->PERFORM_DATA_VALIDATION:Lorg/apache/poi/util/BitField;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RecordInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    return-void
.end method


# virtual methods
.method public _getRawErrorCheckValue()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    return v0
.end method

.method public getCheckCalculationErrors()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_CALCULATION_ERRORS:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getCheckDateTimeFormats()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_DATETIME_FORMATS:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getCheckEmptyCellRef()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_EMPTY_CELL_REF:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getCheckInconsistentFormulas()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_INCONSISTENT_FORMULAS:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getCheckInconsistentRanges()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_INCONSISTENT_RANGES:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getCheckNumbersAsText()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_NUMBERS_AS_TEXT:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getCheckUnprotectedFormulas()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_UNPROTECTED_FORMULAS:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public getDataSize()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getPerformDataValidation()Z
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->PERFORM_DATA_VALIDATION:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/util/BitField;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    return-void
.end method

.method public setCheckCalculationErrors(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_CALCULATION_ERRORS:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    return-void
.end method

.method public setCheckDateTimeFormats(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_DATETIME_FORMATS:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    return-void
.end method

.method public setCheckEmptyCellRef(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_EMPTY_CELL_REF:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    return-void
.end method

.method public setCheckInconsistentFormulas(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_INCONSISTENT_FORMULAS:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    return-void
.end method

.method public setCheckInconsistentRanges(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_INCONSISTENT_RANGES:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    return-void
.end method

.method public setCheckNumbersAsText(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_NUMBERS_AS_TEXT:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    return-void
.end method

.method public setCheckUnprotectedFormulas(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->CHECK_UNPROTECTED_FORMULAS:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    return-void
.end method

.method public setPerformDataValidation(Z)V
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->PERFORM_DATA_VALIDATION:Lorg/apache/poi/util/BitField;

    iget v1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/util/BitField;->setBoolean(IZ)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/record/common/FeatFormulaErr2;->errorCheck:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, " [FEATURE FORMULA ERRORS]\n  checkCalculationErrors    =   checkEmptyCellRef         =   checkNumbersAsText        =   checkInconsistentRanges   =   checkInconsistentFormulas =   checkDateTimeFormats      =   checkUnprotectedFormulas  =   performDataValidation     =  [/FEATURE FORMULA ERRORS]\n"

    return-object v0
.end method
