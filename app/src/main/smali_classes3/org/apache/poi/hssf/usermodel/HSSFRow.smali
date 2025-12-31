.class public final Lorg/apache/poi/hssf/usermodel/HSSFRow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Row;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/usermodel/HSSFRow$CellIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/poi/ss/usermodel/Row;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/poi/hssf/usermodel/HSSFRow;",
        ">;"
    }
.end annotation


# static fields
.field public static final INITIAL_CAPACITY:I


# instance fields
.field private final book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

.field private cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

.field private final row:Lorg/apache/poi/hssf/record/RowRecord;

.field private rowNum:I

.field private final sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "HSSFRow.ColInitialCapacity"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lorg/apache/poi/util/Configurator;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->INITIAL_CAPACITY:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/usermodel/HSSFSheet;I)V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/hssf/record/RowRecord;

    invoke-direct {v0, p3}, Lorg/apache/poi/hssf/record/RowRecord;-><init>(I)V

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/RowRecord;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/RowRecord;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    iput-object p3, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {p3}, Lorg/apache/poi/hssf/record/RowRecord;->getRowNumber()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->setRowNum(I)V

    invoke-virtual {p3}, Lorg/apache/poi/hssf/record/RowRecord;->getLastCol()I

    move-result p1

    sget p2, Lorg/apache/poi/hssf/usermodel/HSSFRow;->INITIAL_CAPACITY:I

    add-int/2addr p1, p2

    new-array p1, p1, [Lorg/apache/poi/hssf/usermodel/HSSFCell;

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    invoke-virtual {p3}, Lorg/apache/poi/hssf/record/RowRecord;->setEmpty()V

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/hssf/usermodel/HSSFRow;)[Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    return-object p0
.end method

.method private addCell(Lorg/apache/poi/hssf/usermodel/HSSFCell;)V
    .locals 5

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getColumnIndex()I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    array-length v2, v1

    if-lt v0, v2, :cond_1

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v0, 0x1

    if-ge v2, v3, :cond_0

    sget v2, Lorg/apache/poi/hssf/usermodel/HSSFRow;->INITIAL_CAPACITY:I

    add-int/2addr v2, v0

    :cond_0
    new-array v2, v2, [Lorg/apache/poi/hssf/usermodel/HSSFCell;

    iput-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    aput-object p1, v1, v0

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RowRecord;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RowRecord;->getFirstCol()I

    move-result p1

    if-ge v0, p1, :cond_3

    :cond_2
    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    int-to-short v1, v0

    invoke-virtual {p1, v1}, Lorg/apache/poi/hssf/record/RowRecord;->setFirstCol(I)V

    :cond_3
    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RowRecord;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RowRecord;->getLastCol()I

    move-result p1

    if-lt v0, p1, :cond_5

    :cond_4
    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RowRecord;->setLastCol(I)V

    :cond_5
    return-void
.end method

.method private calculateNewFirstCell(I)I
    .locals 1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->retrieveCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    array-length v0, v0

    if-gt p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_1
    return p1
.end method

.method private calculateNewLastCellPlusOne(I)I
    .locals 1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->retrieveCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v0

    if-nez v0, :cond_1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private removeCell(Lorg/apache/poi/hssf/usermodel/HSSFCell;Z)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getColumnIndex()I

    move-result v0

    if-ltz v0, :cond_5

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    array-length v2, v1

    if-ge v0, v2, :cond_4

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_4

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->isPartOfArrayFormulaGroup()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->notifyArrayFormulaChanging()V

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellValueRecord()Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lorg/apache/poi/hssf/model/InternalSheet;->removeValueRecord(ILorg/apache/poi/hssf/record/CellValueRecordInterface;)V

    :cond_1
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getColumnIndex()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RowRecord;->getLastCol()I

    move-result v0

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {p2}, Lorg/apache/poi/hssf/record/RowRecord;->getLastCol()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->calculateNewLastCellPlusOne(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/apache/poi/hssf/record/RowRecord;->setLastCol(I)V

    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getColumnIndex()I

    move-result p1

    iget-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {p2}, Lorg/apache/poi/hssf/record/RowRecord;->getFirstCol()I

    move-result p2

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/RowRecord;->getFirstCol()I

    move-result p2

    invoke-direct {p0, p2}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->calculateNewFirstCell(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/apache/poi/hssf/record/RowRecord;->setFirstCol(I)V

    :cond_3
    return-void

    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Specified cell is not from this row"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Negative cell indexes not allowed"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private retrieveCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .locals 2

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
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

    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFRow$CellIterator;

    invoke-direct {v0, p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow$CellIterator;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFRow;)V

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFRow;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->compareTo(Lorg/apache/poi/hssf/usermodel/HSSFRow;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/poi/hssf/usermodel/HSSFRow;)I
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

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

.method public createCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object p1

    return-object p1
.end method

.method public createCell(II)Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .locals 0

    .line 2
    invoke-static {p2}, Lorg/apache/poi/ss/usermodel/CellType;->forInt(I)Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object p1

    return-object p1
.end method

.method public createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .locals 7

    .line 3
    int-to-short v0, p1

    const/16 v1, 0x7fff

    if-le p1, v1, :cond_0

    const v0, 0xffff

    sub-int/2addr v0, p1

    int-to-short v0, v0

    :cond_0
    move v5, v0

    new-instance p1, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v4

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/hssf/usermodel/HSSFCell;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/usermodel/HSSFSheet;ISLorg/apache/poi/ss/usermodel/CellType;)V

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->addCell(Lorg/apache/poi/hssf/usermodel/HSSFCell;)V

    iget-object p2, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {p2}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object p2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellValueRecord()Lorg/apache/poi/hssf/record/CellValueRecordInterface;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/apache/poi/hssf/model/InternalSheet;->addValueRecord(ILorg/apache/poi/hssf/record/CellValueRecordInterface;)V

    return-object p1
.end method

.method public bridge synthetic createCell(I)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->createCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createCell(II)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->createCell(II)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object p1

    return-object p1
.end method

.method public createCellFromRecord(Lorg/apache/poi/hssf/record/CellValueRecordInterface;)Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .locals 3

    new-instance v0, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-direct {v0, v1, v2, p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;-><init>(Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;Lorg/apache/poi/hssf/usermodel/HSSFSheet;Lorg/apache/poi/hssf/record/CellValueRecordInterface;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->addCell(Lorg/apache/poi/hssf/usermodel/HSSFCell;)V

    invoke-interface {p1}, Lorg/apache/poi/hssf/record/CellValueRecordInterface;->getColumn()S

    move-result p1

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RowRecord;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/RowRecord;->setFirstCol(I)V

    :goto_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/RowRecord;->setLastCol(I)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RowRecord;->getFirstCol()I

    move-result v1

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v1, p1}, Lorg/apache/poi/hssf/record/RowRecord;->setFirstCol(I)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/record/RowRecord;->getLastCol()I

    move-result v1

    if-le p1, v1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/poi/hssf/usermodel/HSSFRow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFRow;

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowNum()I

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object p1

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getMissingCellPolicy()Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getCell(ILorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object p1

    return-object p1
.end method

.method public getCell(ILorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)Lorg/apache/poi/hssf/usermodel/HSSFCell;
    .locals 3

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->retrieveCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/hssf/usermodel/HSSFRow$1;->$SwitchMap$org$apache$poi$ss$usermodel$Row$MissingCellPolicy:[I

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

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/hssf/usermodel/HSSFCell;

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

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object p1

    sget-object p2, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne p1, p2, :cond_3

    const/4 v0, 0x0

    :cond_3
    return-object v0
.end method

.method public bridge synthetic getCell(I)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getCell(I)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getCell(ILorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)Lorg/apache/poi/ss/usermodel/Cell;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getCell(ILorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)Lorg/apache/poi/hssf/usermodel/HSSFCell;

    move-result-object p1

    return-object p1
.end method

.method public getFirstCellNum()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RowRecord;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RowRecord;->getFirstCol()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getHeight()S
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RowRecord;->getHeight()S

    move-result v0

    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/usermodel/HSSFSheet;->getSheet()Lorg/apache/poi/hssf/model/InternalSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/hssf/model/InternalSheet;->getDefaultRowHeight()S

    move-result v0

    goto :goto_0

    :cond_0
    and-int/lit16 v0, v0, 0x7fff

    int-to-short v0, v0

    :goto_0
    return v0
.end method

.method public getHeightInPoints()F
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getHeight()S

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41a00000    # 20.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getLastCellNum()S
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RowRecord;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RowRecord;->getLastCol()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getOutlineLevel()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RowRecord;->getOutlineLevel()S

    move-result v0

    return v0
.end method

.method public getPhysicalNumberOfCells()I
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public getRowNum()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->rowNum:I

    return v0
.end method

.method public getRowRecord()Lorg/apache/poi/hssf/record/RowRecord;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    return-object v0
.end method

.method public getRowStyle()Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->isFormatted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RowRecord;->getXFIndex()S

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-virtual {v1}, Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;->getWorkbook()Lorg/apache/poi/hssf/model/InternalWorkbook;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/poi/hssf/model/InternalWorkbook;->getExFormatAt(I)Lorg/apache/poi/hssf/record/ExtendedFormatRecord;

    move-result-object v1

    new-instance v2, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    iget-object v3, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->book:Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;

    invoke-direct {v2, v0, v1, v3}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;-><init>(SLorg/apache/poi/hssf/record/ExtendedFormatRecord;Lorg/apache/poi/hssf/usermodel/HSSFWorkbook;)V

    return-object v2
.end method

.method public bridge synthetic getRowStyle()Lorg/apache/poi/ss/usermodel/CellStyle;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getRowStyle()Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    move-result-object v0

    return-object v0
.end method

.method public getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->sheet:Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    return-object v0
.end method

.method public bridge synthetic getSheet()Lorg/apache/poi/ss/usermodel/Sheet;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->getSheet()Lorg/apache/poi/hssf/usermodel/HSSFSheet;

    move-result-object v0

    return-object v0
.end method

.method public getZeroHeight()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RowRecord;->getZeroHeight()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isFormatted()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v0}, Lorg/apache/poi/hssf/record/RowRecord;->getFormatted()Z

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

    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cellIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public moveCell(Lorg/apache/poi/hssf/usermodel/HSSFCell;S)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-le v1, p2, :cond_1

    .line 5
    .line 6
    aget-object v1, v0, p2

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string v0, "Asked to move cell to column "

    .line 14
    .line 15
    const-string v1, " but there\'s already a cell there"

    .line 16
    .line 17
    invoke-static {p2, v0, v1}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->getColumnIndex()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    aget-object v0, v0, v1

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->removeCell(Lorg/apache/poi/hssf/usermodel/HSSFCell;Z)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Lorg/apache/poi/hssf/usermodel/HSSFCell;->updateCellNum(S)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->addCell(Lorg/apache/poi/hssf/usermodel/HSSFCell;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    const-string p2, "Asked to move a cell, but it didn\'t belong to our row"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1
.end method

.method public removeAllCells()V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->removeCell(Lorg/apache/poi/hssf/usermodel/HSSFCell;Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget v0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->INITIAL_CAPACITY:I

    new-array v0, v0, [Lorg/apache/poi/hssf/usermodel/HSSFCell;

    iput-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->cells:[Lorg/apache/poi/hssf/usermodel/HSSFCell;

    return-void
.end method

.method public removeCell(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 1

    .line 2
    if-eqz p1, :cond_0

    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFCell;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->removeCell(Lorg/apache/poi/hssf/usermodel/HSSFCell;Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cell must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHeight(S)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    const/16 v0, -0x7f01

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RowRecord;->setHeight(S)V

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RowRecord;->setBadFontHeight(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/RowRecord;->setBadFontHeight(Z)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/RowRecord;->setHeight(S)V

    :goto_0
    return-void
.end method

.method public setHeightInPoints(F)V
    .locals 2

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    const/16 v0, -0x7f01

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RowRecord;->setHeight(S)V

    iget-object p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/poi/hssf/record/RowRecord;->setBadFontHeight(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/RowRecord;->setBadFontHeight(Z)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    int-to-short p1, p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/RowRecord;->setHeight(S)V

    :goto_0
    return-void
.end method

.method public setRowNum(I)V
    .locals 5

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
    if-ltz p1, :cond_1

    .line 8
    .line 9
    if-gt p1, v0, :cond_1

    .line 10
    .line 11
    iput p1, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->rowNum:I

    .line 12
    .line 13
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/RowRecord;->setRowNumber(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void

    .line 21
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    const-string v2, "Invalid row number ("

    .line 24
    .line 25
    const-string v3, ") outside allowable range (0.."

    .line 26
    .line 27
    const-string v4, ")"

    .line 28
    .line 29
    invoke-static {v2, p1, v3, v0, v4}, Ls/a;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v1
.end method

.method public setRowStyle(Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/poi/hssf/record/RowRecord;->setFormatted(Z)V

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;->getIndex()S

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/RowRecord;->setXFIndex(S)V

    return-void
.end method

.method public setRowStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V
    .locals 0

    .line 2
    check-cast p1, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;

    invoke-virtual {p0, p1}, Lorg/apache/poi/hssf/usermodel/HSSFRow;->setRowStyle(Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;)V

    return-void
.end method

.method public setZeroHeight(Z)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/HSSFRow;->row:Lorg/apache/poi/hssf/record/RowRecord;

    invoke-virtual {v0, p1}, Lorg/apache/poi/hssf/record/RowRecord;->setZeroHeight(Z)V

    return-void
.end method
