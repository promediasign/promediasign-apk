.class public Lorg/apache/poi/ss/util/CellReference;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/util/CellReference$CellRefParts;,
        Lorg/apache/poi/ss/util/CellReference$NameType;
    }
.end annotation


# static fields
.field private static final CELL_REF_PATTERN:Ljava/util/regex/Pattern;

.field private static final COLUMN_REF_PATTERN:Ljava/util/regex/Pattern;

.field private static final NAMED_RANGE_NAME_PATTERN:Ljava/util/regex/Pattern;

.field private static final ROW_REF_PATTERN:Ljava/util/regex/Pattern;

.field private static final STRICTLY_CELL_REF_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final _colIndex:I

.field private final _isColAbs:Z

.field private final _isRowAbs:Z

.field private final _rowIndex:I

.field private final _sheetName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "(\\$?[A-Z]+)?(\\$?[0-9]+)?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/util/CellReference;->CELL_REF_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "\\$?([A-Z]+)\\$?([0-9]+)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/util/CellReference;->STRICTLY_CELL_REF_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "\\$?([A-Z]+)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/util/CellReference;->COLUMN_REF_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "\\$?([0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/util/CellReference;->ROW_REF_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "[_A-Z][_.A-Z0-9]*"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/util/CellReference;->NAMED_RANGE_NAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    return-void
.end method

.method public constructor <init>(IIZZ)V
    .locals 6

    .line 2
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/util/CellReference;-><init>(Ljava/lang/String;IIZZ)V

    return-void
.end method

.method public constructor <init>(IS)V
    .locals 1

    .line 3
    const v0, 0xffff

    and-int/2addr p2, v0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "#REF!"

    invoke-static {p1, v0}, Lorg/apache/poi/util/StringUtil;->endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lorg/apache/poi/ss/util/CellReference;->separateRefParts(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellReference$CellRefParts;

    move-result-object p1

    iget-object v0, p1, Lorg/apache/poi/ss/util/CellReference$CellRefParts;->sheetName:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/ss/util/CellReference;->_sheetName:Ljava/lang/String;

    iget-object v0, p1, Lorg/apache/poi/ss/util/CellReference$CellRefParts;->colRef:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x24

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/apache/poi/ss/util/CellReference;->_isColAbs:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v5, -0x1

    if-nez v1, :cond_2

    iput v5, p0, Lorg/apache/poi/ss/util/CellReference;->_colIndex:I

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lorg/apache/poi/ss/util/CellReference;->convertColStringToIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/util/CellReference;->_colIndex:I

    :goto_1
    iget-object p1, p1, Lorg/apache/poi/ss/util/CellReference$CellRefParts;->rowRef:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_3

    const/4 v3, 0x1

    :cond_3
    iput-boolean v3, p0, Lorg/apache/poi/ss/util/CellReference;->_isRowAbs:Z

    if-eqz v3, :cond_4

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    iput v5, p0, Lorg/apache/poi/ss/util/CellReference;->_rowIndex:I

    goto :goto_2

    :cond_5
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sub-int/2addr p1, v4

    iput p1, p0, Lorg/apache/poi/ss/util/CellReference;->_rowIndex:I

    :goto_2
    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cell reference invalid: "

    .line 4
    invoke-static {v1, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;IIZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    if-lt p2, v0, :cond_1

    if-lt p3, v0, :cond_0

    iput-object p1, p0, Lorg/apache/poi/ss/util/CellReference;->_sheetName:Ljava/lang/String;

    iput p2, p0, Lorg/apache/poi/ss/util/CellReference;->_rowIndex:I

    iput p3, p0, Lorg/apache/poi/ss/util/CellReference;->_colIndex:I

    iput-boolean p4, p0, Lorg/apache/poi/ss/util/CellReference;->_isRowAbs:Z

    iput-boolean p5, p0, Lorg/apache/poi/ss/util/CellReference;->_isColAbs:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "column index may not be negative, but had "

    .line 10
    invoke-static {p3, p2}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "row index may not be negative, but had "

    .line 12
    invoke-static {p2, p3}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 2

    .line 18
    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getRowIndex()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/poi/ss/usermodel/Cell;->getColumnIndex()I

    move-result p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v1}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    return-void
.end method

.method public static cellReferenceIsWithinRange(Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Z
    .locals 0

    invoke-static {p0, p2}, Lorg/apache/poi/ss/util/CellReference;->isColumnWithinRange(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1, p2}, Lorg/apache/poi/ss/util/CellReference;->isRowWithinRange(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Z

    move-result p0

    return p0
.end method

.method public static classifyCellReference(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/util/CellReference$NameType;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_6

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x24

    if-eq v2, v3, :cond_1

    const/16 v4, 0x2e

    if-eq v2, v4, :cond_1

    const/16 v4, 0x5f

    if-eq v2, v4, :cond_1

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid first char ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, ") of cell reference or named range.  Letter expected"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0, p1}, Lorg/apache/poi/ss/util/CellReference;->validateNamedRangeName(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/util/CellReference$NameType;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object v0, Lorg/apache/poi/ss/util/CellReference;->STRICTLY_CELL_REF_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p0, p1}, Lorg/apache/poi/ss/util/CellReference;->validateNamedRangeName(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/util/CellReference$NameType;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lorg/apache/poi/ss/util/CellReference;->cellReferenceIsWithinRange(Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p0, Lorg/apache/poi/ss/util/CellReference$NameType;->CELL:Lorg/apache/poi/ss/util/CellReference$NameType;

    return-object p0

    :cond_4
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_5

    sget-object p0, Lorg/apache/poi/ss/util/CellReference$NameType;->BAD_CELL_OR_NAMED_RANGE:Lorg/apache/poi/ss/util/CellReference$NameType;

    return-object p0

    :cond_5
    sget-object p0, Lorg/apache/poi/ss/util/CellReference$NameType;->NAMED_RANGE:Lorg/apache/poi/ss/util/CellReference$NameType;

    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty string not allowed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convertColStringToIndex(Ljava/lang/String;)I
    .locals 5

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    array-length v3, v0

    .line 14
    if-ge v1, v3, :cond_2

    .line 15
    .line 16
    aget-char v3, v0, v1

    .line 17
    .line 18
    const/16 v4, 0x24

    .line 19
    .line 20
    if-ne v3, v4, :cond_1

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    const-string v1, "Bad col ref format \'"

    .line 28
    .line 29
    const-string v2, "\'"

    .line 30
    .line 31
    invoke-static {v1, p0, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0

    .line 39
    :cond_1
    mul-int/lit8 v2, v2, 0x1a

    .line 40
    .line 41
    add-int/lit8 v3, v3, -0x40

    .line 42
    .line 43
    add-int/2addr v3, v2

    .line 44
    move v2, v3

    .line 45
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 49
    .line 50
    return v2
.end method

.method public static convertNumToColString(I)Ljava/lang/String;
    .locals 3

    add-int/lit8 p0, p0, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    if-lez p0, :cond_1

    rem-int/lit8 v1, p0, 0x1a

    const/16 v2, 0x1a

    if-nez v1, :cond_0

    const/16 v1, 0x1a

    :cond_0
    sub-int/2addr p0, v1

    div-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x40

    int-to-char v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isColumnWithinRange(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Z
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastColumnName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-le v1, v0, :cond_0

    return v2

    :cond_0
    if-ne v1, v0, :cond_1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isPartAbsolute(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v1, 0x24

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isRowWithinRange(ILorg/apache/poi/ss/SpreadsheetVersion;)Z
    .locals 0

    .line 1
    if-ltz p0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/ss/SpreadsheetVersion;->getLastRowIndex()I

    move-result p1

    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isRowWithinRange(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Z
    .locals 0

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0, p1}, Lorg/apache/poi/ss/util/CellReference;->isRowWithinRange(ILorg/apache/poi/ss/SpreadsheetVersion;)Z

    move-result p0

    return p0
.end method

.method private static parseSheetName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const-string v2, ")"

    .line 11
    .line 12
    const/16 v3, 0x27

    .line 13
    .line 14
    if-ne v1, v3, :cond_5

    .line 15
    .line 16
    add-int/lit8 v0, p1, -0x1

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-ne v1, v3, :cond_4

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuffer;

    .line 25
    .line 26
    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    const/4 v4, 0x1

    .line 31
    :goto_0
    if-ge v4, v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eq v5, v3, :cond_1

    .line 38
    .line 39
    :goto_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 44
    .line 45
    if-ge v4, v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-ne v6, v3, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :goto_2
    add-int/2addr v4, p1

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    const-string v0, "Bad sheet name quote escaping: ("

    .line 59
    .line 60
    invoke-static {v0, p0, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1

    .line 68
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0

    .line 73
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 74
    .line 75
    const-string v0, "Mismatched quotes: ("

    .line 76
    .line 77
    invoke-static {v0, p0, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p1

    .line 85
    :cond_5
    const-string v1, " "

    .line 86
    .line 87
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-nez v1, :cond_6

    .line 92
    .line 93
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0

    .line 98
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 99
    .line 100
    const-string v0, "Sheet names containing spaces must be quoted: ("

    .line 101
    .line 102
    invoke-static {v0, p0, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p1
.end method

.method private static separateRefParts(Ljava/lang/String;)Lorg/apache/poi/ss/util/CellReference$CellRefParts;
    .locals 4

    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-static {p0, v0}, Lorg/apache/poi/ss/util/CellReference;->parseSheetName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lorg/apache/poi/ss/util/CellReference;->CELL_REF_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/apache/poi/ss/util/CellReference$CellRefParts;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, p0, v3}, Lorg/apache/poi/ss/util/CellReference$CellRefParts;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/poi/ss/util/CellReference$1;)V

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid CellReference: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateNamedRangeName(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/util/CellReference$NameType;
    .locals 3

    sget-object v0, Lorg/apache/poi/ss/util/CellReference;->COLUMN_REF_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/poi/ss/util/CellReference;->isColumnWithinRange(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lorg/apache/poi/ss/util/CellReference$NameType;->COLUMN:Lorg/apache/poi/ss/util/CellReference$NameType;

    return-object p0

    :cond_0
    sget-object v0, Lorg/apache/poi/ss/util/CellReference;->ROW_REF_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/poi/ss/util/CellReference;->isRowWithinRange(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p0, Lorg/apache/poi/ss/util/CellReference$NameType;->ROW:Lorg/apache/poi/ss/util/CellReference$NameType;

    return-object p0

    :cond_1
    sget-object p1, Lorg/apache/poi/ss/util/CellReference;->NAMED_RANGE_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lorg/apache/poi/ss/util/CellReference$NameType;->BAD_CELL_OR_NAMED_RANGE:Lorg/apache/poi/ss/util/CellReference$NameType;

    return-object p0

    :cond_2
    sget-object p0, Lorg/apache/poi/ss/util/CellReference$NameType;->NAMED_RANGE:Lorg/apache/poi/ss/util/CellReference$NameType;

    return-object p0
.end method


# virtual methods
.method public appendCellReference(Ljava/lang/StringBuffer;)V
    .locals 3

    iget v0, p0, Lorg/apache/poi/ss/util/CellReference;->_colIndex:I

    const/16 v1, 0x24

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget-boolean v0, p0, Lorg/apache/poi/ss/util/CellReference;->_isColAbs:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    iget v0, p0, Lorg/apache/poi/ss/util/CellReference;->_colIndex:I

    invoke-static {v0}, Lorg/apache/poi/ss/util/CellReference;->convertNumToColString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget v0, p0, Lorg/apache/poi/ss/util/CellReference;->_rowIndex:I

    if-eq v0, v2, :cond_3

    iget-boolean v0, p0, Lorg/apache/poi/ss/util/CellReference;->_isRowAbs:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    iget v0, p0, Lorg/apache/poi/ss/util/CellReference;->_rowIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_3
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/poi/ss/util/CellReference;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/apache/poi/ss/util/CellReference;

    iget v1, p0, Lorg/apache/poi/ss/util/CellReference;->_rowIndex:I

    iget v3, p1, Lorg/apache/poi/ss/util/CellReference;->_rowIndex:I

    if-ne v1, v3, :cond_3

    iget v1, p0, Lorg/apache/poi/ss/util/CellReference;->_colIndex:I

    iget v3, p1, Lorg/apache/poi/ss/util/CellReference;->_colIndex:I

    if-ne v1, v3, :cond_3

    iget-boolean v1, p0, Lorg/apache/poi/ss/util/CellReference;->_isRowAbs:Z

    iget-boolean v3, p1, Lorg/apache/poi/ss/util/CellReference;->_isRowAbs:Z

    if-ne v1, v3, :cond_3

    iget-boolean v1, p0, Lorg/apache/poi/ss/util/CellReference;->_isColAbs:Z

    iget-boolean v3, p1, Lorg/apache/poi/ss/util/CellReference;->_isColAbs:Z

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lorg/apache/poi/ss/util/CellReference;->_sheetName:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/poi/ss/util/CellReference;->_sheetName:Ljava/lang/String;

    if-nez v1, :cond_2

    if-nez p1, :cond_3

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public formatAsString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v1, p0, Lorg/apache/poi/ss/util/CellReference;->_sheetName:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/ss/util/CellReference;->appendCellReference(Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellRefParts()[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/ss/util/CellReference;->_sheetName:Ljava/lang/String;

    iget v1, p0, Lorg/apache/poi/ss/util/CellReference;->_rowIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/apache/poi/ss/util/CellReference;->_colIndex:I

    invoke-static {v2}, Lorg/apache/poi/ss/util/CellReference;->convertNumToColString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCol()S
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/util/CellReference;->_colIndex:I

    int-to-short v0, v0

    return v0
.end method

.method public getRow()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/util/CellReference;->_rowIndex:I

    return v0
.end method

.method public getSheetName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/util/CellReference;->_sheetName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x20f

    iget v1, p0, Lorg/apache/poi/ss/util/CellReference;->_rowIndex:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/apache/poi/ss/util/CellReference;->_colIndex:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/apache/poi/ss/util/CellReference;->_isRowAbs:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/apache/poi/ss/util/CellReference;->_isColAbs:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/apache/poi/ss/util/CellReference;->_sheetName:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public isColAbsolute()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/ss/util/CellReference;->_isColAbs:Z

    return v0
.end method

.method public isRowAbsolute()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/ss/util/CellReference;->_isRowAbs:Z

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

    invoke-virtual {p0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
