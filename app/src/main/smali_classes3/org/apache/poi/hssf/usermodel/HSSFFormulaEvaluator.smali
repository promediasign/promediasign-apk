.class public Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;
.super Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;
.source "SourceFile"


# instance fields
.field private final _book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V
    .locals 2

    .line 3
    new-instance v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-static {p1}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->create(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;-><init>(Lorg/apache/poi/ss/formula/EvaluationWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    return-void
.end method

.method public static create(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;
    .locals 1

    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    return-object v0
.end method

.method public static evaluateAllFormulaCells(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    invoke-static {p0, v0}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->evaluateAllFormulaCells(Lorg/apache/poi/ss/usermodel/Workbook;Lorg/apache/poi/ss/usermodel/FormulaEvaluator;)V

    return-void
.end method

.method public static evaluateAllFormulaCells(Lorg/apache/poi/ss/usermodel/Workbook;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->evaluateAllFormulaCells(Lorg/apache/poi/ss/usermodel/Workbook;)V

    return-void
.end method

.method public static setupEnvironment([Ljava/lang/String;[Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->setupEnvironment([Ljava/lang/String;[Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;)V

    return-void
.end method


# virtual methods
.method public createRichTextString(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/RichTextString;
    .locals 1

    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;

    invoke-direct {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFRichTextString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public evaluateAll()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;->_book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-static {v0, p0}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->evaluateAllFormulaCells(Lorg/apache/poi/ss/usermodel/Workbook;Lorg/apache/poi/ss/usermodel/FormulaEvaluator;)V

    return-void
.end method

.method public evaluateFormulaCellValue(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellValue;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;

    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-direct {v1, p1}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFCell;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluate(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/BoolEval;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/ss/formula/eval/BoolEval;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result p1

    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/CellValue;->valueOf(Z)Lorg/apache/poi/ss/usermodel/CellValue;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    new-instance v0, Lorg/apache/poi/ss/usermodel/CellValue;

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/NumericValueEval;->getNumberValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/CellValue;-><init>(D)V

    return-object v0

    :cond_1
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/StringValueEval;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/apache/poi/ss/formula/eval/StringValueEval;

    new-instance v0, Lorg/apache/poi/ss/usermodel/CellValue;

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/StringValueEval;->getStringValue()Ljava/lang/String;

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

.method public evaluateInCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->evaluateInCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    return-object p1
.end method

.method public bridge synthetic evaluateInCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFFormulaEvaluator;->evaluateInCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object p1

    return-object p1
.end method

.method public notifyDeleteCell(Lorg/apache/poi/hssf/usermodel/HSSFCell;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;

    invoke-direct {v1, p1}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFCell;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->notifyDeleteCell(Lorg/apache/poi/ss/formula/EvaluationCell;)V

    return-void
.end method

.method public notifyDeleteCell(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;

    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-direct {v1, p1}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFCell;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->notifyDeleteCell(Lorg/apache/poi/ss/formula/EvaluationCell;)V

    return-void
.end method

.method public notifySetFormula(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;

    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-direct {v1, p1}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFCell;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->notifyUpdateCell(Lorg/apache/poi/ss/formula/EvaluationCell;)V

    return-void
.end method

.method public notifyUpdateCell(Lorg/apache/poi/hssf/usermodel/HSSFCell;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;

    invoke-direct {v1, p1}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFCell;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->notifyUpdateCell(Lorg/apache/poi/ss/formula/EvaluationCell;)V

    return-void
.end method

.method public notifyUpdateCell(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;

    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-direct {v1, p1}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationCell;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFCell;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->notifyUpdateCell(Lorg/apache/poi/ss/formula/EvaluationCell;)V

    return-void
.end method

.method public setDebugEvaluationOutputForNextEval(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->setDebugEvaluationOutputForNextEval(Z)V

    return-void
.end method

.method public setIgnoreMissingWorkbooks(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->setIgnoreMissingWorkbooks(Z)V

    return-void
.end method

.method public setupReferencedWorkbooks(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/usermodel/FormulaEvaluator;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->setupFormulaEvaluator(Ljava/util/Map;)V

    return-void
.end method
