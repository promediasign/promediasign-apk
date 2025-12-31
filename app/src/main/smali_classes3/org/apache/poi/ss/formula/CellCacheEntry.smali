.class abstract Lorg/apache/poi/ss/formula/CellCacheEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/IEvaluationListener$ICacheEntry;


# static fields
.field public static final EMPTY_ARRAY:[Lorg/apache/poi/ss/formula/CellCacheEntry;


# instance fields
.field private final _consumingCells:Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;

.field private _value:Lorg/apache/poi/ss/formula/eval/ValueEval;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/poi/ss/formula/CellCacheEntry;

    sput-object v0, Lorg/apache/poi/ss/formula/CellCacheEntry;->EMPTY_ARRAY:[Lorg/apache/poi/ss/formula/CellCacheEntry;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/ss/formula/CellCacheEntry;->_consumingCells:Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;

    return-void
.end method

.method private static areValuesEqual(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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
    if-ne p0, v2, :cond_3

    .line 20
    .line 21
    if-ne p1, p0, :cond_2

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
    check-cast p0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 30
    .line 31
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    check-cast p1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    .line 36
    .line 37
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    .line 38
    .line 39
    .line 40
    move-result-wide p0

    .line 41
    cmpl-double v4, v1, p0

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
    check-cast p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    .line 52
    .line 53
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    check-cast p1, Lorg/apache/poi/ss/formula/eval/StringEval;

    .line 58
    .line 59
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    return p0

    .line 68
    :cond_6
    const-class v2, Lorg/apache/poi/ss/formula/eval/BoolEval;

    .line 69
    .line 70
    if-ne v1, v2, :cond_8

    .line 71
    .line 72
    check-cast p0, Lorg/apache/poi/ss/formula/eval/BoolEval;

    .line 73
    .line 74
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    check-cast p1, Lorg/apache/poi/ss/formula/eval/BoolEval;

    .line 79
    .line 80
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-ne p0, p1, :cond_7

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
    check-cast p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 93
    .line 94
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getErrorCode()I

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    check-cast p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    .line 99
    .line 100
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->getErrorCode()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-ne p0, p1, :cond_9

    .line 105
    .line 106
    const/4 v0, 0x1

    .line 107
    :cond_9
    return v0

    .line 108
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 109
    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v0, "Unexpected value class ("

    .line 113
    .line 114
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    const-string v0, ")"

    .line 118
    .line 119
    invoke-static {v1, p1, v0}, Lch/qos/logback/core/joran/util/a;->k(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw p0
.end method


# virtual methods
.method public final addConsumingCell(Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/CellCacheEntry;->_consumingCells:Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->add(Lorg/apache/poi/ss/formula/CellCacheEntry;)V

    return-void
.end method

.method public final clearConsumingCell(Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/CellCacheEntry;->_consumingCells:Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;

    invoke-virtual {v0, p1}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->remove(Lorg/apache/poi/ss/formula/CellCacheEntry;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Specified formula cell is not consumed by this cell"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final clearValue()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/CellCacheEntry;->_value:Lorg/apache/poi/ss/formula/eval/ValueEval;

    return-void
.end method

.method public final getConsumingCells()[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/CellCacheEntry;->_consumingCells:Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntrySet;->toArray()[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/CellCacheEntry;->_value:Lorg/apache/poi/ss/formula/eval/ValueEval;

    return-object v0
.end method

.method public final recurseClearCachedFormulaResults()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/CellCacheEntry;->getConsumingCells()[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->clearFormulaEntry()V

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/CellCacheEntry;->recurseClearCachedFormulaResults()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final recurseClearCachedFormulaResults(Lorg/apache/poi/ss/formula/IEvaluationListener;)V
    .locals 1

    .line 2
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/CellCacheEntry;->recurseClearCachedFormulaResults()V

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, Lorg/apache/poi/ss/formula/IEvaluationListener;->onClearCachedValue(Lorg/apache/poi/ss/formula/IEvaluationListener$ICacheEntry;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/ss/formula/CellCacheEntry;->recurseClearCachedFormulaResults(Lorg/apache/poi/ss/formula/IEvaluationListener;I)V

    :goto_0
    return-void
.end method

.method public final recurseClearCachedFormulaResults(Lorg/apache/poi/ss/formula/IEvaluationListener;I)V
    .locals 4

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/CellCacheEntry;->getConsumingCells()[Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/formula/IEvaluationListener;->sortDependentCachedValues([Lorg/apache/poi/ss/formula/IEvaluationListener$ICacheEntry;)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-interface {p1, v2, p2}, Lorg/apache/poi/ss/formula/IEvaluationListener;->onClearDependentCachedValue(Lorg/apache/poi/ss/formula/IEvaluationListener$ICacheEntry;I)V

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/FormulaCellCacheEntry;->clearFormulaEntry()V

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, p1, v3}, Lorg/apache/poi/ss/formula/CellCacheEntry;->recurseClearCachedFormulaResults(Lorg/apache/poi/ss/formula/IEvaluationListener;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateValue(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/poi/ss/formula/CellCacheEntry;->_value:Lorg/apache/poi/ss/formula/eval/ValueEval;

    invoke-static {v0, p1}, Lorg/apache/poi/ss/formula/CellCacheEntry;->areValuesEqual(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-object p1, p0, Lorg/apache/poi/ss/formula/CellCacheEntry;->_value:Lorg/apache/poi/ss/formula/eval/ValueEval;

    return v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Did not expect to update to null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
