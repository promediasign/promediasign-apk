.class public final Lorg/apache/poi/ss/formula/functions/Match;
.super Lorg/apache/poi/ss/formula/functions/Var2or3ArgFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/functions/Match$SingleValueVector;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Var2or3ArgFunction;-><init>()V

    return-void
.end method

.method private static createLookupComparer(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->createLookupComparer(Lorg/apache/poi/ss/formula/eval/ValueEval;ZZ)Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;

    move-result-object p0

    return-object p0
.end method

.method private static eval(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;D)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmpl-double v4, p4, v0

    if-nez v4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    if-lez v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    :try_start_0
    invoke-static {p2, p0, p1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    invoke-static {p3}, Lorg/apache/poi/ss/formula/functions/Match;->evaluateLookupRange(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object p1

    invoke-static {p0, p1, p4, v2}, Lorg/apache/poi/ss/formula/functions/Match;->findIndexOfValue(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;ZZ)I

    move-result p0

    new-instance p1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    add-int/2addr p0, v3

    int-to-double p2, p0

    invoke-direct {p1, p2, p3}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p0

    return-object p0
.end method

.method private static evaluateLookupRange(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .locals 3

    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getNumberOfSheets()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/apache/poi/ss/formula/functions/Match$SingleValueVector;

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result v1

    invoke-interface {p0, v1}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/functions/Match$SingleValueVector;-><init>(Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->createVector(Lorg/apache/poi/ss/formula/eval/RefEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Lorg/apache/poi/ss/formula/TwoDEval;

    if-eqz v0, :cond_3

    check-cast p0, Lorg/apache/poi/ss/formula/TwoDEval;

    invoke-static {p0}, Lorg/apache/poi/ss/formula/functions/LookupUtils;->createVector(Lorg/apache/poi/ss/formula/TwoDEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object p0

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0

    :cond_3
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    if-nez v0, :cond_6

    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v0, :cond_5

    check-cast p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    if-nez p0, :cond_4

    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0

    :cond_4
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected eval type ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0
.end method

.method private static evaluateMatchTypeArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D
    .locals 1

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    instance-of p1, p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-nez p1, :cond_3

    instance-of p1, p0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    if-eqz p1, :cond_0

    check-cast p0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    invoke-interface {p0}, Lorg/apache/poi/ss/formula/eval/NumericValueEval;->getNumberValue()D

    move-result-wide p0

    return-wide p0

    :cond_0
    instance-of p1, p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz p1, :cond_2

    check-cast p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0

    :cond_1
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected match_type type ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    check-cast p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p1, p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p1
.end method

.method private static findIndexOfValue(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;ZZ)I
    .locals 3

    invoke-static {p0, p2}, Lorg/apache/poi/ss/formula/functions/Match;->createLookupComparer(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;

    move-result-object p0

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getSize()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p2

    invoke-interface {p0, p2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;->compareTo(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isEqual()Z

    move-result p2

    if-eqz p2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0

    :cond_2
    const/4 p2, 0x1

    if-eqz p3, :cond_6

    sub-int/2addr v0, p2

    :goto_1
    if-ltz v0, :cond_5

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p2

    invoke-interface {p0, p2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;->compareTo(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isTypeMismatch()Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isLessThan()Z

    move-result p2

    if-nez p2, :cond_4

    return v0

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0

    :cond_6
    :goto_3
    if-ge v1, v0, :cond_a

    invoke-interface {p1, v1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p3

    invoke-interface {p0, p3}, Lorg/apache/poi/ss/formula/functions/LookupUtils$LookupValueComparer;->compareTo(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;

    move-result-object p3

    invoke-virtual {p3}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isEqual()Z

    move-result v2

    if-eqz v2, :cond_7

    return v1

    :cond_7
    invoke-virtual {p3}, Lorg/apache/poi/ss/formula/functions/LookupUtils$CompareResult;->isGreaterThan()Z

    move-result p3

    if-eqz p3, :cond_9

    if-lt v1, p2, :cond_8

    sub-int/2addr v1, p2

    return v1

    :cond_8
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    sub-int/2addr v0, p2

    return v0
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6

    .line 1
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move v0, p1

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/ss/formula/functions/Match;->eval(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;D)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6

    .line 2
    :try_start_0
    invoke-static {p5, p1, p2}, Lorg/apache/poi/ss/formula/functions/Match;->evaluateMatchTypeArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v4
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p1

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/ss/formula/functions/Match;->eval(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;D)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1

    :catch_0
    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->REF_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1
.end method
