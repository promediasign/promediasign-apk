.class final Lorg/apache/poi/ss/formula/EvaluationCache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final _evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

.field private final _formulaCellCache:Lorg/apache/poi/ss/formula/FormulaCellCache;

.field private final _plainCellCache:Lorg/apache/poi/ss/formula/PlainCellCache;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/IEvaluationListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    new-instance p1, Lorg/apache/poi/ss/formula/PlainCellCache;

    invoke-direct {p1}, Lorg/apache/poi/ss/formula/PlainCellCache;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_plainCellCache:Lorg/apache/poi/ss/formula/PlainCellCache;

    new-instance p1, Lorg/apache/poi/ss/formula/FormulaCellCache;

    invoke-direct {p1}, Lorg/apache/poi/ss/formula/FormulaCellCache;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_formulaCellCache:Lorg/apache/poi/ss/formula/FormulaCellCache;

    return-void
.end method

.method private areValuesEqual(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eq v1, v2, :cond_1

    .line 14
    .line 15
    return v0

    .line 16
    :cond_1
    sget-object v2, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    if-ne p1, v2, :cond_3

    .line 20
    .line 21
    if-ne p2, p1, :cond_2

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    :cond_2
    return v0

    .line 25
    :cond_3
    const-class v2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 26
    .line 27
    if-ne v1, v2, :cond_5

    .line 28
    .line 29
    check-cast p1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 30
    .line 31
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    check-cast p2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 36
    .line 37
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    .line 38
    .line 39
    .line 40
    move-result-wide p1

    .line 41
    cmpl-double v4, v1, p1

    .line 42
    .line 43
    if-nez v4, :cond_4

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    :cond_4
    return v0

    .line 47
    :cond_5
    const-class v2, Lorg/apache/poi/ss/formula/eval/StringEval;

    .line 48
    .line 49
    if-ne v1, v2, :cond_6

    .line 50
    .line 51
    check-cast p1, Lorg/apache/poi/ss/formula/eval/StringEval;

    .line 52
    .line 53
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p2, Lorg/apache/poi/ss/formula/eval/StringEval;

    .line 58
    .line 59
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    return p1

    .line 68
    :cond_6
    const-class v2, Lorg/apache/poi/ss/formula/eval/BoolEval;

    .line 69
    .line 70
    if-ne v1, v2, :cond_8

    .line 71
    .line 72
    check-cast p1, Lorg/apache/poi/ss/formula/eval/BoolEval;

    .line 73
    .line 74
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    check-cast p2, Lorg/apache/poi/ss/formula/eval/BoolEval;

    .line 79
    .line 80
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-ne p1, p2, :cond_7

    .line 85
    .line 86
    const/4 v0, 0x1

    .line 87
    :cond_7
    return v0

    .line 88
    :cond_8
    const-class v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 89
    .line 90
    if-ne v1, v2, :cond_a

    .line 91
    .line 92
    check-cast p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 93
    .line 94
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getErrorCode()I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    check-cast p2, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 99
    .line 100
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getErrorCode()I

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    if-ne p1, p2, :cond_9

    .line 105
    .line 106
    const/4 v0, 0x1

    .line 107
    :cond_9
    return v0

    .line 108
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 109
    .line 110
    new-instance p2, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v0, "Unexpected value class ("

    .line 113
    .line 114
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const-string v0, ")"

    .line 118
    .line 119
    invoke-static {v1, p2, v0}, Lch/qos/logback/core/joran/util/a;->k(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p1
.end method

.method private updateAnyBlankReferencingFormulas(IIII)V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;-><init>(II)V

    iget-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_formulaCellCache:Lorg/apache/poi/ss/formula/FormulaCellCache;

    new-instance p2, Lorg/apache/poi/ss/formula/EvaluationCache$1;

    invoke-direct {p2, p0, v0, p3, p4}, Lorg/apache/poi/ss/formula/EvaluationCache$1;-><init>(Lorg/apache/poi/ss/formula/EvaluationCache;Lorg/apache/poi/ss/formula/FormulaUsedBlankCellSet$BookSheetKey;II)V

    invoke-virtual {p1, p2}, Lorg/apache/poi/ss/formula/FormulaCellCache;->applyOperation(Lorg/apache/poi/ss/formula/FormulaCellCache$IEntryOperation;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/IEvaluationListener;->onClearWholeCache()V

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_plainCellCache:Lorg/apache/poi/ss/formula/PlainCellCache;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/PlainCellCache;->clear()V

    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_formulaCellCache:Lorg/apache/poi/ss/formula/FormulaCellCache;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/FormulaCellCache;->clear()V

    return-void
.end method

.method public getOrCreateFormulaCellEntry(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_formulaCellCache:Lorg/apache/poi/ss/formula/FormulaCellCache;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/FormulaCellCache;->get(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_formulaCellCache:Lorg/apache/poi/ss/formula/FormulaCellCache;

    invoke-virtual {v1, p1, v0}, Lorg/apache/poi/ss/formula/FormulaCellCache;->put(Lorg/apache/poi/ss/formula/EvaluationCell;Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;)V

    :cond_0
    return-object v0
.end method

.method public getPlainValueEntry(IIIILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;-><init>(IIII)V

    iget-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_plainCellCache:Lorg/apache/poi/ss/formula/PlainCellCache;

    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/PlainCellCache;->get(Lorg/apache/poi/ss/formula/PlainCellCache$Loc;)Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;

    invoke-direct {p1, p5}, Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;-><init>(Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    iget-object p5, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_plainCellCache:Lorg/apache/poi/ss/formula/PlainCellCache;

    invoke-virtual {p5, v0, p1}, Lorg/apache/poi/ss/formula/PlainCellCache;->put(Lorg/apache/poi/ss/formula/PlainCellCache$Loc;Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;)V

    iget-object p5, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    if-eqz p5, :cond_1

    invoke-interface {p5, p2, p3, p4, p1}, Lorg/apache/poi/ss/formula/IEvaluationListener;->onReadPlainValue(IIILorg/apache/poi/ss/formula/IEvaluationListener$ICacheEntry;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/CellCacheEntry;->getValue()Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    invoke-direct {p0, v0, p5}, Lorg/apache/poi/ss/formula/EvaluationCache;->areValuesEqual(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p2, p3, p4, p5}, Lorg/apache/poi/ss/formula/IEvaluationListener;->onCacheHit(IIILorg/apache/poi/ss/formula/eval/ValueEval;)V

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "value changed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public notifyDeleteCell(IILorg/apache/poi/ss/formula/EvaluationCell;)V
    .locals 2

    invoke-interface {p3}, Lorg/apache/poi/ss/formula/EvaluationCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_formulaCellCache:Lorg/apache/poi/ss/formula/FormulaCellCache;

    invoke-virtual {p1, p3}, Lorg/apache/poi/ss/formula/FormulaCellCache;->remove(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->setSensitiveInputCells([Lorg/apache/poi/ss/formula/CellCacheEntry;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;

    invoke-interface {p3}, Lorg/apache/poi/ss/formula/EvaluationCell;->getRowIndex()I

    move-result v1

    invoke-interface {p3}, Lorg/apache/poi/ss/formula/EvaluationCell;->getColumnIndex()I

    move-result p3

    invoke-direct {v0, p1, p2, v1, p3}, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;-><init>(IIII)V

    iget-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_plainCellCache:Lorg/apache/poi/ss/formula/PlainCellCache;

    invoke-virtual {p1, v0}, Lorg/apache/poi/ss/formula/PlainCellCache;->get(Lorg/apache/poi/ss/formula/PlainCellCache$Loc;)Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p2, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    invoke-virtual {p1, p2}, Lorg/apache/poi/ss/formula/CellCacheEntry;->recurseClearCachedFormulaResults(Lorg/apache/poi/ss/formula/IEvaluationListener;)V

    :goto_1
    return-void
.end method

.method public notifyUpdateCell(IILorg/apache/poi/ss/formula/EvaluationCell;)V
    .locals 11

    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_formulaCellCache:Lorg/apache/poi/ss/formula/FormulaCellCache;

    invoke-virtual {v0, p3}, Lorg/apache/poi/ss/formula/FormulaCellCache;->get(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    move-result-object v0

    invoke-interface {p3}, Lorg/apache/poi/ss/formula/EvaluationCell;->getRowIndex()I

    move-result v7

    invoke-interface {p3}, Lorg/apache/poi/ss/formula/EvaluationCell;->getColumnIndex()I

    move-result v8

    new-instance v9, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;

    invoke-direct {v9, p1, p2, v7, v8}, Lorg/apache/poi/ss/formula/PlainCellCache$Loc;-><init>(IIII)V

    iget-object v1, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_plainCellCache:Lorg/apache/poi/ss/formula/PlainCellCache;

    invoke-virtual {v1, v9}, Lorg/apache/poi/ss/formula/PlainCellCache;->get(Lorg/apache/poi/ss/formula/PlainCellCache$Loc;)Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;

    move-result-object v10

    invoke-interface {p3}, Lorg/apache/poi/ss/formula/EvaluationCell;->getCellTypeEnum()Lorg/apache/poi/ss/usermodel/CellType;

    move-result-object v1

    sget-object v2, Lorg/apache/poi/ss/usermodel/CellType;->FORMULA:Lorg/apache/poi/ss/usermodel/CellType;

    if-ne v1, v2, :cond_4

    if-nez v0, :cond_2

    new-instance v0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;-><init>()V

    if-nez v10, :cond_1

    iget-object v1, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    if-eqz v1, :cond_0

    move v2, p2

    move v3, v7

    move v4, v8

    move-object v5, p3

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lorg/apache/poi/ss/formula/IEvaluationListener;->onChangeFromBlankValue(IIILorg/apache/poi/ss/formula/EvaluationCell;Lorg/apache/poi/ss/formula/IEvaluationListener$ICacheEntry;)V

    :cond_0
    invoke-direct {p0, p1, p2, v7, v8}, Lorg/apache/poi/ss/formula/EvaluationCache;->updateAnyBlankReferencingFormulas(IIII)V

    :cond_1
    iget-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_formulaCellCache:Lorg/apache/poi/ss/formula/FormulaCellCache;

    invoke-virtual {p1, p3, v0}, Lorg/apache/poi/ss/formula/FormulaCellCache;->put(Lorg/apache/poi/ss/formula/EvaluationCell;Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/CellCacheEntry;->recurseClearCachedFormulaResults(Lorg/apache/poi/ss/formula/IEvaluationListener;)V

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->clearFormulaEntry()V

    :goto_0
    if-nez v10, :cond_3

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    invoke-virtual {v10, p1}, Lorg/apache/poi/ss/formula/CellCacheEntry;->recurseClearCachedFormulaResults(Lorg/apache/poi/ss/formula/IEvaluationListener;)V

    iget-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_plainCellCache:Lorg/apache/poi/ss/formula/PlainCellCache;

    invoke-virtual {p1, v9}, Lorg/apache/poi/ss/formula/PlainCellCache;->remove(Lorg/apache/poi/ss/formula/PlainCellCache$Loc;)V

    goto :goto_2

    :cond_4
    invoke-static {p3}, Lorg/apache/poi/ss/formula/WorkbookEvaluator;->getValueFromNonFormulaCell(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    if-nez v10, :cond_7

    sget-object v2, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-eq v1, v2, :cond_9

    new-instance v10, Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;

    invoke-direct {v10, v1}, Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;-><init>(Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    if-nez v0, :cond_6

    iget-object v1, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    if-eqz v1, :cond_5

    move v2, p2

    move v3, v7

    move v4, v8

    move-object v5, p3

    move-object v6, v10

    invoke-interface/range {v1 .. v6}, Lorg/apache/poi/ss/formula/IEvaluationListener;->onChangeFromBlankValue(IIILorg/apache/poi/ss/formula/EvaluationCell;Lorg/apache/poi/ss/formula/IEvaluationListener$ICacheEntry;)V

    :cond_5
    invoke-direct {p0, p1, p2, v7, v8}, Lorg/apache/poi/ss/formula/EvaluationCache;->updateAnyBlankReferencingFormulas(IIII)V

    :cond_6
    iget-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_plainCellCache:Lorg/apache/poi/ss/formula/PlainCellCache;

    invoke-virtual {p1, v9, v10}, Lorg/apache/poi/ss/formula/PlainCellCache;->put(Lorg/apache/poi/ss/formula/PlainCellCache$Loc;Lorg/apache/poi/ss/formula/PlainValueCellCacheEntry;)V

    goto :goto_1

    :cond_7
    invoke-virtual {v10, v1}, Lorg/apache/poi/ss/formula/CellCacheEntry;->updateValue(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    invoke-virtual {v10, p1}, Lorg/apache/poi/ss/formula/CellCacheEntry;->recurseClearCachedFormulaResults(Lorg/apache/poi/ss/formula/IEvaluationListener;)V

    :cond_8
    sget-object p1, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne v1, p1, :cond_9

    iget-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_plainCellCache:Lorg/apache/poi/ss/formula/PlainCellCache;

    invoke-virtual {p1, v9}, Lorg/apache/poi/ss/formula/PlainCellCache;->remove(Lorg/apache/poi/ss/formula/PlainCellCache$Loc;)V

    :cond_9
    :goto_1
    if-nez v0, :cond_a

    goto :goto_2

    :cond_a
    iget-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_formulaCellCache:Lorg/apache/poi/ss/formula/FormulaCellCache;

    invoke-virtual {p1, p3}, Lorg/apache/poi/ss/formula/FormulaCellCache;->remove(Lorg/apache/poi/ss/formula/EvaluationCell;)Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->setSensitiveInputCells([Lorg/apache/poi/ss/formula/CellCacheEntry;)V

    iget-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationCache;->_evaluationListener:Lorg/apache/poi/ss/formula/IEvaluationListener;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/CellCacheEntry;->recurseClearCachedFormulaResults(Lorg/apache/poi/ss/formula/IEvaluationListener;)V

    :goto_2
    return-void
.end method
