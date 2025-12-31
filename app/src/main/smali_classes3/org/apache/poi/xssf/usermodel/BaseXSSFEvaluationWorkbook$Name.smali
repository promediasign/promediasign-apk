.class final Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$Name;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/EvaluationName;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Name"
.end annotation


# instance fields
.field private final _fpBook:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

.field private final _index:I

.field private final _nameRecord:Lorg/apache/poi/xssf/usermodel/XSSFName;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFName;ILorg/apache/poi/ss/formula/FormulaParsingWorkbook;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$Name;->_nameRecord:Lorg/apache/poi/xssf/usermodel/XSSFName;

    iput p2, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$Name;->_index:I

    iput-object p3, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$Name;->_fpBook:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    return-void
.end method


# virtual methods
.method public createPtg()Lorg/apache/poi/ss/formula/ptg/NamePtg;
    .locals 2

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/NamePtg;

    iget v1, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$Name;->_index:I

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ptg/NamePtg;-><init>(I)V

    return-object v0
.end method

.method public getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$Name;->_nameRecord:Lorg/apache/poi/xssf/usermodel/XSSFName;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getRefersToFormula()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$Name;->_fpBook:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    sget-object v2, Lorg/apache/poi/ss/formula/FormulaType;->NAMEDRANGE:Lorg/apache/poi/ss/formula/FormulaType;

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$Name;->_nameRecord:Lorg/apache/poi/xssf/usermodel/XSSFName;

    invoke-virtual {v3}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getSheetIndex()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;I)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    return-object v0
.end method

.method public getNameText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$Name;->_nameRecord:Lorg/apache/poi/xssf/usermodel/XSSFName;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getNameName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasFormula()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$Name;->_nameRecord:Lorg/apache/poi/xssf/usermodel/XSSFName;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getCTName()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDefinedName;->getFunction()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFunctionName()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$Name;->_nameRecord:Lorg/apache/poi/xssf/usermodel/XSSFName;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFName;->isFunctionName()Z

    move-result v0

    return v0
.end method

.method public isRange()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook$Name;->hasFormula()Z

    move-result v0

    return v0
.end method
