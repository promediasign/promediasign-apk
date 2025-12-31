.class public final Lorg/apache/poi/ss/formula/FormulaParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final CELL_REF_PATTERN:Ljava/util/regex/Pattern;

.field private static final log:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final _book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

.field private final _formulaLength:I

.field private final _formulaString:Ljava/lang/String;

.field private _inIntersection:Z

.field private _pointer:I

.field private _rootNode:Lorg/apache/poi/ss/formula/ParseNode;

.field private final _rowIndex:I

.field private final _sheetIndex:I

.field private final _ssVersion:Lorg/apache/poi/ss/SpreadsheetVersion;

.field private look:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/ss/formula/FormulaParser;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/FormulaParser;->log:Lorg/apache/poi/util/POILogger;

    const-string v0, "(\\$?[A-Za-z]+)?(\\$?[0-9]+)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/FormulaParser;->CELL_REF_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    iput-object p2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    if-nez p2, :cond_0

    sget-object p2, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL97:Lorg/apache/poi/ss/SpreadsheetVersion;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_ssVersion:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaLength:I

    iput p3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_sheetIndex:I

    iput p4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_rowIndex:I

    return-void
.end method

.method private Arguments()[Lorg/apache/poi/ss/formula/ParseNode;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x29

    if-ne v1, v2, :cond_0

    sget-object v0, Lorg/apache/poi/ss/formula/ParseNode;->EMPTY_ARRAY:[Lorg/apache/poi/ss/formula/ParseNode;

    return-object v0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    iget v4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {v4}, Lorg/apache/poi/ss/formula/FormulaParser;->isArgumentDelimiter(I)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v3, :cond_1

    new-instance v3, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v4, Lorg/apache/poi/ss/formula/ptg/MissingArgPtg;->instance:Lorg/apache/poi/ss/formula/ptg/Ptg;

    invoke-direct {v3, v4}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    if-ne v3, v2, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/poi/ss/formula/ParseNode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v1

    :cond_2
    const/16 v3, 0x2c

    invoke-direct {p0, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->comparisonExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {v3}, Lorg/apache/poi/ss/formula/FormulaParser;->isArgumentDelimiter(I)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    const-string v0, "\',\' or \')\'"

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private GetChar()V
    .locals 3

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {v0}, Lorg/apache/poi/ss/formula/FormulaParser;->IsWhite(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x20

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_inIntersection:Z

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_inIntersection:Z

    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaLength:I

    if-gt v0, v2, :cond_3

    if-ge v0, v2, :cond_2

    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    goto :goto_1

    :cond_2
    iput v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    iput-boolean v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_inIntersection:Z

    :goto_1
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "too far"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private GetNum()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {v1}, Lorg/apache/poi/ss/formula/FormulaParser;->IsDigit(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private static IsAlpha(I)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x24

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5f

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static IsDigit(I)Z
    .locals 0

    invoke-static {p0}, Ljava/lang/Character;->isDigit(I)Z

    move-result p0

    return p0
.end method

.method private static IsWhite(I)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private Match(I)V
    .locals 2

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private SkipWhite()V
    .locals 1

    :goto_0
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {v0}, Lorg/apache/poi/ss/formula/FormulaParser;->IsWhite(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private Term()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 4

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->powerFactor()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    sget-object v1, Lorg/apache/poi/ss/formula/ptg/DividePtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    goto :goto_1

    :cond_1
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    sget-object v1, Lorg/apache/poi/ss/formula/ptg/MultiplyPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    :goto_1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->powerFactor()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v2

    new-instance v3, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v3, v1, v0, v2}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;Lorg/apache/poi/ss/formula/ParseNode;)V

    move-object v0, v3

    goto :goto_0
.end method

.method private addName(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->createName()Lorg/apache/poi/ss/usermodel/Name;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/apache/poi/ss/usermodel/Name;->setFunction(Z)V

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/usermodel/Name;->setNameName(Ljava/lang/String;)V

    iget p1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_sheetIndex:I

    invoke-interface {v0, p1}, Lorg/apache/poi/ss/usermodel/Name;->setSheetIndex(I)V

    return-void
.end method

.method private additiveExpression()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 4

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->Term()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    sget-object v1, Lorg/apache/poi/ss/formula/ptg/SubtractPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    goto :goto_1

    :cond_1
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    sget-object v1, Lorg/apache/poi/ss/formula/ptg/AddPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    :goto_1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->Term()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v2

    new-instance v3, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v3, v1, v0, v2}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;Lorg/apache/poi/ss/formula/ParseNode;)V

    move-object v0, v3

    goto :goto_0
.end method

.method private static augmentWithMemPtg(Lorg/apache/poi/ss/formula/ParseNode;)Lorg/apache/poi/ss/formula/ParseNode;
    .locals 2

    invoke-static {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->needsMemFunc(Lorg/apache/poi/ss/formula/ParseNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getEncodedSize()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ptg/MemFuncPtg;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getEncodedSize()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ptg/MemAreaPtg;-><init>(I)V

    :goto_0
    new-instance v1, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v1, v0, p0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;)V

    return-object v1
.end method

.method private checkRowLengths([[Ljava/lang/Object;I)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    .line 3
    if-ge v0, v1, :cond_1

    .line 4
    .line 5
    aget-object v1, p1, v0

    .line 6
    .line 7
    array-length v1, v1

    .line 8
    if-ne v1, p2, :cond_0

    .line 9
    .line 10
    add-int/lit8 v0, v0, 0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Lorg/apache/poi/ss/formula/FormulaParseException;

    .line 14
    .line 15
    const-string v2, "Array row "

    .line 16
    .line 17
    const-string v3, " has length "

    .line 18
    .line 19
    const-string v4, " but row 0 has length "

    .line 20
    .line 21
    invoke-static {v2, v0, v3, v1, v4}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-direct {p1, p2}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_1
    return-void
.end method

.method private static checkValidRangeOperand(Ljava/lang/String;ILorg/apache/poi/ss/formula/ParseNode;)V
    .locals 2

    invoke-static {p2}, Lorg/apache/poi/ss/formula/FormulaParser;->isValidRangeOperand(Lorg/apache/poi/ss/formula/ParseNode;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    new-instance p2, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " of the range operator \':\' at position "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a proper reference."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private comparisonExpression()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 4

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->concatExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->getComparisonToken()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->concatExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v2

    new-instance v3, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v3, v1, v0, v2}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;Lorg/apache/poi/ss/formula/ParseNode;)V

    move-object v0, v3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private concatExpression()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 4

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->additiveExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x26

    if-eq v1, v2, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->additiveExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v1

    new-instance v2, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v3, Lorg/apache/poi/ss/formula/ptg/ConcatPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    invoke-direct {v2, v3, v0, v1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;Lorg/apache/poi/ss/formula/ParseNode;)V

    move-object v0, v2

    goto :goto_0
.end method

.method private static convertArrayNumber(Lorg/apache/poi/ss/formula/ptg/Ptg;Z)Ljava/lang/Double;
    .locals 2

    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/IntPtg;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/poi/ss/formula/ptg/IntPtg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/IntPtg;->getValue()I

    move-result p0

    int-to-double v0, p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    if-eqz v0, :cond_2

    check-cast p0, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;->getValue()D

    move-result-wide v0

    :goto_0
    if-nez p1, :cond_1

    neg-double v0, v0

    :cond_1
    new-instance p0, Ljava/lang/Double;

    invoke-direct {p0, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected ptg ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createAreaRef(Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Lorg/apache/poi/ss/util/AreaReference;
    .locals 3

    .line 1
    invoke-virtual {p1, p2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isCompatibleForArea(Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isRow()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_ssVersion:Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 14
    .line 15
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getRep()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getRep()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {v0, p1, p2}, Lorg/apache/poi/ss/util/AreaReference;->getWholeRow(Lorg/apache/poi/ss/SpreadsheetVersion;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/AreaReference;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isColumn()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_ssVersion:Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 35
    .line 36
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getRep()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getRep()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-static {v0, p1, p2}, Lorg/apache/poi/ss/util/AreaReference;->getWholeColumn(Lorg/apache/poi/ss/SpreadsheetVersion;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/util/AreaReference;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    return-object p1

    .line 49
    :cond_1
    new-instance v0, Lorg/apache/poi/ss/util/AreaReference;

    .line 50
    .line 51
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getCellReference()Lorg/apache/poi/ss/util/CellReference;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getCellReference()Lorg/apache/poi/ss/util/CellReference;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_ssVersion:Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 60
    .line 61
    invoke-direct {v0, p1, p2, v1}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    .line 62
    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_2
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaParseException;

    .line 66
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v2, "has incompatible parts: \'"

    .line 70
    .line 71
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getRep()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string p1, "\' and \'"

    .line 82
    .line 83
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getRep()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    const-string p2, "\'."

    .line 91
    .line 92
    invoke-static {p1, p2, v1}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-direct {v0, p1}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw v0
.end method

.method private createAreaRefParseNode(Lorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Lorg/apache/poi/ss/formula/ParseNode;
    .locals 0

    if-nez p3, :cond_1

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getCellReference()Lorg/apache/poi/ss/util/CellReference;

    move-result-object p2

    if-nez p1, :cond_0

    new-instance p1, Lorg/apache/poi/ss/formula/ptg/RefPtg;

    invoke-direct {p1, p2}, Lorg/apache/poi/ss/formula/ptg/RefPtg;-><init>(Lorg/apache/poi/ss/util/CellReference;)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    invoke-interface {p3, p2, p1}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->get3DReferencePtg(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2, p3}, Lorg/apache/poi/ss/formula/FormulaParser;->createAreaRef(Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Lorg/apache/poi/ss/util/AreaReference;

    move-result-object p2

    if-nez p1, :cond_2

    new-instance p1, Lorg/apache/poi/ss/formula/ptg/AreaPtg;

    invoke-direct {p1, p2}, Lorg/apache/poi/ss/formula/ptg/AreaPtg;-><init>(Lorg/apache/poi/ss/util/AreaReference;)V

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    invoke-interface {p3, p2, p1}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->get3DReferencePtg(Lorg/apache/poi/ss/util/AreaReference;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    :goto_0
    new-instance p2, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {p2, p1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object p2
.end method

.method private expected(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 4

    .line 1
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    .line 2
    .line 3
    const/16 v1, 0x3d

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    .line 9
    .line 10
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 11
    .line 12
    sub-int/2addr v1, v2

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-ge v0, v2, :cond_0

    .line 27
    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v0, "The specified formula \'"

    .line 31
    .line 32
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    .line 36
    .line 37
    const-string v1, "\' starts with an equals sign which is not allowed."

    .line 38
    .line 39
    invoke-static {v0, v1, p1}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v1, "Parse error near char "

    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 52
    .line 53
    sub-int/2addr v1, v2

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, " \'"

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v1, "\'"

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, " in specified formula \'"

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    .line 79
    .line 80
    const-string v2, "\'. Expected "

    .line 81
    .line 82
    invoke-static {v0, v1, v2, p1}, LA/g;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    :goto_0
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaParseException;

    .line 87
    .line 88
    invoke-direct {v0, p1}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-object v0
.end method

.method private function(Ljava/lang/String;)Lorg/apache/poi/ss/formula/ParseNode;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->isBuiltInFunctionName(Ljava/lang/String;)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v1, :cond_6

    .line 8
    .line 9
    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    .line 10
    .line 11
    if-eqz v1, :cond_5

    .line 12
    .line 13
    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_sheetIndex:I

    .line 14
    .line 15
    invoke-interface {v1, p1, v3}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {v1}, Lorg/apache/poi/ss/formula/EvaluationName;->isFunctionName()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-interface {v1}, Lorg/apache/poi/ss/formula/EvaluationName;->createPtg()Lorg/apache/poi/ss/formula/ptg/NamePtg;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :cond_0
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaParseException;

    .line 34
    .line 35
    const-string v1, "Attempt to use name \'"

    .line 36
    .line 37
    const-string v2, "\' as a function, but defined name in workbook does not refer to a function"

    .line 38
    .line 39
    invoke-static {v1, p1, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {v0, p1}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v0

    .line 47
    :cond_1
    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    .line 48
    .line 49
    invoke-interface {v1, p1, v2}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getNameXPtg(Ljava/lang/String;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    if-nez v2, :cond_6

    .line 54
    .line 55
    sget-object v1, Lorg/apache/poi/ss/formula/FormulaParser;->log:Lorg/apache/poi/util/POILogger;

    .line 56
    .line 57
    const/4 v2, 0x5

    .line 58
    invoke-virtual {v1, v2}, Lorg/apache/poi/util/POILogger;->check(I)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_2

    .line 63
    .line 64
    const-string v3, "FormulaParser.function: Name \'"

    .line 65
    .line 66
    const-string v4, "\' is completely unknown in the current workbook."

    .line 67
    .line 68
    invoke-static {v3, p1, v4}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    new-array v4, v0, [Ljava/lang/Object;

    .line 73
    .line 74
    const/4 v5, 0x0

    .line 75
    aput-object v3, v4, v5

    .line 76
    .line 77
    invoke-virtual {v1, v2, v4}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    sget-object v1, Lorg/apache/poi/ss/formula/FormulaParser$1;->$SwitchMap$org$apache$poi$ss$SpreadsheetVersion:[I

    .line 81
    .line 82
    iget-object v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    .line 83
    .line 84
    invoke-interface {v2}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    aget v1, v1, v2

    .line 93
    .line 94
    if-eq v1, v0, :cond_4

    .line 95
    .line 96
    const/4 v0, 0x2

    .line 97
    if-ne v1, v0, :cond_3

    .line 98
    .line 99
    new-instance v2, Lorg/apache/poi/ss/formula/ptg/NameXPxg;

    .line 100
    .line 101
    invoke-direct {v2, p1}, Lorg/apache/poi/ss/formula/ptg/NameXPxg;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 106
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v1, "Unexpected spreadsheet version: "

    .line 110
    .line 111
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    .line 115
    .line 116
    invoke-interface {v1}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    throw p1

    .line 135
    :cond_4
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaParser;->addName(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    .line 139
    .line 140
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_sheetIndex:I

    .line 141
    .line 142
    invoke-interface {v0, p1, v1}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/EvaluationName;->createPtg()Lorg/apache/poi/ss/formula/ptg/NamePtg;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    goto :goto_0

    .line 151
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 152
    .line 153
    const-string v1, "Need book to evaluate name \'"

    .line 154
    .line 155
    const-string v2, "\'"

    .line 156
    .line 157
    invoke-static {v1, p1, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw v0

    .line 165
    :cond_6
    :goto_0
    const/16 v0, 0x28

    .line 166
    .line 167
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    .line 168
    .line 169
    .line 170
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->Arguments()[Lorg/apache/poi/ss/formula/ParseNode;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    const/16 v1, 0x29

    .line 175
    .line 176
    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    .line 177
    .line 178
    .line 179
    invoke-direct {p0, p1, v2, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->getFunction(Ljava/lang/String;Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ParseNode;)Lorg/apache/poi/ss/formula/ParseNode;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    return-object p1
.end method

.method private getBookName()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getComparisonToken()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 4

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    sget-object v0, Lorg/apache/poi/ss/formula/ptg/EqualPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    return-object v0

    :cond_0
    const/16 v2, 0x3e

    if-ne v0, v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    if-eqz v3, :cond_3

    if-ne v0, v1, :cond_2

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    sget-object v0, Lorg/apache/poi/ss/formula/ptg/GreaterEqualPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    return-object v0

    :cond_2
    sget-object v0, Lorg/apache/poi/ss/formula/ptg/GreaterThanPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    return-object v0

    :cond_3
    if-eq v0, v1, :cond_5

    if-eq v0, v2, :cond_4

    sget-object v0, Lorg/apache/poi/ss/formula/ptg/LessThanPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    return-object v0

    :cond_4
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    sget-object v0, Lorg/apache/poi/ss/formula/ptg/NotEqualPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    return-object v0

    :cond_5
    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    sget-object v0, Lorg/apache/poi/ss/formula/ptg/LessEqualPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    return-object v0
.end method

.method private getFunction(Ljava/lang/String;Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ParseNode;)Lorg/apache/poi/ss/formula/ParseNode;
    .locals 5

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;->getFunctionByName(Ljava/lang/String;)Lorg/apache/poi/ss/formula/function/FunctionMetadata;

    move-result-object v0

    array-length v1, p3

    const/4 v2, 0x1

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    add-int/lit8 v0, v1, 0x1

    new-array v3, v0, [Lorg/apache/poi/ss/formula/ParseNode;

    new-instance v4, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v4, p2}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    const/4 p2, 0x0

    aput-object v4, v3, p2

    invoke-static {p3, p2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p2, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-static {p1, v0}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->create(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    move-result-object p1

    invoke-direct {p2, p1, v3}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ParseNode;)V

    return-object p2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "NamePtg must be supplied for external functions"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-nez p2, :cond_4

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->hasFixedArgsLength()Z

    move-result p2

    xor-int/2addr p2, v2

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getIndex()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    array-length v4, p3

    if-ne v4, v2, :cond_2

    new-instance p1, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-static {}, Lorg/apache/poi/ss/formula/ptg/AttrPtg;->getSumSingle()Lorg/apache/poi/ss/formula/ptg/AttrPtg;

    move-result-object p2

    invoke-direct {p1, p2, p3}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ParseNode;)V

    return-object p1

    :cond_2
    array-length v2, p3

    invoke-direct {p0, v2, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->validateNumArgs(ILorg/apache/poi/ss/formula/function/FunctionMetadata;)V

    if-eqz p2, :cond_3

    invoke-static {p1, v1}, Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;->create(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/ptg/FuncVarPtg;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-static {v3}, Lorg/apache/poi/ss/formula/ptg/FuncPtg;->create(I)Lorg/apache/poi/ss/formula/ptg/FuncPtg;

    move-result-object p1

    :goto_0
    new-instance p2, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {p2, p1, p3}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ParseNode;)V

    return-object p2

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "NamePtg no applicable to internal functions"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static getNumberPtgFromString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x45

    if-nez p1, :cond_2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p1}, Lorg/apache/poi/ss/formula/ptg/IntPtg;->isInRange(I)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p0, Lorg/apache/poi/ss/formula/ptg/IntPtg;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/IntPtg;-><init>(I)V

    return-object p0

    :cond_1
    new-instance p1, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    invoke-direct {p1, p0}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;-><init>(Ljava/lang/String;)V

    return-object p1

    :catch_0
    new-instance p1, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    invoke-direct {p1, p0}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/16 p0, 0x2e

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    new-instance p0, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method private getRPNPtg(Lorg/apache/poi/ss/formula/FormulaType;)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/OperandClassTransformer;

    invoke-direct {v0, p1}, Lorg/apache/poi/ss/formula/OperandClassTransformer;-><init>(Lorg/apache/poi/ss/formula/FormulaType;)V

    iget-object p1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_rootNode:Lorg/apache/poi/ss/formula/ParseNode;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/OperandClassTransformer;->transformFormula(Lorg/apache/poi/ss/formula/ParseNode;)V

    iget-object p1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_rootNode:Lorg/apache/poi/ss/formula/ParseNode;

    invoke-static {p1}, Lorg/apache/poi/ss/formula/ParseNode;->toTokenArray(Lorg/apache/poi/ss/formula/ParseNode;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p1

    return-object p1
.end method

.method private intersectionExpression()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 6

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->comparisonExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    iget-boolean v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_inIntersection:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->comparisonExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v3

    new-instance v4, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v5, Lorg/apache/poi/ss/formula/ptg/IntersectionPtg;->instance:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    invoke-direct {v4, v5, v0, v3}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;Lorg/apache/poi/ss/formula/ParseNode;)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/FormulaParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    move-object v0, v4

    goto :goto_0

    :catch_0
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {v0}, Lorg/apache/poi/ss/formula/FormulaParser;->augmentWithMemPtg(Lorg/apache/poi/ss/formula/ParseNode;)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private static isArgumentDelimiter(I)Z
    .locals 1

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x29

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isUnquotedSheetNameChar(I)Z
    .locals 2

    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x80

    if-le p0, v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x2e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    return v1
.end method

.method private isValidCellReference(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_ssVersion:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-static {p1, v0}, Lorg/apache/poi/ss/util/CellReference;->classifyCellReference(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Lorg/apache/poi/ss/util/CellReference$NameType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/util/CellReference$NameType;->CELL:Lorg/apache/poi/ss/util/CellReference$NameType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;->getFunctionByName(Ljava/lang/String;)Lorg/apache/poi/ss/formula/function/FunctionMetadata;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    iget p1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v1, 0x28

    if-eq p1, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    move v0, v2

    :cond_2
    return v0
.end method

.method private static isValidDefinedNameChar(I)Z
    .locals 2

    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x80

    if-le p0, v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x2e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3f

    if-eq p0, v0, :cond_2

    const/16 v0, 0x5c

    if-eq p0, v0, :cond_2

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    return v1
.end method

.method private static isValidRangeOperand(Lorg/apache/poi/ss/formula/ParseNode;)Z
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getToken()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;->getDefaultOperandClass()B

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_2
    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    if-eqz v1, :cond_3

    return v3

    :cond_3
    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    if-eqz v1, :cond_4

    return v2

    :cond_4
    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getChildren()[Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object p0

    aget-object p0, p0, v3

    invoke-static {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->isValidRangeOperand(Lorg/apache/poi/ss/formula/ParseNode;)Z

    move-result p0

    return p0

    :cond_5
    sget-object p0, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->REF_INVALID:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    if-ne v0, p0, :cond_6

    return v2

    :cond_6
    return v3
.end method

.method private static needsMemFunc(Lorg/apache/poi/ss/formula/ParseNode;)Z
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getToken()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/AbstractFunctionPtg;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    instance-of v1, v0, Lorg/apache/poi/ss/formula/ExternSheetReferenceToken;

    if-eqz v1, :cond_1

    return v2

    :cond_1
    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/NamePtg;

    if-nez v1, :cond_9

    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/NameXPtg;

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    instance-of v1, v0, Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    const/4 v3, 0x0

    if-nez v1, :cond_6

    instance-of v4, v0, Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    instance-of p0, v0, Lorg/apache/poi/ss/formula/ptg/OperandPtg;

    if-eqz p0, :cond_4

    return v3

    :cond_4
    if-eqz v1, :cond_5

    return v2

    :cond_5
    return v3

    :cond_6
    :goto_0
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/ParseNode;->getChildren()[Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_8

    aget-object v4, p0, v1

    invoke-static {v4}, Lorg/apache/poi/ss/formula/FormulaParser;->needsMemFunc(Lorg/apache/poi/ss/formula/ParseNode;)Z

    move-result v4

    if-eqz v4, :cond_7

    return v2

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    return v3

    :cond_9
    :goto_2
    return v2
.end method

.method private parse()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->unionExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_rootNode:Lorg/apache/poi/ss/formula/ParseNode;

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaLength:I

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unused input ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] after attempting to parse the formula ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    const-string v2, "]"

    .line 1
    invoke-static {v1, v2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/apache/poi/ss/formula/FormulaParseException;

    invoke-direct {v1, v0}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;I)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    .line 6
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    .line 7
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaParser;

    invoke-direct {v0, p0, p1, p3, p4}, Lorg/apache/poi/ss/formula/FormulaParser;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;II)V

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/FormulaParser;->parse()V

    invoke-direct {v0, p2}, Lorg/apache/poi/ss/formula/FormulaParser;->getRPNPtg(Lorg/apache/poi/ss/formula/FormulaType;)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    return-object p0
.end method

.method private parseArray()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseArrayRow()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    array-length v0, v0

    invoke-direct {p0, v1, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->checkRowLengths([[Ljava/lang/Object;I)V

    new-instance v0, Lorg/apache/poi/ss/formula/ParseNode;

    new-instance v2, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;

    invoke-direct {v2, v1}, Lorg/apache/poi/ss/formula/ptg/ArrayPtg;-><init>([[Ljava/lang/Object;)V

    invoke-direct {v0, v2}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v0

    :cond_0
    const/16 v2, 0x3b

    if-ne v1, v2, :cond_1

    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    goto :goto_0

    :cond_1
    const-string v0, "\'}\' or \';\'"

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private parseArrayItem()Ljava/lang/Object;
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v1, 0x22

    if-eq v0, v1, :cond_3

    const/16 v1, 0x23

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x46

    if-eq v0, v1, :cond_0

    const/16 v1, 0x54

    if-eq v0, v1, :cond_0

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    const/16 v1, 0x74

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseNumber()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->convertArrayNumber(Lorg/apache/poi/ss/formula/ptg/Ptg;Z)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseBooleanLiteral()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseNumber()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->convertArrayNumber(Lorg/apache/poi/ss/formula/ptg/Ptg;Z)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseErrorLiteral()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/constant/ErrorConstant;->valueOf(I)Lorg/apache/poi/ss/formula/constant/ErrorConstant;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseStringLiteral()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseArrayRow()[Ljava/lang/Object;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseArrayItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "\'}\' or \',\'"

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v1

    :cond_2
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    goto :goto_0
.end method

.method private parseAsColumnQuantifier()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v1, 0x5b

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v1, 0x23

    if-ne v0, v1, :cond_1

    return-object v2

    :cond_1
    const/16 v1, 0x40

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseAsName()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {v1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_1

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "number, string, defined name, or data table"

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {v1}, Lorg/apache/poi/ss/formula/FormulaParser;->isValidDefinedNameChar(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseAsSpecialQuantifier()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v1, 0x5b

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v1, 0x23

    if-eq v0, v1, :cond_1

    return-object v2

    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseAsName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "This"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseAsName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    const/16 v1, 0x5d

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    return-object v0
.end method

.method private parseBooleanLiteral()Ljava/lang/Boolean;
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseUnquotedIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TRUE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_0
    const-string v1, "FALSE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_1
    const-string v0, "\'TRUE\' or \'FALSE\'"

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private parseErrorLiteral()I
    .locals 5

    const/16 v0, 0x23

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseUnquotedIdentifier()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x44

    const/16 v3, 0x2f

    const/16 v4, 0x21

    if-eq v1, v2, :cond_b

    const/16 v2, 0x4e

    if-eq v1, v2, :cond_4

    const/16 v2, 0x52

    if-eq v1, v2, :cond_2

    const/16 v2, 0x56

    if-ne v1, v2, :cond_1

    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->VALUE:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-direct {p0, v4}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    :goto_1
    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getCode()B

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1
    const-string v0, "#VALUE!, #REF!, #DIV/0!, #NAME?, #NUM!, #NULL! or #N/A"

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_2
    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->REF:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_4
    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->NAME:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v0, 0x3f

    :cond_5
    :goto_2
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    goto :goto_1

    :cond_6
    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->NUM:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->NULL:Lorg/apache/poi/ss/usermodel/FormulaError;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_0

    :cond_8
    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->NA:Lorg/apache/poi/ss/usermodel/FormulaError;

    const-string v2, "N"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x41

    if-eq v0, v2, :cond_5

    const/16 v2, 0x61

    if-ne v0, v2, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_a
    const-string v0, "#NAME?, #NUM!, #NULL! or #N/A"

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_b
    sget-object v1, Lorg/apache/poi/ss/usermodel/FormulaError;->DIV0:Lorg/apache/poi/ss/usermodel/FormulaError;

    const-string v2, "DIV"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    const/16 v0, 0x30

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v1}, Lorg/apache/poi/ss/usermodel/FormulaError;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_d
    const-string v0, "remainder of error constant literal"

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private parseNonRange(I)Lorg/apache/poi/ss/formula/ParseNode;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    .line 2
    .line 3
    .line 4
    iget p1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Character;->isDigit(I)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    new-instance p1, Lorg/apache/poi/ss/formula/ParseNode;

    .line 13
    .line 14
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseNumber()Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-direct {p1, v0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    iget p1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    .line 23
    .line 24
    const/16 v0, 0x22

    .line 25
    .line 26
    if-ne p1, v0, :cond_1

    .line 27
    .line 28
    new-instance p1, Lorg/apache/poi/ss/formula/ParseNode;

    .line 29
    .line 30
    new-instance v0, Lorg/apache/poi/ss/formula/ptg/StringPtg;

    .line 31
    .line 32
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseStringLiteral()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ptg/StringPtg;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p1, v0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 40
    .line 41
    .line 42
    return-object p1

    .line 43
    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseAsName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    .line 48
    .line 49
    const/16 v1, 0x28

    .line 50
    .line 51
    if-ne v0, v1, :cond_2

    .line 52
    .line 53
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaParser;->function(Ljava/lang/String;)Lorg/apache/poi/ss/formula/ParseNode;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    return-object p1

    .line 58
    :cond_2
    const/16 v1, 0x5b

    .line 59
    .line 60
    if-ne v0, v1, :cond_3

    .line 61
    .line 62
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/FormulaParser;->parseStructuredReference(Ljava/lang/String;)Lorg/apache/poi/ss/formula/ParseNode;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    return-object p1

    .line 67
    :cond_3
    const-string v0, "TRUE"

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-nez v1, :cond_8

    .line 74
    .line 75
    const-string v1, "FALSE"

    .line 76
    .line 77
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_4

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    .line 85
    .line 86
    if-eqz v0, :cond_7

    .line 87
    .line 88
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_sheetIndex:I

    .line 89
    .line 90
    invoke-interface {v0, p1, v1}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getName(Ljava/lang/String;I)Lorg/apache/poi/ss/formula/EvaluationName;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-eqz v0, :cond_6

    .line 95
    .line 96
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/EvaluationName;->isRange()Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_5

    .line 101
    .line 102
    new-instance p1, Lorg/apache/poi/ss/formula/ParseNode;

    .line 103
    .line 104
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/EvaluationName;->createPtg()Lorg/apache/poi/ss/formula/ptg/NamePtg;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-direct {p1, v0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 109
    .line 110
    .line 111
    return-object p1

    .line 112
    :cond_5
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaParseException;

    .line 113
    .line 114
    const-string v1, "Specified name \'"

    .line 115
    .line 116
    const-string v2, "\' is not a range as expected."

    .line 117
    .line 118
    invoke-static {v1, p1, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-direct {v0, p1}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw v0

    .line 126
    :cond_6
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaParseException;

    .line 127
    .line 128
    const-string v1, "Specified named range \'"

    .line 129
    .line 130
    const-string v2, "\' does not exist in the current workbook."

    .line 131
    .line 132
    invoke-static {v1, p1, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-direct {v0, p1}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw v0

    .line 140
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 141
    .line 142
    const-string v1, "Need book to evaluate name \'"

    .line 143
    .line 144
    const-string v2, "\'"

    .line 145
    .line 146
    invoke-static {v1, p1, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw v0

    .line 154
    :cond_8
    :goto_0
    new-instance v1, Lorg/apache/poi/ss/formula/ParseNode;

    .line 155
    .line 156
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    invoke-static {p1}, Lorg/apache/poi/ss/formula/ptg/BoolPtg;->valueOf(Z)Lorg/apache/poi/ss/formula/ptg/BoolPtg;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-direct {v1, p1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 165
    .line 166
    .line 167
    return-object v1
.end method

.method private parseNumber()Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 6

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetNum()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x2e

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetNum()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v4, 0x45

    const-string v5, "Integer"

    if-ne v2, v4, :cond_4

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    goto :goto_1

    :cond_1
    const/16 v3, 0x2d

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    const-string v2, "-"

    goto :goto_2

    :cond_2
    :goto_1
    const-string v2, ""

    :goto_2
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetNum()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_3
    invoke-direct {p0, v5}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_4
    :goto_3
    if-nez v0, :cond_6

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    invoke-direct {p0, v5}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_6
    :goto_4
    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->getNumberPtgFromString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    return-object v0
.end method

.method private parseRangeExpression()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 6

    const/4 v0, 0x1

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseRangeable()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_0

    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseRangeable()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v4

    const-string v5, "LHS"

    invoke-static {v5, v3, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->checkValidRangeOperand(Ljava/lang/String;ILorg/apache/poi/ss/formula/ParseNode;)V

    const-string v5, "RHS"

    invoke-static {v5, v3, v4}, Lorg/apache/poi/ss/formula/FormulaParser;->checkValidRangeOperand(Ljava/lang/String;ILorg/apache/poi/ss/formula/ParseNode;)V

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/apache/poi/ss/formula/ParseNode;

    aput-object v1, v3, v2

    aput-object v4, v3, v0

    new-instance v1, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v4, Lorg/apache/poi/ss/formula/ptg/RangePtg;->instance:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    invoke-direct {v1, v4, v3}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ParseNode;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    invoke-static {v1}, Lorg/apache/poi/ss/formula/FormulaParser;->augmentWithMemPtg(Lorg/apache/poi/ss/formula/ParseNode;)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method private parseRangeable()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 12

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 5
    .line 6
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseSheetName()Lorg/apache/poi/ss/formula/SheetIdentifier;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 17
    .line 18
    .line 19
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 20
    .line 21
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseSimpleRangePart()Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, "."

    .line 26
    .line 27
    if-nez v2, :cond_5

    .line 28
    .line 29
    if-eqz v1, :cond_4

    .line 30
    .line 31
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    .line 32
    .line 33
    const/16 v2, 0x23

    .line 34
    .line 35
    if-ne v0, v2, :cond_1

    .line 36
    .line 37
    new-instance v0, Lorg/apache/poi/ss/formula/ParseNode;

    .line 38
    .line 39
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseErrorLiteral()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-static {v1}, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->valueOf(I)Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 48
    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseAsName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    iget-object v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    .line 62
    .line 63
    invoke-interface {v2, v0, v1}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getNameXPtg(Ljava/lang/String;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    new-instance v0, Lorg/apache/poi/ss/formula/ParseNode;

    .line 70
    .line 71
    invoke-direct {v0, v2}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    .line 72
    .line 73
    .line 74
    return-object v0

    .line 75
    :cond_2
    new-instance v2, Lorg/apache/poi/ss/formula/FormulaParseException;

    .line 76
    .line 77
    const-string v3, "Specified name \'"

    .line 78
    .line 79
    const-string v4, "\' for sheet "

    .line 80
    .line 81
    invoke-static {v3, v0, v4}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/SheetIdentifier;->asFormulaString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v1, " not found"

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-direct {v2, v0}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v2

    .line 105
    :cond_3
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaParseException;

    .line 106
    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v2, "Cell reference or Named Range expected after sheet name at index "

    .line 110
    .line 111
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 115
    .line 116
    invoke-static {v3, v2, v1}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v0

    .line 124
    :cond_4
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseNonRange(I)Lorg/apache/poi/ss/formula/ParseNode;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    return-object v0

    .line 129
    :cond_5
    iget v4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    .line 130
    .line 131
    invoke-static {v4}, Lorg/apache/poi/ss/formula/FormulaParser;->IsWhite(I)Z

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-eqz v4, :cond_6

    .line 136
    .line 137
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 138
    .line 139
    .line 140
    :cond_6
    iget v5, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    .line 141
    .line 142
    const/16 v6, 0x3a

    .line 143
    .line 144
    const/4 v7, 0x0

    .line 145
    if-ne v5, v6, :cond_a

    .line 146
    .line 147
    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 148
    .line 149
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 150
    .line 151
    .line 152
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 153
    .line 154
    .line 155
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseSimpleRangePart()Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    if-eqz v3, :cond_7

    .line 160
    .line 161
    invoke-virtual {v2, v3}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isCompatibleForArea(Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Z

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    if-nez v4, :cond_7

    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_7
    move-object v7, v3

    .line 169
    :goto_1
    if-nez v7, :cond_9

    .line 170
    .line 171
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isCell()Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-nez v0, :cond_9

    .line 179
    .line 180
    if-eqz v1, :cond_8

    .line 181
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    const-string v3, "\'"

    .line 185
    .line 186
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/SheetIdentifier;->getSheetIdentifier()Lorg/apache/poi/ss/formula/NameIdentifier;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/NameIdentifier;->getName()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const/16 v1, 0x21

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    goto :goto_2

    .line 210
    :cond_8
    const-string v0, ""

    .line 211
    .line 212
    :goto_2
    new-instance v1, Lorg/apache/poi/ss/formula/FormulaParseException;

    .line 213
    .line 214
    invoke-static {v0}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getRep()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    const-string v3, "\' is not a proper reference."

    .line 223
    .line 224
    invoke-static {v2, v3, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-direct {v1, v0}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    throw v1

    .line 232
    :cond_9
    invoke-direct {p0, v1, v2, v7}, Lorg/apache/poi/ss/formula/FormulaParser;->createAreaRefParseNode(Lorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Lorg/apache/poi/ss/formula/ParseNode;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    return-object v0

    .line 237
    :cond_a
    const/16 v6, 0x2e

    .line 238
    .line 239
    if-ne v5, v6, :cond_15

    .line 240
    .line 241
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 242
    .line 243
    .line 244
    const/4 v5, 0x1

    .line 245
    const/4 v7, 0x1

    .line 246
    :goto_3
    iget v8, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    .line 247
    .line 248
    if-ne v8, v6, :cond_b

    .line 249
    .line 250
    add-int/lit8 v7, v7, 0x1

    .line 251
    .line 252
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    .line 253
    .line 254
    .line 255
    goto :goto_3

    .line 256
    :cond_b
    invoke-static {v8}, Lorg/apache/poi/ss/formula/FormulaParser;->IsWhite(I)Z

    .line 257
    .line 258
    .line 259
    move-result v6

    .line 260
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    .line 261
    .line 262
    .line 263
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseSimpleRangePart()Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;

    .line 264
    .line 265
    .line 266
    move-result-object v8

    .line 267
    iget-object v9, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    .line 268
    .line 269
    add-int/lit8 v10, v0, -0x1

    .line 270
    .line 271
    iget v11, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 272
    .line 273
    sub-int/2addr v11, v5

    .line 274
    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v9

    .line 278
    if-nez v8, :cond_d

    .line 279
    .line 280
    if-nez v1, :cond_c

    .line 281
    .line 282
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseNonRange(I)Lorg/apache/poi/ss/formula/ParseNode;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    return-object v0

    .line 287
    :cond_c
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaParseException;

    .line 288
    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    const-string v2, "Complete area reference expected after sheet name at index "

    .line 292
    .line 293
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 297
    .line 298
    invoke-static {v3, v2, v1}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    throw v0

    .line 306
    :cond_d
    const-string v3, "Dotted range (full row or column) expression \'"

    .line 307
    .line 308
    if-nez v4, :cond_13

    .line 309
    .line 310
    if-eqz v6, :cond_e

    .line 311
    .line 312
    goto :goto_4

    .line 313
    :cond_e
    if-ne v7, v5, :cond_f

    .line 314
    .line 315
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isRow()Z

    .line 316
    .line 317
    .line 318
    move-result v4

    .line 319
    if-eqz v4, :cond_f

    .line 320
    .line 321
    invoke-virtual {v8}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isRow()Z

    .line 322
    .line 323
    .line 324
    move-result v4

    .line 325
    if-eqz v4, :cond_f

    .line 326
    .line 327
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseNonRange(I)Lorg/apache/poi/ss/formula/ParseNode;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    return-object v0

    .line 332
    :cond_f
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isRowOrColumn()Z

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    if-nez v0, :cond_10

    .line 337
    .line 338
    invoke-virtual {v8}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isRowOrColumn()Z

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    if-eqz v0, :cond_11

    .line 343
    .line 344
    :cond_10
    const/4 v0, 0x2

    .line 345
    if-ne v7, v0, :cond_12

    .line 346
    .line 347
    :cond_11
    invoke-direct {p0, v1, v2, v8}, Lorg/apache/poi/ss/formula/FormulaParser;->createAreaRefParseNode(Lorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Lorg/apache/poi/ss/formula/ParseNode;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    return-object v0

    .line 352
    :cond_12
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaParseException;

    .line 353
    .line 354
    const-string v1, "\' must have exactly 2 dots."

    .line 355
    .line 356
    invoke-static {v3, v9, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    throw v0

    .line 364
    :cond_13
    :goto_4
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isRowOrColumn()Z

    .line 365
    .line 366
    .line 367
    move-result v0

    .line 368
    if-nez v0, :cond_14

    .line 369
    .line 370
    invoke-virtual {v8}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isRowOrColumn()Z

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    if-nez v0, :cond_14

    .line 375
    .line 376
    invoke-direct {p0, v1, v2, v8}, Lorg/apache/poi/ss/formula/FormulaParser;->createAreaRefParseNode(Lorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Lorg/apache/poi/ss/formula/ParseNode;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    return-object v0

    .line 381
    :cond_14
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaParseException;

    .line 382
    .line 383
    const-string v1, "\' must not contain whitespace."

    .line 384
    .line 385
    invoke-static {v3, v9, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    throw v0

    .line 393
    :cond_15
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->isCell()Z

    .line 394
    .line 395
    .line 396
    move-result v4

    .line 397
    if-eqz v4, :cond_16

    .line 398
    .line 399
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;->getRep()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v4

    .line 403
    invoke-direct {p0, v4}, Lorg/apache/poi/ss/formula/FormulaParser;->isValidCellReference(Ljava/lang/String;)Z

    .line 404
    .line 405
    .line 406
    move-result v4

    .line 407
    if-eqz v4, :cond_16

    .line 408
    .line 409
    invoke-direct {p0, v1, v2, v7}, Lorg/apache/poi/ss/formula/FormulaParser;->createAreaRefParseNode(Lorg/apache/poi/ss/formula/SheetIdentifier;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;)Lorg/apache/poi/ss/formula/ParseNode;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    return-object v0

    .line 414
    :cond_16
    if-nez v1, :cond_17

    .line 415
    .line 416
    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseNonRange(I)Lorg/apache/poi/ss/formula/ParseNode;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    return-object v0

    .line 421
    :cond_17
    new-instance v0, Lorg/apache/poi/ss/formula/FormulaParseException;

    .line 422
    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    .line 424
    .line 425
    const-string v2, "Second part of cell reference expected after sheet name at index "

    .line 426
    .line 427
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    .line 431
    .line 432
    invoke-static {v3, v2, v1}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    throw v0
.end method

.method private parseSheetName()Lorg/apache/poi/ss/formula/SheetIdentifier;
    .locals 10

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/4 v1, 0x0

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->getBookName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v4, 0x3a

    const/16 v5, 0x21

    const/4 v6, 0x0

    const/16 v7, 0x27

    if-ne v3, v7, :cond_7

    invoke-direct {p0, v7}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    if-ne v3, v2, :cond_1

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->getBookName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/4 v8, 0x1

    if-ne v3, v7, :cond_2

    :goto_1
    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :cond_3
    :goto_2
    if-nez v3, :cond_4

    iget v9, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    iget v9, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    if-ne v9, v7, :cond_3

    invoke-direct {p0, v7}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    if-eq v3, v7, :cond_2

    goto :goto_1

    :cond_4
    new-instance v3, Lorg/apache/poi/ss/formula/NameIdentifier;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v8}, Lorg/apache/poi/ss/formula/NameIdentifier;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    if-ne v2, v5, :cond_5

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    new-instance v1, Lorg/apache/poi/ss/formula/SheetIdentifier;

    invoke-direct {v1, v0, v3}, Lorg/apache/poi/ss/formula/SheetIdentifier;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;)V

    return-object v1

    :cond_5
    if-ne v2, v4, :cond_6

    invoke-direct {p0, v0, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->parseSheetRange(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;)Lorg/apache/poi/ss/formula/SheetIdentifier;

    move-result-object v0

    return-object v0

    :cond_6
    return-object v1

    :cond_7
    const/16 v2, 0x5f

    if-eq v3, v2, :cond_a

    invoke-static {v3}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    if-ne v2, v5, :cond_9

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    new-instance v2, Lorg/apache/poi/ss/formula/SheetIdentifier;

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/ss/formula/SheetIdentifier;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;)V

    return-object v2

    :cond_9
    return-object v1

    :cond_a
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {v3}, Lorg/apache/poi/ss/formula/FormulaParser;->isUnquotedSheetNameChar(I)Z

    move-result v3

    if-eqz v3, :cond_b

    iget v3, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    goto :goto_4

    :cond_b
    new-instance v3, Lorg/apache/poi/ss/formula/NameIdentifier;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v6}, Lorg/apache/poi/ss/formula/NameIdentifier;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    if-ne v2, v5, :cond_c

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    new-instance v1, Lorg/apache/poi/ss/formula/SheetIdentifier;

    invoke-direct {v1, v0, v3}, Lorg/apache/poi/ss/formula/SheetIdentifier;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;)V

    return-object v1

    :cond_c
    if-ne v2, v4, :cond_d

    invoke-direct {p0, v0, v3}, Lorg/apache/poi/ss/formula/FormulaParser;->parseSheetRange(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;)Lorg/apache/poi/ss/formula/SheetIdentifier;

    move-result-object v0

    return-object v0

    :cond_d
    return-object v1
.end method

.method private parseSheetRange(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;)Lorg/apache/poi/ss/formula/SheetIdentifier;
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseSheetName()Lorg/apache/poi/ss/formula/SheetIdentifier;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/apache/poi/ss/formula/SheetRangeIdentifier;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/SheetIdentifier;->getSheetIdentifier()Lorg/apache/poi/ss/formula/NameIdentifier;

    move-result-object v0

    invoke-direct {v1, p1, p2, v0}, Lorg/apache/poi/ss/formula/SheetRangeIdentifier;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;Lorg/apache/poi/ss/formula/NameIdentifier;)V

    return-object v1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private parseSimpleFactor()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 3

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v1, 0x22

    if-eq v0, v1, :cond_8

    const/16 v1, 0x23

    if-eq v0, v1, :cond_7

    const/16 v1, 0x28

    if-eq v0, v1, :cond_6

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_4

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_3

    invoke-static {v0}, Lorg/apache/poi/ss/formula/FormulaParser;->IsAlpha(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v1, 0x27

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x2e

    if-ne v0, v1, :cond_1

    new-instance v0, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseNumber()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v0

    :cond_1
    const-string v0, "cell ref or constant literal"

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseRangeExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseArray()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    return-object v0

    :cond_4
    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseUnary(Z)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseUnary(Z)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    return-object v0

    :cond_6
    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->unionExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    const/16 v1, 0x29

    invoke-direct {p0, v1}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    new-instance v1, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v2, Lorg/apache/poi/ss/formula/ptg/ParenthesisPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ControlPtg;

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;)V

    return-object v1

    :cond_7
    new-instance v0, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseErrorLiteral()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->valueOf(I)Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v0

    :cond_8
    new-instance v0, Lorg/apache/poi/ss/formula/ParseNode;

    new-instance v1, Lorg/apache/poi/ss/formula/ptg/StringPtg;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseStringLiteral()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/ptg/StringPtg;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v0
.end method

.method private parseSimpleRangePart()Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;
    .locals 8

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaLength:I

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/16 v5, 0x24

    if-eq v4, v5, :cond_2

    const/16 v5, 0x5f

    if-ne v4, v5, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget v4, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    add-int/lit8 v5, v4, -0x1

    const/4 v6, 0x0

    if-gt v0, v5, :cond_4

    return-object v6

    :cond_4
    iget-object v5, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    sub-int/2addr v4, v1

    invoke-virtual {v5, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/apache/poi/ss/formula/FormulaParser;->CELL_REF_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_5

    return-object v6

    :cond_5
    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    invoke-direct {p0, v4}, Lorg/apache/poi/ss/formula/FormulaParser;->isValidCellReference(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    return-object v6

    :cond_6
    const-string v5, ""

    const-string v7, "$"

    if-eqz v3, :cond_7

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_ssVersion:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-static {v5, v7}, Lorg/apache/poi/ss/util/CellReference;->isColumnWithinRange(Ljava/lang/String;Lorg/apache/poi/ss/SpreadsheetVersion;)Z

    move-result v5

    if-nez v5, :cond_8

    return-object v6

    :cond_7
    if-eqz v2, :cond_9

    :try_start_0
    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v5, v1, :cond_9

    iget-object v7, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_ssVersion:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v7}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxRows()I

    move-result v7

    if-le v5, v7, :cond_8

    goto :goto_2

    :cond_8
    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    new-instance v0, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;

    invoke-direct {v0, v4, v3, v2}, Lorg/apache/poi/ss/formula/FormulaParser$SimpleRangePart;-><init>(Ljava/lang/String;ZZ)V

    return-object v0

    :catch_0
    :cond_9
    :goto_2
    return-object v6
.end method

.method private parseStringLiteral()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    if-ne v2, v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    if-eq v2, v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    goto :goto_0
.end method

.method private parseStructuredReference(Ljava/lang/String;)Lorg/apache/poi/ss/formula/ParseNode;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_ssVersion:Lorg/apache/poi/ss/SpreadsheetVersion;

    sget-object v3, Lorg/apache/poi/ss/SpreadsheetVersion;->EXCEL2007:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    invoke-interface {v2, v1}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getTable(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/Table;

    move-result-object v2

    if-eqz v2, :cond_2c

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Table;->getSheetName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Table;->getStartColIndex()I

    move-result v3

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Table;->getEndColIndex()I

    move-result v4

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Table;->getStartRowIndex()I

    move-result v5

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Table;->getEndRowIndex()I

    move-result v6

    iget v7, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    iget v15, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseAsSpecialQuantifier()Ljava/lang/String;

    move-result-object v8

    move/from16 v16, v4

    const-string v4, "Unknown special quantifier "

    move/from16 v17, v10

    const-string v10, "Totals"

    move/from16 v19, v11

    const-string v11, "This Row"

    move/from16 v20, v12

    const-string v12, "Headers"

    move/from16 v21, v13

    const-string v13, "Data"

    move/from16 v22, v14

    const-string v14, "All"

    move-object/from16 v23, v1

    if-nez v8, :cond_0

    invoke-direct {v0, v15}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    goto :goto_2

    :cond_0
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    const/16 v20, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    const/16 v21, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    const/16 v22, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    const/16 v19, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2b

    const/16 v17, 0x1

    :goto_1
    add-int/lit8 v9, v9, 0x1

    iget v8, v0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v15, 0x2c

    if-ne v8, v15, :cond_5

    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    move/from16 v4, v16

    move/from16 v10, v17

    move/from16 v11, v19

    move/from16 v12, v20

    move/from16 v13, v21

    move/from16 v14, v22

    move-object/from16 v1, v23

    goto :goto_0

    :cond_5
    :goto_2
    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    iget v8, v0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v15, 0x40

    if-ne v8, v15, :cond_6

    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    const/4 v8, 0x1

    goto :goto_3

    :cond_6
    const/4 v8, 0x0

    :goto_3
    iget v15, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseAsColumnQuantifier()Ljava/lang/String;

    move-result-object v24

    const-string v1, "The formula "

    if-nez v24, :cond_7

    invoke-direct {v0, v15}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    move/from16 p1, v3

    const/4 v15, 0x0

    :goto_4
    const/16 v18, 0x0

    goto :goto_5

    :cond_7
    iget v15, v0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    move/from16 p1, v3

    const/16 v3, 0x2c

    if-eq v15, v3, :cond_2a

    const/16 v3, 0x3a

    if-ne v15, v3, :cond_9

    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseAsColumnQuantifier()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    move-object/from16 v18, v3

    const/4 v15, 0x2

    goto :goto_5

    :cond_8
    new-instance v2, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    const-string v4, "is illegal: the string after \':\' must be column quantifier"

    .line 1
    invoke-static {v1, v4, v3}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-direct {v2, v1}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    const/4 v15, 0x1

    goto :goto_4

    :goto_5
    const-string v3, " is illegal"

    if-nez v15, :cond_11

    if-nez v9, :cond_11

    invoke-direct {v0, v7}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    iget v7, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseAsColumnQuantifier()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_a

    add-int/lit8 v15, v15, 0x1

    :goto_6
    move-object/from16 v4, v24

    goto :goto_8

    :cond_a
    invoke-direct {v0, v7}, Lorg/apache/poi/ss/formula/FormulaParser;->resetPointer(I)V

    invoke-direct/range {p0 .. p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseAsSpecialQuantifier()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_10

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    const/16 v20, 0x1

    goto :goto_7

    :cond_b
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    const/16 v21, 0x1

    goto :goto_7

    :cond_c
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    const/16 v22, 0x1

    goto :goto_7

    :cond_d
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/16 v19, 0x1

    goto :goto_7

    :cond_e
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    const/16 v17, 0x1

    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_f
    new-instance v1, Lorg/apache/poi/ss/formula/FormulaParseException;

    invoke-virtual {v4, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    new-instance v2, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    .line 3
    invoke-static {v1, v3, v4}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-direct {v2, v1}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_11
    const/16 v4, 0x5d

    invoke-direct {v0, v4}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    goto :goto_6

    :goto_8
    if-eqz v17, :cond_12

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Table;->getTotalsRowCount()I

    move-result v7

    if-nez v7, :cond_12

    new-instance v1, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v2, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->REF_INVALID:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v1

    :cond_12
    if-nez v8, :cond_13

    if-eqz v19, :cond_14

    :cond_13
    iget v7, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_rowIndex:I

    if-lt v7, v5, :cond_28

    if-ge v6, v7, :cond_14

    goto/16 :goto_e

    :cond_14
    if-lez v9, :cond_1f

    const/4 v7, 0x1

    if-ne v9, v7, :cond_15

    if-eqz v20, :cond_15

    goto/16 :goto_c

    :cond_15
    if-eqz v21, :cond_16

    if-eqz v22, :cond_16

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Table;->getTotalsRowCount()I

    move-result v1

    if-lez v1, :cond_21

    add-int/lit8 v6, v6, -0x1

    goto :goto_c

    :cond_16
    if-eqz v21, :cond_17

    if-eqz v17, :cond_17

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_17
    const/4 v7, 0x1

    if-ne v9, v7, :cond_19

    if-eqz v21, :cond_18

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Table;->getTotalsRowCount()I

    move-result v1

    if-lez v1, :cond_21

    add-int/lit8 v1, v6, -0x1

    :goto_9
    move v6, v1

    goto :goto_c

    :cond_18
    const/4 v7, 0x1

    :cond_19
    if-ne v9, v7, :cond_1a

    if-eqz v22, :cond_1a

    :goto_a
    move v6, v5

    goto :goto_c

    :cond_1a
    if-ne v9, v7, :cond_1b

    if-eqz v17, :cond_1b

    move v5, v6

    goto :goto_c

    :cond_1b
    if-ne v9, v7, :cond_1c

    if-nez v19, :cond_1d

    :cond_1c
    if-eqz v8, :cond_1e

    :cond_1d
    :goto_b
    iget v5, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_rowIndex:I

    goto :goto_a

    :cond_1e
    new-instance v2, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    .line 5
    invoke-static {v1, v3, v4}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-direct {v2, v1}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1f
    if-eqz v8, :cond_20

    goto :goto_b

    :cond_20
    add-int/lit8 v5, v5, 0x1

    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Table;->getTotalsRowCount()I

    move-result v1

    if-lez v1, :cond_21

    add-int/lit8 v1, v6, -0x1

    goto :goto_9

    :cond_21
    :goto_c
    const-string v1, "Fatal error"

    const-string v3, " doesn\'t exist in table "

    const/4 v7, -0x1

    const/4 v9, 0x2

    if-ne v15, v9, :cond_24

    if-eqz v4, :cond_23

    if-eqz v18, :cond_23

    invoke-interface {v2, v4}, Lorg/apache/poi/ss/usermodel/Table;->findColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v8, v18

    invoke-interface {v2, v8}, Lorg/apache/poi/ss/usermodel/Table;->findColumnIndex(Ljava/lang/String;)I

    move-result v9

    if-eq v1, v7, :cond_22

    if-eq v9, v7, :cond_22

    add-int v3, p1, v1

    add-int v4, p1, v9

    goto :goto_d

    :cond_22
    new-instance v1, Lorg/apache/poi/ss/formula/FormulaParseException;

    const-string v5, "One of the columns "

    const-string v6, ", "

    .line 7
    invoke-static {v5, v4, v6, v8, v3}, Lorg/apache/ftpserver/main/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 8
    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Table;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_23
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_24
    const/4 v9, 0x1

    if-ne v15, v9, :cond_27

    if-nez v8, :cond_27

    if-eqz v4, :cond_26

    invoke-interface {v2, v4}, Lorg/apache/poi/ss/usermodel/Table;->findColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v7, :cond_25

    add-int v3, p1, v1

    move v4, v3

    goto :goto_d

    :cond_25
    new-instance v1, Lorg/apache/poi/ss/formula/FormulaParseException;

    const-string v5, "The column "

    .line 9
    invoke-static {v5, v4, v3}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 10
    invoke-interface {v2}, Lorg/apache/poi/ss/usermodel/Table;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_26
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_27
    move/from16 v3, p1

    move/from16 v4, v16

    :goto_d
    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v1, v5, v3}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    new-instance v2, Lorg/apache/poi/ss/util/CellReference;

    invoke-direct {v2, v6, v4}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    new-instance v3, Lorg/apache/poi/ss/formula/SheetIdentifier;

    new-instance v4, Lorg/apache/poi/ss/formula/NameIdentifier;

    move-object/from16 v5, v23

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lorg/apache/poi/ss/formula/NameIdentifier;-><init>(Ljava/lang/String;Z)V

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4}, Lorg/apache/poi/ss/formula/SheetIdentifier;-><init>(Ljava/lang/String;Lorg/apache/poi/ss/formula/NameIdentifier;)V

    iget-object v4, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    new-instance v5, Lorg/apache/poi/ss/util/AreaReference;

    iget-object v6, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_ssVersion:Lorg/apache/poi/ss/SpreadsheetVersion;

    invoke-direct {v5, v1, v2, v6}, Lorg/apache/poi/ss/util/AreaReference;-><init>(Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/util/CellReference;Lorg/apache/poi/ss/SpreadsheetVersion;)V

    invoke-interface {v4, v5, v3}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->get3DReferencePtg(Lorg/apache/poi/ss/util/AreaReference;Lorg/apache/poi/ss/formula/SheetIdentifier;)Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v1

    new-instance v2, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v2, v1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v2

    :cond_28
    :goto_e
    if-ltz v7, :cond_29

    new-instance v1, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v2, Lorg/apache/poi/ss/formula/ptg/ErrPtg;->VALUE_INVALID:Lorg/apache/poi/ss/formula/ptg/ErrPtg;

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v1

    :cond_29
    new-instance v1, Lorg/apache/poi/ss/formula/FormulaParseException;

    const-string v2, "Formula contained [#This Row] or [@] structured reference but this row < 0. Row index must be specified for row-referencing structured references."

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2a
    new-instance v2, Lorg/apache/poi/ss/formula/FormulaParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    const-string v4, "is illegal: you should not use \',\' with column quantifiers"

    .line 11
    invoke-static {v1, v4, v3}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-direct {v2, v1}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2b
    new-instance v1, Lorg/apache/poi/ss/formula/FormulaParseException;

    invoke-virtual {v4, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2c
    new-instance v2, Lorg/apache/poi/ss/formula/FormulaParseException;

    const-string v3, "Illegal table name: \'"

    const-string v4, "\'"

    .line 13
    invoke-static {v3, v1, v4}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-direct {v2, v1}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2d
    new-instance v1, Lorg/apache/poi/ss/formula/FormulaParseException;

    const-string v2, "Structured references work only on XSSF (Excel 2007+)!"

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static parseStructuredReference(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;I)Lorg/apache/poi/ss/formula/ptg/Area3DPxg;
    .locals 2

    .line 33
    sget-object v0, Lorg/apache/poi/ss/formula/FormulaType;->CELL:Lorg/apache/poi/ss/formula/FormulaType;

    const/4 v1, -0x1

    invoke-static {p0, p1, v0, v1, p2}, Lorg/apache/poi/ss/formula/FormulaParser;->parse(Ljava/lang/String;Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;Lorg/apache/poi/ss/formula/FormulaType;II)[Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object p0

    array-length p1, p0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    instance-of p1, p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    if-eqz p1, :cond_0

    check-cast p0, Lorg/apache/poi/ss/formula/ptg/Area3DPxg;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Illegal structured reference"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private parseUnary(Z)Lorg/apache/poi/ss/formula/ParseNode;
    .locals 3

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {v0}, Lorg/apache/poi/ss/formula/FormulaParser;->IsDigit(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->powerFactor()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v1

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/ParseNode;->getToken()Lorg/apache/poi/ss/formula/ptg/Ptg;

    move-result-object v0

    instance-of v2, v0, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    if-eqz v2, :cond_3

    if-eqz p1, :cond_2

    return-object v1

    :cond_2
    new-instance p1, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    check-cast v0, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;->getValue()D

    move-result-wide v0

    neg-double v0, v0

    invoke-direct {p1, v0, v1}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;-><init>(D)V

    new-instance v0, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {v0, p1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object v0

    :cond_3
    instance-of v2, v0, Lorg/apache/poi/ss/formula/ptg/IntPtg;

    if-eqz v2, :cond_5

    if-eqz p1, :cond_4

    return-object v1

    :cond_4
    check-cast v0, Lorg/apache/poi/ss/formula/ptg/IntPtg;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/ptg/IntPtg;->getValue()I

    move-result p1

    new-instance v0, Lorg/apache/poi/ss/formula/ptg/NumberPtg;

    neg-int p1, p1

    int-to-double v1, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/formula/ptg/NumberPtg;-><init>(D)V

    new-instance p1, Lorg/apache/poi/ss/formula/ParseNode;

    invoke-direct {p1, v0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;)V

    return-object p1

    :cond_5
    new-instance v0, Lorg/apache/poi/ss/formula/ParseNode;

    if-eqz p1, :cond_6

    sget-object p1, Lorg/apache/poi/ss/formula/ptg/UnaryPlusPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    goto :goto_2

    :cond_6
    sget-object p1, Lorg/apache/poi/ss/formula/ptg/UnaryMinusPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    :goto_2
    invoke-direct {v0, p1, v1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;)V

    return-object v0
.end method

.method private parseUnquotedIdentifier()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v1, 0x27

    if-eq v0, v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_1
    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    goto :goto_0

    :cond_3
    const-string v0, "unquoted identifier"

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/FormulaParser;->expected(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private percentFactor()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 3

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->parseSimpleFactor()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x25

    if-eq v1, v2, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    new-instance v1, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v2, Lorg/apache/poi/ss/formula/ptg/PercentPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private powerFactor()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 4

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->percentFactor()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v2, 0x5e

    if-eq v1, v2, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, v2}, Lorg/apache/poi/ss/formula/FormulaParser;->Match(I)V

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->percentFactor()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v1

    new-instance v2, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v3, Lorg/apache/poi/ss/formula/ptg/PowerPtg;->instance:Lorg/apache/poi/ss/formula/ptg/ValueOperatorPtg;

    invoke-direct {v2, v3, v0, v1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;Lorg/apache/poi/ss/formula/ParseNode;)V

    move-object v0, v2

    goto :goto_0
.end method

.method private resetPointer(I)V
    .locals 2

    iput p1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_pointer:I

    iget v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaLength:I

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_formulaString:Ljava/lang/String;

    iget v1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    :goto_0
    iput p1, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method private unionExpression()Lorg/apache/poi/ss/formula/ParseNode;
    .locals 4

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->intersectionExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->SkipWhite()V

    iget v2, p0, Lorg/apache/poi/ss/formula/FormulaParser;->look:I

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/FormulaParser;->augmentWithMemPtg(Lorg/apache/poi/ss/formula/ParseNode;)Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->GetChar()V

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/FormulaParser;->intersectionExpression()Lorg/apache/poi/ss/formula/ParseNode;

    move-result-object v1

    new-instance v2, Lorg/apache/poi/ss/formula/ParseNode;

    sget-object v3, Lorg/apache/poi/ss/formula/ptg/UnionPtg;->instance:Lorg/apache/poi/ss/formula/ptg/OperationPtg;

    invoke-direct {v2, v3, v0, v1}, Lorg/apache/poi/ss/formula/ParseNode;-><init>(Lorg/apache/poi/ss/formula/ptg/Ptg;Lorg/apache/poi/ss/formula/ParseNode;Lorg/apache/poi/ss/formula/ParseNode;)V

    const/4 v1, 0x1

    move-object v0, v2

    goto :goto_0
.end method

.method private validateNumArgs(ILorg/apache/poi/ss/formula/function/FunctionMetadata;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getMinParams()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "."

    .line 6
    .line 7
    const-string v2, " but got "

    .line 8
    .line 9
    const-string v3, " were expected"

    .line 10
    .line 11
    const-string v4, "Expected "

    .line 12
    .line 13
    const-string v5, "\'. "

    .line 14
    .line 15
    if-ge p1, v0, :cond_1

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v6, "Too few arguments to function \'"

    .line 20
    .line 21
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->hasFixedArgsLength()Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_0

    .line 43
    .line 44
    invoke-static {v0, v4}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getMinParams()I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    const-string v4, "At least "

    .line 61
    .line 62
    invoke-static {v0, v4}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getMinParams()I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    new-instance p2, Lorg/apache/poi/ss/formula/FormulaParseException;

    .line 99
    .line 100
    invoke-direct {p2, p1}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p2

    .line 104
    :cond_1
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->hasUnlimitedVarags()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_2

    .line 109
    .line 110
    iget-object v0, p0, Lorg/apache/poi/ss/formula/FormulaParser;->_book:Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;

    .line 111
    .line 112
    if-eqz v0, :cond_2

    .line 113
    .line 114
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/FormulaParsingWorkbook;->getSpreadsheetVersion()Lorg/apache/poi/ss/SpreadsheetVersion;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lorg/apache/poi/ss/SpreadsheetVersion;->getMaxFunctionArgs()I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    goto :goto_2

    .line 123
    :cond_2
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getMaxParams()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    :goto_2
    if-le p1, v0, :cond_4

    .line 128
    .line 129
    new-instance v6, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string v7, "Too many arguments to function \'"

    .line 132
    .line 133
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->getName()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/function/FunctionMetadata;->hasFixedArgsLength()Z

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    if-eqz p2, :cond_3

    .line 155
    .line 156
    new-instance p2, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    :goto_3
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    goto :goto_4

    .line 175
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v4, "At most "

    .line 184
    .line 185
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    goto :goto_3

    .line 195
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    new-instance p2, Lorg/apache/poi/ss/formula/FormulaParseException;

    .line 217
    .line 218
    invoke-direct {p2, p1}, Lorg/apache/poi/ss/formula/FormulaParseException;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    throw p2

    .line 222
    :cond_4
    return-void
.end method
