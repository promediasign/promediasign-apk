.class public Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold;


# instance fields
.field private cfvo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;->cfvo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    return-void
.end method


# virtual methods
.method public getCTCfvo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;->cfvo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    return-object v0
.end method

.method public getFormula()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;->cfvo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;->getType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType;->FORMULA:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;->cfvo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;->getVal()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRangeType()Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;->cfvo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;->getType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->byName(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Double;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;->cfvo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;->getType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType;->FORMULA:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;->cfvo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;->getType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType;->MIN:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;->cfvo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;->getType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    move-result-object v0

    sget-object v1, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType;->MAX:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;->cfvo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;->isSetVal()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;->cfvo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;->getVal()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object v2
.end method

.method public setFormula(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;->cfvo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;->setVal(Ljava/lang/String;)V

    return-void
.end method

.method public setRangeType(Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;)V
    .locals 1

    iget-object p1, p1, Lorg/apache/poi/ss/usermodel/ConditionalFormattingThreshold$RangeType;->name:Ljava/lang/String;

    invoke-static {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;->forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;->cfvo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;->setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;)V

    return-void
.end method

.method public setValue(Ljava/lang/Double;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;->cfvo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;->unsetVal()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFConditionalFormattingThreshold;->cfvo:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    invoke-virtual {p1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;->setVal(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
