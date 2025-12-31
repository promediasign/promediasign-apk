.class public final Lorg/apache/poi/ss/formula/functions/TimeFunc;
.super Lorg/apache/poi/ss/formula/functions/Fixed3ArgFunction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed3ArgFunction;-><init>()V

    return-void
.end method

.method private static evalArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/formula/eval/MissingArgEval;->instance:Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result p0

    return p0
.end method

.method private static evaluate(III)D
    .locals 2

    .line 1
    const/16 v0, 0x7fff

    if-gt p0, v0, :cond_1

    if-gt p1, v0, :cond_1

    if-gt p2, v0, :cond_1

    mul-int/lit16 p0, p0, 0xe10

    mul-int/lit8 p1, p1, 0x3c

    add-int/2addr p1, p0

    add-int/2addr p1, p2

    if-ltz p1, :cond_0

    const p0, 0x15180

    rem-int/2addr p1, p0

    int-to-double p0, p1

    const-wide v0, 0x40f5180000000000L    # 86400.0

    div-double/2addr p0, v0

    return-wide p0

    :cond_0
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    .line 2
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/TimeFunc;->evalArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result p3

    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/TimeFunc;->evalArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result p4

    invoke-static {p5, p1, p2}, Lorg/apache/poi/ss/formula/functions/TimeFunc;->evalArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result p1

    invoke-static {p3, p4, p1}, Lorg/apache/poi/ss/formula/functions/TimeFunc;->evaluate(III)D

    move-result-wide p1
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p3, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p1

    return-object p1
.end method
