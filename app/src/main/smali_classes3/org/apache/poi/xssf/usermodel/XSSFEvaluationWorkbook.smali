.class public final Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;
.super Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private _sheetCache:[Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;


# direct methods
.method private constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V

    return-void
.end method

.method public static create(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V

    return-object v0
.end method


# virtual methods
.method public clearAllCachedResultValues()V
    .locals 1

    invoke-super {p0}, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->clearAllCachedResultValues()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->_sheetCache:[Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;

    return-void
.end method

.method public getFormulaTokens(Lorg/apache/poi/ss/formula/EvaluationCell;)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 3

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;->getXSSFCell()Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRowIndex()I

    move-result v1

    invoke-virtual {p1, p0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellFormula(Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lorg/apache/poi/ss/formula/FormulaType;->CELL:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-static {p1, p0, v2, v0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    return-object p1
.end method

.method public getSheet(I)Lorg/apache/poi/ss/formula/EvaluationSheet;
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->_sheetCache:[Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getNumberOfSheets()I

    move-result v0

    new-array v1, v0, [Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;

    iput-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->_sheetCache:[Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->_sheetCache:[Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;

    new-instance v3, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;

    iget-object v4, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v4, v1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->_sheetCache:[Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;

    array-length v0, v0

    if-lt p1, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->_sheetCache:[Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getSheetIndex(Lorg/apache/poi/ss/formula/EvaluationSheet;)I
    .locals 1

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;->getXSSFSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/BaseXSSFEvaluationWorkbook;->_uBook:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result p1

    return p1
.end method
