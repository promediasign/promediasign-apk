.class public Lorg/apache/poi/ss/formula/functions/Days360;
.super Lorg/apache/poi/ss/formula/functions/Var2or3ArgFunction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Var2or3ArgFunction;-><init>()V

    return-void
.end method

.method private static evaluate(DDZ)D
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lorg/apache/poi/ss/formula/functions/Days360;->getDate(D)Ljava/util/Calendar;

    move-result-object p0

    invoke-static {p2, p3}, Lorg/apache/poi/ss/formula/functions/Days360;->getDate(D)Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p0, p4}, Lorg/apache/poi/ss/formula/functions/Days360;->getStartingDate(Ljava/util/Calendar;Z)[I

    move-result-object p0

    invoke-static {p1, p0, p4}, Lorg/apache/poi/ss/formula/functions/Days360;->getEndingDate(Ljava/util/Calendar;[IZ)[I

    move-result-object p1

    const/4 p2, 0x0

    aget p3, p1, p2

    mul-int/lit16 p3, p3, 0x168

    const/4 p4, 0x1

    aget v0, p1, p4

    mul-int/lit8 v0, v0, 0x1e

    add-int/2addr v0, p3

    const/4 p3, 0x2

    aget p1, p1, p3

    add-int/2addr v0, p1

    aget p1, p0, p2

    mul-int/lit16 p1, p1, 0x168

    aget p2, p0, p4

    mul-int/lit8 p2, p2, 0x1e

    add-int/2addr p2, p1

    aget p0, p0, p3

    add-int/2addr p2, p0

    sub-int/2addr v0, p2

    int-to-double p0, v0

    return-wide p0
.end method

.method private static getDate(D)Ljava/util/Calendar;
    .locals 2

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(DZ)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object v0
.end method

.method private static getEndingDate(Ljava/util/Calendar;[IZ)[I
    .locals 8

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0x1e

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-nez p2, :cond_1

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result p2

    const/16 v7, 0x1f

    if-ne p2, v7, :cond_1

    aget p1, p1, v2

    if-ge p1, v6, :cond_0

    invoke-virtual {p0, v4, v0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0, v2, v0}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    goto :goto_0

    :cond_1
    move v0, v5

    :goto_0
    filled-new-array {v1, v3, v0}, [I

    move-result-object p0

    return-object p0
.end method

.method private static getStartingDate(Ljava/util/Calendar;Z)[I
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0x1e

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-nez p1, :cond_0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/functions/Days360;->isLastDayOfMonth(Ljava/util/Calendar;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    filled-new-array {v0, v1, v3}, [I

    move-result-object p0

    return-object p0
.end method

.method private static isLastDayOfMonth(Ljava/util/Calendar;)Z
    .locals 2

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p0

    if-ne v1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2

    .line 2
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v0

    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide p1

    new-instance p3, Lorg/apache/poi/ss/formula/eval/NumberEval;

    const/4 p4, 0x0

    invoke-static {v0, v1, p1, p2, p4}, Lorg/apache/poi/ss/formula/functions/Days360;->evaluate(DDZ)D

    move-result-wide p1

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

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2

    .line 3
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v0

    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide p3

    invoke-static {p5, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToBoolean(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)Ljava/lang/Boolean;

    move-result-object p1

    new-instance p5, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {v0, v1, p3, p4, p2}, Lorg/apache/poi/ss/formula/functions/Days360;->evaluate(DDZ)D

    move-result-wide p1

    invoke-direct {p5, p1, p2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p5

    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p1

    return-object p1
.end method
