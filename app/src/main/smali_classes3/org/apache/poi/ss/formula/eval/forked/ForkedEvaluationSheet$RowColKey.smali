.class final Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RowColKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;",
        ">;"
    }
.end annotation


# instance fields
.field private final _columnIndex:I

.field private final _rowIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;->_rowIndex:I

    iput p2, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;->_columnIndex:I

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;->compareTo(Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;)I
    .locals 2

    .line 2
    iget v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;->_rowIndex:I

    iget v1, p1, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;->_rowIndex:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;->_columnIndex:I

    iget p1, p1, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;->_columnIndex:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;

    iget v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;->_rowIndex:I

    iget v2, p1, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;->_rowIndex:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;->_columnIndex:I

    iget p1, p1, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;->_columnIndex:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getColumnIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;->_columnIndex:I

    return v0
.end method

.method public getRowIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;->_rowIndex:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;->_rowIndex:I

    iget v1, p0, Lorg/apache/poi/ss/formula/eval/forked/ForkedEvaluationSheet$RowColKey;->_columnIndex:I

    xor-int/2addr v0, v1

    return v0
.end method
