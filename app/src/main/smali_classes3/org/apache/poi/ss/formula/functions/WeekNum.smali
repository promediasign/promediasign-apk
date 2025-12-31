.class public Lorg/apache/poi/ss/formula/functions/WeekNum;
.super Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/functions/WeekNum;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/WeekNum;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/WeekNum;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar()Ljava/util/Calendar;

    move-result-object p3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(DZ)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    :try_start_1
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result p1
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1

    :cond_0
    new-instance p2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {p0, p3, p1}, Lorg/apache/poi/ss/formula/functions/WeekNum;->getWeekNo(Ljava/util/Calendar;I)I

    move-result p1

    int-to-double p3, p1

    invoke-direct {p2, p3, p4}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p2

    :catch_0
    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1

    :catch_1
    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1
.end method

.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3

    .line 2
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result p2

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-virtual {p0, v0, p2, v1, p1}, Lorg/apache/poi/ss/formula/functions/WeekNum;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1
.end method

.method public getWeekNo(Ljava/util/Calendar;I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    :goto_0
    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    return p1
.end method
