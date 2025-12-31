.class final Lorg/apache/poi/ss/formula/functions/AggregateFunction$Percentile;
.super Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/AggregateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Percentile"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide p1
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v1, 0x0

    cmpg-double p4, p1, v1

    if-ltz p4, :cond_5

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpl-double p4, p1, v1

    if-lez p4, :cond_0

    goto :goto_3

    :cond_0
    :try_start_1
    new-array p4, v0, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    const/4 v3, 0x0

    aput-object p3, p4, v3

    invoke-static {p4}, Lorg/apache/poi/ss/formula/functions/AggregateFunction$ValueCollector;->collectValues([Lorg/apache/poi/ss/formula/eval/ValueEval;)[D

    move-result-object p3

    array-length p4, p3

    if-eqz p4, :cond_4

    const/16 v3, 0x1fff

    if-le p4, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, p4, -0x1

    int-to-double v3, v3

    mul-double v3, v3, p1

    add-double/2addr v3, v1

    cmpl-double p1, v3, v1

    if-nez p1, :cond_2

    invoke-static {p3, v0}, Lorg/apache/poi/ss/formula/functions/StatsLib;->kthSmallest([DI)D

    move-result-wide p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    int-to-double p1, p4

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-nez p1, :cond_3

    invoke-static {p3, v0}, Lorg/apache/poi/ss/formula/functions/StatsLib;->kthLargest([DI)D

    move-result-wide p1

    goto :goto_0

    :cond_3
    double-to-int p1, v3

    int-to-double v1, p1

    sub-double/2addr v3, v1

    invoke-static {p3, p1}, Lorg/apache/poi/ss/formula/functions/StatsLib;->kthSmallest([DI)D

    move-result-wide v1

    add-int/2addr v0, p1

    invoke-static {p3, v0}, Lorg/apache/poi/ss/formula/functions/StatsLib;->kthSmallest([DI)D

    move-result-wide v5

    invoke-static {p3, p1}, Lorg/apache/poi/ss/formula/functions/StatsLib;->kthSmallest([DI)D

    move-result-wide p1

    sub-double/2addr v5, p1

    mul-double v5, v5, v3

    add-double p1, v5, v1

    :goto_0
    invoke-static {p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    new-instance p3, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p3

    :cond_4
    :goto_1
    :try_start_2
    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;
    :try_end_2
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :goto_2
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_3
    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1

    :catch_1
    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1
.end method
