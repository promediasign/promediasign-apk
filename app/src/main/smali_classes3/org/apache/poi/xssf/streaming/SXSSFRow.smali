.class public Lorg/apache/poi/xssf/streaming/SXSSFRow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Row;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xssf/streaming/SXSSFRow$CellIterator;,
        Lorg/apache/poi/xssf/streaming/SXSSFRow$FilledCellIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/poi/ss/usermodel/Row;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/poi/xssf/streaming/SXSSFRow;",
        ">;"
    }
.end annotation


# static fields
.field private static final UNDEFINED:Ljava/lang/Boolean;


# instance fields
.field private final _cells:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Lorg/apache/poi/xssf/streaming/SXSSFCell;",
            ">;"
        }
    .end annotation
.end field

.field private _collapsed:Ljava/lang/Boolean;

.field private _height:S

.field private _hidden:Ljava/lang/Boolean;

.field private _outlineLevel:I

.field private final _sheet:Lorg/apache/poi/xssf/streaming/SXSSFSheet;

.field private _style:S

.field private _zHeight:Z


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/streaming/SXSSFSheet;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_cells:Ljava/util/SortedMap;

    const/4 v0, -0x1

    iput-short v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_style:S

    iput-short v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_height:S

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_zHeight:Z

    iput v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_outlineLevel:I

    sget-object v0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->UNDEFINED:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_hidden:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_collapsed:Ljava/lang/Boolean;

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_sheet:Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/xssf/streaming/SXSSFRow;)Ljava/util/SortedMap;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_cells:Ljava/util/SortedMap;

    return-object p0
.end method

.method private static checkBounds(I)V
    .locals 5

    .line 1
    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-ltz p0, :cond_0

    .line 8
    .line 9
    if-gt p0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v3, "Invalid column index ("

    .line 15
    .line 16
    const-string v4, ").  Allowable column range for "

    .line 17
    .line 18
    invoke-static {p0, v3, v4}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v3, " is (0.."

    .line 30
    .line 31
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ") or (\'A\'..\'"

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v0, "\')"

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-direct {v2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v2
.end method


# virtual methods
.method public allCellsIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFRow$CellIterator;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow$CellIterator;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFRow;)V

    return-object v0
.end method

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

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/poi/xssf/streaming/SXSSFRow;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->compareTo(Lorg/apache/poi/xssf/streaming/SXSSFRow;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/poi/xssf/streaming/SXSSFRow;)I
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getRowNum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getRowNum()I

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

.method public bridge synthetic createCell(I)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->createCell(I)Lorg/apache/poi/xssf/streaming/SXSSFCell;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createCell(II)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->createCell(II)Lorg/apache/poi/xssf/streaming/SXSSFCell;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/xssf/streaming/SXSSFCell;

    move-result-object p1

    return-object p1
.end method

.method public createCell(I)Lorg/apache/poi/xssf/streaming/SXSSFCell;
    .locals 1

    .line 4
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/xssf/streaming/SXSSFCell;

    move-result-object p1

    return-object p1
.end method

.method public createCell(II)Lorg/apache/poi/xssf/streaming/SXSSFCell;
    .locals 0

    .line 5
    invoke-static {p2}, Lorg/apache/poi/ss/usermodel/CellType;->forInt(I)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/xssf/streaming/SXSSFCell;

    move-result-object p1

    return-object p1
.end method

