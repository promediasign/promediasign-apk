.class public final Lorg/apache/poi/hssf/usermodel/HSSFSheet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Sheet;


# static fields
.field public static final INITIAL_CAPACITY:I

.field private static final log:Lorg/apache/poi/util/POILogger;


# instance fields
.field protected final _book:Lorg/apache/poi/hssf/model/InternalWorkbook;

.field private _firstrow:I

.field private _lastrow:I

.field private _patriarch:Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

.field private final _rows:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/hssf/usermodel/HSSFRow;",
            ">;"
        }
    .end annotation
.end field

.field private final _sheet:Lorg/apache/poi/hssf/model/InternalSheet;

.field protected final _workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->log:Lorg/apache/poi/util/POILogger;

    const-string v0, "HSSFSheet.RowInitialCapacity"

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lorg/apache/poi/util/Configurator;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->INITIAL_CAPACITY:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/apache/poi/hssf/model/InternalSheet;->createSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_rows:Ljava/util/TreeMap;

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/model/InternalSheet;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_rows:Ljava/util/TreeMap;

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-direct {p0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setPropertiesFromSheet(Lorg/apache/poi/hssf/model/InternalSheet;)V

    return-void
.end method

.method private addMergedRegion(Lorg/apache/poi/ss/util/CellRangeAddress;Z)I
    .locals 3

    .line 2
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getNumberOfCells()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->validate(Lorg/apache/poi/ss/SpreadsheetVersion;)V

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->validateArrayFormulas(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->validateMergedRegions(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    :cond_0
    iget-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result p1

    invoke-virtual {p2, v0, v1, v2, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->addMergedRegion(IIII)I

    move-result p1

    return p1

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Merged region "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must contain 2 or more cells"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private addRow(Lorg/apache/poi/hssf/usermodel/HSSFRow;Z)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowRecord()Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/poi/hssf/model/InternalSheet;->addRow(Lorg/apache/poi/hssf/record/RowRecord;)V

    :cond_0
    iget-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {p2}, Ljava/util/TreeMap;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result p2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getLastRowNum()I

    move-result v1

    if-gt p2, v1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_lastrow:I

    :cond_3
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result p2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getFirstRowNum()I

    move-result v1

    if-lt p2, v1, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_firstrow:I

    :cond_5
    return-void
.end method

.method private checkForIntersectingMergedRegions()V
    .locals 7

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getMergedRegions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    if-ge v2, v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/util/CellRangeAddress;

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v0, v2, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v3, v5}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->intersects(Lorg/apache/poi/ss/util/CellRangeAddressBase;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The range "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " intersects with another merged region "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in this sheet"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-void
.end method

.method private checkForMergedRegionsIntersectingArrayFormulas()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getMergedRegions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-direct {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->validateArrayFormulas(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static clip(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private createRowFromRecord(Lorg/apache/poi/hssf/record/RowRecord;)Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .locals 2

    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFRow;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v0, v1, p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/RowRecord;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->addRow(Lorg/apache/poi/hssf/usermodel/HSSFRow;Z)V

    return-object v0
.end method

.method private findCellCommentLocations(Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;",
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/util/CellAddress;",
            "Lorg/apache/poi/hssf/usermodel/HSSFComment;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFShape;

    instance-of v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    invoke-direct {p0, v0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->findCellCommentLocations(Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->hasPosition()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/apache/poi/ss/util/CellAddress;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getRow()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getColumn()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private findFirstRow(I)I
    .locals 1

    :goto_0
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getLastRowNum()I

    move-result v0

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getLastRowNum()I

    move-result v0

    if-le p1, v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    return p1
.end method

.method private findLastRow(I)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    return v0

    :cond_0
    sub-int/2addr p1, v1

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v1

    if-nez v1, :cond_1

    if-lez p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    return v0

    :cond_2
    return p1
.end method

.method private getBuiltinNameRecord(B)Lorg/apache/poi/hssf/record/NameRecord;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v1, v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->findExistingBuiltinNameRecordIdx(IB)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNameRecord(I)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object p1

    return-object p1
.end method

.method private getCellRange(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/CellRange;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ")",
            "Lorg/apache/poi/ss/usermodel/CellRange<",
            "Lorg/apache/poi/hssf/usermodel/HSSFCell;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result p1

    sub-int v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    sub-int v4, p1, v1

    add-int/lit8 v4, v4, 0x1

    new-instance v5, Ljava/util/ArrayList;

    mul-int v6, v3, v4

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v0

    :goto_0
    if-gt v6, v2, :cond_3

    move v7, v1

    :goto_1
    if-gt v7, p1, :cond_2

    invoke-virtual {p0, v6}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v8

    if-nez v8, :cond_0

    invoke-virtual {p0, v6}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->createRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v8

    :cond_0
    invoke-virtual {v8, v7}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v9

    if-nez v9, :cond_1

    invoke-virtual {v8, v7}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->createCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v9

    :cond_1
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    const-class p1, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/ss/util/SSCellRange;->create(IIIILjava/util/List;Ljava/lang/Class;)Lorg/apache/poi/ss/util/SSCellRange;

    move-result-object p1

    return-object p1
.end method

.method private getPatriarch(Z)Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_patriarch:Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findDrawingGroup()Lorg/apache/poi/hssf/model/DrawingManager2;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createDrawingGroup()V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getDrawingManager()Lorg/apache/poi/hssf/model/DrawingManager2;

    move-result-object v0

    :cond_2
    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v3, 0x2694

    invoke-virtual {v2, v3}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/record/EscherAggregate;

    if-nez v2, :cond_5

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/apache/poi/hssf/model/InternalSheet;->aggregateDrawingRecords(Lorg/apache/poi/hssf/model/DrawingManager2;Z)I

    move-result v2

    const/4 v3, -0x1

    if-ne v3, v2, :cond_4

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->aggregateDrawingRecords(Lorg/apache/poi/hssf/model/DrawingManager2;Z)I

    move-result p1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/record/EscherAggregate;

    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/EscherAggregate;)V

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->afterCreate()V

    return-object v0

    :cond_3
    return-object v1

    :cond_4
    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lorg/apache/poi/hssf/record/EscherAggregate;

    :cond_5
    new-instance p1, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    invoke-direct {p1, p0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/EscherAggregate;)V

    return-object p1
.end method

.method private getProtectionBlock()Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getProtectionBlock()Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

    move-result-object v0

    return-object v0
.end method

.method private getRepeatingRowsOrColums(Z)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 9

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getBuiltinNameRecord(B)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/NameRecord;->getNameDefinition()[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    sget-object v2, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v2}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v3

    invoke-virtual {v2}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    move-result v2

    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v0, v5

    instance-of v7, v6, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    if-eqz v7, :cond_3

    check-cast v6, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstColumn()I

    move-result v7

    const/4 v8, -0x1

    if-nez v7, :cond_2

    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastColumn()I

    move-result v7

    if-ne v7, v2, :cond_2

    if-eqz p1, :cond_3

    new-instance p1, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstRow()I

    move-result v0

    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastRow()I

    move-result v1

    invoke-direct {p1, v0, v1, v8, v8}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    return-object p1

    :cond_2
    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstRow()I

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastRow()I

    move-result v7

    if-ne v7, v3, :cond_3

    if-nez p1, :cond_3

    new-instance p1, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getFirstColumn()I

    move-result v0

    invoke-virtual {v6}, Lorg/apache/poi/ss/formula/ptg/AreaPtgBase;->getLastColumn()I

    move-result v1

    invoke-direct {p1, v8, v8, v0, v1}, Lorg/apache/poi/ss/util/CellRangeAddress;-><init>(IIII)V

    return-object p1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method private lookForComment(Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;II)Lorg/apache/poi/hssf/usermodel/HSSFComment;
    .locals 2

    invoke-interface {p1}, Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFShape;

    instance-of v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->lookForComment(Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;II)Lorg/apache/poi/hssf/usermodel/HSSFComment;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    instance-of v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->hasPosition()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getColumn()I

    move-result v1

    if-ne v1, p3, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getRow()I

    move-result v1

    if-ne v1, p2, :cond_0

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private notifyRowShifting(Lorg/apache/poi/hssf/usermodel/HSSFRow;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Row[rownum="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] contains cell(s) included in a multi-cell array formula. You cannot change part of an array."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/usermodel/Cell;

    check-cast v1, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->isPartOfArrayFormulaGroup()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->notifyArrayFormulaChanging(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setPropertiesFromSheet(Lorg/apache/poi/hssf/model/InternalSheet;)V
    .locals 14

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/InternalSheet;->getNextRow()Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v3}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->createRowFromRecord(Lorg/apache/poi/hssf/record/RowRecord;)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/InternalSheet;->getCellValueIterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v6, v2}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    new-array v8, v0, [Ljava/lang/Object;

    const-string v9, "Time at start of cell creating in HSSF sheet = "

    aput-object v9, v8, v1

    aput-object v7, v8, v2

    invoke-virtual {v6, v2, v8}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_1
    const/4 v6, 0x0

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v10

    invoke-interface {v7}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v11

    if-eq v10, v11, :cond_3

    goto :goto_2

    :cond_3
    move-object v10, v6

    goto :goto_3

    :cond_4
    :goto_2
    invoke-interface {v7}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v6

    invoke-virtual {p0, v6}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v6

    if-nez v6, :cond_3

    new-instance v10, Lorg/apache/poi/hssf/record/RowRecord;

    invoke-interface {v7}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getRow()I

    move-result v11

    invoke-direct {v10, v11}, Lorg/apache/poi/hssf/record/RowRecord;-><init>(I)V

    invoke-virtual {p1, v10}, Lorg/apache/poi/hssf/model/InternalSheet;->addRow(Lorg/apache/poi/hssf/record/RowRecord;)V

    invoke-direct {p0, v10}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->createRowFromRecord(Lorg/apache/poi/hssf/record/RowRecord;)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v10

    :goto_3
    sget-object v11, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v11, v2}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v12

    if-eqz v12, :cond_6

    instance-of v12, v7, Lorg/apache/poi/hssf/record/Record;

    if-eqz v12, :cond_5

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "record id = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v13, v7

    check-cast v13, Lorg/apache/poi/hssf/record/Record;

    invoke-virtual {v13}, Lorg/apache/poi/hssf/record/Record;->getSid()S

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-array v13, v2, [Ljava/lang/Object;

    aput-object v12, v13, v1

    invoke-virtual {v11, v2, v13}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "record = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-array v13, v2, [Ljava/lang/Object;

    aput-object v12, v13, v1

    invoke-virtual {v11, v2, v13}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_6
    :goto_4
    invoke-virtual {v10, v7}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->createCellFromRecord(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-virtual {v11, v2}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    new-array v8, v0, [Ljava/lang/Object;

    const-string v9, "record took "

    aput-object v9, v8, v1

    aput-object v7, v8, v2

    invoke-virtual {v11, v2, v8}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_7
    sget-object p1, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->log:Lorg/apache/poi/util/POILogger;

    invoke-virtual {p1, v2}, Lorg/apache/poi/util/POILogger;->check(I)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "total sheet cell creation took "

    aput-object v4, v0, v1

    aput-object v3, v0, v2

    invoke-virtual {p1, v2, v0}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method private setRepeatingRowsAndColumns(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v1

    sget-object v2, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v2}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v5

    invoke-virtual {v2}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    move-result v2

    const/4 v3, -0x1

    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v6

    if-ne v4, v3, :cond_0

    if-ne v6, v3, :cond_1

    :cond_0
    if-gt v4, v6, :cond_1

    if-ltz v4, :cond_1

    if-gt v4, v5, :cond_1

    if-ltz v6, :cond_1

    if-gt v6, v5, :cond_1

    move v13, v4

    move v14, v6

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid row range specification"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const/4 v13, -0x1

    const/4 v14, -0x1

    :goto_0
    if-eqz p2, :cond_5

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v6

    if-ne v4, v3, :cond_3

    if-ne v6, v3, :cond_4

    :cond_3
    if-gt v4, v6, :cond_4

    if-ltz v4, :cond_4

    if-gt v4, v2, :cond_4

    if-ltz v6, :cond_4

    if-gt v6, v2, :cond_4

    move v7, v6

    move v6, v4

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid column range specification"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    const/4 v6, -0x1

    const/4 v7, -0x1

    :goto_1
    iget-object v3, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->checkExternSheet(I)S

    move-result v15

    const/4 v12, 0x0

    const/4 v11, 0x1

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    const/16 v16, 0x1

    goto :goto_2

    :cond_6
    const/16 v16, 0x0

    :goto_2
    if-nez p1, :cond_7

    if-nez p2, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    iget-object v4, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    const/4 v8, 0x7

    invoke-virtual {v4, v8, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getBuiltInName(BI)Lorg/apache/poi/hssf/usermodel/HSSFName;

    move-result-object v4

    if-eqz v3, :cond_9

    if-eqz v4, :cond_8

    iget-object v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v1, v4}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->removeName(Lorg/apache/poi/ss/usermodel/Name;)V

    :cond_8
    return-void

    :cond_9
    if-nez v4, :cond_a

    iget-object v3, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v3, v8, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->createBuiltInName(BI)Lorg/apache/poi/hssf/usermodel/HSSFName;

    move-result-object v4

    :cond_a
    move-object v1, v4

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-eqz v16, :cond_b

    new-instance v3, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;

    const/16 v4, 0x17

    invoke-direct {v3, v4}, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;-><init>(I)V

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    if-eqz p2, :cond_c

    new-instance v9, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/16 v19, 0x0

    move-object v3, v9

    move-object/from16 v20, v9

    move/from16 v9, v19

    move-object/from16 v21, v10

    move/from16 v10, v17

    move/from16 v11, v18

    const/4 v0, 0x0

    move v12, v15

    invoke-direct/range {v3 .. v12}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;-><init>(IIIIZZZZI)V

    move-object/from16 v4, v20

    move-object/from16 v3, v21

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    move-object v3, v10

    const/4 v0, 0x0

    :goto_4
    if-eqz p1, :cond_d

    new-instance v4, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    const/4 v5, 0x0

    const/16 v17, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v4

    move v7, v13

    move v8, v14

    move v10, v2

    move v13, v5

    move/from16 v14, v17

    invoke-direct/range {v6 .. v15}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;-><init>(IIIIZZZZI)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    if-eqz v16, :cond_e

    sget-object v2, Lorg/apache/poi/ss/formula/ptg/UnionPtg;->instance:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/usermodel/HSSFName;->setNameDefinition([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getPrintSetup()Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;->setValidSettings(Z)V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setActive(Z)V

    return-void
.end method

.method private showInPane(SS)V
    .locals 1

    .line 7
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->setTopRow(S)V

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {p1, p2}, Lorg/apache/poi/hssf/model/InternalSheet;->setLeftCol(S)V

    return-void
.end method

.method private validateArrayFormulas(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 9

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v3

    :goto_0
    if-gt v0, v2, :cond_5

    invoke-virtual {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_3

    :cond_0
    move v5, v1

    :goto_1
    if-gt v5, v3, :cond_4

    invoke-virtual {v4, v5}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v6}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->isPartOfArrayFormulaGroup()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getArrayFormulaRange()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getNumberOfCells()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_3

    invoke-virtual {p1, v6}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->intersects(Lorg/apache/poi/ss/util/CellRangeAddressBase;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The range "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " intersects with a multi-cell array formula. You cannot merge cells of an array."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private validateMergedRegions(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 4

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getMergedRegions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/util/CellRangeAddress;

    invoke-virtual {v1, p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->intersects(Lorg/apache/poi/ss/util/CellRangeAddressBase;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot add merged region "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to sheet because it overlaps with an existing merged region ("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellRangeAddress;->formatAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public addMergedRegion(Lorg/apache/poi/ss/util/CellRangeAddress;)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->addMergedRegion(Lorg/apache/poi/ss/util/CellRangeAddress;Z)I

    move-result p1

    return p1
.end method

.method public addMergedRegionUnsafe(Lorg/apache/poi/ss/util/CellRangeAddress;)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->addMergedRegion(Lorg/apache/poi/ss/util/CellRangeAddress;Z)I

    move-result p1

    return p1
.end method

.method public addValidationData(Lorg/apache/poi/ss/usermodel/DataValidation;)V
    .locals 1

    if-eqz p1, :cond_0

    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getOrCreateDataValidityTable()Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;

    move-result-object v0

    invoke-virtual {p1, p0}, Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;->createDVRecord(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)Lorg/apache/poi/hssf/record/DVRecord;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;->addDataValidation(Lorg/apache/poi/hssf/record/DVRecord;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "objValidation must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public autoSizeColumn(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->autoSizeColumn(IZ)V

    return-void
.end method

.method public autoSizeColumn(IZ)V
    .locals 4

    .line 2
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/util/SheetUtil;->getColumnWidth(Lorg/apache/poi/ss/usermodel/Sheet;IZ)D

    move-result-wide v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double p2, v0, v2

    if-eqz p2, :cond_1

    const-wide/high16 v2, 0x4070000000000000L    # 256.0

    mul-double v0, v0, v2

    const p2, 0xff00

    int-to-double v2, p2

    cmpl-double p2, v0, v2

    if-lez p2, :cond_0

    move-wide v0, v2

    :cond_0
    double-to-int p2, v0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setColumnWidth(II)V

    :cond_1
    return-void
.end method

.method public cloneSheet(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalSheet;->cloneSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/model/InternalSheet;)V

    iget-object p1, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0xec

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordLocBySid(S)I

    move-result p1

    iget-object v2, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/DrawingRecord;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->createPatriarch(Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;Lorg/apache/poi/hssf/usermodel/HSSFSheet;)Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getBoundAggregate()Lorg/apache/poi/hssf/record/EscherAggregate;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iput-object v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_patriarch:Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    :cond_1
    return-object v0
.end method

.method public createDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getPatriarch(Z)Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_patriarch:Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    return-object v0
.end method

.method public bridge synthetic createDrawingPatriarch()Lorg/apache/poi/ss/usermodel/Drawing;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->createDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v0

    return-object v0
.end method

.method public createFreezePane(II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->createFreezePane(IIII)V

    return-void
.end method

.method public createFreezePane(IIII)V
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->validateColumn(I)V

    invoke-virtual {p0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->validateRow(I)V

    if-lt p3, p1, :cond_1

    if-lt p4, p2, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p4, p3}, Lorg/apache/poi/hssf/model/InternalSheet;->createFreezePane(IIII)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "topRow parameter must not be less than leftmostColumn parameter"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "leftmostColumn parameter must not be less than colSplit parameter"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFRow;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v0, v1, p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/usermodel/HSSFSheet;I)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDefaultRowHeight()S

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->setHeight(S)V

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowRecord()Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/RowRecord;->setBadFontHeight(Z)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->addRow(Lorg/apache/poi/hssf/usermodel/HSSFRow;Z)V

    return-object v0
.end method

.method public bridge synthetic createRow(I)Lorg/apache/poi/ss/usermodel/Row;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->createRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object p1

    return-object p1
.end method

.method public createSplitPane(IIIII)V
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p4

    move v4, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/hssf/model/InternalSheet;->createSplitPane(IIIII)V

    return-void
.end method

.method public dumpDrawingRecords(ZLjava/io/PrintWriter;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getDrawingManager()Lorg/apache/poi/hssf/model/DrawingManager2;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/hssf/model/InternalSheet;->aggregateDrawingRecords(Lorg/apache/poi/hssf/model/DrawingManager2;Z)I

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    const/16 v1, 0x2694

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/EscherAggregate;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/AbstractEscherHolderRecord;->getEscherRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ddf/EscherRecord;

    if-eqz p1, :cond_0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p2, v2}, Lorg/apache/poi/ddf/EscherRecord;->display(Ljava/io/PrintWriter;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public findCellComment(II)Lorg/apache/poi/hssf/usermodel/HSSFComment;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->createDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->lookForComment(Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;II)Lorg/apache/poi/hssf/usermodel/HSSFComment;

    move-result-object p1

    return-object p1
.end method

.method public getActiveCell()Lorg/apache/poi/ss/util/CellAddress;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getActiveCellRow()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalSheet;->getActiveCellCol()S

    move-result v1

    new-instance v2, Lorg/apache/poi/ss/util/CellAddress;

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/ss/util/CellAddress;-><init>(II)V

    return-object v2
.end method

.method public getAlternateExpression()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->getAlternateExpression()Z

    move-result v0

    return v0
.end method

.method public getAlternateFormula()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->getAlternateFormula()Z

    move-result v0

    return v0
.end method

.method public getAutobreaks()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->getAutobreaks()Z

    move-result v0

    return v0
.end method

.method public getCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/hssf/usermodel/HSSFComment;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->findCellComment(II)Lorg/apache/poi/hssf/usermodel/HSSFComment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/ss/usermodel/Comment;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getCellComment(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/hssf/usermodel/HSSFComment;

    move-result-object p1

    return-object p1
.end method

.method public getCellComments()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/poi/ss/util/CellAddress;",
            "Lorg/apache/poi/hssf/usermodel/HSSFComment;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->createDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->findCellCommentLocations(Lorg/apache/poi/hssf/usermodel/HSSFShapeContainer;Ljava/util/Map;)V

    return-object v1
.end method

.method public getColumnBreaks()[I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getColumnBreaks()[I

    move-result-object v0

    return-object v0
.end method

.method public getColumnOutlineLevel(I)I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->getColumnOutlineLevel(I)I

    move-result p1

    return p1
.end method

.method public getColumnStyle(I)Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    int-to-short p1, p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->getXFIndexForColAt(S)S

    move-result p1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExFormatAt(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-direct {v1, p1, v0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;-><init>(SLorg/apache/poi/hssf/record/ExtendedFormatRecord;Lorg/apache/poi/hssf/model/InternalWorkbook;)V

    return-object v1
.end method

.method public bridge synthetic getColumnStyle(I)Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getColumnStyle(I)Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    move-result-object p1

    return-object p1
.end method

.method public getColumnWidth(I)I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->getColumnWidth(I)I

    move-result p1

    return p1
.end method

.method public getColumnWidthInPixels(I)F
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getColumnWidth(I)I

    move-result p1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDefaultColumnWidth()I

    move-result v0

    mul-int/lit16 v0, v0, 0x100

    if-ne p1, v0, :cond_0

    const/high16 v0, 0x42000000    # 32.0f

    goto :goto_0

    :cond_0
    const v0, 0x42123d71    # 36.56f

    :goto_0
    int-to-float p1, p1

    div-float/2addr p1, v0

    return p1
.end method

.method public getDataValidationHelper()Lorg/apache/poi/ss/usermodel/DataValidationHelper;
    .locals 1

    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFDataValidationHelper;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFDataValidationHelper;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V

    return-object v0
.end method

.method public getDataValidations()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/usermodel/HSSFDataValidation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getOrCreateDataValidityTable()Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFSheet$1;

    invoke-direct {v2, p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet$1;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lorg/apache/poi/hssf/record/aggregates/DataValidityTable;->visitContainedRecords(Lorg/apache/poi/hssf/record/aggregates/RecordAggregate$RecordVisitor;)V

    return-object v1
.end method

.method public getDefaultColumnWidth()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getDefaultColumnWidth()I

    move-result v0

    return v0
.end method

.method public getDefaultRowHeight()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getDefaultRowHeight()S

    move-result v0

    return v0
.end method

.method public getDefaultRowHeightInPoints()F
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getDefaultRowHeight()S

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41a00000    # 20.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getDialog()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->getDialog()Z

    move-result v0

    return v0
.end method

.method public getDisplayGuts()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->getDisplayGuts()Z

    move-result v0

    return v0
.end method

.method public getDrawingEscherAggregate()Lorg/apache/poi/hssf/record/EscherAggregate;
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->findDrawingGroup()Lorg/apache/poi/hssf/model/DrawingManager2;

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getDrawingManager()Lorg/apache/poi/hssf/model/DrawingManager2;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getDrawingManager()Lorg/apache/poi/hssf/model/DrawingManager2;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/apache/poi/hssf/model/InternalSheet;->aggregateDrawingRecords(Lorg/apache/poi/hssf/model/DrawingManager2;Z)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x2694

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/EscherAggregate;

    return-object v0
.end method

.method public getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getPatriarch(Z)Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_patriarch:Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    return-object v0
.end method

.method public bridge synthetic getDrawingPatriarch()Lorg/apache/poi/ss/usermodel/Drawing;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v0

    return-object v0
.end method

.method public getFirstRowNum()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_firstrow:I

    return v0
.end method

.method public getFitToPage()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->getFitToPage()Z

    move-result v0

    return v0
.end method

.method public getFooter()Lorg/apache/poi/hssf/usermodel/HSSFFooter;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFFooter;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFFooter;-><init>(Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;)V

    return-object v0
.end method

.method public bridge synthetic getFooter()Lorg/apache/poi/ss/usermodel/Footer;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getFooter()Lorg/apache/poi/hssf/usermodel/HSSFFooter;

    move-result-object v0

    return-object v0
.end method

.method public getForceFormulaRecalculation()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getUncalced()Z

    move-result v0

    return v0
.end method

.method public getHeader()Lorg/apache/poi/hssf/usermodel/HSSFHeader;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFHeader;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFHeader;-><init>(Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;)V

    return-object v0
.end method

.method public bridge synthetic getHeader()Lorg/apache/poi/ss/usermodel/Header;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getHeader()Lorg/apache/poi/hssf/usermodel/HSSFHeader;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontallyCenter()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getHCenter()Lorg/apache/poi/hssf/record/HCenterRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/HCenterRecord;->getHCenter()Z

    move-result v0

    return v0
.end method

.method public getHyperlink(II)Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/RecordBase;

    instance-of v2, v1, Lorg/apache/poi/hssf/record/HyperlinkRecord;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getFirstColumn()I

    move-result v2

    if-ne v2, p2, :cond_0

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/HyperlinkRecord;->getFirstRow()I

    move-result v2

    if-ne v2, p1, :cond_0

    new-instance p1, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    invoke-direct {p1, v1}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;-><init>(Lorg/apache/poi/hssf/record/HyperlinkRecord;)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getHyperlink(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;
    .locals 1

    .line 2
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getHyperlink(II)Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getHyperlink(II)Lorg/apache/poi/ss/usermodel/Hyperlink;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getHyperlink(II)Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getHyperlink(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/ss/usermodel/Hyperlink;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getHyperlink(Lorg/apache/poi/ss/util/CellAddress;)Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    move-result-object p1

    return-object p1
.end method

.method public getHyperlinkList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

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

    check-cast v2, Lorg/apache/poi/hssf/record/RecordBase;

    instance-of v3, v2, Lorg/apache/poi/hssf/record/HyperlinkRecord;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/apache/poi/hssf/record/HyperlinkRecord;

    new-instance v3, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    invoke-direct {v3, v2}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;-><init>(Lorg/apache/poi/hssf/record/HyperlinkRecord;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getLastRowNum()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_lastrow:I

    return v0
.end method

.method public getLeftCol()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getLeftCol()S

    move-result v0

    return v0
.end method

.method public getMargin(S)D
    .locals 2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getMargin(S)D

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getPrintSetup()Lorg/apache/poi/hssf/record/PrintSetupRecord;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getFooterMargin()D

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getPrintSetup()Lorg/apache/poi/hssf/record/PrintSetupRecord;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->getHeaderMargin()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMergedRegion(I)Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->getMergedRegionAt(I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object p1

    return-object p1
.end method

.method public getMergedRegions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalSheet;->getNumMergedRegions()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v3, v2}, Lorg/apache/poi/hssf/model/InternalSheet;->getMergedRegionAt(I)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getNumMergedRegions()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getNumMergedRegions()I

    move-result v0

    return v0
.end method

.method public getObjectProtect()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getProtectionBlock()Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->isObjectProtected()Z

    move-result v0

    return v0
.end method

.method public getPaneInformation()Lorg/apache/poi/ss/util/PaneInformation;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPaneInformation()Lorg/apache/poi/ss/util/PaneInformation;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()S
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getProtectionBlock()Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->getPasswordHash()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getPhysicalNumberOfRows()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    return v0
.end method

.method public getPrintSetup()Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getPrintSetup()Lorg/apache/poi/hssf/record/PrintSetupRecord;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;-><init>(Lorg/apache/poi/hssf/record/PrintSetupRecord;)V

    return-object v0
.end method

.method public bridge synthetic getPrintSetup()Lorg/apache/poi/ss/usermodel/PrintSetup;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getPrintSetup()Lorg/apache/poi/hssf/usermodel/HSSFPrintSetup;

    move-result-object v0

    return-object v0
.end method

.method public getProtect()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getProtectionBlock()Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->isSheetProtected()Z

    move-result v0

    return v0
.end method

.method public getRepeatingColumns()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRepeatingRowsOrColums(Z)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatingRows()Lorg/apache/poi/ss/util/CellRangeAddress;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRepeatingRowsOrColums(Z)Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFRow;

    return-object p1
.end method

.method public bridge synthetic getRow(I)Lorg/apache/poi/ss/usermodel/Row;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object p1

    return-object p1
.end method

.method public getRowBreaks()[I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getRowBreaks()[I

    move-result-object v0

    return-object v0
.end method

.method public getRowSumsBelow()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->getRowSumsBelow()Z

    move-result v0

    return v0
.end method

.method public getRowSumsRight()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WSBoolRecord;->getRowSumsRight()Z

    move-result v0

    return v0
.end method

.method public getScenarioProtect()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getProtectionBlock()Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->isScenarioProtected()Z

    move-result v0

    return v0
.end method

.method public getSheet()Lorg/apache/poi/hssf/model/InternalSheet;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    return-object v0
.end method

.method public getSheetConditionalFormatting()Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V

    return-object v0
.end method

.method public bridge synthetic getSheetConditionalFormatting()Lorg/apache/poi/ss/usermodel/SheetConditionalFormatting;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheetConditionalFormatting()Lorg/apache/poi/hssf/usermodel/HSSFSheetConditionalFormatting;

    move-result-object v0

    return-object v0
.end method

.method public getSheetName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTopRow()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getTopRow()S

    move-result v0

    return v0
.end method

.method public getVerticallyCenter()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getVCenter()Lorg/apache/poi/hssf/record/VCenterRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/VCenterRecord;->getVCenter()Z

    move-result v0

    return v0
.end method

.method public getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    return-object v0
.end method

.method public bridge synthetic getWorkbook()Lorg/apache/poi/ss/usermodel/Workbook;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getWorkbook()Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    move-result-object v0

    return-object v0
.end method

.method public groupColumn(II)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->groupColumnRange(IIZ)V

    return-void
.end method

.method public groupRow(II)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->groupRowRange(IIZ)V

    return-void
.end method

.method public insertChartRecords(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/poi/hssf/record/Record;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x23e

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordLocBySid(S)I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    return-void
.end method

.method public isActive()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getWindowTwo()Lorg/apache/poi/hssf/record/WindowTwoRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->isActive()Z

    move-result v0

    return v0
.end method

.method public isColumnBroken(I)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->isColumnBroken(I)Z

    move-result p1

    return p1
.end method

.method public isColumnHidden(I)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->isColumnHidden(I)Z

    move-result p1

    return p1
.end method

.method public isDisplayFormulas()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->isDisplayFormulas()Z

    move-result v0

    return v0
.end method

.method public isDisplayGridlines()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->isDisplayGridlines()Z

    move-result v0

    return v0
.end method

.method public isDisplayRowColHeadings()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->isDisplayRowColHeadings()Z

    move-result v0

    return v0
.end method

.method public isDisplayZeros()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getWindowTwo()Lorg/apache/poi/hssf/record/WindowTwoRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getDisplayZeros()Z

    move-result v0

    return v0
.end method

.method public isGridsPrinted()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->isGridsPrinted()Z

    move-result v0

    return v0
.end method

.method public isPrintGridlines()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPrintGridlines()Lorg/apache/poi/hssf/record/PrintGridlinesRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PrintGridlinesRecord;->getPrintGridlines()Z

    move-result v0

    return v0
.end method

.method public isPrintRowAndColumnHeadings()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPrintHeaders()Lorg/apache/poi/hssf/record/PrintHeadersRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/PrintHeadersRecord;->getPrintHeaders()Z

    move-result v0

    return v0
.end method

.method public isRightToLeft()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getWindowTwo()Lorg/apache/poi/hssf/record/WindowTwoRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getArabic()Z

    move-result v0

    return v0
.end method

.method public isRowBroken(I)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->isRowBroken(I)Z

    move-result p1

    return p1
.end method

.method public isSelected()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getWindowTwo()Lorg/apache/poi/hssf/record/WindowTwoRecord;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->getSelected()Z

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

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->rowIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public preSerialize()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_patriarch:Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->preSerialize()V

    :cond_0
    return-void
.end method

.method public protectSheet(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getProtectionBlock()Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, v1}, Lorg/apache/poi/hssf/record/aggregates/WorksheetProtectionBlock;->protectSheet(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public removeArrayFormula(Lorg/apache/poi/ss/usermodel/Cell;)Lorg/apache/poi/ss/usermodel/CellRange;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            ")",
            "Lorg/apache/poi/ss/usermodel/CellRange<",
            "Lorg/apache/poi/hssf/usermodel/HSSFCell;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-ne v0, p0, :cond_2

    .line 6
    .line 7
    move-object v0, p1

    .line 8
    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 9
    .line 10
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellValueRecord()Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    instance-of v1, v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    check-cast v0, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    .line 19
    .line 20
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getRowIndex()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->removeArrayFormula(II)Lorg/apache/poi/ss/util/CellRangeAddress;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getCellRange(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/CellRange;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/CellRange;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 51
    .line 52
    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    .line 53
    .line 54
    invoke-interface {v1, v2}, Lorg/apache/poi/ss/usermodel/Cell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    return-object p1

    .line 59
    :cond_1
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    .line 60
    .line 61
    invoke-direct {v0, p1}, Lorg/apache/poi/ss/util/CellReference;-><init>(Lorg/apache/poi/ss/usermodel/Cell;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 69
    .line 70
    const-string v1, "Cell "

    .line 71
    .line 72
    const-string v2, " is not part of an array formula."

    .line 73
    .line 74
    invoke-static {v1, p1, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v0

    .line 82
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 83
    .line 84
    const-string v0, "Specified cell does not belong to this sheet."

    .line 85
    .line 86
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p1
.end method

.method public removeColumnBreak(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->removeColumnBreak(I)V

    return-void
.end method

.method public removeHyperlink(Lorg/apache/poi/hssf/record/HyperlinkRecord;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/RecordBase;

    instance-of v2, v1, Lorg/apache/poi/hssf/record/HyperlinkRecord;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/poi/hssf/record/HyperlinkRecord;

    if-ne p1, v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_1
    return-void
.end method

.method public removeHyperlink(Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;)V
    .locals 0

    .line 2
    iget-object p1, p1, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->record:Lorg/apache/poi/hssf/record/HyperlinkRecord;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->removeHyperlink(Lorg/apache/poi/hssf/record/HyperlinkRecord;)V

    return-void
.end method

.method public removeMergedRegion(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->removeMergedRegion(I)V

    return-void
.end method

.method public removeMergedRegions(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/TreeSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/InternalSheet;->removeMergedRegion(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeRow(Lorg/apache/poi/ss/usermodel/Row;)V
    .locals 6

    move-object v0, p1

    check-cast v0, Lorg/apache/poi/hssf/usermodel/HSSFRow;

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->getSheet()Lorg/apache/poi/ss/usermodel/Sheet;

    move-result-object v1

    const-string v2, "Specified row does not belong to this sheet"

    if-ne v1, p0, :cond_6

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/usermodel/Cell;

    check-cast v3, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->isPartOfArrayFormulaGroup()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Row[rownum="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->getRowNum()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] contains cell(s) included in a multi-cell array formula. You cannot change part of an array."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->notifyArrayFormulaChanging(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    if-lez v1, :cond_5

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Row;->getRowNum()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v3, v1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/usermodel/HSSFRow;

    if-ne v1, p1, :cond_4

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result p1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getLastRowNum()I

    move-result v1

    if-ne p1, v1, :cond_2

    iget p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_lastrow:I

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->findLastRow(I)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_lastrow:I

    :cond_2
    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result p1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getFirstRowNum()I

    move-result v1

    if-ne p1, v1, :cond_3

    iget p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_firstrow:I

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->findFirstRow(I)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_firstrow:I

    :cond_3
    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowRecord()Lorg/apache/poi/hssf/record/RowRecord;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/model/InternalSheet;->removeRow(Lorg/apache/poi/hssf/record/RowRecord;)V

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeRowBreak(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->removeRowBreak(I)V

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

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_rows:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setActive(Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getWindowTwo()Lorg/apache/poi/hssf/record/WindowTwoRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setActive(Z)V

    return-void
.end method

.method public setActiveCell(Lorg/apache/poi/ss/util/CellAddress;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellAddress;->getColumn()I

    move-result p1

    int-to-short p1, p1

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/InternalSheet;->setActiveCellRow(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->setActiveCellCol(S)V

    return-void
.end method

.method public setAlternativeExpression(Z)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WSBoolRecord;->setAlternateExpression(Z)V

    return-void
.end method

.method public setAlternativeFormula(Z)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WSBoolRecord;->setAlternateFormula(Z)V

    return-void
.end method

.method public setArrayFormula(Ljava/lang/String;Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/CellRange;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/util/CellRangeAddress;",
            ")",
            "Lorg/apache/poi/ss/usermodel/CellRange<",
            "Lorg/apache/poi/hssf/usermodel/HSSFCell;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    sget-object v2, Lorg/apache/poi/ss/formula/FormulaType;->ARRAY:Lorg/apache/poi/ss/formula/FormulaType;

    invoke-static {p1, v1, v2, v0}, Lorg/apache/poi/hssf/model/HSSFFormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/ss/formula/FormulaType;I)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    invoke-direct {p0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getCellRange(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/CellRange;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/CellRange;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-virtual {v2, p2}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->setCellArrayFormula(Lorg/apache/poi/ss/util/CellRangeAddress;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/apache/poi/ss/usermodel/CellRange;->getTopLeftCell()Lorg/apache/poi/ss/usermodel/Cell;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellValueRecord()Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;

    invoke-virtual {v1, p2, p1}, Lorg/apache/poi/hssf/record/aggregates/FormulaRecordAggregate;->setArrayFormula(Lorg/apache/poi/ss/util/CellRangeAddress;[Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v0
.end method

.method public setAutoFilter(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/hssf/usermodel/HSSFAutoFilter;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iget-object v2, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v2

    iget-object v3, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v3, v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v13

    const/4 v3, 0x1

    add-int/lit8 v4, v13, 0x1

    const/16 v5, 0xd

    invoke-virtual {v2, v5, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getSpecificBuiltinRecord(BI)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-virtual {v2, v5, v4}, Lorg/apache/poi/hssf/model/InternalWorkbook;->createBuiltInName(BI)Lorg/apache/poi/hssf/record/NameRecord;

    move-result-object v6

    :cond_0
    move-object v2, v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    const/16 v23, 0x0

    goto :goto_0

    :cond_1
    move/from16 v23, v4

    :goto_0
    new-instance v14, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v14

    move/from16 v5, v23

    invoke-direct/range {v4 .. v13}, Lorg/apache/poi/ss/formula/ptg/Area3DPtg;-><init>(IIIIZZZZI)V

    new-array v4, v3, [Lorg/apache/poi/ss/formula/ptg/Ptg;

    aput-object v14, v4, v1

    invoke-virtual {v2, v4}, Lorg/apache/poi/hssf/record/NameRecord;->setNameDefinition([Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    new-instance v1, Lorg/apache/poi/hssf/record/AutoFilterInfoRecord;

    invoke-direct {v1}, Lorg/apache/poi/hssf/record/AutoFilterInfoRecord;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Lorg/apache/poi/hssf/record/AutoFilterInfoRecord;->setNumEntries(S)V

    iget-object v2, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v4, 0x200

    invoke-virtual {v2, v4}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordLocBySid(S)I

    move-result v2

    iget-object v4, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v4}, Lorg/apache/poi/hssf/model/InternalSheet;->getRecords()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->createDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v4

    :goto_1
    if-gt v2, v4, :cond_2

    new-instance v5, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;

    int-to-short v6, v2

    add-int/2addr v2, v3

    int-to-short v7, v2

    add-int/lit8 v22, v23, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v14, v5

    move/from16 v19, v6

    move/from16 v20, v23

    move/from16 v21, v7

    invoke-direct/range {v14 .. v22}, Lorg/apache/poi/hssf/usermodel/HSSFClientAnchor;-><init>(IIIISISI)V

    invoke-virtual {v1, v5}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->createComboBox(Lorg/apache/poi/hssf/usermodel/HSSFAnchor;)Lorg/apache/poi/hssf/usermodel/HSSFSimpleShape;

    goto :goto_1

    :cond_2
    new-instance v1, Lorg/apache/poi/hssf/usermodel/HSSFAutoFilter;

    invoke-direct {v1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFAutoFilter;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V

    return-object v1
.end method

.method public bridge synthetic setAutoFilter(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/ss/usermodel/AutoFilter;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setAutoFilter(Lorg/apache/poi/ss/util/CellRangeAddress;)Lorg/apache/poi/hssf/usermodel/HSSFAutoFilter;

    move-result-object p1

    return-object p1
.end method

.method public setAutobreaks(Z)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WSBoolRecord;->setAutobreaks(Z)V

    return-void
.end method

.method public setColumnBreak(I)V
    .locals 3

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->validateColumn(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v1

    int-to-short v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->setColumnBreak(SSS)V

    return-void
.end method

.method public setColumnGroupCollapsed(IZ)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/InternalSheet;->setColumnGroupCollapsed(IZ)V

    return-void
.end method

.method public setColumnHidden(IZ)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/InternalSheet;->setColumnHidden(IZ)V

    return-void
.end method

.method public setColumnWidth(II)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/InternalSheet;->setColumnWidth(II)V

    return-void
.end method

.method public setDefaultColumnStyle(ILorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    check-cast p2, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    invoke-virtual {p2}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getIndex()S

    move-result p2

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/hssf/model/InternalSheet;->setDefaultColumnStyle(II)V

    return-void
.end method

.method public setDefaultColumnWidth(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->setDefaultColumnWidth(I)V

    return-void
.end method

.method public setDefaultRowHeight(S)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->setDefaultRowHeight(S)V

    return-void
.end method

.method public setDefaultRowHeightInPoints(F)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    int-to-short p1, p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->setDefaultRowHeight(S)V

    return-void
.end method

.method public setDialog(Z)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WSBoolRecord;->setDialog(Z)V

    return-void
.end method

.method public setDisplayFormulas(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->setDisplayFormulas(Z)V

    return-void
.end method

.method public setDisplayGridlines(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->setDisplayGridlines(Z)V

    return-void
.end method

.method public setDisplayGuts(Z)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WSBoolRecord;->setDisplayGuts(Z)V

    return-void
.end method

.method public setDisplayRowColHeadings(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->setDisplayRowColHeadings(Z)V

    return-void
.end method

.method public setDisplayZeros(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getWindowTwo()Lorg/apache/poi/hssf/record/WindowTwoRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setDisplayZeros(Z)V

    return-void
.end method

.method public setFitToPage(Z)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WSBoolRecord;->setFitToPage(Z)V

    return-void
.end method

.method public setForceFormulaRecalculation(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->setUncalced(Z)V

    return-void
.end method

.method public setGridsPrinted(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/model/InternalSheet;->setGridsPrinted(Z)V

    return-void
.end method

.method public setHorizontallyCenter(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getHCenter()Lorg/apache/poi/hssf/record/HCenterRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/HCenterRecord;->setHCenter(Z)V

    return-void
.end method

.method public setMargin(SD)V
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->setMargin(SD)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getPrintSetup()Lorg/apache/poi/hssf/record/PrintSetupRecord;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setFooterMargin(D)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getPrintSetup()Lorg/apache/poi/hssf/record/PrintSetupRecord;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/apache/poi/hssf/record/PrintSetupRecord;->setHeaderMargin(D)V

    :goto_0
    return-void
.end method

.method public setPrintGridlines(Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPrintGridlines()Lorg/apache/poi/hssf/record/PrintGridlinesRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/PrintGridlinesRecord;->setPrintGridlines(Z)V

    return-void
.end method

.method public setPrintRowAndColumnHeadings(Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPrintHeaders()Lorg/apache/poi/hssf/record/PrintHeadersRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/PrintHeadersRecord;->setPrintHeaders(Z)V

    return-void
.end method

.method public setRepeatingColumns(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRepeatingRows()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setRepeatingRowsAndColumns(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)V

    return-void
.end method

.method public setRepeatingRows(Lorg/apache/poi/ss/util/CellRangeAddress;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRepeatingColumns()Lorg/apache/poi/ss/util/CellRangeAddress;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setRepeatingRowsAndColumns(Lorg/apache/poi/ss/util/CellRangeAddress;Lorg/apache/poi/ss/util/CellRangeAddress;)V

    return-void
.end method

.method public setRightToLeft(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getWindowTwo()Lorg/apache/poi/hssf/record/WindowTwoRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setArabic(Z)V

    return-void
.end method

.method public setRowBreak(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->validateRow(I)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-virtual {v0, p1, v1, v2}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->setRowBreak(ISS)V

    return-void
.end method

.method public setRowGroupCollapsed(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {p2}, Lorg/apache/poi/hssf/model/InternalSheet;->getRowsAggregate()Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->collapseRow(I)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {p2}, Lorg/apache/poi/hssf/model/InternalSheet;->getRowsAggregate()Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/apache/poi/hssf/record/aggregates/RowRecordsAggregate;->expandRow(I)V

    :goto_0
    return-void
.end method

.method public setRowSumsBelow(Z)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WSBoolRecord;->setRowSumsBelow(Z)V

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WSBoolRecord;->setAlternateExpression(Z)V

    return-void
.end method

.method public setRowSumsRight(Z)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->findFirstRecordBySid(S)Lorg/apache/poi/hssf/record/Record;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hssf/record/WSBoolRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WSBoolRecord;->setRowSumsRight(Z)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getWindowTwo()Lorg/apache/poi/hssf/record/WindowTwoRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/WindowTwoRecord;->setSelected(Z)V

    return-void
.end method

.method public setVerticallyCenter(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->getVCenter()Lorg/apache/poi/hssf/record/VCenterRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/VCenterRecord;->setVCenter(Z)V

    return-void
.end method

.method public setZoom(I)V
    .locals 1

    .line 1
    const/16 v0, 0x64

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->setZoom(II)V

    return-void
.end method

.method public setZoom(II)V
    .locals 2

    .line 2
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const v1, 0xffff

    if-gt p1, v1, :cond_1

    if-lt p2, v0, :cond_0

    if-gt p2, v1, :cond_0

    new-instance v0, Lorg/apache/poi/hssf/record/SCLRecord;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/SCLRecord;-><init>()V

    int-to-short p1, p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/SCLRecord;->setNumerator(S)V

    int-to-short p1, p2

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/SCLRecord;->setDenominator(S)V

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/model/InternalSheet;->setSCLRecord(Lorg/apache/poi/hssf/record/SCLRecord;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Denominator must be greater than 0 and less than 65536"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Numerator must be greater than 0 and less than 65536"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shiftMerged(IIIZ)V
    .locals 0

    new-instance p4, Lorg/apache/poi/hssf/usermodel/helpers/HSSFRowShifter;

    invoke-direct {p4, p0}, Lorg/apache/poi/hssf/usermodel/helpers/HSSFRowShifter;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V

    invoke-virtual {p4, p1, p2, p3}, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;->shiftMergedRegions(III)Ljava/util/List;

    return-void
.end method

.method public shiftRows(III)V
    .locals 6

    .line 1
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->shiftRows(IIIZZ)V

    return-void
.end method

.method public shiftRows(IIIZZ)V
    .locals 7

    .line 2
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->shiftRows(IIIZZZ)V

    return-void
.end method

.method public shiftRows(IIIZZZ)V
    .locals 15

    .line 3
    move-object v0, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    if-lt v4, v3, :cond_17

    if-gez v5, :cond_0

    const/4 v1, 0x1

    move v2, v3

    goto :goto_0

    :cond_0
    if-lez v5, :cond_16

    const/4 v1, -0x1

    move v2, v4

    :goto_0
    new-instance v6, Lorg/apache/poi/hssf/usermodel/helpers/HSSFRowShifter;

    invoke-direct {v6, p0}, Lorg/apache/poi/hssf/usermodel/helpers/HSSFRowShifter;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFSheet;)V

    if-eqz p6, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->createDrawingPatriarch()Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/poi/hssf/usermodel/HSSFPatriarch;->getChildren()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/poi/hssf/usermodel/HSSFShape;

    instance-of v9, v8, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    check-cast v8, Lorg/apache/poi/hssf/usermodel/HSSFComment;

    invoke-virtual {v8}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->getRow()I

    move-result v9

    if-gt v3, v9, :cond_1

    if-gt v9, v4, :cond_1

    add-int/2addr v9, v5

    invoke-static {v9}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->clip(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lorg/apache/poi/hssf/usermodel/HSSFComment;->setRow(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v6, v3, v4, v5}, Lorg/apache/poi/ss/usermodel/helpers/RowShifter;->shiftMergedRegions(III)Ljava/util/List;

    iget-object v6, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v6}, Lorg/apache/poi/hssf/model/InternalSheet;->getPageSettings()Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;

    move-result-object v6

    invoke-virtual {v6, v3, v4, v5}, Lorg/apache/poi/hssf/record/aggregates/PageSettingsBlock;->shiftRowBreaks(III)V

    add-int v6, v3, v5

    add-int v7, v4, v5

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getHyperlinkList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    invoke-virtual {v9}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->getFirstRow()I

    move-result v10

    invoke-virtual {v9}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->getLastRow()I

    move-result v11

    if-gt v6, v10, :cond_4

    if-gt v10, v7, :cond_4

    if-gt v7, v11, :cond_4

    if-gt v11, v7, :cond_4

    invoke-virtual {p0, v9}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->removeHyperlink(Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;)V

    goto :goto_2

    :cond_5
    :goto_3
    if-lt v2, v3, :cond_d

    if-gt v2, v4, :cond_d

    if-ltz v2, :cond_d

    const/high16 v8, 0x10000

    if-ge v2, v8, :cond_d

    invoke-virtual {p0, v2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-direct {p0, v8}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->notifyRowShifting(Lorg/apache/poi/hssf/usermodel/HSSFRow;)V

    :cond_6
    add-int v9, v2, v5

    invoke-virtual {p0, v9}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v10

    if-nez v10, :cond_7

    invoke-virtual {p0, v9}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->createRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v10

    :cond_7
    invoke-virtual {v10}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->removeAllCells()V

    if-nez v8, :cond_8

    goto :goto_5

    :cond_8
    if-eqz p4, :cond_9

    invoke-virtual {v8}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getHeight()S

    move-result v11

    invoke-virtual {v10, v11}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->setHeight(S)V

    :cond_9
    if-eqz p5, :cond_a

    const/16 v11, 0xff

    invoke-virtual {v8, v11}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->setHeight(S)V

    :cond_a
    invoke-virtual {v8}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cellIterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_b
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-virtual {v12}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getHyperlink()Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;

    move-result-object v13

    invoke-virtual {v8, v12}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->removeCell(Lorg/apache/poi/ss/usermodel/Cell;)V

    invoke-virtual {v12}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellValueRecord()Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-result-object v12

    invoke-interface {v12, v9}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->setRow(I)V

    invoke-virtual {v10, v12}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->createCellFromRecord(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    iget-object v14, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v14, v9, v12}, Lorg/apache/poi/hssf/model/InternalSheet;->addValueRecord(ILorg/apache/poi/hssf/record/CellValueRecordInterface;)V

    if-eqz v13, :cond_b

    invoke-virtual {v13}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->getFirstRow()I

    move-result v12

    add-int/2addr v12, v5

    invoke-virtual {v13, v12}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setFirstRow(I)V

    invoke-virtual {v13}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->getLastRow()I

    move-result v12

    add-int/2addr v12, v5

    invoke-virtual {v13, v12}, Lorg/apache/poi/hssf/usermodel/HSSFHyperlink;->setLastRow(I)V

    goto :goto_4

    :cond_c
    invoke-virtual {v8}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->removeAllCells()V

    :goto_5
    add-int/2addr v2, v1

    goto :goto_3

    :cond_d
    const/4 v8, 0x0

    iget v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_firstrow:I

    if-lez v5, :cond_10

    if-ne v3, v1, :cond_f

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_firstrow:I

    add-int/lit8 v1, v3, 0x1

    :goto_6
    if-ge v1, v6, :cond_f

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v2

    if-eqz v2, :cond_e

    iput v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_firstrow:I

    goto :goto_7

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_f
    :goto_7
    iget v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_lastrow:I

    if-le v7, v1, :cond_13

    sget-object v1, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v1

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_8
    iput v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_lastrow:I

    goto :goto_a

    :cond_10
    if-ge v6, v1, :cond_11

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_firstrow:I

    :cond_11
    iget v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_lastrow:I

    if-ne v4, v1, :cond_13

    sget-object v1, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v1

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_lastrow:I

    add-int/lit8 v1, v4, -0x1

    :goto_9
    if-le v1, v7, :cond_13

    invoke-virtual {p0, v1}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getRow(I)Lorg/apache/poi/hssf/usermodel/HSSFRow;

    move-result-object v2

    if-eqz v2, :cond_12

    goto :goto_8

    :cond_12
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_13
    :goto_a
    iget-object v1, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v1, p0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetIndex(Lorg/apache/poi/ss/usermodel/Sheet;)I

    move-result v1

    iget-object v2, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetName(I)Ljava/lang/String;

    move-result-object v2

    iget-object v6, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v6, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->checkExternSheet(I)S

    move-result v7

    sget-object v6, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    move v1, v7

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-static/range {v1 .. v6}, Lorg/apache/poi/ss/formula/FormulaShifter;->createForRowShift(ILjava/lang/String;IIILorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/formula/FormulaShifter;

    move-result-object v1

    iget-object v2, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    invoke-virtual {v2, v1, v7}, Lorg/apache/poi/hssf/model/InternalSheet;->updateFormulasAfterCellShift(Lorg/apache/poi/ss/formula/FormulaShifter;I)V

    iget-object v2, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getNumberOfSheets()I

    move-result v2

    :goto_b
    if-ge v8, v2, :cond_15

    iget-object v3, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v3, v8}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getSheetAt(I)Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v3

    iget-object v4, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    if-ne v3, v4, :cond_14

    goto :goto_c

    :cond_14
    iget-object v4, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_book:Lorg/apache/poi/hssf/model/InternalWorkbook;

    invoke-virtual {v4, v8}, Lorg/apache/poi/hssf/model/InternalWorkbook;->checkExternSheet(I)S

    move-result v4

    invoke-virtual {v3, v1, v4}, Lorg/apache/poi/hssf/model/InternalSheet;->updateFormulasAfterCellShift(Lorg/apache/poi/ss/formula/FormulaShifter;I)V

    :goto_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_15
    iget-object v2, v0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_workbook:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v2}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/poi/hssf/model/InternalWorkbook;->updateNamesAfterCellShift(Lorg/apache/poi/ss/formula/FormulaShifter;)V

    :cond_16
    return-void

    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "startRow must be less than or equal to endRow. To shift rows up, use n<0."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public showInPane(II)V
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v0

    if-gt p1, v0, :cond_0

    int-to-short p1, p1

    int-to-short p2, p2

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->showInPane(SS)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Maximum row number is "

    .line 1
    invoke-static {v0, p2}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ungroupColumn(II)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->groupColumnRange(IIZ)V

    return-void
.end method

.method public ungroupRow(II)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->_sheet:Lorg/apache/poi/hssf/model/InternalSheet;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->groupRowRange(IIZ)V

    return-void
.end method

.method public validateColumn(I)V
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gt p1, v0, :cond_1

    .line 8
    .line 9
    if-ltz p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v0, "Minimum column number is 0"

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1

    .line 20
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string v1, "Maximum column number is "

    .line 23
    .line 24
    invoke-static {v0, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1
.end method

.method public validateMergedRegions()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->checkForMergedRegionsIntersectingArrayFormulas()V

    invoke-direct {p0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->checkForIntersectingMergedRegions()V

    return-void
.end method

.method public validateRow(I)V
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gt p1, v0, :cond_1

    .line 8
    .line 9
    if-ltz p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v0, "Minumum row number is 0"

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1

    .line 20
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string v1, "Maximum row number is "

    .line 23
    .line 24
    invoke-static {v0, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1
.end method
