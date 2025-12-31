.class final Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/EvaluationCell;


# instance fields
.field private final _cell:Lorg/apache/poi/xssf/usermodel/XSSFCell;

.field private final _evalSheet:Lorg/apache/poi/ss/formula/EvaluationSheet;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFCell;)V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFCell;Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFCell;Lorg/apache/poi/xssf/usermodel/XSSFEvaluationSheet;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;->_cell:Lorg/apache/poi/xssf/usermodel/XSSFCell;

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;->_evalSheet:Lorg/apache/poi/ss/formula/EvaluationSheet;

    return-void
.end method


# virtual methods
.method public getBooleanCellValue()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;->_cell:Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getBooleanCellValue()Z

    move-result v0

    return v0
.end method

.method public getCachedFormulaResultType()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;->_cell:Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCachedFormulaResultType()I

    move-result v0

    return v0
.end method

.method public getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
        since = "POI 3.15 beta 3"
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;->_cell:Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    return-object v0
.end method

.method public getCellType()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;->_cell:Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellType()I

    move-result v0

    return v0
.end method

.method public getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;->_cell:Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    return-object v0
.end method

.method public getColumnIndex()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;->_cell:Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getColumnIndex()I

    move-result v0

    return v0
.end method

.method public getErrorCellValue()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;->_cell:Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getErrorCellValue()B

    move-result v0

    return v0
.end method

.method public getIdentityKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;->_cell:Lorg/apache/poi/xssf/usermodel/XSSFCell;

    return-object v0
.end method

.method public getNumericCellValue()D
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;->_cell:Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getNumericCellValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getRowIndex()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;->_cell:Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRowIndex()I

    move-result v0

    return v0
.end method

.method public getSheet()Lorg/apache/poi/ss/formula/EvaluationSheet;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;->_evalSheet:Lorg/apache/poi/ss/formula/EvaluationSheet;

    return-object v0
.end method

.method public getStringCellValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;->_cell:Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRichStringCellValue()Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXSSFCell()Lorg/apache/poi/xssf/usermodel/XSSFCell;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;->_cell:Lorg/apache/poi/xssf/usermodel/XSSFCell;

    return-object v0
.end method
