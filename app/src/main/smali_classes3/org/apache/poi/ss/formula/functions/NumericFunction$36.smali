.class final Lorg/apache/poi/ss/formula/functions/NumericFunction$36;
.super Lorg/apache/poi/ss/formula/functions/Fixed3ArgFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/NumericFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field private final FACTORIALS:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed3ArgFunction;-><init>()V

    const/16 v0, 0x15

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/functions/NumericFunction$36;->FACTORIALS:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x1
        0x1
        0x2
        0x6
        0x18
        0x78
        0x2d0
        0x13b0
        0x9d80
        0x58980
        0x375f00
        0x2611500
        0x1c8cfc00
        0x17328cc00L
        0x144c3b2800L
        0x13077775800L
        0x130777758000L
        0x1437eeecd8000L
        0x16beecca730000L
        0x1b02b9306890000L
        0x21c3677c82b40000L
    .end array-data
.end method

.method private checkArgument(D)Z
    .locals 3

    invoke-static {p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    new-instance p1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object p2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p1, p2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p1
.end method

.method private cumulativeProbability(ID)D
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-gt v2, p1, :cond_0

    invoke-direct {p0, v2, p2, p3}, Lorg/apache/poi/ss/formula/functions/NumericFunction$36;->probability(ID)D

    move-result-wide v3

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method private isDefaultResult(DD)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    cmpl-double p1, p3, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private probability(ID)D
    .locals 2

    int-to-double v0, p1

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    neg-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->exp(D)D

    move-result-wide p2

    mul-double p2, p2, v0

    invoke-virtual {p0, p1}, Lorg/apache/poi/ss/formula/functions/NumericFunction$36;->factorial(I)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr p2, v0

    return-wide p2
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2

    check-cast p5, Lorg/apache/poi/ss/formula/eval/BoolEval;

    invoke-virtual {p5}, Lorg/apache/poi/ss/formula/eval/BoolEval;->getBooleanValue()Z

    move-result p5

    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v0

    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide p1

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction$36;->isDefaultResult(DD)Z

    move-result p3

    if-eqz p3, :cond_0

    new-instance p1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    invoke-direct {p1, p2, p3}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-direct {p0, v0, v1}, Lorg/apache/poi/ss/formula/functions/NumericFunction$36;->checkArgument(D)Z

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction$36;->checkArgument(D)Z

    double-to-int p3, v0

    if-eqz p5, :cond_1

    invoke-direct {p0, p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction$36;->cumulativeProbability(ID)D

    move-result-wide p1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction$36;->probability(ID)D

    move-result-wide p1

    :goto_0
    invoke-static {p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p3, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p3

    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p1

    return-object p1
.end method

.method public factorial(I)J
    .locals 3

    if-ltz p1, :cond_0

    const/16 v0, 0x14

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/NumericFunction$36;->FACTORIALS:[J

    aget-wide v1, v0, p1

    return-wide v1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Valid argument should be in the range [0..20]"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
