.class public abstract Lorg/apache/poi/ss/formula/eval/AreaEvalBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/eval/AreaEval;


# instance fields
.field private final _firstColumn:I

.field private final _firstRow:I

.field private final _firstSheet:I

.field private final _lastColumn:I

.field private final _lastRow:I

.field private final _lastSheet:I

.field private final _nColumns:I

.field private final _nRows:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 6

    .line 1
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;-><init>(Lorg/apache/poi/ss/formula/SheetRange;IIII)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/SheetRange;IIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_firstColumn:I

    iput p2, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_firstRow:I

    iput p5, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_lastColumn:I

    iput p4, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_lastRow:I

    sub-int/2addr p5, p3

    add-int/lit8 p5, p5, 0x1

    iput p5, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_nColumns:I

    sub-int/2addr p4, p2

    add-int/lit8 p4, p4, 0x1

    iput p4, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_nRows:I

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/SheetRange;->getFirstSheetIndex()I

    move-result p2

    iput p2, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_firstSheet:I

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/SheetRange;->getLastSheetIndex()I

    move-result p1

    :goto_0
    iput p1, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_lastSheet:I

    goto :goto_1

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_firstSheet:I

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/ptg/AreaI;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;-><init>(Lorg/apache/poi/ss/formula/ptg/AreaI;Lorg/apache/poi/ss/formula/SheetRange;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/ptg/AreaI;Lorg/apache/poi/ss/formula/SheetRange;)V
    .locals 6

    .line 4
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/ptg/AreaI;->getFirstRow()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/ptg/AreaI;->getFirstColumn()I

    move-result v3

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/ptg/AreaI;->getLastRow()I

    move-result v4

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/ptg/AreaI;->getLastColumn()I

    move-result v5

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;-><init>(Lorg/apache/poi/ss/formula/SheetRange;IIII)V

    return-void
.end method


# virtual methods
.method public final contains(II)Z
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_firstRow:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_lastRow:I

    if-lt v0, p1, :cond_0

    iget p1, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_firstColumn:I

    if-gt p1, p2, :cond_0

    iget p1, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_lastColumn:I

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final containsColumn(I)Z
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_firstColumn:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_lastColumn:I

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final containsRow(I)Z
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_firstRow:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_lastRow:I

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final getAbsoluteValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6

    .line 1
    iget v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_firstRow:I

    .line 2
    .line 3
    sub-int v0, p1, v0

    .line 4
    .line 5
    iget v1, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_firstColumn:I

    .line 6
    .line 7
    sub-int v1, p2, v1

    .line 8
    .line 9
    const-string v2, ")"

    .line 10
    .line 11
    const-string v3, ".."

    .line 12
    .line 13
    const-string v4, ") is outside the allowed range ("

    .line 14
    .line 15
    if-ltz v0, :cond_1

    .line 16
    .line 17
    iget v5, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_nRows:I

    .line 18
    .line 19
    if-ge v0, v5, :cond_1

    .line 20
    .line 21
    if-ltz v1, :cond_0

    .line 22
    .line 23
    iget p1, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_nColumns:I

    .line 24
    .line 25
    if-ge v1, p1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getRelativeValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    const-string v0, "Specified column index ("

    .line 35
    .line 36
    invoke-static {p2, v0, v4}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget v1, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_firstColumn:I

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 63
    .line 64
    const-string v0, "Specified row index ("

    .line 65
    .line 66
    invoke-static {p1, v0, v4}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_firstRow:I

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_lastRow:I

    .line 79
    .line 80
    invoke-static {v2, v0, p1}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p2
.end method

.method public final getFirstColumn()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_firstColumn:I

    return v0
.end method

.method public final getFirstRow()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_firstRow:I

    return v0
.end method

.method public getFirstSheetIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_firstSheet:I

    return v0
.end method

.method public getHeight()I
    .locals 2

    iget v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_lastRow:I

    iget v1, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_firstRow:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getLastColumn()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_lastColumn:I

    return v0
.end method

.method public final getLastRow()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_lastRow:I

    return v0
.end method

.method public getLastSheetIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_lastSheet:I

    return v0
.end method

.method public abstract getRelativeValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;
.end method

.method public abstract getRelativeValue(III)Lorg/apache/poi/ss/formula/eval/ValueEval;
.end method

.method public final getValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getRelativeValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1
.end method

.method public final getValue(III)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getRelativeValue(III)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1
.end method

.method public getWidth()I
    .locals 2

    iget v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_lastColumn:I

    iget v1, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_firstColumn:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final isColumn()Z
    .locals 2

    iget v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_firstColumn:I

    iget v1, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_lastColumn:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isRow()Z
    .locals 2

    iget v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_firstRow:I

    iget v1, p0, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->_lastRow:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSubTotal(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
