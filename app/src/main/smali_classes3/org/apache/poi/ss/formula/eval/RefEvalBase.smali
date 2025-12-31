.class public abstract Lorg/apache/poi/ss/formula/eval/RefEvalBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/eval/RefEval;


# instance fields
.field private final _columnIndex:I

.field private final _firstSheetIndex:I

.field private final _lastSheetIndex:I

.field private final _rowIndex:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p1, p2, p3}, Lorg/apache/poi/ss/formula/eval/RefEvalBase;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->_firstSheetIndex:I

    iput p2, p0, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->_lastSheetIndex:I

    iput p3, p0, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->_rowIndex:I

    iput p4, p0, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->_columnIndex:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/ss/formula/SheetRange;II)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/SheetRange;->getFirstSheetIndex()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->_firstSheetIndex:I

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/SheetRange;->getLastSheetIndex()I

    move-result p1

    iput p1, p0, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->_lastSheetIndex:I

    iput p2, p0, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->_rowIndex:I

    iput p3, p0, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->_columnIndex:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sheetRange must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getColumn()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->_columnIndex:I

    return v0
.end method

.method public getFirstSheetIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->_firstSheetIndex:I

    return v0
.end method

.method public getLastSheetIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->_lastSheetIndex:I

    return v0
.end method

.method public getNumberOfSheets()I
    .locals 2

    iget v0, p0, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->_lastSheetIndex:I

    iget v1, p0, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->_firstSheetIndex:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getRow()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/eval/RefEvalBase;->_rowIndex:I

    return v0
.end method
