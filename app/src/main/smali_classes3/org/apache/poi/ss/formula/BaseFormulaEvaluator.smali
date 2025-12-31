.class public abstract Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/FormulaEvaluator;
.implements Lorg/apache/poi/ss/formula/WorkbookEvaluatorProvider;


# instance fields
.field protected final _bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    return-void
.end method

.method public static evaluateAllFormulaCells(Lorg/apache/poi/ss/usermodel/Workbook;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Workbook;->getCreationHelper()Lorg/apache/poi/ss/usermodel/CreationHelper;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/CreationHelper;->createFormulaEvaluator()Lorg/apache/poi/ss/usermodel/FormulaEvaluator;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->evaluateAllFormulaCells(Lorg/apache/poi/ss/usermodel/Workbook;Lorg/apache/poi/ss/usermodel/FormulaEvaluator;)V

    return-void
.end method

.method public static evaluateAllFormulaCells(Lorg/apache/poi/ss/usermodel/Workbook;Lorg/apache/poi/ss/usermodel/FormulaEvaluator;)V
    .locals 6

    .line 2
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Workbook;->getNumberOfSheets()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p0, v0}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheetAt(I)Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/usermodel/Row;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/usermodel/Cell;

    invoke-interface {v3}, Lorg/apache/poi/ss/usermodel/Cell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v4

    sget-object v5, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v4, v5, :cond_1

    invoke-interface {p1, v3}, Lorg/apache/poi/ss/usermodel/FormulaEvaluator;->evaluateFormulaCellEnum(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellType;

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static setCellType(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellValue;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/CellValue;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p1

    sget-object v0, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected cell value type ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This should never happen. Blanks eventually get translated to zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This should never happen. Formulas should have already been evaluated."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/Cell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static setupEnvironment([Ljava/lang/String;[Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;)V
    .locals 4

    array-length v0, p1

    new-array v1, v0, [Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    iget-object v3, v3, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, v1}, Lorg/apache/poi/ss/formula/CollaboratingWorkbooksEnvironment;->setup([Ljava/lang/String;[Lorg/apache/poi/ss/formula/WorkbookEvaluator;)V

    return-void
.end method


# virtual methods
.method public _getWorkbookEvaluator()Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    return-object v0
.end method

.method public clearAllCachedResultValues()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->_bookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->clearAllCachedResultValues()V

    return-void
.end method

.method public abstract createRichTextString(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/RichTextString;
.end method

.method public evaluate(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellValue;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad cell type ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    return-object v0

    :pswitch_1
    new-instance v0, Lorg/apache/poi/ss/usermodel/CellValue;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getRichStringCellValue()Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/RichTextString;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/poi/ss/usermodel/CellValue;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lorg/apache/poi/ss/usermodel/CellValue;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getNumericCellValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/CellValue;-><init>(D)V

    return-object v0

    :pswitch_3
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->evaluateFormulaCellValue(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellValue;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getErrorCellValue()B

    move-result p1

    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/CellValue;->getError(I)Lorg/apache/poi/ss/usermodel/CellValue;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getBooleanCellValue()Z

    move-result p1

    invoke-static {p1}, Lorg/apache/poi/ss/usermodel/CellValue;->valueOf(Z)Lorg/apache/poi/ss/usermodel/CellValue;

    move-result-object p1

    return-object p1

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

.method public evaluateFormulaCell(Lorg/apache/poi/ss/usermodel/Cell;)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->evaluateFormulaCellEnum(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/ss/usermodel/CellType;->getCode()I

    move-result p1

    return p1
.end method

.method public evaluateFormulaCellEnum(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellType;
    .locals 2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->evaluateFormulaCellValue(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->setCellValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellValue;)V

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellValue;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    sget-object p1, Lorg/apache/poi/ss/usermodel/CellType;->_NONE:Lorg/apache/poi/ss/usermodel/CellType;

    return-object p1
.end method

.method public abstract evaluateFormulaCellValue(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellValue;
.end method

.method public evaluateInCell(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->evaluateFormulaCellValue(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellValue;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->setCellValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellValue;)V

    invoke-static {p1, v0}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->setCellType(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellValue;)V

    :cond_1
    return-object p1
.end method

.method public setCellValue(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellValue;)V
    .locals 3

    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/CellValue;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/CellValue;->getStringValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/poi/ss/formula/BaseFormulaEvaluator;->createRichTextString(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/RichTextString;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Lorg/apache/poi/ss/usermodel/RichTextString;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected cell value type ("

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/CellValue;->getNumberValue()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(D)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/CellValue;->getErrorValue()B

    move-result p2

    invoke-interface {p1, p2}, Lorg/apache/poi/ss/usermodel/Cell;->setCellErrorValue(B)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/CellValue;->getBooleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Z)V

    :goto_0
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
