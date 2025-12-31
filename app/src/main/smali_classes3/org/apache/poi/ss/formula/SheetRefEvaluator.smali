.class final Lorg/apache/poi/ss/formula/SheetRefEvaluator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

.field private _sheet:Lorg/apache/poi/ss/formula/EvaluationSheet;

.field private final _sheetIndex:I

.field private final _tracker:Lorg/apache/poi/ss/formula/EvaluationTracker;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/formula/EvaluationTracker;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-ltz p3, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    .line 7
    .line 8
    iput-object p2, p0, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->_tracker:Lorg/apache/poi/ss/formula/EvaluationTracker;

    .line 9
    .line 10
    iput p3, p0, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->_sheetIndex:I

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string p2, "Invalid sheetIndex: "

    .line 16
    .line 17
    const-string v0, "."

    .line 18
    .line 19
    invoke-static {p3, p2, v0}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method private getSheet()Lorg/apache/poi/ss/formula/EvaluationSheet;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->_sheet:Lorg/apache/poi/ss/formula/EvaluationSheet;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    iget v1, p0, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->_sheetIndex:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getSheet(I)Lorg/apache/poi/ss/formula/EvaluationSheet;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->_sheet:Lorg/apache/poi/ss/formula/EvaluationSheet;

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->_sheet:Lorg/apache/poi/ss/formula/EvaluationSheet;

    return-object v0
.end method


# virtual methods
.method public getEvalForCell(II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->getSheet()Lorg/apache/poi/ss/formula/EvaluationSheet;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->_sheetIndex:I

    iget-object v5, p0, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->_tracker:Lorg/apache/poi/ss/formula/EvaluationTracker;

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateReference(Lorg/apache/poi/ss/formula/EvaluationSheet;IIILorg/apache/poi/ss/formula/EvaluationTracker;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1
.end method

.method public getSheetName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    iget v1, p0, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->_sheetIndex:I

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getSheetName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSubTotal(II)Z
    .locals 4

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->getSheet()Lorg/apache/poi/ss/formula/EvaluationSheet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/poi/ss/formula/EvaluationSheet;->getCell(II)Lorg/apache/poi/ss/formula/EvaluationCell;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/EvaluationCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getWorkbook()Lorg/apache/poi/ss/formula/EvaluationWorkbook;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/formula/EvaluationWorkbook;->getFormulaTokens(Lorg/apache/poi/ss/formula/EvaluationCell;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    instance-of v3, v2, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    const-string v3, "SUBTOTAL"

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method
