.class public Lorg/apache/poi/ss/formula/functions/PPMT;
.super Lorg/apache/poi/ss/formula/functions/NumericFunction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/NumericFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public eval([Lorg/apache/poi/ss/formula/eval/ValueEval;II)D
    .locals 9

    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0, p2, p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-static {v1, p2, p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, p1, v2

    invoke-static {v2, p2, p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v2

    const/4 v3, 0x3

    aget-object p1, p1, v3

    invoke-static {p1, p2, p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v3

    invoke-static {v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result v5

    invoke-static {v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result v6

    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v7

    invoke-static/range {v3 .. v8}, Lorg/apache/poi/ss/formula/functions/Finance;->ppmt(DIID)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V

    return-wide p1

    :cond_0
    new-instance p1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object p2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p1, p2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p1
.end method
