.class public Lorg/apache/poi/ss/formula/DataValidationEvaluator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;,
        Lorg/apache/poi/ss/formula/DataValidationEvaluator$OperatorEnum;,
        Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;
    }
.end annotation


# instance fields
.field private final validations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/ss/usermodel/DataValidation;",
            ">;>;"
        }
    .end annotation
.end field

.field private final workbook:Lorg/apache/poi/ss/usermodel/Workbook;

.field private final workbookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/usermodel/Workbook;Lorg/apache/poi/ss/formula/WorkbookEvaluatorProvider;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->validations:Ljava/util/Map;

    iput-object p1, p0, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    invoke-interface {p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluatorProvider;->_getWorkbookEvaluator()Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->workbookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    return-void
.end method

.method public static getValidationValuesForConstraint(Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/formula/eval/ValueEval;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->getValidation()Lorg/apache/poi/ss/usermodel/DataValidation;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/DataValidation;->getValidationConstraint()Lorg/apache/poi/ss/usermodel/DataValidationConstraint;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/DataValidationConstraint;->getValidationType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/DataValidationConstraint;->getFormula1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/DataValidationConstraint;->getExplicitListValues()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/DataValidationConstraint;->getExplicitListValues()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_2

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/DataValidationConstraint;->getExplicitListValues()[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    :goto_0
    if-ge v4, v0, :cond_3

    aget-object v1, p0, v4

    if-eqz v1, :cond_1

    new-instance v3, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-direct {v3, v1}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->getEvaluator()Lorg/apache/poi/ss/formula/DataValidationEvaluator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->getWorkbookEvaluator()Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->getTarget()Lorg/apache/poi/ss/util/CellReference;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->getRegion()Lorg/apache/poi/ss/util/CellRangeAddressBase;

    move-result-object p0

    invoke-virtual {v0, v1, v3, p0}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->evaluateList(Ljava/lang/String;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellRangeAddressBase;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    instance-of v0, p0, Lorg/apache/poi/ss/formula/TwoDEval;

    if-eqz v0, :cond_3

    check-cast p0, Lorg/apache/poi/ss/formula/TwoDEval;

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p0}, Lorg/apache/poi/ss/formula/TwoDEval;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p0, v0, v4}, Lorg/apache/poi/ss/formula/TwoDEval;->getValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getValidations(Lorg/apache/poi/ss/usermodel/Sheet;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/Sheet;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/ss/usermodel/DataValidation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->validations:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->validations:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getDataValidations()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->validations:Ljava/util/Map;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static isType(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellType;)Z
    .locals 2

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    if-eq v0, p1, :cond_1

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p0

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public clearAllCachedValues()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->validations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getValidationContextForCell(Lorg/apache/poi/ss/util/CellReference;)Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;
    .locals 8

    iget-object v0, p0, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->getValidations(Lorg/apache/poi/ss/usermodel/Sheet;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/usermodel/DataValidation;

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/DataValidation;->getRegions()Lorg/apache/poi/ss/util/CellRangeAddressList;

    move-result-object v3

    if-nez v3, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellRangeAddressList;->getCellRangeAddresses()[Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    invoke-virtual {v6, p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->isInRange(Lorg/apache/poi/ss/util/CellReference;)Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v0, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;

    invoke-direct {v0, v2, p0, v6, p1}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;-><init>(Lorg/apache/poi/ss/usermodel/DataValidation;Lorg/apache/poi/ss/formula/DataValidationEvaluator;Lorg/apache/poi/ss/util/CellRangeAddressBase;Lorg/apache/poi/ss/util/CellReference;)V

    return-object v0

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method public getValidationForCell(Lorg/apache/poi/ss/util/CellReference;)Lorg/apache/poi/ss/usermodel/DataValidation;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->getValidationContextForCell(Lorg/apache/poi/ss/util/CellReference;)Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->getValidation()Lorg/apache/poi/ss/usermodel/DataValidation;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getValidationValuesForCell(Lorg/apache/poi/ss/util/CellReference;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/util/CellReference;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/formula/eval/ValueEval;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->getValidationContextForCell(Lorg/apache/poi/ss/util/CellReference;)Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->getValidationValuesForConstraint(Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getWorkbookEvaluator()Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->workbookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    return-object v0
.end method

.method public isValidCell(Lorg/apache/poi/ss/util/CellReference;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->getValidationContextForCell(Lorg/apache/poi/ss/util/CellReference;)Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getSheetName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result p1

    invoke-static {v1, v2, p1}, Lorg/apache/poi/ss/util/SheetUtil;->getCell(Lorg/apache/poi/ss/usermodel/Sheet;II)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {p1, v1}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->isType(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellType;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-static {p1, v1}, Lorg/apache/poi/ss/formula/DataValidationEvaluator;->isType(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellType;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getStringCellValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getStringCellValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, v0}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$ValidationEnum;->isValid(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/DataValidationEvaluator$DataValidationContext;->getValidation()Lorg/apache/poi/ss/usermodel/DataValidation;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/DataValidation;->getEmptyCellAllowed()Z

    move-result p1

    return p1
.end method
