.class final Lorg/apache/poi/ss/formula/atp/YearFrac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/atp/YearFrac;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/atp/YearFrac;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/atp/YearFrac;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static evaluateDateArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D
    .locals 0

    int-to-short p2, p2

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    instance-of p1, p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz p1, :cond_1

    check-cast p0, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-static {p0}, Lorg/apache/poi/ss/formula/atp/DateParser;->parseDate(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Calendar;Z)D

    move-result-wide p0

    return-wide p0

    :cond_1
    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide p0

    return-wide p0
.end method

.method private static evaluateIntArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I
    .locals 0

    int-to-short p2, p2

    invoke-static {p0, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 5

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result p2

    :try_start_0
    array-length v1, p1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    aget-object v1, p1, v2

    invoke-static {v1, v0, p2}, Lorg/apache/poi/ss/formula/atp/YearFrac;->evaluateIntArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    aget-object v2, p1, v3

    invoke-static {v2, v0, p2}, Lorg/apache/poi/ss/formula/atp/YearFrac;->evaluateDateArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v2

    const/4 v4, 0x1

    aget-object p1, p1, v4

    invoke-static {p1, v0, p2}, Lorg/apache/poi/ss/formula/atp/YearFrac;->evaluateDateArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide p1

    invoke-static {v2, v3, p1, p2, v1}, Lorg/apache/poi/ss/formula/atp/YearFracCalculator;->calculate(DDI)D

    move-result-wide p1
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v0, p1, p2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v0

    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p1

    return-object p1
.end method
