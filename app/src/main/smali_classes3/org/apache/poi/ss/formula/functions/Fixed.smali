.class public final Lorg/apache/poi/ss/formula/functions/Fixed;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function1Arg;
.implements Lorg/apache/poi/ss/formula/functions/Function2Arg;
.implements Lorg/apache/poi/ss/formula/functions/Function3Arg;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fixed(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3

    :try_start_0
    invoke-static {p1, p4, p5}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-static {p2, p4, p5}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result p1

    invoke-static {p3, p4, p5}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToBoolean(Lorg/apache/poi/ss/formula/eval/ValueEval;Z)Ljava/lang/Boolean;

    move-result-object p2

    sget-object p4, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, p1, p4}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p4

    sget-object p5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p5}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p5

    check-cast p5, Ljava/text/DecimalFormat;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    invoke-virtual {p5, p2}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    if-ltz p1, :cond_2

    move p2, p1

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p5, p2}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    if-ltz p1, :cond_3

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    invoke-virtual {p5, p1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    invoke-virtual {p4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p5, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-direct {p2, p1}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :goto_4
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6

    .line 1
    new-instance v2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    sget-object v3, Lorg/apache/poi/ss/formula/eval/BoolEval;->FALSE:Lorg/apache/poi/ss/formula/eval/BoolEval;

    move-object v0, p0

    move-object v1, p3

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/formula/functions/Fixed;->fixed(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6

    .line 2
    sget-object v3, Lorg/apache/poi/ss/formula/eval/BoolEval;->FALSE:Lorg/apache/poi/ss/formula/eval/BoolEval;

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/formula/functions/Fixed;->fixed(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6

    .line 3
    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/formula/functions/Fixed;->fixed(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1
.end method

.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6

    .line 4
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1

    :cond_0
    aget-object v1, p1, v1

    aget-object v2, p1, v2

    aget-object v3, p1, v3

    :goto_0
    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/formula/functions/Fixed;->fixed(Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1

    :cond_1
    aget-object v1, p1, v1

    aget-object v2, p1, v2

    :goto_1
    sget-object v3, Lorg/apache/poi/ss/formula/eval/BoolEval;->FALSE:Lorg/apache/poi/ss/formula/eval/BoolEval;

    goto :goto_0

    :cond_2
    aget-object v1, p1, v1

    new-instance v2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    goto :goto_1
.end method
