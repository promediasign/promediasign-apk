.class abstract Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$ValueArray;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ValueArray"
.end annotation


# instance fields
.field private final _size:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$ValueArray;->_size:I

    return-void
.end method


# virtual methods
.method public getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$ValueArray;->_size:I

    .line 4
    .line 5
    if-gt p1, v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$ValueArray;->getItemInternal(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v1, "Specified index "

    .line 15
    .line 16
    const-string v2, " is outside range (0.."

    .line 17
    .line 18
    invoke-static {p1, v1, v2}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget v1, p0, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$ValueArray;->_size:I

    .line 23
    .line 24
    add-int/lit8 v1, v1, -0x1

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, ")"

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0
.end method

.method public abstract getItemInternal(I)Lorg/apache/poi/ss/formula/eval/ValueEval;
.end method

.method public final getSize()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$ValueArray;->_size:I

    return v0
.end method
