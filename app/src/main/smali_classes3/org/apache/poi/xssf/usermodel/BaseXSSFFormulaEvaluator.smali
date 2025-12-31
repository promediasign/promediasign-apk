.class public abstract Lorg/apache/poi/xssf/usermodel/BaseXSSFFormulaEvaluator;
.super Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V

    return-void
.end method


# virtual methods
.method public createRichTextString(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/RichTextString;
    .locals 1

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;

    invoke-direct {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFRichTextString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public evaluateFormulaCellValue(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellValue;
    .locals 3

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/BaseXSSFFormulaEvaluator;->toEvaluationCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/formula/EvaluationCell;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluate(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    new-instance v0, Lorg/apache/poi/ss/usermodel/CellValue;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/CellValue;-><init>(D)V

    return-object v0

    :cond_0
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/poi/ss/formula/eval/BoolEval;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result p1

    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/CellValue;->valueOf(Z)Lorg/apache/poi/ss/usermodel/CellValue;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/apache/poi/ss/formula/eval/StringEval;

    new-instance v0, Lorg/apache/poi/ss/usermodel/CellValue;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/poi/ss/usermodel/CellValue;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_2
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/CellValue;->getError(I)Lorg/apache/poi/ss/usermodel/CellValue;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected eval class ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyDeleteCell(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-direct {v1, p1}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFCell;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->notifyDeleteCell(Lorg/apache/poi/ss/formula/EvaluationCell;)V

    return-void
.end method

.method public notifySetFormula(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-direct {v1, p1}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFCell;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->notifyUpdateCell(Lorg/apache/poi/ss/formula/EvaluationCell;)V

    return-void
.end method

.method public notifyUpdateCell(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    new-instance v1, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-direct {v1, p1}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFCell;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->notifyUpdateCell(Lorg/apache/poi/ss/formula/EvaluationCell;)V

    return-void
.end method

.method public abstract toEvaluationCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/formula/EvaluationCell;
.end method
