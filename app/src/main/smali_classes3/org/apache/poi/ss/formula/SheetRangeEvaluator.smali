.class final Lorg/apache/poi/ss/formula/SheetRangeEvaluator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/SheetRange;


# instance fields
.field private final _firstSheetIndex:I

.field private final _lastSheetIndex:I

.field private _sheetEvaluators:[Lorg/apache/poi/ss/formula/SheetRefEvaluator;


# direct methods
.method public constructor <init>(II[Lorg/apache/poi/ss/formula/SheetRefEvaluator;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "."

    if-ltz p1, :cond_1

    if-lt p2, p1, :cond_0

    iput p1, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_firstSheetIndex:I

    iput p2, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_lastSheetIndex:I

    invoke-virtual {p3}, [Lorg/apache/poi/ss/formula/SheetRefEvaluator;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    iput-object p1, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_sheetEvaluators:[Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    return-void

    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid lastSheetIndex: "

    const-string v2, " for firstSheetIndex: "

    .line 1
    invoke-static {v1, p2, v2, p1, v0}, Ls/a;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Invalid firstSheetIndex: "

    .line 3
    invoke-static {p1, p3, v0}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(ILorg/apache/poi/ss/formula/SheetRefEvaluator;)V
    .locals 2

    .line 17
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, p1, v0}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;-><init>(II[Lorg/apache/poi/ss/formula/SheetRefEvaluator;)V

    return-void
.end method


# virtual methods
.method public getEvalForCell(III)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->getSheetEvaluator(I)Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->getEvalForCell(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1
.end method

.method public getFirstSheetIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_firstSheetIndex:I

    return v0
.end method

.method public getLastSheetIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_lastSheetIndex:I

    return v0
.end method

.method public getSheetEvaluator(I)Lorg/apache/poi/ss/formula/SheetRefEvaluator;
    .locals 3

    .line 1
    iget v0, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_firstSheetIndex:I

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_lastSheetIndex:I

    .line 6
    .line 7
    if-gt p1, v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_sheetEvaluators:[Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    .line 10
    .line 11
    sub-int/2addr p1, v0

    .line 12
    aget-object p1, v1, p1

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string v1, "Invalid SheetIndex: "

    .line 18
    .line 19
    const-string v2, " - Outside range "

    .line 20
    .line 21
    invoke-static {p1, v1, v2}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget v1, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_firstSheetIndex:I

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, " : "

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget v1, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_lastSheetIndex:I

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0
.end method

.method public getSheetName(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->getSheetEvaluator(I)Lorg/apache/poi/ss/formula/SheetRefEvaluator;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/SheetRefEvaluator;->getSheetName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSheetNameRange()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_firstSheetIndex:I

    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->getSheetName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_firstSheetIndex:I

    iget v2, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_lastSheetIndex:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->_lastSheetIndex:I

    invoke-virtual {p0, v1}, Lorg/apache/poi/ss/formula/SheetRangeEvaluator;->getSheetName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
