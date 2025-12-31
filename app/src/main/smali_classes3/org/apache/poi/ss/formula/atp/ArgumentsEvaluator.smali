.class final Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;->instance:Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluateDateArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D
    .locals 0

    int-to-short p3, p3

    invoke-static {p1, p2, p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    instance-of p2, p1, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz p2, :cond_1

    check-cast p1, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/StringEval;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    return-wide p1

    :cond_0
    invoke-static {p1}, Lorg/apache/poi/ss/formula/atp/DateParser;->parseDate(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Calendar;Z)D

    move-result-wide p1

    return-wide p1

    :cond_1
    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide p1

    return-wide p1
.end method

.method public evaluateDatesArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)[D
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-array p1, v1, [D

    return-object p1

    :cond_0
    instance-of v2, p1, Lorg/apache/poi/ss/formula/eval/StringEval;

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;->evaluateDateArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide p1

    new-array p3, v0, [D

    aput-wide p1, p3, v1

    return-object p3

    :cond_1
    instance-of p2, p1, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;

    if-eqz p2, :cond_5

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getFirstRow()I

    move-result p3

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getLastRow()I

    move-result v2

    if-gt p3, v2, :cond_3

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getFirstColumn()I

    move-result v2

    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getLastColumn()I

    move-result v3

    if-gt v2, v3, :cond_2

    invoke-virtual {p1, p3, v2}, Lorg/apache/poi/ss/formula/eval/AreaEvalBase;->getAbsoluteValue(II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    invoke-virtual {p0, v3, p3, v2}, Lorg/apache/poi/ss/formula/atp/ArgumentsEvaluator;->evaluateDateArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v0

    goto :goto_1

    :cond_2
    add-int/2addr p3, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [D

    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge v1, p3, :cond_4

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, p1, v1

    add-int/2addr v1, v0

    goto :goto_2

    :cond_4
    return-object p1

    :cond_5
    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide p1

    new-array p3, v0, [D

    aput-wide p1, p3, v1

    return-object p3
.end method

.method public evaluateNumberArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D
    .locals 0

    if-nez p1, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_0
    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide p1

    return-wide p1
.end method
