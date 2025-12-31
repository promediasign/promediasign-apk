.class final Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/EvaluationCell;


# instance fields
.field private _booleanValue:Z

.field private _cellType:Lorg/apache/poi/ss/usermodel/CellType;

.field private _errorValue:I

.field private final _masterCell:Lorg/apache/poi/ss/formula/EvaluationCell;

.field private _numberValue:D

.field private final _sheet:Lorg/apache/poi/ss/formula/EvaluationSheet;

.field private _stringValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;Lorg/apache/poi/ss/formula/EvaluationCell;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_sheet:Lorg/apache/poi/ss/formula/EvaluationSheet;

    iput-object p2, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_masterCell:Lorg/apache/poi/ss/formula/EvaluationCell;

    sget-object p1, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->setValue(Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    return-void
.end method

.method private checkCellType(Lorg/apache/poi/ss/usermodel/CellType;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wrong data type ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public copyValue(Lorg/apache/poi/ss/usermodel/Cell;)V
    .locals 2

    sget-object v0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell$1;->$SwitchMap$org$apache$poi$ss$usermodel$CellType:[I

    iget-object v1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_errorValue:I

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Cell;->setCellErrorValue(B)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected data type ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_stringValue:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-boolean v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_booleanValue:Z

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(Z)V

    return-void

    :cond_3
    iget-wide v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_numberValue:D

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/ss/usermodel/Cell;->setCellValue(D)V

    return-void

    :cond_4
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/usermodel/Cell;->setCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    return-void
.end method

.method public getBooleanCellValue()Z
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->checkCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    iget-boolean v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_booleanValue:Z

    return v0
.end method

.method public getCachedFormulaResultType()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_masterCell:Lorg/apache/poi/ss/formula/EvaluationCell;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getCachedFormulaResultType()I

    move-result v0

    return v0
.end method

.method public getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_masterCell:Lorg/apache/poi/ss/formula/EvaluationCell;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getCachedFormulaResultTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    return-object v0
.end method

.method public getCellType()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-virtual {v0}, Lorg/apache/poi/ss/usermodel/CellType;->getCode()I

    move-result v0

    return v0
.end method

.method public getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    return-object v0
.end method

.method public getColumnIndex()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_masterCell:Lorg/apache/poi/ss/formula/EvaluationCell;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getColumnIndex()I

    move-result v0

    return v0
.end method

.method public getErrorCellValue()I
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->checkCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    iget v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_errorValue:I

    return v0
.end method

.method public getIdentityKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_masterCell:Lorg/apache/poi/ss/formula/EvaluationCell;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getIdentityKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNumericCellValue()D
    .locals 2

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->checkCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    iget-wide v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_numberValue:D

    return-wide v0
.end method

.method public getRowIndex()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_masterCell:Lorg/apache/poi/ss/formula/EvaluationCell;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/EvaluationCell;->getRowIndex()I

    move-result v0

    return v0
.end method

.method public getSheet()Lorg/apache/poi/ss/formula/EvaluationSheet;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_sheet:Lorg/apache/poi/ss/formula/EvaluationSheet;

    return-object v0
.end method

.method public getStringCellValue()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->checkCellType(Lorg/apache/poi/ss/usermodel/CellType;)V

    iget-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_stringValue:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Lorg/apache/poi/ss/formula/eval/ValueEval;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->NUMERIC:Lorg/apache/poi/ss/usermodel/CellType;

    .line 10
    .line 11
    iput-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    .line 12
    .line 13
    check-cast p1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 14
    .line 15
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iput-wide v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_numberValue:D

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const-class v1, Lorg/apache/poi/ss/formula/eval/StringEval;

    .line 23
    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    .line 26
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->STRING:Lorg/apache/poi/ss/usermodel/CellType;

    .line 27
    .line 28
    iput-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    .line 29
    .line 30
    check-cast p1, Lorg/apache/poi/ss/formula/eval/StringEval;

    .line 31
    .line 32
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_stringValue:Ljava/lang/String;

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    const-class v1, Lorg/apache/poi/ss/formula/eval/BoolEval;

    .line 40
    .line 41
    if-ne v0, v1, :cond_2

    .line 42
    .line 43
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->BOOLEAN:Lorg/apache/poi/ss/usermodel/CellType;

    .line 44
    .line 45
    iput-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    .line 46
    .line 47
    check-cast p1, Lorg/apache/poi/ss/formula/eval/BoolEval;

    .line 48
    .line 49
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iput-boolean p1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_booleanValue:Z

    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    const-class v1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 57
    .line 58
    if-ne v0, v1, :cond_3

    .line 59
    .line 60
    sget-object v0, Lorg/apache/poi/ss/usermodel/CellType;->ERROR:Lorg/apache/poi/ss/usermodel/CellType;

    .line 61
    .line 62
    iput-object v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    .line 63
    .line 64
    check-cast p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 65
    .line 66
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getErrorCode()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    iput p1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_errorValue:I

    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    const-class p1, Lorg/apache/poi/ss/formula/eval/BlankEval;

    .line 74
    .line 75
    if-ne v0, p1, :cond_4

    .line 76
    .line 77
    sget-object p1, Lorg/apache/poi/ss/usermodel/CellType;->BLANK:Lorg/apache/poi/ss/usermodel/CellType;

    .line 78
    .line 79
    iput-object p1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationCell;->_cellType:Lorg/apache/poi/ss/usermodel/CellType;

    .line 80
    .line 81
    return-void

    .line 82
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 83
    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v2, "Unexpected value class ("

    .line 87
    .line 88
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v2, ")"

    .line 92
    .line 93
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->k(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p1
.end method
