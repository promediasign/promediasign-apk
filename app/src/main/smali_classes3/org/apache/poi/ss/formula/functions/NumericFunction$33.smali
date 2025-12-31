.class final Lorg/apache/poi/ss/formula/functions/NumericFunction$33;
.super Lorg/apache/poi/ss/formula/functions/Var1or2ArgFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/NumericFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Var1or2ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/poi/ss/formula/functions/NumericFunction;->TRUNC_ARG2_DEFAULT:Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/poi/ss/formula/functions/NumericFunction$33;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3

    .line 2
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v0

    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide p1

    const-wide/high16 p3, 0x4024000000000000L    # 10.0

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmpg-double v2, v0, p3

    if-gez v2, :cond_0

    neg-double p3, v0

    mul-double p3, p3, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->floor(D)D

    move-result-wide p3

    neg-double p3, p3

    :goto_0
    div-double/2addr p3, p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    mul-double v0, v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p3

    goto :goto_0

    :goto_1
    invoke-static {p3, p4}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {p1, p3, p4}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p1

    :goto_2
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p1

    return-object p1
.end method
