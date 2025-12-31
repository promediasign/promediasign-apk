.class final Lorg/apache/poi/ss/formula/functions/LookupUtils$ColumnVector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/LookupUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ColumnVector"
.end annotation


# instance fields
.field private final _columnIndex:I

.field private final _size:I

.field private final _tableArray:Lorg/apache/poi/ss/formula/TwoDEval;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/TwoDEval;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$ColumnVector;->_columnIndex:I

    .line 5
    .line 6
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/TwoDEval;->getWidth()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    add-int/lit8 v0, v0, -0x1

    .line 11
    .line 12
    if-ltz p2, :cond_0

    .line 13
    .line 14
    if-gt p2, v0, :cond_0

    .line 15
    .line 16
    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$ColumnVector;->_tableArray:Lorg/apache/poi/ss/formula/TwoDEval;

    .line 17
    .line 18
    invoke-interface {p1}, Lorg/apache/poi/ss/formula/TwoDEval;->getHeight()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput p1, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$ColumnVector;->_size:I

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    const-string v1, "Specified column index ("

    .line 28
    .line 29
    const-string v2, ") is outside the allowed range (0.."

    .line 30
    .line 31
    const-string v3, ")"

    .line 32
    .line 33
    invoke-static {v1, p2, v2, v0, v3}, Ls/a;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method


# virtual methods
.method public getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3

    .line 1
    iget v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$ColumnVector;->_size:I

    .line 2
    .line 3
    if-gt p1, v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$ColumnVector;->_tableArray:Lorg/apache/poi/ss/formula/TwoDEval;

    .line 6
    .line 7
    iget v1, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$ColumnVector;->_columnIndex:I

    .line 8
    .line 9
    invoke-interface {v0, p1, v1}, Lorg/apache/poi/ss/formula/TwoDEval;->getValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 15
    .line 16
    const-string v1, "Specified index ("

    .line 17
    .line 18
    const-string v2, ") is outside the allowed range (0.."

    .line 19
    .line 20
    invoke-static {p1, v1, v2}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget v1, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$ColumnVector;->_size:I

    .line 25
    .line 26
    add-int/lit8 v1, v1, -0x1

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ")"

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$ColumnVector;->_size:I

    return v0
.end method