.method public createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/xssf/streaming/SXSSFCell;
    .locals 1

    .line 6
    invoke-static {p1}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->checkBounds(I)V

    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFCell;

    invoke-direct {v0, p0, p2}, Lorg/apache/poi/xssf/streaming/SXSSFCell;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFRow;Lorg/apache/poi/ss/usermodel/CellType;)V

    iget-object p2, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_cells:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/poi/xssf/streaming/SXSSFRow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/xssf/streaming/SXSSFRow;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getRowNum()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getRowNum()I

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object p1

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public bridge synthetic getCell(I)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getCell(I)Lorg/apache/poi/xssf/streaming/SXSSFCell;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getCell(ILorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getCell(ILorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)Lorg/apache/poi/xssf/streaming/SXSSFCell;

    move-result-object p1

    return-object p1
.end method

.method public getCell(I)Lorg/apache/poi/xssf/streaming/SXSSFCell;
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_sheet:Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getMissingCellPolicy()Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getCell(ILorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)Lorg/apache/poi/xssf/streaming/SXSSFCell;

    move-result-object p1

    return-object p1
.end method

.method public getCell(ILorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)Lorg/apache/poi/xssf/streaming/SXSSFCell;
    .locals 3

    .line 4
    invoke-static {p1}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->checkBounds(I)V

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_cells:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/xssf/streaming/SXSSFCell;

    sget-object v1, Lorg/apache/poi/xssf/streaming/SXSSFRow$1;->$SwitchMap$org$apache$poi$ss$usermodel$Row$MissingCellPolicy:[I

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

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/xssf/streaming/SXSSFCell;

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

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p1

    sget-object p2, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne p1, p2, :cond_3

    const/4 v0, 0x0

    :cond_3
    return-object v0
.end method

.method public getCellIndex(Lorg/apache/poi/xssf/streaming/SXSSFCell;)I
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_cells:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

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

.method public getCollapsed()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_collapsed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getFirstCellNum()S
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_cells:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, -0x1

    return v0
.end method

.method public getHeight()S
    .locals 2

    iget-short v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_height:S

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getDefaultRowHeightInPoints()F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float v0, v0, v1

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    :goto_0
    float-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public getHeightInPoints()F
    .locals 4

    iget-short v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_height:S

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getDefaultRowHeightInPoints()F

    move-result v0

    float-to-double v0, v0

    goto :goto_0

    :cond_0
    int-to-double v0, v0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    div-double/2addr v0, v2

    :goto_0
    double-to-float v0, v0

    return v0
.end method

.method public getHidden()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_hidden:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLastCellNum()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_cells:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_cells:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    :goto_0
    return v0
.end method

.method public getOutlineLevel()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_outlineLevel:I

    return v0
.end method

.method public getPhysicalNumberOfCells()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_cells:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getRowNum()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_sheet:Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    invoke-virtual {v0, p0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getRowNum(Lorg/apache/poi/xssf/streaming/SXSSFRow;)I

    move-result v0

    return v0
.end method

.method public getRowStyle()Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->isFormatted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->getWorkbook()Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    move-result-object v0

    iget-short v1, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_style:S

    invoke-virtual {v0, v1}, Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;->getCellStyleAt(I)Lorg/apache/poi/ss/usermodel/CellStyle;

    move-result-object v0

    return-object v0
.end method

.method public getRowStyleIndex()I
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    iget-short v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_style:S

    return v0
.end method

.method public bridge synthetic getSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public getSheet()Lorg/apache/poi/xssf/streaming/SXSSFSheet;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_sheet:Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    return-object v0
.end method

.method public getZeroHeight()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_zHeight:Z

    return v0
.end method

.method public hasCustomHeight()Z
    .locals 2

    iget-short v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_height:S

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_cells:Ljava/util/SortedMap;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isFormatted()Z
    .locals 2

    iget-short v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_style:S

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
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

    new-instance v0, Lorg/apache/poi/xssf/streaming/SXSSFRow$FilledCellIterator;

    invoke-direct {v0, p0}, Lorg/apache/poi/xssf/streaming/SXSSFRow$FilledCellIterator;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFRow;)V

    return-object v0
.end method

.method public removeCell(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 1

    check-cast p1, Lorg/apache/poi/xssf/streaming/SXSSFCell;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFRow;->getCellIndex(Lorg/apache/poi/xssf/streaming/SXSSFCell;)I

    move-result p1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_cells:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setCollapsed(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_collapsed:Ljava/lang/Boolean;

    return-void
.end method

.method public setHeight(S)V
    .locals 0

    iput-short p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_height:S

    return-void
.end method

.method public setHeightInPoints(F)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    :goto_0
    iput-short p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_height:S

    goto :goto_1

    :cond_0
    const/high16 v0, 0x41a00000    # 20.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    int-to-short p1, p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setHidden(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_hidden:Ljava/lang/Boolean;

    return-void
.end method

.method public setOutlineLevel(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_outlineLevel:I

    return-void
.end method

.method public setRowNum(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_sheet:Lorg/apache/poi/xssf/streaming/SXSSFSheet;

    invoke-virtual {v0, p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFSheet;->changeRowNum(Lorg/apache/poi/xssf/streaming/SXSSFRow;I)V

    return-void
.end method

.method public setRowStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, -0x1

    :goto_0
    iput-short p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_style:S

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/CellStyle;->getIndex()S

    move-result p1

    goto :goto_0

    :goto_1
    return-void
.end method

.method public setZeroHeight(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFRow;->_zHeight:Z

    return-void
.end method
