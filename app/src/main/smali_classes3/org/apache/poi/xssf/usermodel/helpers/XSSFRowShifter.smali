.class public final Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;
.super Lorg/apache/poi/ss/usermodel/helpers/RowShifter;
.source "SourceFile"


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;-><init>(Lorg/apache/poi/ss/usermodel/Sheet;)V

    return-void
.end method

.method private static shiftFormula(Lorg/apache/poi/ss/usermodel/Row;Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaShifter;)Ljava/lang/String;
    .locals 4

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v0

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Row;->getRowNum()I

    move-result v2

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-static {v1}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->create(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    move-result-object v1

    :try_start_0
    sget-object v3, Lorg/apache/poi/ss/formula/FormulaType;->CELL:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-static {p1, v1, v3, v0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v2

    invoke-virtual {p2, v2, v0}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {v1, v2}, Lorg/apache/poi/ss/formula/FormulaRenderer;->toFormulaString(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/FormulaParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :goto_1
    sget-object v0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->logger:Lorg/apache/poi/util/POILogger;

    invoke-interface {p0}, Lorg/apache/poi/ss/usermodel/Row;->getRowNum()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Error shifting formula on row "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x5

    invoke-virtual {v0, p0, v1}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    return-object p1
.end method

.method private static shiftRange(Lorg/apache/poi/ss/formula/FormulaShifter;Lorg/apache/poi/ss/util/CellRangeAddress;I)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 10

    new-instance v9, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;-><init>(IIIIZZZZ)V

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/poi/ss/formula/ptg/Ptg;

    const/4 v1, 0x0

    aput-object v9, v0, v1

    invoke-virtual {p0, v0, p2}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;I)Z

    move-result p0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    aget-object p0, v0, v1

    instance-of p1, p0, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    if-eqz p1, :cond_1

    check-cast p0, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    new-instance p1, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstRow()I

    move-result p2

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastRow()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstColumn()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastColumn()I

    move-result p0

    invoke-direct {p1, p2, v0, v1, p0}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    return-object p1

    :cond_1
    instance-of p1, p0, Lorg/apache/poi/ss/formula/ptg/AreaErrPtg;

    if-eqz p1, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected shifted ptg class ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private updateRefInCTCellFormula(Lorg/apache/poi/ss/usermodel/Row;Lorg/apache/poi/ss/formula/FormulaShifter;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;)V
    .locals 1

    invoke-interface {p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->isSetRef()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->shiftFormula(Lorg/apache/poi/ss/usermodel/Row;Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaShifter;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p3, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->setRef(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateSheetFormulas(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/Row;

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-virtual {p0, v0, p2}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->updateRowFormulas(Lorg/apache/poi/ss/usermodel/Row;Lorg/apache/poi/ss/formula/FormulaShifter;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public shiftMerged(III)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;->shiftMergedRegions(III)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public updateConditionalFormatting(Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v3

    iget-object v4, v0, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-virtual {v3, v4}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v4

    invoke-static {v3}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->create(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getConditionalFormattingArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    :goto_0
    if-ltz v6, :cond_b

    aget-object v8, v5, v6

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;->getSqref()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v13, " "

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v13, v11

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v13, :cond_0

    aget-object v14, v11, v12

    invoke-static {v14}, Lorg/apache/poi/ss/util/CellRangeAddress;->valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v11, 0x0

    :cond_2
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-static {v1, v13, v4}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->shiftRange(Lorg/apache/poi/ss/formula/FormulaShifter;Lorg/apache/poi/ss/util/CellRangeAddress;I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v14

    if-nez v14, :cond_3

    :goto_3
    const/4 v11, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v14, v13, :cond_2

    goto :goto_3

    :cond_4
    if-eqz v11, :cond_7

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_5

    invoke-interface {v2, v6}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->removeConditionalFormatting(I)V

    goto :goto_7

    :cond_5
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v11}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    invoke-interface {v8, v9}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;->setSqref(Ljava/util/List;)V

    :cond_7
    invoke-interface {v8}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormatting;->getCfRuleArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v9, :cond_a

    aget-object v11, v8, v10

    invoke-interface {v11}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->getFormulaArray()[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    :goto_6
    array-length v15, v13

    if-ge v14, v15, :cond_9

    aget-object v15, v13, v14

    sget-object v7, Lorg/apache/poi/ss/formula/FormulaType;->CELL:Lorg/apache/poi/ss/formula/FormulaType;

    const/4 v12, -0x1

    invoke-static {v15, v3, v7, v4, v12}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v7

    invoke-virtual {v1, v7, v4}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;I)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-static {v3, v7}, Lorg/apache/poi/ss/formula/FormulaRenderer;->toFormulaString(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v11, v14, v7}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfRule;->setFormulaArray(ILjava/lang/String;)V

    :cond_8
    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x1

    goto :goto_5

    :cond_a
    :goto_7
    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public updateFormulas(Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->updateSheetFormulas(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/formula/FormulaShifter;)V

    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/usermodel/Sheet;

    iget-object v2, p0, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1, p1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->updateSheetFormulas(Lorg/apache/poi/ss/usermodel/Sheet;Lorg/apache/poi/ss/formula/FormulaShifter;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateHyperlinks(Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v0, v1}, Lorg/apache/poi/ss/usermodel/Workbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v1}, Lorg/apache/poi/ss/usermodel/Sheet;->getHyperlinkList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/usermodel/Hyperlink;

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->getCellRef()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/ss/util/CellRangeAddress;->valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v3

    invoke-static {p1, v3, v0}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->shiftRange(Lorg/apache/poi/ss/formula/FormulaShifter;Lorg/apache/poi/ss/util/CellRangeAddress;I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v4

    if-eqz v4, :cond_0

    if-eq v4, v3, :cond_0

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;->setCellReference(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateNamedRanges(Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 7

    iget-object v0, p0, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;->sheet:Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-static {v1}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->create(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Workbook;->getAllNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/usermodel/Name;

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Name;->getRefersToFormula()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Name;->getSheetIndex()I

    move-result v4

    sget-object v5, Lorg/apache/poi/ss/formula/FormulaType;->NAMEDRANGE:Lorg/apache/poi/ss/formula/FormulaType;

    const/4 v6, -0x1

    invoke-static {v3, v1, v5, v4, v6}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v3

    invoke-virtual {p1, v3, v4}, Lorg/apache/poi/ss/formula/FormulaShifter;->adjustFormula([Lorg/apache/poi/ss/formula/ptg/Ptg;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v1, v3}, Lorg/apache/poi/ss/formula/FormulaRenderer;->toFormulaString(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/poi/ss/usermodel/Name;->setRefersToFormula(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateRowFormulas(Lorg/apache/poi/ss/usermodel/Row;Lorg/apache/poi/ss/formula/FormulaShifter;)V
    .locals 6
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/usermodel/Cell;

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCTCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->isSetF()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getF()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-static {p1, v3, p2}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->shiftFormula(Lorg/apache/poi/ss/usermodel/Row;Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaShifter;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v2, v3}, Lorg/apache/xmlbeans/XmlAnySimpleType;->setStringValue(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType$Enum;

    move-result-object v4

    sget-object v5, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType;->SHARED:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCellFormulaType$Enum;

    if-ne v4, v5, :cond_1

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;->getSi()J

    move-result-wide v4

    long-to-int v5, v4

    invoke-virtual {v0, v5}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSharedFormula(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;

    move-result-object v4

    invoke-interface {v4, v3}, Lorg/apache/xmlbeans/XmlAnySimpleType;->setStringValue(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v4}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->updateRefInCTCellFormula(Lorg/apache/poi/ss/usermodel/Row;Lorg/apache/poi/ss/formula/FormulaShifter;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;)V

    :cond_1
    invoke-direct {p0, p1, p2, v2}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->updateRefInCTCellFormula(Lorg/apache/poi/ss/usermodel/Row;Lorg/apache/poi/ss/formula/FormulaShifter;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;)V

    goto :goto_0

    :cond_2
    return-void
.end method
