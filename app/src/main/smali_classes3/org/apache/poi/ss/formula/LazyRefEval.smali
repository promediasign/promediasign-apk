.class public final Lorg/apache/poi/ss/formula/LazyRefEval;
.super Lorg/apache/poi/ss/formula/eval/RefEvalBase;
.source "SourceFile"


# instance fields
.field private final _evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;


# direct methods
.method public constructor <init>(IILorg/apache/poi/ss/formula/SheetRangeEvaluator;)V
    .locals 0

    invoke-direct {p0, p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/RefEvalBase;-><init>(Lorg/apache/poi/ss/formula/SheetRange;II)V

    iput-object p3, p0, Lorg/apache/poi/ss/formula/LazyRefEval;->_evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    return-void
.end method


# virtual methods
.method public getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/ss/formula/LazyRefEval;->_evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->getRow()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->getColumn()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->getEvalForCell(III)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1
.end method

.method public isSubTotal()Z
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/ss/formula/LazyRefEval;->_evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->getFirstSheetIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->getSheetEvaluator(I)Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->getRow()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->getColumn()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->isSubTotal(II)Z

    move-result v0

    return v0
.end method

.method public offset(IIII)Lorg/apache/poi/ss/formula/eval/AreaEval;
    .locals 8

    new-instance v7, Lorg/apache/poi/ss/formula/ptg/AreaI$OffsetArea;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->getRow()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->getColumn()I

    move-result v2

    move-object v0, v7

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/ss/formula/ptg/AreaI$OffsetArea;-><init>(IIIIII)V

    new-instance p1, Lorg/apache/poi/ss/formula/LazyAreaEval;

    iget-object p2, p0, Lorg/apache/poi/ss/formula/LazyRefEval;->_evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    invoke-direct {p1, v7, p2}, Lorg/apache/poi/ss/formula/LazyAreaEval;-><init>(Lorg/apache/poi/ss/formula/ptg/AreaI;Lorg/apache/poi/ss/formula/SheetRangeEvaluator;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lorg/apache/poi/ss/util/CellReference;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->getRow()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->getColumn()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/util/CellReference;-><init>(II)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-class v2, Lorg/apache/poi/ss/formula/LazyRefEval;

    .line 20
    .line 21
    const-string v3, "["

    .line 22
    .line 23
    invoke-static {v2, v1, v3}, Lch/qos/logback/core/joran/util/a;->y(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lorg/apache/poi/ss/formula/LazyRefEval;->_evaluator:Lorg/apache/poi/ss/formula/SheetRangeEvaluator;

    .line 27
    .line 28
    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->getSheetNameRange()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const/16 v2, 0x21

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v0, "]"

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method
