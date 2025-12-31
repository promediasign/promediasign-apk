.class public Lorg/apache/poi/xssf/streaming/SXSSFSheet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Sheet;


# instance fields
.field private final _autoSizeColumnTracker:Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;

.field private _randomAccessWindowSize:I

.field private final _rows:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/xssf/streaming/SXSSFRow;",
            ">;"
        }
    .end annotation
.end field

.field final _sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

.field private final _workbook:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

.field private final _writer:Lorg/apache/poi/xssf/streaming/SheetDataWriter;

.field private allFlushed:Z

.field private lastFlushedRowNumber:I

.field private outlineLevelRow:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_rows:Ljava/util/TreeMap;

    const/16 v0, 0x64

    iput v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_randomAccessWindowSize:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->outlineLevelRow:I

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->lastFlushedRowNumber:I

    iput-boolean v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->allFlushed:Z

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_workbook:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    iput-object p2, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->createSheetDataWriter()Lorg/apache/poi/xssf/streaming/SheetDataWriter;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_writer:Lorg/apache/poi/xssf/streaming/SheetDataWriter;

    invoke-virtual {p1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getRandomAccessWindowSize()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->setRandomAccessWindowSize(I)V

    new-instance p1, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;

    invoke-direct {p1, p0}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;-><init>(Lorg/apache/poi/ss/usermodel/Sheet;)V

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_autoSizeColumnTracker:Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;

    return-void
.end method

.method private collapseRow(I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getRow(I)Lorg/apache/poi/xssf/streaming/SXSSFRow;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->findStartOfRowOutlineGroup(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {p0, v0, p1, v1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->writeHidden(Lorg/apache/poi/xssf/streaming/SXSSFRow;IZ)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getRow(I)Lorg/apache/poi/xssf/streaming/SXSSFRow;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->setCollapsed(Ljava/lang/Boolean;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->createRow(I)Lorg/apache/poi/xssf/streaming/SXSSFRow;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->setCollapsed(Ljava/lang/Boolean;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void

    .line 38
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    const-string v1, "Invalid row number("

    .line 41
    .line 42
    const-string v2, "). Row does not exist."

    .line 43
    .line 44
    invoke-static {p1, v1, v2}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0
.end method

.method private findStartOfRowOutlineGroup(I)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getRow(I)Lorg/apache/poi/xssf/streaming/SXSSFRow;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getOutlineLevel()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getRow(I)Lorg/apache/poi/xssf/streaming/SXSSFRow;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getRow(I)Lorg/apache/poi/xssf/streaming/SXSSFRow;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getOutlineLevel()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-ge v1, v0, :cond_0

    .line 26
    .line 27
    add-int/lit8 p1, p1, 0x1

    .line 28
    .line 29
    return p1

    .line 30
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 34
    .line 35
    return p1

    .line 36
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    const-string v1, "Outline level is zero for the row ("

    .line 39
    .line 40
    const-string v2, ")."

    .line 41
    .line 42
    invoke-static {p1, v1, v2}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0
.end method

.method private flushOneRow()V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v2, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/xssf/streaming/SXSSFRow;

    iget-object v3, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_autoSizeColumnTracker:Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;

    invoke-virtual {v3, v2}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->updateColumnWidths(Lorg/apache/poi/ss/usermodel/Row;)V

    iget-object v3, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_writer:Lorg/apache/poi/xssf/streaming/SheetDataWriter;

    invoke-virtual {v3, v1, v2}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->writeRow(ILorg/apache/poi/xssf/streaming/SXSSFRow;)V

    iget-object v2, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v2, v0}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iput v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->lastFlushedRowNumber:I

    :cond_0
    return-void
.end method

.method private safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->isSheetProtectionEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewSheetProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetProtection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    return-object v0
.end method

.method private setWorksheetOutlineLevelRow()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetSheetFormatPr()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetFormatPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewSheetFormatPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;

    move-result-object v0

    :goto_0
    iget v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->outlineLevelRow:I

    if-lez v1, :cond_1

    int-to-short v1, v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetFormatPr;->setOutlineLevelRow(S)V

    :cond_1
    return-void
.end method

.method private writeHidden(Lorg/apache/poi/xssf/streaming/SXSSFRow;IZ)I
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getOutlineLevel()I

    move-result p1

    :goto_0
    invoke-virtual {p0, p2}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getRow(I)Lorg/apache/poi/xssf/streaming/SXSSFRow;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getOutlineLevel()I

    move-result v1

    if-lt v1, p1, :cond_0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->setHidden(Ljava/lang/Boolean;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p2
.end method


# virtual methods
.method public addMergedRegion(Lorg/apache/poi/ss/util/CellRangeAddress;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->addMergedRegion(Lorg/apache/poi/ss/util/CellRangeAddress;)I

    move-result p1

    return p1
.end method

.method public addMergedRegionUnsafe(Lorg/apache/poi/ss/util/CellRangeAddress;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->addMergedRegionUnsafe(Lorg/apache/poi/ss/util/CellRangeAddress;)I

    move-result p1

    return p1
.end method

.method public addValidationData(Lorg/apache/poi/ss/usermodel/DataValidation;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->addValidationData(Lorg/apache/poi/ss/usermodel/DataValidation;)V

    return-void
.end method

.method public areAllRowsFlushed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->allFlushed:Z

    return v0
.end method

.method public autoSizeColumn(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->autoSizeColumn(IZ)V

    return-void
.end method

.method public autoSizeColumn(IZ)V
    .locals 5

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_autoSizeColumnTracker:Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->getBestFitColumnWidth(IZ)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/high16 v1, 0x4070000000000000L    # 256.0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/util/SheetUtil;->getColumnWidth(Lorg/apache/poi/ss/usermodel/Sheet;IZ)D

    move-result-wide v3

    mul-double v3, v3, v1

    double-to-int p2, v3

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-lez p2, :cond_0

    const v0, 0xff00

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->setColumnWidth(II)V

    :cond_0
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Could not auto-size column. Make sure the column was tracked prior to auto-sizing the column."

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public changeRowNum(Lorg/apache/poi/xssf/streaming/SXSSFRow;I)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->removeRow(Lorg/apache/poi/ss/usermodel/Row;)V

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic createDrawingPatriarch()Lorg/apache/poi/ss/usermodel/Drawing;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->createDrawingPatriarch()Lorg/apache/poi/xssf/streaming/SXSSFDrawing;

    move-result-object v0

    return-object v0
.end method

.method public createDrawingPatriarch()Lorg/apache/poi/xssf/streaming/SXSSFDrawing;
    .locals 3

    .line 2
    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFDrawing;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createDrawingPatriarch()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/xssf/streaming/SXSSFDrawing;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;Lorg/apache/poi/xssf/usermodel/XSSFDrawing;)V

    return-object v0
.end method

.method public createFreezePane(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createFreezePane(II)V

    return-void
.end method

.method public createFreezePane(IIII)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createFreezePane(IIII)V

    return-void
.end method

.method public bridge synthetic createRow(I)Lorg/apache/poi/ss/usermodel/Row;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->createRow(I)Lorg/apache/poi/xssf/streaming/SXSSFRow;

    move-result-object p1

    return-object p1
.end method

.method public createRow(I)Lorg/apache/poi/xssf/streaming/SXSSFRow;
    .locals 5

    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v0

    if-ltz p1, :cond_4

    if-gt p1, v0, :cond_4

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_writer:Lorg/apache/poi/xssf/streaming/SheetDataWriter;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->getLastFlushedRow()I

    move-result v0

    const-string v1, "] that is already written to disk."

    const-string v2, "] in the range [0,"

    const-string v3, "Attempting to write a row["

    if-le p1, v0, :cond_3

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getPhysicalNumberOfRows()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getLastRowNum()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    invoke-static {p1, v3, v2}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 3
    iget-object v2, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getLastRowNum()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFRow;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFSheet;)V

    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->allFlushed:Z

    iget p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_randomAccessWindowSize:I

    if-ltz p1, :cond_2

    iget-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->size()I

    move-result p1

    iget v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_randomAccessWindowSize:I

    if-le p1, v1, :cond_2

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->flushRows(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 4
    invoke-static {p1, v3, v2}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 5
    iget-object v2, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_writer:Lorg/apache/poi/xssf/streaming/SheetDataWriter;

    invoke-virtual {v2}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->getLastFlushedRow()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid row number ("

    const-string v3, ") outside allowable range (0.."

    const-string v4, ")"

    .line 6
    invoke-static {v2, p1, v3, v0, v4}, Ls/a;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createSplitPane(IIIII)V
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->createSplitPane(IIIII)V

    return-void
.end method

.method public disableLocking()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setSheet(Z)V

    return-void
.end method

.method public dispose()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->allFlushed:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->flushRows()V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_writer:Lorg/apache/poi/xssf/streaming/SheetDataWriter;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->dispose()Z

    move-result v0

    return v0
.end method

.method public enableLocking()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setSheet(Z)V

    return-void
.end method

.method public flushRows()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->flushRows(I)V

    return-void
.end method

.method public flushRows(I)V
    .locals 1

    .line 2
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->flushOneRow()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->allFlushed:Z

    :cond_1
    return-void
.end method

.method public getActiveCell()Lorg/apache/poi/ss/util/CellAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getActiveCell()Lorg/apache/poi/ss/util/CellAddress;

    move-result-object v0

    return-object v0
.end method

.method public getAutobreaks()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getAutobreaks()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/ss/usermodel/Comment;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFComment;

    move-result-object p1

    return-object p1
.end method

.method public getCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFComment;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFComment;

    move-result-object p1

    return-object p1
.end method

.method public getCellComments()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/util/CellAddress;",
            "Lorg/apache/poi/xssf/usermodel/XSSFComment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCellComments()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getColumnBreaks()[I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getColumnBreaks()[I

    move-result-object v0

    return-object v0
.end method

.method public getColumnOutlineLevel(I)I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getColumnOutlineLevel(I)I

    move-result p1

    return p1
.end method

.method public getColumnStyle(I)Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getColumnStyle(I)Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object p1

    return-object p1
.end method

.method public getColumnWidth(I)I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getColumnWidth(I)I

    move-result p1

    return p1
.end method

.method public getColumnWidthInPixels(I)F
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getColumnWidthInPixels(I)F

    move-result p1

    return p1
.end method

.method public getDataValidationHelper()Lorg/apache/poi/ss/usermodel/DataValidationHelper;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDataValidationHelper()Lorg/apache/poi/ss/usermodel/DataValidationHelper;

    move-result-object v0

    return-object v0
.end method

.method public getDataValidations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFDataValidation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDataValidations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultColumnWidth()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultColumnWidth()I

    move-result v0

    return v0
.end method

.method public getDefaultRowHeight()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultRowHeight()S

    move-result v0

    return v0
.end method

.method public getDefaultRowHeightInPoints()F
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDefaultRowHeightInPoints()F

    move-result v0

    return v0
.end method

.method public getDisplayGuts()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDisplayGuts()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getDrawingPatriarch()Lorg/apache/poi/ss/usermodel/Drawing;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object v0

    return-object v0
.end method

.method public getDrawingPatriarch()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move-result-object v0

    return-object v0
.end method

.method public getFirstRowNum()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_writer:Lorg/apache/poi/xssf/streaming/SheetDataWriter;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->getNumberOfFlushedRows()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_writer:Lorg/apache/poi/xssf/streaming/SheetDataWriter;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->getLowestIndexOfFlushedRows()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getFitToPage()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getFitToPage()Z

    move-result v0

    return v0
.end method

.method public getFooter()Lorg/apache/poi/ss/usermodel/Footer;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getFooter()Lorg/apache/poi/ss/usermodel/Footer;

    move-result-object v0

    return-object v0
.end method

.method public getForceFormulaRecalculation()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getForceFormulaRecalculation()Z

    move-result v0

    return v0
.end method

.method public getHeader()Lorg/apache/poi/ss/usermodel/Header;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getHeader()Lorg/apache/poi/ss/usermodel/Header;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontallyCenter()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getHorizontallyCenter()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getHyperlink(II)Lorg/apache/poi/ss/usermodel/Hyperlink;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getHyperlink(II)Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getHyperlink(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/ss/usermodel/Hyperlink;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getHyperlink(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    move-result-object p1

    return-object p1
.end method

.method public getHyperlink(II)Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getHyperlink(II)Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    move-result-object p1

    return-object p1
.end method

.method public getHyperlink(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;
    .locals 1

    .line 4
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getHyperlink(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;

    move-result-object p1

    return-object p1
.end method

.method public getHyperlinkList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xssf/usermodel/XSSFHyperlink;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getHyperlinkList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLastFlushedRowNum()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->lastFlushedRowNumber:I

    return v0
.end method

.method public getLastRowNum()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getLeftCol()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getLeftCol()S

    move-result v0

    return v0
.end method

.method public getMargin(S)D
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getMargin(S)D

    move-result-wide v0

    return-wide v0
.end method

.method public getMergedRegion(I)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getMergedRegion(I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object p1

    return-object p1
.end method

.method public getMergedRegions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getMergedRegions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNumMergedRegions()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getNumMergedRegions()I

    move-result v0

    return v0
.end method

.method public getPaneInformation()Lorg/apache/poi/ss/util/PaneInformation;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getPaneInformation()Lorg/apache/poi/ss/util/PaneInformation;

    move-result-object v0

    return-object v0
.end method

.method public getPhysicalNumberOfRows()I
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_writer:Lorg/apache/poi/xssf/streaming/SheetDataWriter;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->getNumberOfFlushedRows()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public getPrintSetup()Lorg/apache/poi/ss/usermodel/PrintSetup;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getPrintSetup()Lorg/apache/poi/xssf/usermodel/XSSFPrintSetup;

    move-result-object v0

    return-object v0
.end method

.method public getProtect()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getProtect()Z

    move-result v0

    return v0
.end method

.method public getRepeatingColumns()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRepeatingColumns()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatingRows()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRepeatingRows()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRow(I)Lorg/apache/poi/ss/usermodel/Row;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getRow(I)Lorg/apache/poi/xssf/streaming/SXSSFRow;

    move-result-object p1

    return-object p1
.end method

.method public getRow(I)Lorg/apache/poi/xssf/streaming/SXSSFRow;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xssf/streaming/SXSSFRow;

    return-object p1
.end method

.method public getRowBreaks()[I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRowBreaks()[I

    move-result-object v0

    return-object v0
.end method

.method public getRowNum(Lorg/apache/poi/xssf/streaming/SXSSFRow;)I
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getRowSumsBelow()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRowSumsBelow()Z

    move-result v0

    return v0
.end method

.method public getRowSumsRight()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getRowSumsRight()Z

    move-result v0

    return v0
.end method

.method public getScenarioProtect()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getScenarioProtect()Z

    move-result v0

    return v0
.end method

.method public getSheetConditionalFormatting()Lorg/apache/poi/ss/usermodel/SheetConditionalFormatting;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetConditionalFormatting()Lorg/apache/poi/xssf/usermodel/XSSFSheetConditionalFormatting;

    move-result-object v0

    return-object v0
.end method

.method public getSheetDataWriter()Lorg/apache/poi/xssf/streaming/SheetDataWriter;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_writer:Lorg/apache/poi/xssf/streaming/SheetDataWriter;

    return-object v0
.end method

.method public getSheetName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getSheetName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTabColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getTabColor()Lorg/apache/poi/xssf/usermodel/XSSFColor;

    move-result-object v0

    return-object v0
.end method

.method public getTopRow()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getTopRow()S

    move-result v0

    return v0
.end method

.method public getTrackedColumnsForAutoSizing()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_autoSizeColumnTracker:Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->getTrackedColumns()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public getVerticallyCenter()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getVerticallyCenter()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    move-result-object v0

    return-object v0
.end method

.method public getWorkbook()Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_workbook:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    return-object v0
.end method

.method public getWorksheetXMLInputStream()Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->flushRows(I)V

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_writer:Lorg/apache/poi/xssf/streaming/SheetDataWriter;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->close()V

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_writer:Lorg/apache/poi/xssf/streaming/SheetDataWriter;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;->getWorksheetXMLInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public groupColumn(II)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->groupColumn(II)V

    return-void
.end method

.method public groupRow(II)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/xssf/streaming/SXSSFRow;

    invoke-virtual {p2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getOutlineLevel()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->setOutlineLevel(I)V

    iget p2, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->outlineLevelRow:I

    if-le v0, p2, :cond_0

    iput v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->outlineLevelRow:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->setWorksheetOutlineLevelRow()V

    return-void
.end method

.method public isColumnBroken(I)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isColumnBroken(I)Z

    move-result p1

    return p1
.end method

.method public isColumnHidden(I)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isColumnHidden(I)Z

    move-result p1

    return p1
.end method

.method public isColumnTrackedForAutoSizing(I)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_autoSizeColumnTracker:Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->isColumnTracked(I)Z

    move-result p1

    return p1
.end method

.method public isDisplayFormulas()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isDisplayFormulas()Z

    move-result v0

    return v0
.end method

.method public isDisplayGridlines()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isDisplayGridlines()Z

    move-result v0

    return v0
.end method

.method public isDisplayRowColHeadings()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isDisplayRowColHeadings()Z

    move-result v0

    return v0
.end method

.method public isDisplayZeros()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isDisplayZeros()Z

    move-result v0

    return v0
.end method

.method public isPrintGridlines()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isPrintGridlines()Z

    move-result v0

    return v0
.end method

.method public isPrintRowAndColumnHeadings()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isPrintRowAndColumnHeadings()Z

    move-result v0

    return v0
.end method

.method public isRightToLeft()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isRightToLeft()Z

    move-result v0

    return v0
.end method

.method public isRowBroken(I)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isRowBroken(I)Z

    move-result p1

    return p1
.end method

.method public isSelected()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->isSelected()Z

    move-result v0

    return v0
.end method

.method public isSheetProtectionEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->isSetSheetProtection()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ss/usermodel/Row;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->rowIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lockAutoFilter(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setAutoFilter(Z)V

    return-void
.end method

.method public lockDeleteColumns(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setDeleteColumns(Z)V

    return-void
.end method

.method public lockDeleteRows(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setDeleteRows(Z)V

    return-void
.end method

.method public lockFormatCells(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setFormatCells(Z)V

    return-void
.end method

.method public lockFormatColumns(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setFormatColumns(Z)V

    return-void
.end method

.method public lockFormatRows(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setFormatRows(Z)V

    return-void
.end method

.method public lockInsertColumns(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setInsertColumns(Z)V

    return-void
.end method

.method public lockInsertHyperlinks(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setInsertHyperlinks(Z)V

    return-void
.end method

.method public lockInsertRows(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setInsertRows(Z)V

    return-void
.end method

.method public lockObjects(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setObjects(Z)V

    return-void
.end method

.method public lockPivotTables(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setPivotTables(Z)V

    return-void
.end method

.method public lockScenarios(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setScenarios(Z)V

    return-void
.end method

.method public lockSelectLockedCells(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setSelectLockedCells(Z)V

    return-void
.end method

.method public lockSelectUnlockedCells(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setSelectUnlockedCells(Z)V

    return-void
.end method

.method public lockSort(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->safeGetProtectionField()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetProtection;->setSort(Z)V

    return-void
.end method

.method public protectSheet(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->protectSheet(Ljava/lang/String;)V

    return-void
.end method

.method public removeArrayFormula(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellRange;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            ")",
            "Lorg/apache/poi/ss/usermodel/CellRange<",
            "+",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->removeArrayFormula(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellRange;

    move-result-object p1

    return-object p1
.end method

.method public removeColumnBreak(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->removeColumnBreak(I)V

    return-void
.end method

.method public removeMergedRegion(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->removeMergedRegion(I)V

    return-void
.end method

.method public removeMergedRegions(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->removeMergedRegions(Ljava/util/Collection;)V

    return-void
.end method

.method public removeRow(Lorg/apache/poi/ss/usermodel/Row;)V
    .locals 2

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v0

    if-ne v0, p0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Specified row does not belong to this sheet"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeRowBreak(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->removeRowBreak(I)V

    return-void
.end method

.method public rowIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ss/usermodel/Row;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setActiveCell(Lorg/apache/poi/ss/util/CellAddress;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setActiveCell(Lorg/apache/poi/ss/util/CellAddress;)V

    return-void
.end method

.method public setArrayFormula(Ljava/lang/String;Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/CellRange;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ")",
            "Lorg/apache/poi/ss/usermodel/CellRange<",
            "+",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setArrayFormula(Ljava/lang/String;Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/CellRange;

    move-result-object p1

    return-object p1
.end method

.method public setAutoFilter(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/AutoFilter;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setAutoFilter(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/xssf/usermodel/XSSFAutoFilter;

    move-result-object p1

    return-object p1
.end method

.method public setAutobreaks(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setAutobreaks(Z)V

    return-void
.end method

.method public setColumnBreak(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setColumnBreak(I)V

    return-void
.end method

.method public setColumnGroupCollapsed(IZ)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setColumnGroupCollapsed(IZ)V

    return-void
.end method

.method public setColumnHidden(IZ)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setColumnHidden(IZ)V

    return-void
.end method

.method public setColumnWidth(II)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setColumnWidth(II)V

    return-void
.end method

.method public setDefaultColumnStyle(ILorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setDefaultColumnStyle(ILorg/apache/poi/ss/usermodel/CellStyle;)V

    return-void
.end method

.method public setDefaultColumnWidth(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setDefaultColumnWidth(I)V

    return-void
.end method

.method public setDefaultRowHeight(S)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setDefaultRowHeight(S)V

    return-void
.end method

.method public setDefaultRowHeightInPoints(F)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setDefaultRowHeightInPoints(F)V

    return-void
.end method

.method public setDisplayFormulas(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setDisplayFormulas(Z)V

    return-void
.end method

.method public setDisplayGridlines(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setDisplayGridlines(Z)V

    return-void
.end method

.method public setDisplayGuts(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setDisplayGuts(Z)V

    return-void
.end method

.method public setDisplayRowColHeadings(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setDisplayRowColHeadings(Z)V

    return-void
.end method

.method public setDisplayZeros(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setDisplayZeros(Z)V

    return-void
.end method

.method public setFitToPage(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setFitToPage(Z)V

    return-void
.end method

.method public setForceFormulaRecalculation(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setForceFormulaRecalculation(Z)V

    return-void
.end method

.method public setHorizontallyCenter(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setHorizontallyCenter(Z)V

    return-void
.end method

.method public setMargin(SD)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setMargin(SD)V

    return-void
.end method

.method public setPrintGridlines(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setPrintGridlines(Z)V

    return-void
.end method

.method public setPrintRowAndColumnHeadings(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setPrintRowAndColumnHeadings(Z)V

    return-void
.end method

.method public setRandomAccessWindowSize(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    iput p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_randomAccessWindowSize:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "RandomAccessWindowSize must be either -1 or a positive integer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRepeatingColumns(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setRepeatingColumns(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    return-void
.end method

.method public setRepeatingRows(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setRepeatingRows(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    return-void
.end method

.method public setRightToLeft(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setRightToLeft(Z)V

    return-void
.end method

.method public setRowBreak(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setRowBreak(I)V

    return-void
.end method

.method public setRowGroupCollapsed(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->collapseRow(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unable to expand row: Not Implemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRowOutlineLevel(II)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/xssf/streaming/SXSSFRow;

    invoke-virtual {p1, p2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->setOutlineLevel(I)V

    if-lez p2, :cond_0

    iget p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->outlineLevelRow:I

    if-le p2, p1, :cond_0

    iput p2, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->outlineLevelRow:I

    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->setWorksheetOutlineLevelRow()V

    :cond_0
    return-void
.end method

.method public setRowSumsBelow(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setRowSumsBelow(Z)V

    return-void
.end method

.method public setRowSumsRight(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setRowSumsRight(Z)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setSelected(Z)V

    return-void
.end method

.method public setTabColor(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->getCTWorksheet()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->getSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTWorksheet;->addNewSheetPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    move-result-object v1

    :cond_0
    invoke-static {}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor$Factory;->newInstance()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;

    move-result-object v0

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;->setIndexed(J)V

    invoke-interface {v1, v0}, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->setTabColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V

    return-void
.end method

.method public setTabColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setTabColor(Lorg/apache/poi/xssf/usermodel/XSSFColor;)V

    return-void
.end method

.method public setVerticallyCenter(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setVerticallyCenter(Z)V

    return-void
.end method

.method public setZoom(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->setZoom(I)V

    return-void
.end method

.method public shiftRows(III)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "NotImplemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shiftRows(IIIZZ)V
    .locals 0
    .annotation runtime Lorg/apache/poi/util/NotImplemented;
    .end annotation

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "NotImplemented"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public showInPane(II)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->showInPane(II)V

    return-void
.end method

.method public trackAllColumnsForAutoSizing()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_autoSizeColumnTracker:Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->trackAllColumns()V

    return-void
.end method

.method public trackColumnForAutoSizing(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_autoSizeColumnTracker:Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->trackColumn(I)Z

    return-void
.end method

.method public trackColumnsForAutoSizing(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_autoSizeColumnTracker:Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->trackColumns(Ljava/util/Collection;)V

    return-void
.end method

.method public ungroupColumn(II)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->ungroupColumn(II)V

    return-void
.end method

.method public ungroupRow(II)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->ungroupRow(II)V

    return-void
.end method

.method public untrackAllColumnsForAutoSizing()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_autoSizeColumnTracker:Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->untrackAllColumns()V

    return-void
.end method

.method public untrackColumnForAutoSizing(I)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_autoSizeColumnTracker:Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->untrackColumn(I)Z

    move-result p1

    return p1
.end method

.method public untrackColumnsForAutoSizing(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_autoSizeColumnTracker:Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;

    invoke-virtual {v0, p1}, Lorg/apache/poi/xssf/streaming/AutoSizeColumnTracker;->untrackColumns(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public validateMergedRegions()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->_sh:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->validateMergedRegions()V

    return-void
.end method
