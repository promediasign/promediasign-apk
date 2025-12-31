.class public Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final formats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;",
            ">;>;"
        }
    .end annotation
.end field

.field private final values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/util/CellReference;",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;",
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

    iput-object v0, p0, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->formats:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->values:Ljava/util/Map;

    iput-object p1, p0, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    invoke-interface {p2}, Lorg/apache/poi/ss/formula/WorkbookEvaluatorProvider;->_getWorkbookEvaluator()Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->workbookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    return-void
.end method

.method public static getRef(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/util/CellReference;
    .locals 7

    new-instance v6, Lorg/apache/poi/ss/util/CellReference;

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getRowIndex()I

    move-result v2

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    return-object v6
.end method


# virtual methods
.method public clearAllCachedFormats()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->formats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public clearAllCachedValues()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getConditionalFormattingForCell(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->getRef(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/util/CellReference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->getConditionalFormattingForCell(Lorg/apache/poi/ss/util/CellReference;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getConditionalFormattingForCell(Lorg/apache/poi/ss/util/CellReference;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/util/CellReference;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getSheetName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getSheetName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Workbook;->getActiveSheetIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheetAt(I)Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->getRules(Lorg/apache/poi/ss/usermodel/Sheet;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3, p1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->matches(Lorg/apache/poi/ss/util/CellReference;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getRule()Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;->getStopIfTrue()Z

    move-result v2

    goto :goto_1

    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v1, p0, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->values:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getFormatRulesForSheet(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->workbook:Lorg/apache/poi/ss/usermodel/Workbook;

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheet(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->getFormatRulesForSheet(Lorg/apache/poi/ss/usermodel/Sheet;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getFormatRulesForSheet(Lorg/apache/poi/ss/usermodel/Sheet;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/Sheet;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->getRules(Lorg/apache/poi/ss/usermodel/Sheet;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getMatchingCells(Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getRegions()[Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v6

    :goto_1
    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v7

    if-gt v6, v7, :cond_4

    invoke-interface {v1, v6}, Lorg/apache/poi/ss/usermodel/Sheet;->getRow(I)Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v8

    :goto_2
    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v9

    if-gt v8, v9, :cond_3

    invoke-interface {v7, v8}, Lorg/apache/poi/ss/usermodel/Row;->getCell(I)Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v9

    if-nez v9, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {p0, v9}, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->getConditionalFormattingForCell(Lorg/apache/poi/ss/usermodel/Cell;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getMatchingCells(Lorg/apache/poi/ss/usermodel/Sheet;II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/Sheet;",
            "II)",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->getRules(Lorg/apache/poi/ss/usermodel/Sheet;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getFormattingIndex()I

    move-result v2

    if-ne v2, p2, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;->getRuleIndex()I

    move-result v2

    if-ne v2, p3, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->getMatchingCells(Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getRules(Lorg/apache/poi/ss/usermodel/Sheet;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/Sheet;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->formats:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_3

    iget-object v2, v0, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->formats:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/poi/ss/usermodel/Sheet;->getSheetConditionalFormatting()Lorg/apache/poi/ss/usermodel/SheetConditionalFormatting;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/SheetConditionalFormatting;->getNumConditionalFormattings()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v5, v0, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->formats:Ljava/util/Map;

    invoke-interface {v5, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v3, :cond_2

    invoke-interface {v2, v13}, Lorg/apache/poi/ss/usermodel/SheetConditionalFormatting;->getConditionalFormattingAt(I)Lorg/apache/poi/ss/usermodel/ConditionalFormatting;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/poi/ss/usermodel/ConditionalFormatting;->getFormattingRanges()[Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v15

    const/4 v12, 0x0

    :goto_1
    invoke-interface {v14}, Lorg/apache/poi/ss/usermodel/ConditionalFormatting;->getNumberOfRules()I

    move-result v5

    if-ge v12, v5, :cond_1

    invoke-interface {v14, v12}, Lorg/apache/poi/ss/usermodel/ConditionalFormatting;->getRule(I)Lorg/apache/poi/ss/usermodel/ConditionalFormattingRule;

    move-result-object v10

    new-instance v11, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;

    iget-object v6, v0, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->workbookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    move-object v5, v11

    move-object/from16 v7, p1

    move-object v8, v14

    move v9, v13

    move-object v1, v11

    move v11, v12

    move/from16 v16, v12

    move-object v12, v15

    invoke-direct/range {v5 .. v12}, Lorg/apache/poi/ss/formula/EvaluationConditionalFormatRule;-><init>(Lorg/apache/poi/ss/formula/WorkbookEvaluator;Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/usermodel/ConditionalFormatting;ILorg/apache/poi/ss/usermodel/ConditionalFormattingRule;I[Lorg/apache/poi/ss/util/CellRangeAddress;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v16, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move-object v2, v4

    :cond_3
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getWorkbookEvaluator()Lorg/apache/poi/ss/formula/WorkbookEvaluator;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/ConditionalFormattingEvaluator;->workbookEvaluator:Lorg/apache/poi/ss/formula/WorkbookEvaluator;

    return-object v0
.end method
