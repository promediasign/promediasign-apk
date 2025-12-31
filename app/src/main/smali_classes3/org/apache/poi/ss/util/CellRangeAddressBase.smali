.class public abstract Lorg/apache/poi/ss/util/CellRangeAddressBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/util/CellRangeAddressBase$CellPosition;
    }
.end annotation


# instance fields
.field private _firstCol:I

.field private _firstRow:I

.field private _lastCol:I

.field private _lastRow:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstRow:I

    iput p2, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastRow:I

    iput p3, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstCol:I

    iput p4, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastCol:I

    return-void
.end method

.method private static validateColumn(ILorg/apache/poi/ss/SpreadsheetVersion;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-gt p0, p1, :cond_1

    .line 6
    .line 7
    if-ltz p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string p1, "Minimum column number is 0"

    .line 13
    .line 14
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p0

    .line 18
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const-string v0, "Maximum column number is "

    .line 21
    .line 22
    invoke-static {p1, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0
.end method

.method private static validateRow(ILorg/apache/poi/ss/SpreadsheetVersion;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-gt p0, p1, :cond_1

    .line 6
    .line 7
    if-ltz p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string p1, "Minumum row number is 0"

    .line 13
    .line 14
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p0

    .line 18
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const-string v0, "Maximum row number is "

    .line 21
    .line 22
    invoke-static {p1, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0
.end method


# virtual methods
.method public containsColumn(I)Z
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstCol:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastCol:I

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsRow(I)Z
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstRow:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastRow:I

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/poi/ss/util/CellRangeAddressBase;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/ss/util/CellRangeAddressBase;

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getMinRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getMinRow()I

    move-result v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getMaxRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getMaxRow()I

    move-result v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getMinColumn()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getMinColumn()I

    move-result v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getMaxColumn()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getMaxColumn()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final getFirstColumn()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstCol:I

    return v0
.end method

.method public final getFirstRow()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstRow:I

    return v0
.end method

.method public final getLastColumn()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastCol:I

    return v0
.end method

.method public final getLastRow()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastRow:I

    return v0
.end method

.method public getMaxColumn()I
    .locals 2

    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstCol:I

    iget v1, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastCol:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getMaxRow()I
    .locals 2

    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstRow:I

    iget v1, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastRow:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getMinColumn()I
    .locals 2

    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstCol:I

    iget v1, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastCol:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getMinRow()I
    .locals 2

    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstRow:I

    iget v1, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastRow:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getNumberOfCells()I
    .locals 3

    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastRow:I

    iget v1, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstRow:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastCol:I

    iget v2, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstCol:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int v1, v1, v0

    return v1
.end method

.method public getPosition(II)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Set<",
            "Lorg/apache/poi/ss/util/CellRangeAddressBase$CellPosition;",
            ">;"
        }
    .end annotation

    const-class v0, Lorg/apache/poi/ss/util/CellRangeAddressBase$CellPosition;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v1

    if-le p1, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result v1

    if-le p2, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result v1

    if-ge p2, v1, :cond_0

    sget-object p1, Lorg/apache/poi/ss/util/CellRangeAddressBase$CellPosition;->INSIDE:Lorg/apache/poi/ss/util/CellRangeAddressBase$CellPosition;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstRow()I

    move-result v1

    if-ne p1, v1, :cond_1

    sget-object v1, Lorg/apache/poi/ss/util/CellRangeAddressBase$CellPosition;->TOP:Lorg/apache/poi/ss/util/CellRangeAddressBase$CellPosition;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastRow()I

    move-result v1

    if-ne p1, v1, :cond_2

    sget-object p1, Lorg/apache/poi/ss/util/CellRangeAddressBase$CellPosition;->BOTTOM:Lorg/apache/poi/ss/util/CellRangeAddressBase$CellPosition;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getFirstColumn()I

    move-result p1

    if-ne p2, p1, :cond_3

    sget-object p1, Lorg/apache/poi/ss/util/CellRangeAddressBase$CellPosition;->LEFT:Lorg/apache/poi/ss/util/CellRangeAddressBase$CellPosition;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getLastColumn()I

    move-result p1

    if-ne p2, p1, :cond_4

    sget-object p1, Lorg/apache/poi/ss/util/CellRangeAddressBase$CellPosition;->RIGHT:Lorg/apache/poi/ss/util/CellRangeAddressBase$CellPosition;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getMinColumn()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getMaxColumn()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getMinRow()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->getMaxRow()I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    return v0
.end method

.method public intersects(Lorg/apache/poi/ss/util/CellRangeAddressBase;)Z
    .locals 2

    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstRow:I

    iget v1, p1, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastRow:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstCol:I

    iget v1, p1, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastCol:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstRow:I

    iget v1, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastRow:I

    if-gt v0, v1, :cond_0

    iget p1, p1, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstCol:I

    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastCol:I

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isFullColumnRange()Z
    .locals 2

    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstRow:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastRow:I

    sget-object v1, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstRow:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastRow:I

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isFullRowRange()Z
    .locals 2

    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstCol:I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastCol:I

    sget-object v1, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnIndex()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstCol:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastCol:I

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInRange(II)Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstRow:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastRow:I

    if-gt p1, v0, :cond_0

    iget p1, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstCol:I

    if-gt p1, p2, :cond_0

    iget p1, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastCol:I

    if-gt p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isInRange(Lorg/apache/poi/ss/usermodel/Cell;)Z
    .locals 1

    .line 2
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getRowIndex()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->isInRange(II)Z

    move-result p1

    return p1
.end method

.method public isInRange(Lorg/apache/poi/ss/util/CellReference;)Z
    .locals 1

    .line 3
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->isInRange(II)Z

    move-result p1

    return p1
.end method

.method public final setFirstColumn(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstCol:I

    return-void
.end method

.method public final setFirstRow(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstRow:I

    return-void
.end method

.method public final setLastColumn(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastCol:I

    return-void
.end method

.method public final setLastRow(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastRow:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    iget v1, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstRow:I

    iget v2, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstCol:I

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    iget v2, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastRow:I

    iget v3, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastCol:I

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate(Lorg/apache/poi/ss/SpreadsheetVersion;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstRow:I

    invoke-static {v0, p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->validateRow(ILorg/apache/poi/ss/SpreadsheetVersion;)V

    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastRow:I

    invoke-static {v0, p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->validateRow(ILorg/apache/poi/ss/SpreadsheetVersion;)V

    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_firstCol:I

    invoke-static {v0, p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->validateColumn(ILorg/apache/poi/ss/SpreadsheetVersion;)V

    iget v0, p0, Lorg/apache/poi/ss/util/CellRangeAddressBase;->_lastCol:I

    invoke-static {v0, p1}, Lorg/apache/poi/ss/util/CellRangeAddressBase;->validateColumn(ILorg/apache/poi/ss/SpreadsheetVersion;)V

    return-void
.end method
