.class public final Lorg/apache/poi/ss/formula/OperationEvaluationContext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final UDF:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# instance fields
.field private final _bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

.field private final _columnIndex:I

.field private final _isSingleValue:Z

.field private final _rowIndex:I

.field private final _sheetIndex:I

.field private final _tracker:Lorg/apache/poi/ss/formula/EvaluationTracker;

.field private final _workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/formula/UserDefinedFunction;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    sput-object v0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->UDF:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/EvaluationWorkbook;IIILorg/apache/poi/ss/formula/EvaluationTracker;)V
    .locals 8

    .line 1
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/EvaluationWorkbook;IIILorg/apache/poi/ss/formula/EvaluationTracker;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/EvaluationWorkbook;IIILorg/apache/poi/ss/formula/EvaluationTracker;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    iput-object p2, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    iput p3, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_sheetIndex:I

    iput p4, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_rowIndex:I

    iput p5, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_columnIndex:I

    iput-object p6, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_tracker:Lorg/apache/poi/ss/formula/EvaluationTracker;

    iput-boolean p7, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_isSingleValue:Z

    return-void
.end method

.method private static classifyCellReference(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/util/CellReference$NameType;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object p0, Lorg/apache/poi/ss/util/CellReference$NameType;->BAD_CELL_OR_NAMED_RANGE:Lorg/apache/poi/ss/util/CellReference$NameType;

    return-object p0

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/poi/ss/util/CellReference;->classifyCellReference(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/util/CellReference$NameType;

    move-result-object p0

    return-object p0
.end method

.method private createExternSheetRefEvaluator(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/formula/SheetRefEvaluator;
    .locals 2

    .line 4
    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_3

    :try_start_0
    iget-object v1, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-virtual {v1, p1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getOtherWorkbookEvaluator(Ljava/lang/String;)Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez p2, :cond_1

    iget p2, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_sheetIndex:I

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getSheetIndex(Ljava/lang/String;)I

    move-result p2

    :goto_1
    if-gez p2, :cond_2

    return-object v0

    :cond_2
    new-instance v0, Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    iget-object v1, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_tracker:Lorg/apache/poi/ss/formula/EvaluationTracker;

    invoke-direct {v0, p1, v1, p2}, Lorg/apache/poi/ss/formula/SheetRefEvaluator;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/EvaluationTracker;I)V

    :catch_0
    return-object v0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sheetName must not be null if workbookName is provided"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getExternalNameXEval(Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;Ljava/lang/String;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 8

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-virtual {v0, p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getOtherWorkbookEvaluator(Ljava/lang/String;)Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;->getIx()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    invoke-virtual {v2, p2, p1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationName;->hasFormula()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationName;->getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p2

    array-length p2, p2

    if-gt p2, v0, :cond_3

    new-instance p2, Lorg/apache/poi/ss/formula/OperationEvaluationContext;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-result-object v3

    iget-object v7, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_tracker:Lorg/apache/poi/ss/formula/EvaluationTracker;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v1, p2

    invoke-direct/range {v1 .. v7}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/EvaluationWorkbook;IIILorg/apache/poi/ss/formula/EvaluationTracker;)V

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationName;->getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;

    invoke-virtual {p2, p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRef3DEval(Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;

    invoke-virtual {p2, p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRef3DEval(Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    invoke-virtual {p2, p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getArea3DEval(Lorg/apache/poi/ss/formula/ptg/Area3DPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    if-eqz v0, :cond_4

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    invoke-virtual {p2, p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getArea3DEval(Lorg/apache/poi/ss/formula/ptg/Area3DPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Complex name formulas not supported yet"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1
.end method

.method private getLocalNameXEval(Lorg/apache/poi/ss/formula/ptg/NameXPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->resolveNameXText(Lorg/apache/poi/ss/formula/ptg/NameXPtg;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x21

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v2, v1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v0, v1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1, v1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    new-instance p1, Lorg/apache/poi/ss/formula/eval/ExternalNameEval;

    invoke-direct {p1, v0}, Lorg/apache/poi/ss/formula/eval/ExternalNameEval;-><init>(Lorg/apache/poi/ss/formula/EvaluationName;)V

    return-object p1

    :cond_1
    new-instance v0, Lorg/apache/poi/ss/formula/eval/FunctionNameEval;

    invoke-direct {v0, p1}, Lorg/apache/poi/ss/formula/eval/FunctionNameEval;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getLocalNameXEval(Lorg/apache/poi/ss/formula/ptg/NameXPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2

    .line 2
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->getSheetName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->getNameName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v1, p1, v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance p1, Lorg/apache/poi/ss/formula/eval/ExternalNameEval;

    invoke-direct {p1, v0}, Lorg/apache/poi/ss/formula/eval/ExternalNameEval;-><init>(Lorg/apache/poi/ss/formula/EvaluationName;)V

    return-object p1

    :cond_1
    new-instance v0, Lorg/apache/poi/ss/formula/eval/FunctionNameEval;

    invoke-direct {v0, p1}, Lorg/apache/poi/ss/formula/eval/FunctionNameEval;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static parseColRef(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private static parseRowRef(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/ss/util/CellReference;->convertColStringToIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public createExternSheetRefEvaluator(I)Lorg/apache/poi/ss/formula/SheetRangeEvaluator;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getExternalSheet(I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->createExternSheetRefEvaluator(Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;)Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-result-object p1

    return-object p1
.end method

.method public createExternSheetRefEvaluator(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/SheetRangeEvaluator;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getExternalSheet(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->createExternSheetRefEvaluator(Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;)Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-result-object p1

    return-object p1
.end method

.method public createExternSheetRefEvaluator(Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;)Lorg/apache/poi/ss/formula/SheetRangeEvaluator;
    .locals 8

    .line 3
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getWorkbookName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getWorkbookName()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-virtual {v3, v2}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getOtherWorkbookEvaluator(Ljava/lang/String;)Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    move-result-object v3
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment$WorkbookNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getSheetName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getSheetIndex(Ljava/lang/String;)I

    move-result v4

    instance-of v5, p1, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;

    if-eqz v5, :cond_1

    move-object v5, p1

    check-cast v5, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;

    invoke-virtual {v5}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;->getLastSheetName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getSheetIndex(Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    :cond_1
    const/4 v5, -0x1

    :goto_0
    if-ltz v4, :cond_2

    goto :goto_3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Invalid sheet name \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getSheetName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' in bool \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    :goto_1
    iget-object v3, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    if-nez p1, :cond_4

    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getSheetName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v2

    move v4, v2

    :goto_2
    instance-of v2, p1, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;

    if-eqz v2, :cond_5

    check-cast p1, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheetRange;->getLastSheetName()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-interface {v2, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getSheetIndex(Ljava/lang/String;)I

    move-result v5

    goto :goto_3

    :cond_5
    const/4 v5, -0x1

    :goto_3
    if-ne v5, v1, :cond_6

    move v5, v4

    :cond_6
    sub-int p1, v5, v4

    add-int/lit8 p1, p1, 0x1

    new-array v1, p1, [Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    :goto_4
    if-ge v0, p1, :cond_7

    add-int v2, v0, v4

    new-instance v6, Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    iget-object v7, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_tracker:Lorg/apache/poi/ss/formula/EvaluationTracker;

    invoke-direct {v6, v3, v7, v2}, Lorg/apache/poi/ss/formula/SheetRefEvaluator;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/EvaluationTracker;I)V

    aput-object v6, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    new-instance p1, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    invoke-direct {p1, v4, v5, v1}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;-><init>(II[Lorg/apache/poi/ss/formula/SheetRefEvaluator;)V

    return-object p1
.end method

.method public findUserDefinedFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->findUserDefinedFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    move-result-object p1

    return-object p1
.end method

.method public getArea3DEval(Lorg/apache/poi/ss/formula/ptg/Area3DPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;->getExternSheetIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->createExternSheetRefEvaluator(I)Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-result-object v6

    new-instance v0, Lorg/apache/poi/ss/formula/LazyAreaEval;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstRow()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstColumn()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastRow()I

    move-result v4

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastColumn()I

    move-result v5

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/formula/LazyAreaEval;-><init>(IIIILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    return-object v0
.end method

.method public getArea3DEval(Lorg/apache/poi/ss/formula/ptg/Area3DPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 9

    .line 2
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getSheetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getLastSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;->getExternalWorkbookNumber()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->createExternSheetRefEvaluator(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-result-object v8

    new-instance v0, Lorg/apache/poi/ss/formula/LazyAreaEval;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstRow()I

    move-result v4

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstColumn()I

    move-result v5

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastRow()I

    move-result v6

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastColumn()I

    move-result v7

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lorg/apache/poi/ss/formula/LazyAreaEval;-><init>(IIIILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    return-object v0
.end method

.method public getAreaEval(IIII)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRefEvaluatorForCurrentSheet()Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-result-object v5

    new-instance v6, Lorg/apache/poi/ss/formula/LazyAreaEval;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/formula/LazyAreaEval;-><init>(IIIILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    return-object v6
.end method

.method public getColumnIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_columnIndex:I

    return v0
.end method

.method public getDynamicReference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 10

    .line 1
    if-eqz p5, :cond_f

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->createExternSheetRefEvaluator(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    new-instance v5, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    .line 13
    .line 14
    iget p2, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_sheetIndex:I

    .line 15
    .line 16
    invoke-direct {v5, p2, p1}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;-><init>(ILorg/apache/poi/ss/formula/SheetRefEvaluator;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    .line 20
    .line 21
    check-cast p1, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    .line 22
    .line 23
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p3, p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->classifyCellReference(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/util/CellReference$NameType;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    sget-object p5, Lorg/apache/poi/ss/formula/OperationEvaluationContext$1;->$SwitchMap$org$apache$poi$ss$util$CellReference$NameType:[I

    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    aget v0, p5, v0

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    if-eq v0, v1, :cond_e

    .line 41
    .line 42
    const/4 v2, 0x2

    .line 43
    if-eq v0, v2, :cond_c

    .line 44
    .line 45
    const-string v0, "\'."

    .line 46
    .line 47
    const-string v3, "Unexpected reference classification of \'"

    .line 48
    .line 49
    const/4 v4, 0x5

    .line 50
    const/4 v6, 0x4

    .line 51
    const/4 v7, 0x3

    .line 52
    if-nez p4, :cond_3

    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    aget p1, p5, p1

    .line 59
    .line 60
    if-eq p1, v7, :cond_2

    .line 61
    .line 62
    if-eq p1, v6, :cond_2

    .line 63
    .line 64
    if-ne p1, v4, :cond_1

    .line 65
    .line 66
    new-instance p1, Lorg/apache/poi/ss/util/CellReference;

    .line 67
    .line 68
    invoke-direct {p1, p3}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    new-instance p2, Lorg/apache/poi/ss/formula/LazyRefEval;

    .line 72
    .line 73
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    .line 74
    .line 75
    .line 76
    move-result p3

    .line 77
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    invoke-direct {p2, p3, p1, v5}, Lorg/apache/poi/ss/formula/LazyRefEval;-><init>(IILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    .line 82
    .line 83
    .line 84
    return-object p2

    .line 85
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 86
    .line 87
    invoke-static {v3, p3, v0}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p1

    .line 95
    :cond_2
    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 96
    .line 97
    return-object p1

    .line 98
    :cond_3
    invoke-static {p3, p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->classifyCellReference(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/util/CellReference$NameType;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 103
    .line 104
    .line 105
    move-result v9

    .line 106
    aget v9, p5, v9

    .line 107
    .line 108
    if-eq v9, v1, :cond_b

    .line 109
    .line 110
    if-eq v9, v2, :cond_a

    .line 111
    .line 112
    if-eq v8, p2, :cond_4

    .line 113
    .line 114
    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 115
    .line 116
    return-object p1

    .line 117
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    aget p2, p5, p2

    .line 122
    .line 123
    const/4 p5, 0x0

    .line 124
    if-eq p2, v7, :cond_8

    .line 125
    .line 126
    if-eq p2, v6, :cond_6

    .line 127
    .line 128
    if-ne p2, v4, :cond_5

    .line 129
    .line 130
    new-instance p1, Lorg/apache/poi/ss/util/CellReference;

    .line 131
    .line 132
    invoke-direct {p1, p3}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    new-instance p3, Lorg/apache/poi/ss/util/CellReference;

    .line 144
    .line 145
    invoke-direct {p3, p4}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p3}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    .line 149
    .line 150
    .line 151
    move-result p4

    .line 152
    invoke-virtual {p3}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    .line 153
    .line 154
    .line 155
    move-result p3

    .line 156
    move v2, p1

    .line 157
    move v1, p2

    .line 158
    move v4, p3

    .line 159
    move v3, p4

    .line 160
    goto :goto_2

    .line 161
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 162
    .line 163
    invoke-static {v3, p3, v0}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw p1

    .line 171
    :cond_6
    sget-object p2, Lorg/apache/poi/ss/util/CellReference$NameType;->ROW:Lorg/apache/poi/ss/util/CellReference$NameType;

    .line 172
    .line 173
    invoke-virtual {v8, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result p2

    .line 177
    if-eqz p2, :cond_7

    .line 178
    .line 179
    invoke-static {p3}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->parseColRef(Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    move-result p2

    .line 183
    invoke-static {p4}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->parseColRef(Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    move-result p3

    .line 187
    invoke-virtual {p1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    :goto_0
    move v4, p1

    .line 192
    move v1, p2

    .line 193
    move v3, p3

    .line 194
    const/4 v2, 0x0

    .line 195
    goto :goto_2

    .line 196
    :cond_7
    invoke-virtual {p1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    invoke-static {p3}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->parseRowRef(Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    move-result p2

    .line 204
    invoke-static {p4}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->parseRowRef(Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    move-result p3

    .line 208
    goto :goto_0

    .line 209
    :cond_8
    sget-object p2, Lorg/apache/poi/ss/util/CellReference$NameType;->COLUMN:Lorg/apache/poi/ss/util/CellReference$NameType;

    .line 210
    .line 211
    invoke-virtual {v8, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result p2

    .line 215
    invoke-virtual {p1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    if-eqz p2, :cond_9

    .line 220
    .line 221
    invoke-static {p3}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->parseRowRef(Ljava/lang/String;)I

    .line 222
    .line 223
    .line 224
    move-result p2

    .line 225
    invoke-static {p4}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->parseRowRef(Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    move-result p3

    .line 229
    :goto_1
    move v3, p1

    .line 230
    move v2, p2

    .line 231
    move v4, p3

    .line 232
    const/4 v1, 0x0

    .line 233
    goto :goto_2

    .line 234
    :cond_9
    invoke-static {p3}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->parseColRef(Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    move-result p2

    .line 238
    invoke-static {p4}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->parseColRef(Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    move-result p3

    .line 242
    goto :goto_1

    .line 243
    :goto_2
    new-instance p1, Lorg/apache/poi/ss/formula/LazyAreaEval;

    .line 244
    .line 245
    move-object v0, p1

    .line 246
    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/formula/LazyAreaEval;-><init>(IIIILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    .line 247
    .line 248
    .line 249
    return-object p1

    .line 250
    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    .line 251
    .line 252
    const-string p2, "Cannot evaluate \'"

    .line 253
    .line 254
    const-string p4, "\'. Indirect evaluation of defined names not supported yet"

    .line 255
    .line 256
    invoke-static {p2, p3, p4}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p2

    .line 260
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    throw p1

    .line 264
    :cond_b
    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 265
    .line 266
    return-object p1

    .line 267
    :cond_c
    iget-object p1, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    .line 268
    .line 269
    check-cast p1, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    .line 270
    .line 271
    iget p2, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_sheetIndex:I

    .line 272
    .line 273
    invoke-interface {p1, p3, p2}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationName;->isRange()Z

    .line 278
    .line 279
    .line 280
    move-result p2

    .line 281
    if-eqz p2, :cond_d

    .line 282
    .line 283
    iget-object p2, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    .line 284
    .line 285
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationName;->getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    invoke-virtual {p2, p1, p0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateNameFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    return-object p1

    .line 294
    :cond_d
    new-instance p1, Ljava/lang/RuntimeException;

    .line 295
    .line 296
    const-string p2, "Specified name \'"

    .line 297
    .line 298
    const-string p4, "\' is not a range as expected."

    .line 299
    .line 300
    invoke-static {p2, p3, p4}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object p2

    .line 304
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    throw p1

    .line 308
    :cond_e
    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 309
    .line 310
    return-object p1

    .line 311
    :cond_f
    new-instance p1, Ljava/lang/RuntimeException;

    .line 312
    .line 313
    const-string p2, "R1C1 style not supported yet"

    .line 314
    .line 315
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    throw p1
.end method

.method public getNameXEval(Lorg/apache/poi/ss/formula/ptg/NameXPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->getSheetRefIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getExternalSheet(I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getWorkbookName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getWorkbookName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->getSheetRefIndex()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPtg;->getNameIndex()I

    move-result p1

    invoke-interface {v1, v2, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getExternalName(II)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getExternalNameXEval(Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;Ljava/lang/String;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getLocalNameXEval(Lorg/apache/poi/ss/formula/ptg/NameXPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1
.end method

.method public getNameXEval(Lorg/apache/poi/ss/formula/ptg/NameXPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4

    .line 2
    iget-object v0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->getSheetName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->getExternalWorkbookNumber()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getExternalSheet(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getWorkbookName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->getWorkbookName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->getNameName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->getSheetName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;->getExternalWorkbookNumber()I

    move-result p1

    invoke-interface {v1, v2, v3, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getExternalName(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getExternalNameXEval(Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;Ljava/lang/String;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getLocalNameXEval(Lorg/apache/poi/ss/formula/ptg/NameXPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1
.end method

.method public getRef3DEval(Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPtg;->getExternSheetIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->createExternSheetRefEvaluator(I)Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/ss/formula/LazyRefEval;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->getRow()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->getColumn()I

    move-result p1

    invoke-direct {v1, v2, p1, v0}, Lorg/apache/poi/ss/formula/LazyRefEval;-><init>(IILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    return-object v1
.end method

.method public getRef3DEval(Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3

    .line 2
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->getSheetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->getLastSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/Ref3DPxg;->getExternalWorkbookNumber()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->createExternSheetRefEvaluator(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/ss/formula/LazyRefEval;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->getRow()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/ptg/RefPtgBase;->getColumn()I

    move-result p1

    invoke-direct {v1, v2, p1, v0}, Lorg/apache/poi/ss/formula/LazyRefEval;-><init>(IILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    return-object v1
.end method

.method public getRefEval(II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRefEvaluatorForCurrentSheet()Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/ss/formula/LazyRefEval;

    invoke-direct {v1, p1, p2, v0}, Lorg/apache/poi/ss/formula/LazyRefEval;-><init>(IILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    return-object v1
.end method

.method public getRefEvaluatorForCurrentSheet()Lorg/apache/poi/ss/formula/SheetRangeEvaluator;
    .locals 4

    new-instance v0, Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    iget-object v1, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    iget-object v2, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_tracker:Lorg/apache/poi/ss/formula/EvaluationTracker;

    iget v3, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_sheetIndex:I

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/ss/formula/SheetRefEvaluator;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/EvaluationTracker;I)V

    new-instance v1, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    iget v2, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_sheetIndex:I

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;-><init>(ILorg/apache/poi/ss/formula/SheetRefEvaluator;)V

    return-object v1
.end method

.method public getRowIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_rowIndex:I

    return v0
.end method

.method public getSheetIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_sheetIndex:I

    return v0
.end method

.method public getWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_workbook:Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    return-object v0
.end method

.method public isSingleValue()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->_isSingleValue:Z

    return v0
.end method
