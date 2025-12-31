.class public Lorg/apache/poi/ss/util/AreaReference;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_SPREADSHEET_VERSION:Lorg/apache/poi/ss/SpreadsheetVersion;


# instance fields
.field private final _firstCell:Lorg/apache/poi/ss/util/CellReference;

.field private final _isSingleCell:Z

.field private final _lastCell:Lorg/apache/poi/ss/util/CellReference;

.field private final _version:Lorg/apache/poi/ss/SpreadsheetVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    sput-object v0, Lorg/apache/poi/ss/util/AreaReference;->DEFAULT_SPREADSHEET_VERSION:Lorg/apache/poi/ss/SpreadsheetVersion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/apache/poi/ss/util/AreaReference;->DEFAULT_SPREADSHEET_VERSION:Lorg/apache/poi/ss/SpreadsheetVersion;

    :goto_0
    iput-object p2, p0, Lorg/apache/poi/ss/util/AreaReference;->_version:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-static {p1}, Lorg/apache/poi/ss/util/AreaReference;->isContiguous(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {p1}, Lorg/apache/poi/ss/util/AreaReference;->separateAreaRefs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aget-object v1, p2, v0

    array-length v2, p2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    new-instance p1, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {p1, v1}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    iput-object p1, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    iput-boolean v3, p0, Lorg/apache/poi/ss/util/AreaReference;->_isSingleCell:Z

    return-void

    :cond_1
    array-length v2, p2

    const/4 v4, 0x2

    const-string v5, "\'"

    const-string v6, "Bad area ref \'"

    if-ne v2, v4, :cond_4

    aget-object p2, p2, v3

    invoke-static {v1}, Lorg/apache/poi/ss/util/AreaReference;->isPlainColumn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p2}, Lorg/apache/poi/ss/util/AreaReference;->isPlainColumn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lorg/apache/poi/ss/util/CellReference;->isPartAbsolute(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p2}, Lorg/apache/poi/ss/util/CellReference;->isPartAbsolute(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1}, Lorg/apache/poi/ss/util/CellReference;->convertColStringToIndex(Ljava/lang/String;)I

    move-result v1

    invoke-static {p2}, Lorg/apache/poi/ss/util/CellReference;->convertColStringToIndex(Ljava/lang/String;)I

    move-result p2

    new-instance v4, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v4, v0, v1, v3, p1}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    iput-object v4, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    new-instance p1, Lorg/apache/poi/ss/util/CellReference;

    const v1, 0xffff

    invoke-direct {p1, v1, p2, v3, v2}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    iput-object p1, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    iput-boolean v0, p0, Lorg/apache/poi/ss/util/AreaReference;->_isSingleCell:Z

    goto :goto_1

    :cond_2
    new-instance p2, Ljava/lang/RuntimeException;

    .line 1
    invoke-static {v6, p1, v5}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p1, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {p1, v1}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    new-instance p1, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {p1, p2}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/poi/ss/util/AreaReference;->_isSingleCell:Z

    :goto_1
    return-void

    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 3
    invoke-static {v6, p1, v5}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "References passed to the AreaReference must be contiguous, use generateContiguous(ref) if you have non-contiguous references"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.19"
    .end annotation

    .line 10
    sget-object v0, Lorg/apache/poi/ss/util/AreaReference;->DEFAULT_SPREADSHEET_VERSION:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/SpreadsheetVersion;)V
    .locals 8

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p3, Lorg/apache/poi/ss/util/AreaReference;->DEFAULT_SPREADSHEET_VERSION:Lorg/apache/poi/ss/SpreadsheetVersion;

    :goto_0
    iput-object p3, p0, Lorg/apache/poi/ss/util/AreaReference;->_version:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result p3

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le p3, v0, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v3

    if-le v0, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-nez p3, :cond_4

    if-eqz v1, :cond_3

    goto :goto_4

    :cond_3
    iput-object p1, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    :goto_3
    iput-object p2, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    goto :goto_7

    :cond_4
    :goto_4
    if-eqz p3, :cond_5

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result p3

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->isRowAbsolute()Z

    move-result v0

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->isRowAbsolute()Z

    move-result v4

    goto :goto_5

    :cond_5
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result p3

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->isRowAbsolute()Z

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v3

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->isRowAbsolute()Z

    move-result v4

    :goto_5
    if-eqz v1, :cond_6

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v1

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->isColAbsolute()Z

    move-result p2

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v5

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->isColAbsolute()Z

    move-result p1

    goto :goto_6

    :cond_6
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->isColAbsolute()Z

    move-result p1

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v5

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->isColAbsolute()Z

    move-result p2

    move v7, p2

    move p2, p1

    move p1, v7

    :goto_6
    new-instance v6, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v6, p3, v1, v0, p2}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    iput-object v6, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    new-instance p2, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {p2, v3, v5, v4, p1}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    goto :goto_3

    :goto_7
    iput-boolean v2, p0, Lorg/apache/poi/ss/util/AreaReference;->_isSingleCell:Z

    return-void
