.class public Lorg/apache/poi/ss/formula/functions/Rank;
.super Lorg/apache/poi/ss/formula/functions/Var2or3ArgFunction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Var2or3ArgFunction;-><init>()V

    return-void
.end method

.method private static convertRangeArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;
    .locals 1

    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/apache/poi/ss/formula/eval/AreaEval;

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    const/4 v0, 0x0

    invoke-interface {p0, v0, v0, v0, v0}, Lorg/apache/poi/ss/formula/eval/RefEval;->offset(IIII)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0
.end method

.method private static eval(DLorg/apache/poi/ss/formula/eval/AreaEval;Z)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 10

    .line 1
    invoke-interface {p2}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getHeight()I

    move-result v0

    invoke-interface {p2}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getWidth()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_5

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_4

    invoke-static {p2, v4, v5}, Lorg/apache/poi/ss/formula/functions/Rank;->getValue(Lorg/apache/poi/ss/formula/eval/AreaEval;II)Ljava/lang/Double;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    cmpl-double v9, v7, p0

    if-gtz v9, :cond_2

    :cond_1
    if-nez p3, :cond_3

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v8, v6, p0

    if-gez v8, :cond_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    new-instance p0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    int-to-double p1, v2

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p0
.end method

.method private static eval(DLorg/apache/poi/ss/formula/eval/RefListEval;Z)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4

    .line 2
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/eval/RefListEval;->getList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x1

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/formula/eval/ValueEval;

    instance-of v2, v1, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-interface {v1}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v1

    :cond_1
    instance-of v2, v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v1

    if-eqz p3, :cond_2

    cmpl-double v3, v1, p0

    if-gtz v3, :cond_3

    :cond_2
    if-nez p3, :cond_0

    cmpg-double v3, v1, p0

    if-gez v3, :cond_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    new-instance p0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    int-to-double p1, v0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p0
.end method

.method private static getValue(Lorg/apache/poi/ss/formula/eval/AreaEval;II)Ljava/lang/Double;
    .locals 0

    invoke-interface {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getRelativeValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    instance-of p1, p0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz p1, :cond_0

    check-cast p0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p3

    if-nez p3, :cond_1

    instance-of p3, p4, Lorg/apache/poi/ss/formula/eval/RefListEval;

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    check-cast p4, Lorg/apache/poi/ss/formula/eval/RefListEval;

    invoke-static {p1, p2, p4, v0}, Lorg/apache/poi/ss/formula/functions/Rank;->eval(DLorg/apache/poi/ss/formula/eval/RefListEval;Z)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-static {p4}, Lorg/apache/poi/ss/formula/functions/Rank;->convertRangeArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object p3

    invoke-static {p1, p2, p3, v0}, Lorg/apache/poi/ss/formula/functions/Rank;->eval(DLorg/apache/poi/ss/formula/eval/AreaEval;Z)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object p2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p1, p2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p1
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p1

    return-object p1
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2

    .line 2
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p3

    invoke-static {p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-static {p5, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, p2, :cond_2

    const/4 p2, 0x0

    :goto_0
    instance-of p1, p4, Lorg/apache/poi/ss/formula/eval/RefListEval;

    if-eqz p1, :cond_1

    check-cast p4, Lorg/apache/poi/ss/formula/eval/RefListEval;

    invoke-static {v0, v1, p4, p2}, Lorg/apache/poi/ss/formula/functions/Rank;->eval(DLorg/apache/poi/ss/formula/eval/RefListEval;Z)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-static {p4}, Lorg/apache/poi/ss/formula/functions/Rank;->convertRangeArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object p1

    invoke-static {v0, v1, p1, p2}, Lorg/apache/poi/ss/formula/functions/Rank;->eval(DLorg/apache/poi/ss/formula/eval/AreaEval;Z)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object p2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p1, p2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p1

    :cond_3
    new-instance p1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object p2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p1, p2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p1
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p1

    return-object p1
.end method
