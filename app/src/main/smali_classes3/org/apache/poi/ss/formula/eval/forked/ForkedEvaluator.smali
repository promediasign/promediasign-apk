.class public final Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _evaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

.field private _sewb:Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;


# direct methods
.method private constructor <init>(Lorg/apache/poi/ss/formula/EvaluationWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;

    invoke-direct {v0, p1}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;-><init>(Lorg/apache/poi/ss/formula/EvaluationWorkbook;)V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;->_sewb:Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;

    new-instance p1, Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;->_sewb:Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;

    invoke-direct {p1, v0, p2, p3}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;-><init>(Lorg/apache/poi/ss/formula/EvaluationWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;->_evaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    return-void
.end method

.method public static create(Lorg/apache/poi/ss/usermodel/Workbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;

    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;->createEvaluationWorkbook(Lorg/apache/poi/ss/usermodel/Workbook;)Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;-><init>(Lorg/apache/poi/ss/formula/EvaluationWorkbook;Lorg/apache/poi/ss/formula/IStabilityClassifier;Lorg/apache/poi/ss/formula/udf/UDFFinder;)V

    return-object v0
.end method

.method private static createEvaluationWorkbook(Lorg/apache/poi/ss/usermodel/Workbook;)Lorg/apache/poi/ss/formula/EvaluationWorkbook;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    instance-of v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    if-eqz v2, :cond_0

    check-cast p0, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-static {p0}, Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;->create(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Lorg/apache/poi/hssf/usermodel/HSSFEvaluationWorkbook;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    const-class v2, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    sget v3, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->DEFAULT_CHARACTER_WIDTH:F

    const-string v3, "create"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/EvaluationWorkbook;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected workbook type ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") - check for poi-ooxml and poi-ooxml schemas jar in the classpath"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static setupEnvironment([Ljava/lang/String;[Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;)V
    .locals 4

    array-length v0, p1

    new-array v1, v0, [Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    iget-object v3, v3, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;->_evaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, v1}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->setup([Ljava/lang/String;[Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V

    return-void
.end method


# virtual methods
.method public copyUpdatedCells(Lorg/apache/poi/ss/usermodel/Workbook;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;->_sewb:Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->copyUpdatedCells(Lorg/apache/poi/ss/usermodel/Workbook;)V

    return-void
.end method

.method public evaluate(Ljava/lang/String;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;->_sewb:Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->getEvaluationCell(Ljava/lang/String;II)Lorg/apache/poi/ss/formula/EvaluationCell;

    move-result-object p1

    sget-object p2, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    packed-switch p2, :pswitch_data_0

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Bad cell type ("

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_1
    new-instance p2, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getStringCellValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object p2

    :pswitch_2
    new-instance p2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getNumericCellValue()D

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p2

    :pswitch_3
    iget-object p2, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;->_evaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-virtual {p2, p1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluate(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getErrorCellValue()I

    move-result p1

    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->valueOf(I)Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getBooleanCellValue()Z

    move-result p1

    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/BoolEval;->valueOf(Z)Lorg/apache/poi/ss/formula/eval/BoolEval;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateCell(Ljava/lang/String;IILorg/apache/poi/ss/formula/eval/ValueEval;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;->_sewb:Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationWorkbook;->getOrCreateUpdatableCell(Ljava/lang/String;II)Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;

    move-result-object p1

    invoke-virtual {p1, p4}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->setValue(Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    iget-object p2, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluator;->_evaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-virtual {p2, p1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->notifyUpdateCell(Lorg/apache/poi/ss/formula/EvaluationCell;)V

    return-void
.end method
