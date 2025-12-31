.class final Lorg/apache/poi/ss/formula/functions/LookupUtils$SheetVector;
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
    name = "SheetVector"
.end annotation


# instance fields
.field private final _re:Lorg/apache/poi/ss/formula/eval/RefEval;

.field private final _size:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/eval/RefEval;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/RefEval;->getNumberOfSheets()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$SheetVector;->_size:I

    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$SheetVector;->_re:Lorg/apache/poi/ss/formula/eval/RefEval;

    return-void
.end method


# virtual methods
.method public getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3

    .line 1
    iget v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$SheetVector;->_size:I

    .line 2
    .line 3
    if-ge p1, v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$SheetVector;->_re:Lorg/apache/poi/ss/formula/eval/RefEval;

    .line 6
    .line 7
    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    add-int/2addr v0, p1

    .line 12
    iget-object p1, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$SheetVector;->_re:Lorg/apache/poi/ss/formula/eval/RefEval;

    .line 13
    .line 14
    invoke-interface {p1, v0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 20
    .line 21
    const-string v1, "Specified index ("

    .line 22
    .line 23
    const-string v2, ") is outside the allowed range (0.."

    .line 24
    .line 25
    invoke-static {p1, v1, v2}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget v1, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$SheetVector;->_size:I

    .line 30
    .line 31
    add-int/lit8 v1, v1, -0x1

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ")"

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$SheetVector;->_size:I

    return v0
.end method
