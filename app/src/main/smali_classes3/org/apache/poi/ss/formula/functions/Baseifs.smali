.class abstract Lorg/apache/poi/ss/formula/functions/Baseifs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accumulate(Lorg/apache/poi/ss/formula/eval/AreaEval;II)D
    .locals 0

    if-nez p0, :cond_0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    return-wide p0

    :cond_0
    invoke-interface {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getRelativeValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    instance-of p1, p0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz p1, :cond_1

    check-cast p0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide p0

    return-wide p0

    :cond_1
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private static aggregateMatchingCells(Lorg/apache/poi/ss/formula/eval/AreaEval;[Lorg/apache/poi/ss/formula/eval/AreaEval;[Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)D
    .locals 10

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-interface {v1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getHeight()I

    move-result v1

    aget-object v2, p1, v0

    invoke-interface {v2}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getWidth()I

    move-result v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_3

    const/4 v7, 0x0

    :goto_2
    array-length v8, p1

    if-ge v7, v8, :cond_1

    aget-object v8, p1, v7

    aget-object v9, p2, v7

    if-eqz v9, :cond_2

    invoke-interface {v8, v5, v6}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getRelativeValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v8

    invoke-interface {v9, v8}, Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;->matches(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_3

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    invoke-static {p0, v5, v6}, Lorg/apache/poi/ss/formula/functions/Baseifs;->accumulate(Lorg/apache/poi/ss/formula/eval/AreaEval;II)D

    move-result-wide v7

    add-double/2addr v3, v7

    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    return-wide v3
.end method

.method public static convertRangeArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;
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

.method private static validateCriteria([Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)V
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    instance-of v3, v2, Lorg/apache/poi/ss/formula/functions/Countif$ErrorMatcher;

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    check-cast v2, Lorg/apache/poi/ss/formula/functions/Countif$ErrorMatcher;

    invoke-virtual {v2}, Lorg/apache/poi/ss/formula/functions/Countif$ErrorMatcher;->getValue()I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/ErrorEval;->valueOf(I)Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0

    :cond_1
    return-void
.end method

.method private static validateCriteriaRanges(Lorg/apache/poi/ss/formula/eval/AreaEval;[Lorg/apache/poi/ss/formula/eval/AreaEval;)V
    .locals 5

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-interface {v1}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getHeight()I

    move-result v1

    aget-object v2, p1, v0

    invoke-interface {v2}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getWidth()I

    move-result v2

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getHeight()I

    move-result v3

    if-ne v3, v1, :cond_0

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getWidth()I

    move-result p0

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidValue()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    array-length p0, p1

    :goto_1
    if-ge v0, p0, :cond_3

    aget-object v3, p1, v0

    invoke-interface {v3}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getHeight()I

    move-result v4

    if-ne v4, v1, :cond_2

    invoke-interface {v3}, Lorg/apache/poi/ss/formula/eval/AreaEval;->getWidth()I

    move-result v3

    if-ne v3, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidValue()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object p0

    throw p0

    :cond_3
    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 8

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/Baseifs;->hasInitialRange()Z

    move-result v0

    array-length v1, p1

    add-int/lit8 v2, v0, 0x2

    if-lt v1, v2, :cond_3

    array-length v1, p1

    rem-int/lit8 v1, v1, 0x2

    if-eq v1, v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    aget-object v2, p1, v1

    invoke-static {v2}, Lorg/apache/poi/ss/formula/functions/Baseifs;->convertRangeArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    new-array v4, v3, [Lorg/apache/poi/ss/formula/eval/AreaEval;

    new-array v3, v3, [Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    :goto_1
    array-length v5, p1

    if-ge v0, v5, :cond_2

    aget-object v5, p1, v0

    invoke-static {v5}, Lorg/apache/poi/ss/formula/functions/Baseifs;->convertRangeArg(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/AreaEval;

    move-result-object v5

    aput-object v5, v4, v1

    add-int/lit8 v5, v0, 0x1

    aget-object v5, p1, v5

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v6

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v7

    invoke-static {v5, v6, v7}, Lorg/apache/poi/ss/formula/functions/Countif;->createCriteriaPredicate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;

    move-result-object v5

    aput-object v5, v3, v1

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v2, v4}, Lorg/apache/poi/ss/formula/functions/Baseifs;->validateCriteriaRanges(Lorg/apache/poi/ss/formula/eval/AreaEval;[Lorg/apache/poi/ss/formula/eval/AreaEval;)V

    invoke-static {v3}, Lorg/apache/poi/ss/formula/functions/Baseifs;->validateCriteria([Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)V

    invoke-static {v2, v4, v3}, Lorg/apache/poi/ss/formula/functions/Baseifs;->aggregateMatchingCells(Lorg/apache/poi/ss/formula/eval/AreaEval;[Lorg/apache/poi/ss/formula/eval/AreaEval;[Lorg/apache/poi/ss/formula/functions/CountUtils$I_MatchPredicate;)D

    move-result-wide p1

    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_2
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_3
    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1
.end method

.method public abstract hasInitialRange()Z
.end method
