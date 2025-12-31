.class public final Lorg/apache/poi/xssf/usermodel/helpers/XSSFFormulaUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _fpwb:Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

.field private final _wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFFormulaUtils;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-static {p1}, Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;->create(Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;)Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFFormulaUtils;->_fpwb:Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    return-void
.end method

.method private updateFormula(Lorg/apache/poi/xssf/usermodel/XSSFCell;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCTCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getF()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellFormula;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlAnySimpleType;->getStringValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFFormulaUtils;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFFormulaUtils;->_fpwb:Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    sget-object v4, Lorg/apache/poi/ss/formula/FormulaType;->CELL:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getRowIndex()I

    move-result p1

    invoke-static {v1, v3, v4, v2, p1}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    invoke-direct {p0, v4, p2, p3}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFFormulaUtils;->updatePtg(Lorg/apache/poi/ss/formula/ptg/Ptg;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFFormulaUtils;->_fpwb:Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    invoke-static {p2, p1}, Lorg/apache/poi/ss/formula/FormulaRenderer;->toFormulaString(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-interface {v0, p1}, Lorg/apache/xmlbeans/XmlAnySimpleType;->setStringValue(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private updateName(Lorg/apache/poi/xssf/usermodel/XSSFName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getRefersToFormula()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getSheetIndex()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFFormulaUtils;->_fpwb:Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    sget-object v3, Lorg/apache/poi/ss/formula/FormulaType;->NAMEDRANGE:Lorg/apache/poi/ss/formula/FormulaType;

    const/4 v4, -0x1

    invoke-static {v0, v2, v3, v1, v4}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-direct {p0, v4, p2, p3}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFFormulaUtils;->updatePtg(Lorg/apache/poi/ss/formula/ptg/Ptg;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFFormulaUtils;->_fpwb:Lorg/apache/poi/xssf/usermodel/XSSFEvaluationWorkbook;

    invoke-static {p2, v1}, Lorg/apache/poi/ss/formula/FormulaRenderer;->toFormulaString(Lorg/apache/poi/ss/formula/FormulaRenderingWorkbook;[Lorg/apache/poi/ss/formula/ptg/Ptg;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFName;->setRefersToFormula(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private updatePtg(Lorg/apache/poi/ss/formula/ptg/Ptg;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Pxg;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Pxg;

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/ptg/Pxg;->getExternalWorkbookNumber()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/ptg/Pxg;->getSheetName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/ptg/Pxg;->getSheetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p3}, Lorg/apache/poi/ss/formula/ptg/Pxg;->setSheetName(Ljava/lang/String;)V

    :cond_0
    instance-of v0, p1, Lorg/apache/poi/ss/formula/ptg/Pxg3D;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/poi/ss/formula/ptg/Pxg3D;

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/ptg/Pxg3D;->getLastSheetName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/ptg/Pxg3D;->getLastSheetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1, p3}, Lorg/apache/poi/ss/formula/ptg/Pxg3D;->setLastSheetName(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public updateSheetName(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFFormulaUtils;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getAllNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFName;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getSheetIndex()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFName;->getSheetIndex()I

    move-result v2

    if-ne v2, p1, :cond_0

    :cond_1
    invoke-direct {p0, v1, p2, p3}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFFormulaUtils;->updateName(Lorg/apache/poi/xssf/usermodel/XSSFName;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFFormulaUtils;->_wb:Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/Sheet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/usermodel/Row;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/ss/usermodel/Cell;

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Cell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v3

    sget-object v4, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v3, v4, :cond_5

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-direct {p0, v2, p2, p3}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFFormulaUtils;->updateFormula(Lorg/apache/poi/xssf/usermodel/XSSFCell;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    return-void
.end method
