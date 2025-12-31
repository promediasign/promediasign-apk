.class public Lorg/apache/poi/xssf/usermodel/XSSFRow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Row;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/poi/ss/usermodel/Row;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/poi/xssf/usermodel/XSSFRow;",
        ">;"
    }
.end annotation


# instance fields
.field private final _cells:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/xssf/usermodel/XSSFCell;",
            ">;"
        }
    .end annotation
.end field

.field private final _row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

.field private final _sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getCArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    new-instance v4, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-direct {v4, p0, v3}, Lorg/apache/poi/xssf/usermodel/XSSFCell;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFRow;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;)V

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getColumnIndex()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/lang/Integer;-><init>(I)V

    iget-object v5, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v4}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->onReadCell(Lorg/apache/poi/xssf/usermodel/XSSFCell;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->isSetR()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getLastRowNum()I

    move-result v0

    const/4 v1, 0x2

    add-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getPhysicalNumberOfRows()I

    move-result p2

    if-nez p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->setR(J)V

    :cond_2
    return-void
.end method


# virtual methods
.method public cellIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->compareTo(Lorg/apache/poi/xssf/usermodel/XSSFRow;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/poi/xssf/usermodel/XSSFRow;)I
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The compared rows must belong to the same sheet"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public copyRowFrom(Lorg/apache/poi/ss/usermodel/Row;Lorg/apache/poi/ss/usermodel/CellCopyPolicy;)V
    .locals 9

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/usermodel/Cell;

    const/4 v1, 0x0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-virtual {v0, v1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->copyCellFrom(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellCopyPolicy;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCopyMergedRegions()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result p1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getMergedRegions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v4

    if-ne p1, v4, :cond_1

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v3

    if-ne p1, v3, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->removeMergedRegions(Ljava/util/Collection;)V

    :cond_3
    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCopyRowHeight()Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, -0x1

    :goto_2
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->setHeight(S)V

    goto/16 :goto_5

    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/usermodel/Cell;

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getColumnIndex()I

    move-result v2

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->copyCellFrom(Lorg/apache/poi/ss/usermodel/Cell;Lorg/apache/poi/ss/usermodel/CellCopyPolicy;)V

    goto :goto_3

    :cond_5
    new-instance v0, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-direct {v0, v1}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v1, v2}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v3

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->getRowNum()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v2

    sub-int v7, v2, v1

    sget-object v8, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    move v5, v1

    move v6, v1

    invoke-static/range {v3 .. v8}, Lorg/apache/poi/ss/formula/FormulaShifter;->createForRowCopy(ILjava/lang/String;IIILorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/formula/FormulaShifter;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, Lorg/apache/poi/xssf/usermodel/helpers/XSSFRowShifter;->updateRowFormulas(Lorg/apache/poi/ss/usermodel/Row;Lorg/apache/poi/ss/formula/FormulaShifter;)V

    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCopyMergedRegions()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/Sheet;->getMergedRegions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v4

    if-ne v1, v4, :cond_6

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v4

    if-ne v1, v4, :cond_6

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellRangeAddress;->copy()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->setFirstRow(I)V

    invoke-virtual {v3, v2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->setLastRow(I)V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->addMergedRegion(Lorg/apache/poi/ss/util/CellRangeAddress;)I

    goto :goto_4

    :cond_7
    invoke-virtual {p2}, Lorg/apache/poi/ss/usermodel/CellCopyPolicy;->isCopyRowHeight()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->getHeight()S

    move-result p1

    goto/16 :goto_2

    :cond_8
    :goto_5
    return-void
.end method

.method public bridge synthetic createCell(I)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->createCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createCell(II)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->createCell(II)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object p1

    return-object p1
.end method

.method public createCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;
    .locals 1

    .line 4
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object p1

    return-object p1
.end method

.method public createCell(II)Lorg/apache/poi/xssf/usermodel/XSSFCell;
    .locals 0

    .line 5
    invoke-static {p2}, Lorg/apache/poi/ss/usermodel/CellType;->forInt(I)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object p1

    return-object p1
.end method

.method public createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/xssf/usermodel/XSSFCell;
    .locals 3

    .line 6
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCTCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object v1

    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->addNewC()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object v1

    :goto_0
    new-instance v2, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-direct {v2, p0, v1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;-><init>(Lorg/apache/poi/xssf/usermodel/XSSFRow;Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;)V

    invoke-virtual {v2, p1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellNum(I)V

    sget-object p1, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    if-eq p2, p1, :cond_1

    invoke-virtual {v2, p2}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {p1, v0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/poi/xssf/usermodel/XSSFRow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFRow;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object p1

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getCTRow()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    return-object v0
.end method

.method public bridge synthetic getCell(I)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getCell(ILorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(ILorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object p1

    return-object p1
.end method

.method public getCell(I)Lorg/apache/poi/xssf/usermodel/XSSFCell;
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getMissingCellPolicy()Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getCell(ILorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object p1

    return-object p1
.end method

.method public getCell(ILorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)Lorg/apache/poi/xssf/usermodel/XSSFCell;
    .locals 3

    .line 4
    if-ltz p1, :cond_4

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    sget-object v1, Lorg/apache/poi/xssf/usermodel/XSSFRow$1;->$SwitchMap$org$apache$poi$ss$usermodel$Row$MissingCellPolicy:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    sget-object p2, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/xssf/usermodel/XSSFCell;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal policy "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p1

    sget-object p2, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne p1, p2, :cond_3

    const/4 v0, 0x0

    :cond_3
    return-object v0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cell index must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFirstCellNum()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    int-to-short v0, v0

    return v0
.end method

.method public getHeight()S
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getHeightInPoints()F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public getHeightInPoints()F
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->isSetHt()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getHt()D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultRowHeightInPoints()F

    move-result v0

    return v0
.end method

.method public getLastCellNum()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    int-to-short v0, v0

    return v0
.end method

.method public getOutlineLevel()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getOutlineLevel()S

    move-result v0

    return v0
.end method

.method public getPhysicalNumberOfCells()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    return v0
.end method

.method public getRowNum()I
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getR()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public bridge synthetic getRowStyle()Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowStyle()Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object v0

    return-object v0
.end method

.method public getRowStyle()Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->isFormatted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/model/StylesTable;->getNumCellStyles()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getS()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lorg/apache/poi/xssf/model/StylesTable;->getStyleAt(I)Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public bridge synthetic getSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    return-object v0
.end method

.method public getZeroHeight()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getHidden()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isFormatted()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->isSetS()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->cellIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public onDocumentWrite()V
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->getCArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object v0

    array-length v1, v0

    iget-object v2, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCTCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    aget-object v2, v0, v2

    invoke-interface {v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getR()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->getR()Ljava/lang/String;

    move-result-object v2

    if-nez v4, :cond_1

    if-nez v2, :cond_2

    goto :goto_3

    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    new-array v0, v0, [Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCTCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlObject;->copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v4

    check-cast v4, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    aput-object v4, v0, v3

    invoke-virtual {v2, v4}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->setCTCell(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->setCArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;)V

    goto :goto_4

    :cond_4
    :goto_3
    move v2, v5

    goto :goto_0

    :cond_5
    :goto_4
    return-void
.end method

.method public removeCell(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 3

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getRow()Lorg/apache/poi/ss/usermodel/Row;

    move-result-object v0

    if-ne v0, p0, :cond_2

    move-object v0, p1

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->isPartOfArrayFormulaGroup()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->notifyArrayFormulaChanging()V

    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->onDeleteFormula(Lorg/apache/poi/xssf/usermodel/XSSFCell;)V

    :cond_1
    new-instance v0, Ljava/lang/Integer;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_cells:Ljava/util/TreeMap;

    invoke-virtual {p1, v0}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Specified cell does not belong to this row"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHeight(S)V
    .locals 5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->isSetHt()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->unsetHt()V

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->isSetCustomHeight()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->unsetCustomHeight()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    int-to-double v1, p1

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    div-double/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->setHt(D)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->setCustomHeight(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setHeightInPoints(F)V
    .locals 2

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x41a00000    # 20.0f

    mul-float v0, v0, p1

    :goto_0
    float-to-int p1, v0

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->setHeight(S)V

    return-void
.end method

.method public setRowNum(I)V
    .locals 5

    .line 1
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ltz p1, :cond_0

    .line 8
    .line 9
    if-gt p1, v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    .line 12
    .line 13
    add-int/lit8 p1, p1, 0x1

    .line 14
    .line 15
    int-to-long v1, p1

    .line 16
    invoke-interface {v0, v1, v2}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->setR(J)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string v2, "Invalid row number ("

    .line 23
    .line 24
    const-string v3, ") outside allowable range (0.."

    .line 25
    .line 26
    const-string v4, ")"

    .line 27
    .line 28
    invoke-static {v2, p1, v3, v0, v4}, Ls/a;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v1
.end method

.method public setRowStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->isSetS()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->unsetS()V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->unsetCustomFormat()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getSheet()Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getStylesSource()Lorg/apache/poi/xssf/model/StylesTable;

    move-result-object v0

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;

    invoke-virtual {p1, v0}, Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;->verifyBelongsToStylesSource(Lorg/apache/poi/xssf/model/StylesTable;)V

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/model/StylesTable;->putStyle(Lorg/apache/poi/xssf/usermodel/XSSFCellStyle;)I

    move-result p1

    int-to-long v0, p1

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {p1, v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->setS(J)V

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->setCustomFormat(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setZeroHeight(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;->setHidden(Z)V

    return-void
.end method

.method public shift(I)V
    .locals 7

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v0

    add-int/2addr v0, p1

    iget-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/xssf/usermodel/XSSFWorkbook;->getCalculationChain()Lorg/apache/poi/xssf/model/CalculationChain;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    iget-object v1, v1, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->sheet:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheet;->getSheetId()J

    move-result-wide v1

    long-to-int v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Row[rownum="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->getRowNum()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] contains cell(s) included in a multi-cell array formula. You cannot change part of an array."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ss/usermodel/Cell;

    check-cast v4, Lorg/apache/poi/xssf/usermodel/XSSFCell;

    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->isPartOfArrayFormulaGroup()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v1}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->notifyArrayFormulaChanging(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getReference()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v2, v5}, Lorg/apache/poi/xssf/model/CalculationChain;->removeItem(ILjava/lang/String;)V

    :cond_1
    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getCTCell()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;

    move-result-object v5

    new-instance v6, Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v4}, Lorg/apache/poi/xssf/usermodel/XSSFCell;->getColumnIndex()I

    move-result v4

    invoke-direct {v6, v0, v4}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    invoke-virtual {v6}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCell;->setR(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/usermodel/XSSFRow;->setRowNum(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/XSSFRow;->_row:Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRow;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
