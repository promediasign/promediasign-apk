.class public final Lorg/apache/poi/xssf/usermodel/XSSFFormulaEvaluator;
.super Lorg/apache/poi/xssf/usermodel/BaseXSSFFormulaEvaluator;
.source "SourceFile"


# instance fields
.field private _book:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFFormulaEvaluator;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V
    .locals 2

    .line 2
    new-instance v0, Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->create(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;-><init>(Lorg/apache/poi/ss/formula/EvaluationWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFFormulaEvaluator;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V
    .locals 0

    .line 3
    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/usermodel/BaseXSSFFormulaEvaluator;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFFormulaEvaluator;->_book:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    return-void
.end method

.method public static create(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)Lorg/apache/poi/xssf/usermodel/XSSFFormulaEvaluator;
    .locals 1

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFFormulaEvaluator;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFFormulaEvaluator;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    return-object v0
.end method

.method public static evaluateAllFormulaCells(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->evaluateAllFormulaCells(Lorg/apache/poi/ss/usermodel/Workbook;)V

    return-void
.end method


# virtual methods
.method public evaluateAll()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFFormulaEvaluator;->_book:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-static {v0, p0}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->evaluateAllFormulaCells(Lorg/apache/poi/ss/usermodel/Workbook;Lorg/apache/poi/ss/usermodel/FormulaEvaluator;)V

    return-void
.end method

.method public bridge synthetic evaluateInCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFFormulaEvaluator;->evaluateInCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object p1

    return-object p1
.end method

.method public evaluateInCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/xssf/usermodel/XSSFCell;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->evaluateInCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    return-object p1
.end method

.method public toEvaluationCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/formula/EvaluationCell;
    .locals 3

    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-direct {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationCell;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFCell;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected type of cell: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". Only XSSFCells can be evaluated."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
