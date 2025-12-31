.class public Lorg/apache/poi/ss/formula/functions/EDate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/functions/EDate;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/EDate;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/EDate;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getValue(Lorg/apache/poi/ss/formula/eval/ValueEval;)D
    .locals 4

    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v0, :cond_0

    :goto_0
    check-cast p1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/BlankEval;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    return-wide v1

    :cond_1
    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_4

    check-cast p1, Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/RefEval;->getNumberOfSheets()I

    move-result v0

    const/4 v3, 0x1

    if-gt v0, v3, :cond_3

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/eval/RefEval;->getFirstSheetIndex()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/poi/ss/formula/eval/RefEval;->getInnerValueEval(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    instance-of p1, p1, Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-eqz p1, :cond_4

    return-wide v1

    :cond_3
    new-instance p1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p1, v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p1

    :cond_4
    new-instance p1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p1, v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p1
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 3

    array-length p2, p1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1

    :cond_0
    const/4 p2, 0x0

    :try_start_0
    aget-object p2, p1, p2

    invoke-direct {p0, p2}, Lorg/apache/poi/ss/formula/functions/EDate;->getValue(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v1

    const/4 p2, 0x1

    aget-object p1, p1, p2

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/functions/EDate;->getValue(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide p1

    double-to-int p1, p1

    invoke-static {v1, v2}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(D)Ljava/util/Date;

    move-result-object p2

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v1, v0, p1}, Ljava/util/Calendar;->add(II)V

    new-instance p1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/poi/ss/usermodel/DateUtil;->getExcelDate(Ljava/util/Date;)D

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p1

    return-object p1
.end method
