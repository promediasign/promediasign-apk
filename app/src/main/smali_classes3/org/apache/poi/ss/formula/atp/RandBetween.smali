.class final Lorg/apache/poi/ss/formula/atp/RandBetween;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/atp/RandBetween;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/atp/RandBetween;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/atp/RandBetween;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 7

    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v1

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v0

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v2

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result p2

    invoke-static {p1, v2, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide p1

    cmpl-double v2, v0, p1

    if-lez v2, :cond_1

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    cmpl-double v2, v0, p1

    if-lez v2, :cond_2

    move-wide p1, v0

    :cond_2
    new-instance v2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    sub-double/2addr p1, v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr p1, v5

    mul-double p1, p1, v3

    double-to-int p1, p1

    int-to-double p1, p1

    add-double/2addr v0, p1

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v2

    :catch_0
    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1
.end method
