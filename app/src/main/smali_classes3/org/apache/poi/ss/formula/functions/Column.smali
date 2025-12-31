.class public final Lorg/apache/poi/ss/formula/functions/Column;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function0Arg;
.implements Lorg/apache/poi/ss/formula/functions/Function1Arg;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2

    .line 1
    new-instance p1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    add-int/lit8 p2, p2, 0x1

    int-to-double v0, p2

    invoke-direct {p1, v0, v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p1
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2

    .line 2
    instance-of p1, p3, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-eqz p1, :cond_0

    check-cast p3, Lorg/apache/poi/ss/formula/eval/AreaEval;

    invoke-interface {p3}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getFirstColumn()I

    move-result p1

    goto :goto_0

    :cond_0
    instance-of p1, p3, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz p1, :cond_1

    check-cast p3, Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-interface {p3}, Lorg/apache/poi/ss/formula/eval/RefEval;->getColumn()I

    move-result p1

    :goto_0
    new-instance p2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    add-int/lit8 p1, p1, 0x1

    int-to-double v0, p1

    invoke-direct {p2, v0, v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p2

    :cond_1
    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1
.end method

.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2

    .line 3
    array-length v0, p1

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p0, p2, p3, p1}, Lorg/apache/poi/ss/formula/functions/Column;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    add-int/2addr p3, v1

    int-to-double p2, p3

    invoke-direct {p1, p2, p3}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p1
.end method