.end method

.method public static generateContiguous(Ljava/lang/String;)[Lorg/apache/poi/ss/util/AreaReference;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.19"
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/poi/ss/util/AreaReference;->DEFAULT_SPREADSHEET_VERSION:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-static {v0, p0}, Lorg/apache/poi/ss/util/AreaReference;->generateContiguous(Lorg/apache/poi/ss/SpreadsheetVersion;Ljava/lang/String;)[Lorg/apache/poi/ss/util/AreaReference;

    move-result-object p0

    return-object p0
.end method

.method public static generateContiguous(Lorg/apache/poi/ss/SpreadsheetVersion;Ljava/lang/String;)[Lorg/apache/poi/ss/util/AreaReference;
    .locals 3

    .line 2
    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/poi/ss/util/AreaReference;->DEFAULT_SPREADSHEET_VERSION:Lorg/apache/poi/ss/SpreadsheetVersion;

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lorg/apache/poi/ss/util/AreaReference;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2, p0}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lorg/apache/poi/ss/util/AreaReference;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/poi/ss/util/AreaReference;

    return-object p0
.end method

.method public static getWholeColumn(Lorg/apache/poi/ss/SpreadsheetVersion;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/AreaReference;
    .locals 2

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/poi/ss/util/AreaReference;->DEFAULT_SPREADSHEET_VERSION:Lorg/apache/poi/ss/SpreadsheetVersion;

    :cond_0
    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "$1:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "$"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxRows()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    return-object v0
.end method

.method public static getWholeRow(Lorg/apache/poi/ss/SpreadsheetVersion;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/AreaReference;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lorg/apache/poi/ss/util/AreaReference;->DEFAULT_SPREADSHEET_VERSION:Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 4
    .line 5
    :cond_0
    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    .line 6
    .line 7
    const-string v1, "$A"

    .line 8
    .line 9
    const-string v2, ":$"

    .line 10
    .line 11
    invoke-static {v1, p1, v2}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {v0, p1, p0}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method public static isContiguous(Ljava/lang/String;)Z
    .locals 2

    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static isPlainColumn(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x24

    if-ne v2, v3, :cond_0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v3, 0x41

    if-lt v2, v3, :cond_2

    const/16 v3, 0x5a

    if-le v2, v3, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_2
    const/4 p0, 0x0

    return p0

    :cond_3
    return v1
.end method

.method public static isWholeColumnReference(Lorg/apache/poi/ss/SpreadsheetVersion;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;)Z
    .locals 1

    .line 2
    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/poi/ss/util/AreaReference;->DEFAULT_SPREADSHEET_VERSION:Lorg/apache/poi/ss/SpreadsheetVersion;

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->isRowAbsolute()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result p1

    invoke-virtual {p0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result p0

    if-ne p1, p0, :cond_1

    invoke-virtual {p2}, Lorg/apache/poi/ss/util/CellReference;->isRowAbsolute()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static separateAreaRefs(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    :goto_0
    const-string v5, "\'"

    .line 10
    .line 11
    const/4 v6, 0x1

    .line 12
    if-ge v3, v0, :cond_7

    .line 13
    .line 14
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 15
    .line 16
    .line 17
    move-result v7

    .line 18
    const/16 v8, 0x27

    .line 19
    .line 20
    if-eq v7, v8, :cond_2

    .line 21
    .line 22
    const/16 v8, 0x3a

    .line 23
    .line 24
    if-eq v7, v8, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    if-nez v4, :cond_5

    .line 28
    .line 29
    if-gez v1, :cond_1

    .line 30
    .line 31
    move v1, v3

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    const-string v1, "More than one cell delimiter \':\' appears in area reference \'"

    .line 36
    .line 37
    invoke-static {v1, p0, v5}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :cond_2
    if-nez v4, :cond_3

    .line 46
    .line 47
    const/4 v4, 0x1

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    add-int/lit8 v5, v0, -0x1

    .line 50
    .line 51
    if-ge v3, v5, :cond_6

    .line 52
    .line 53
    add-int/lit8 v5, v3, 0x1

    .line 54
    .line 55
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-ne v7, v8, :cond_4

    .line 60
    .line 61
    move v3, v5

    .line 62
    goto :goto_1

    .line 63
    :cond_4
    const/4 v4, 0x0

    .line 64
    :cond_5
    :goto_1
    add-int/2addr v3, v6

    .line 65
    goto :goto_0

    .line 66
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    const-string v1, "Area reference \'"

    .line 69
    .line 70
    const-string v2, "\' ends with special name delimiter \'\'\'"

    .line 71
    .line 72
    invoke-static {v1, p0, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v0

    .line 80
    :cond_7
    if-gez v1, :cond_8

    .line 81
    .line 82
    filled-new-array {p0}, [Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0

    .line 87
    :cond_8
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    add-int/2addr v1, v6

    .line 92
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    const/16 v3, 0x21

    .line 97
    .line 98
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-gez v4, :cond_a

    .line 103
    .line 104
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    if-gez p0, :cond_9

    .line 109
    .line 110
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    return-object p0

    .line 115
    :cond_9
    add-int/2addr p0, v6

    .line 116
    invoke-virtual {v0, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-static {p0, v1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    filled-new-array {v0, p0}, [Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    return-object p0

    .line 129
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    .line 130
    .line 131
    const-string v1, "Unexpected ! in second cell reference of \'"

    .line 132
    .line 133
    invoke-static {v1, p0, v5}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw v0
.end method


# virtual methods
.method public formatAsString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/AreaReference;->isWholeColumnReference()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/ss/util/CellReference;->convertNumToColString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/ss/util/CellReference;->convertNumToColString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_isSingleCell:Z

    if-nez v1, :cond_2

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getSheetName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v1, v0}, Lorg/apache/poi/ss/util/CellReference;->appendCellReference(Ljava/lang/StringBuffer;)V

    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllReferencedCells()[Lorg/apache/poi/ss/util/CellReference;
    .locals 15

    const/4 v0, 0x1

    iget-boolean v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_isSingleCell:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    new-array v0, v0, [Lorg/apache/poi/ss/util/CellReference;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v2}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellReference;->getRow()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v3}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v3

    iget-object v4, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v4}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v4

    iget-object v5, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellReference;->getCol()S

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v5}, Lorg/apache/poi/ss/util/CellReference;->getSheetName()Ljava/lang/String;

    move-result-object v5

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-gt v1, v2, :cond_2

    move v13, v3

    :goto_1
    if-gt v13, v4, :cond_1

    new-instance v14, Lorg/apache/poi/ss/util/CellReference;

    iget-object v6, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v6}, Lorg/apache/poi/ss/util/CellReference;->isRowAbsolute()Z

    move-result v10

    iget-object v6, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v6}, Lorg/apache/poi/ss/util/CellReference;->isColAbsolute()Z

    move-result v11

    move-object v6, v14

    move-object v7, v5

    move v8, v1

    move v9, v13

    invoke-direct/range {v6 .. v11}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v13, v0

    goto :goto_1

    :cond_1
    add-int/2addr v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/poi/ss/util/CellReference;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/util/CellReference;

    return-object v0
.end method

.method public getFirstCell()Lorg/apache/poi/ss/util/CellReference;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    return-object v0
.end method

.method public getLastCell()Lorg/apache/poi/ss/util/CellReference;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    return-object v0
.end method

.method public isSingleCell()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/ss/util/AreaReference;->_isSingleCell:Z

    return v0
.end method

.method public isWholeColumnReference()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/poi/ss/util/AreaReference;->_version:Lorg/apache/poi/ss/SpreadsheetVersion;

    iget-object v1, p0, Lorg/apache/poi/ss/util/AreaReference;->_firstCell:Lorg/apache/poi/ss/util/CellReference;

    iget-object v2, p0, Lorg/apache/poi/ss/util/AreaReference;->_lastCell:Lorg/apache/poi/ss/util/CellReference;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/util/AreaReference;->isWholeColumnReference(Lorg/apache/poi/ss/SpreadsheetVersion;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/AreaReference;->formatAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
