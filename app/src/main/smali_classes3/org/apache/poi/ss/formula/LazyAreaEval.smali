.class final Lorg/apache/poi/ss/formula/LazyAreaEval;
.super Lorg/apache/poi/ss/formula/eval/AreaEvalBase;
.source "SourceFile"


# instance fields
.field private final _evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;


# direct methods
.method public constructor <init>(IIIILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V
    .locals 6

    .line 1
    move-object v0, p0

    move-object v1, p5

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;-><init>(Lorg/apache/poi/ss/formula/SheetRange;IIII)V

    iput-object p5, p0, Lorg/apache/poi/ss/formula/LazyAreaEval;->_evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/ptg/AreaI;Lorg/apache/poi/ss/formula/SheetRangeEvaluator;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;-><init>(Lorg/apache/poi/ss/formula/ptg/AreaI;Lorg/apache/poi/ss/formula/SheetRange;)V

    iput-object p2, p0, Lorg/apache/poi/ss/formula/LazyAreaEval;->_evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    return-void
.end method


# virtual methods
.method public getColumn(I)Lorg/apache/poi/ss/formula/LazyAreaEval;
    .locals 7

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getFirstColumn()I

    move-result v0

    add-int v5, v0, p1

    new-instance p1, Lorg/apache/poi/ss/formula/LazyAreaEval;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getFirstRow()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getLastRow()I

    move-result v4

    iget-object v6, p0, Lorg/apache/poi/ss/formula/LazyAreaEval;->_evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-object v1, p1

    move v3, v5

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/formula/LazyAreaEval;-><init>(IIIILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid columnIndex "

    const-string v2, ".  Allowable range is (0.."

    .line 1
    invoke-static {p1, v1, v2}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getWidth()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getColumn(I)Lorg/apache/poi/ss/formula/TwoDEval;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/LazyAreaEval;->getColumn(I)Lorg/apache/poi/ss/formula/LazyAreaEval;

    move-result-object p1

    return-object p1
.end method

.method public getRelativeValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getFirstSheetIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/poi/ss/formula/LazyAreaEval;->getRelativeValue(III)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1
.end method

.method public getRelativeValue(III)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getFirstRow()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getFirstColumn()I

    move-result p2

    add-int/2addr p2, p3

    iget-object p3, p0, Lorg/apache/poi/ss/formula/LazyAreaEval;->_evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    invoke-virtual {p3, p1, v0, p2}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->getEvalForCell(III)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1
.end method

.method public getRow(I)Lorg/apache/poi/ss/formula/LazyAreaEval;
    .locals 7

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getHeight()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getFirstRow()I

    move-result v0

    add-int v4, v0, p1

    new-instance p1, Lorg/apache/poi/ss/formula/LazyAreaEval;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getFirstColumn()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getLastColumn()I

    move-result v5

    iget-object v6, p0, Lorg/apache/poi/ss/formula/LazyAreaEval;->_evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    move-object v1, p1

    move v2, v4

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/ss/formula/LazyAreaEval;-><init>(IIIILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid rowIndex "

    const-string v2, ".  Allowable range is (0.."

    .line 1
    invoke-static {p1, v1, v2}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getHeight()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getRow(I)Lorg/apache/poi/ss/formula/TwoDEval;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/LazyAreaEval;->getRow(I)Lorg/apache/poi/ss/formula/LazyAreaEval;

    move-result-object p1

    return-object p1
.end method

.method public isSubTotal(II)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ss/formula/LazyAreaEval;->_evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->getFirstSheetIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->getSheetEvaluator(I)Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getFirstRow()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getFirstColumn()I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->isSubTotal(II)Z

    move-result p1

    return p1
.end method

.method public offset(IIII)Lorg/apache/poi/ss/formula/eval/AreaEval;
    .locals 8

    new-instance v7, Lorg/apache/poi/ss/formula/ptg/AreaI$OffsetArea;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getFirstRow()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getFirstColumn()I

    move-result v2

    move-object v0, v7

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/ss/formula/ptg/AreaI$OffsetArea;-><init>(IIIIII)V

    new-instance p1, Lorg/apache/poi/ss/formula/LazyAreaEval;

    iget-object p2, p0, Lorg/apache/poi/ss/formula/LazyAreaEval;->_evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    invoke-direct {p1, v7, p2}, Lorg/apache/poi/ss/formula/LazyAreaEval;-><init>(Lorg/apache/poi/ss/formula/ptg/AreaI;Lorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getFirstRow()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getFirstColumn()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lorg/apache/poi/ss/util/CellReference;

    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getLastRow()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getLastColumn()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-direct {v1, v2, v3}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-class v3, Lorg/apache/poi/ss/formula/LazyAreaEval;

    .line 33
    .line 34
    const-string v4, "["

    .line 35
    .line 36
    invoke-static {v3, v2, v4}, Lch/qos/logback/core/joran/util/a;->y(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v3, p0, Lorg/apache/poi/ss/formula/LazyAreaEval;->_evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    .line 40
    .line 41
    invoke-virtual {v3}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->getSheetNameRange()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const/16 v3, 0x21

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const/16 v0, 0x3a

    .line 61
    .line 62
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v0, "]"

    .line 73
    .line 74
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    return-object v0
.end method
