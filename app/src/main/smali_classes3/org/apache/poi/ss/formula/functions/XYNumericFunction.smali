.class public abstract Lorg/apache/poi/ss/formula/functions/XYNumericFunction;
.super Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/functions/XYNumericFunction$Accumulator;,
        Lorg/apache/poi/ss/formula/functions/XYNumericFunction$AreaValueArray;,
        Lorg/apache/poi/ss/formula/functions/XYNumericFunction$RefValueArray;,
        Lorg/apache/poi/ss/formula/functions/XYNumericFunction$SingleCellValueArray;,
        Lorg/apache/poi/ss/formula/functions/XYNumericFunction$ValueArray;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;-><init>()V

    return-void
.end method

.method private static createValueVector(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .locals 1

    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-nez v0, :cond_2

    instance-of v0, p0, Lorg/apache/poi/ss/formula/TwoDEval;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$AreaValueArray;

    check-cast p0, Lorg/apache/poi/ss/formula/TwoDEval;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$AreaValueArray;-><init>(Lorg/apache/poi/ss/formula/TwoDEval;)V

    return-object v0

    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$RefValueArray;

    check-cast p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$RefValueArray;-><init>(Lorg/apache/poi/ss/formula/eval/RefEval;)V

    return-object v0

    :cond_1
    new-instance v0, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$SingleCellValueArray;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$SingleCellValueArray;-><init>(Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    return-object v0

    :cond_2
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    check-cast p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0
.end method

.method private evaluateInternal(Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;I)D
    .locals 11

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/XYNumericFunction;->createAccumulator()Lorg/apache/poi/ss/formula/functions/XYNumericFunction$Accumulator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v2, v1

    move-wide v5, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, p3, :cond_3

    invoke-interface {p1, v3}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v7

    invoke-interface {p2, v3}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v8

    instance-of v9, v7, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v9, :cond_0

    if-nez v1, :cond_0

    check-cast v7, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-object v1, v7

    goto :goto_1

    :cond_0
    instance-of v9, v8, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v9, :cond_1

    if-nez v2, :cond_1

    check-cast v8, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-object v2, v8

    goto :goto_1

    :cond_1
    instance-of v9, v7, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v9, :cond_2

    instance-of v9, v8, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v9, :cond_2

    check-cast v7, Lorg/apache/poi/ss/formula/eval/NumberEval;

    check-cast v8, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {v7}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v9

    invoke-virtual {v8}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v7

    invoke-interface {v0, v9, v10, v7, v8}, Lorg/apache/poi/ss/formula/functions/XYNumericFunction$Accumulator;->accumulate(DD)D

    move-result-wide v7

    add-double/2addr v7, v5

    const/4 v4, 0x1

    move-wide v5, v7

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v1, :cond_6

    if-nez v2, :cond_5

    if-eqz v4, :cond_4

    return-wide v5

    :cond_4
    new-instance p1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object p2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->DIV_ZERO:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p1, p2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p1

    :cond_5
    new-instance p1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    invoke-direct {p1, v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p1

    :cond_6
    new-instance p1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    invoke-direct {p1, v1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p1
.end method


# virtual methods
.method public abstract createAccumulator()Lorg/apache/poi/ss/formula/functions/XYNumericFunction$Accumulator;
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    :try_start_0
    invoke-static {p3}, Lorg/apache/poi/ss/formula/functions/XYNumericFunction;->createValueVector(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object p1

    invoke-static {p4}, Lorg/apache/poi/ss/formula/functions/XYNumericFunction;->createValueVector(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object p2

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getSize()I

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getSize()I

    move-result p4

    if-eq p4, p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/ss/formula/functions/XYNumericFunction;->evaluateInternal(Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;I)D

    move-result-wide p1
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p3

    if-nez p3, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p3, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p3

    :cond_2
    :goto_0
    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_1
    :try_start_1
    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :goto_2
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p1

    return-object p1
.end method
