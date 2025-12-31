.class final Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/EvaluationCell;


# instance fields
.field private final _cell:Lorg/apache/poi/xssf/streaming/SXSSFCell;

.field private final _evalSheet:Lorg/apache/poi/ss/formula/EvaluationSheet;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/streaming/SXSSFCell;)V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationSheet;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationSheet;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFSheet;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFCell;Lorg/apache/poi/xssf/streaming/SXSSFEvaluationSheet;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/streaming/SXSSFCell;Lorg/apache/poi/xssf/streaming/SXSSFEvaluationSheet;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;->_cell:Lorg/apache/poi/xssf/streaming/SXSSFCell;

    iput-object p2, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;->_evalSheet:Lorg/apache/poi/ss/formula/EvaluationSheet;

    return-void
.end method


# virtual methods
.method public getBooleanCellValue()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;->_cell:Lorg/apache/poi/xssf/streaming/SXSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getBooleanCellValue()Z

    move-result v0

    return v0
.end method

.method public getCachedFormulaResultType()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;->_cell:Lorg/apache/poi/xssf/streaming/SXSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCachedFormulaResultType()I

    move-result v0

    return v0
.end method

.method public getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
        since = "POI 3.15 beta 3"
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;->_cell:Lorg/apache/poi/xssf/streaming/SXSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    return-object v0
.end method

.method public getCellType()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;->_cell:Lorg/apache/poi/xssf/streaming/SXSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellType()I

    move-result v0

    return v0
.end method

.method public getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
        since = "POI 3.15 beta 3"
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;->_cell:Lorg/apache/poi/xssf/streaming/SXSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    return-object v0
.end method

.method public getColumnIndex()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;->_cell:Lorg/apache/poi/xssf/streaming/SXSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getColumnIndex()I

    move-result v0

    return v0
.end method

.method public getErrorCellValue()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;->_cell:Lorg/apache/poi/xssf/streaming/SXSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getErrorCellValue()B

    move-result v0

    return v0
.end method

.method public getIdentityKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;->_cell:Lorg/apache/poi/xssf/streaming/SXSSFCell;

    return-object v0
.end method

.method public getNumericCellValue()D
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;->_cell:Lorg/apache/poi/xssf/streaming/SXSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getNumericCellValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getRowIndex()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;->_cell:Lorg/apache/poi/xssf/streaming/SXSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getRowIndex()I

    move-result v0

    return v0
.end method

.method public getSXSSFCell()Lorg/apache/poi/xssf/streaming/SXSSFCell;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;->_cell:Lorg/apache/poi/xssf/streaming/SXSSFCell;

    return-object v0
.end method

.method public getSheet()Lorg/apache/poi/ss/formula/EvaluationSheet;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;->_evalSheet:Lorg/apache/poi/ss/formula/EvaluationSheet;

    return-object v0
.end method

.method public getStringCellValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFEvaluationCell;->_cell:Lorg/apache/poi/xssf/streaming/SXSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getRichStringCellValue()Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
