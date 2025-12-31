.class public final Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold;


# instance fields
.field private final sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

.field private final threshold:Lorg/apache/poi/hssf/record/cf/Threshold;

.field private final workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/record/cf/Threshold;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;->threshold:Lorg/apache/poi/hssf/record/cf/Threshold;

    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    return-void
.end method


# virtual methods
.method public getFormula()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;->threshold:Lorg/apache/poi/hssf/record/cf/Threshold;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/Threshold;->getParsedExpression()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;->workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-static {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingRule;->toFormulaString([Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRangeType()Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;->threshold:Lorg/apache/poi/hssf/record/cf/Threshold;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/Threshold;->getType()B

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->byId(I)Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    move-result-object v0

    return-object v0
.end method

.method public getThreshold()Lorg/apache/poi/hssf/record/cf/Threshold;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;->threshold:Lorg/apache/poi/hssf/record/cf/Threshold;

    return-object v0
.end method

.method public getValue()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;->threshold:Lorg/apache/poi/hssf/record/cf/Threshold;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/cf/Threshold;->getValue()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public setFormula(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;->threshold:Lorg/apache/poi/hssf/record/cf/Threshold;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-static {p1, v1}, Lorg/apache/poi/hssf/record/CFRuleBase;->parseFormula(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/Threshold;->setParsedExpression([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-void
.end method

.method public setRangeType(Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;->threshold:Lorg/apache/poi/hssf/record/cf/Threshold;

    iget p1, p1, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->id:I

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/Threshold;->setType(B)V

    return-void
.end method

.method public setValue(Ljava/lang/Double;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFConditionalFormattingThreshold;->threshold:Lorg/apache/poi/hssf/record/cf/Threshold;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/cf/Threshold;->setValue(Ljava/lang/Double;)V

    return-void
.end method
