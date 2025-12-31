.class public final Lorg/apache/poi/ss/formula/functions/Npv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4

    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    aget-object v1, p1, v0

    invoke-static {v1, p2, p3}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide p2

    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    new-array v3, v1, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    invoke-static {p1, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3}, Lorg/apache/poi/ss/formula/functions/AggregateFunction$ValueCollector;->collectValues([Lorg/apache/poi/ss/formula/eval/ValueEval;)[D

    move-result-object p1

    invoke-static {p2, p3, p1}, Lorg/apache/poi/ss/formula/functions/FinanceLib;->npv(D[D)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V

    new-instance p3, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p1

    return-object p1
.end method
