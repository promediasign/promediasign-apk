.class final Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/EvaluationCell;


# instance fields
.field private final _cell:Lorg/apache/poi/hssf/usermodel/HSSFCell;

.field private final _evalSheet:Lorg/apache/poi/ss/formula/EvaluationSheet;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFCell;)V
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationSheet;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationSheet;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFCell;Lorg/apache/poi/ss/formula/EvaluationSheet;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFCell;Lorg/apache/poi/ss/formula/EvaluationSheet;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;->_cell:Lorg/apache/poi/hssf/usermodel/HSSFCell;

    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;->_evalSheet:Lorg/apache/poi/ss/formula/EvaluationSheet;

    return-void
.end method


# virtual methods
.method public getBooleanCellValue()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;->_cell:Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getBooleanCellValue()Z

    move-result v0

    return v0
.end method

.method public getCachedFormulaResultType()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;->_cell:Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCachedFormulaResultType()I

    move-result v0

    return v0
.end method

.method public getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;->_cell:Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    return-object v0
.end method

.method public getCellType()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;->_cell:Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellType()I

    move-result v0

    return v0
.end method

.method public getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;->_cell:Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    return-object v0
.end method

.method public getColumnIndex()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;->_cell:Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getColumnIndex()I

    move-result v0

    return v0
.end method

.method public getErrorCellValue()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;->_cell:Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getErrorCellValue()B

    move-result v0

    return v0
.end method

.method public getHSSFCell()Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;->_cell:Lorg/apache/poi/hssf/usermodel/HSSFCell;

    return-object v0
.end method

.method public getIdentityKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;->_cell:Lorg/apache/poi/hssf/usermodel/HSSFCell;

    return-object v0
.end method

.method public getNumericCellValue()D
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;->_cell:Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getNumericCellValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getRowIndex()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;->_cell:Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getRowIndex()I

    move-result v0

    return v0
.end method

.method public getSheet()Lorg/apache/poi/ss/formula/EvaluationSheet;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;->_evalSheet:Lorg/apache/poi/ss/formula/EvaluationSheet;

    return-object v0
.end method

.method public getStringCellValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;->_cell:Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getRichStringCellValue()Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
