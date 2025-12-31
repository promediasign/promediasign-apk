.class public Lorg/apache/poi/ss/formula/functions/EOMonth;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/functions/EOMonth;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/EOMonth;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/EOMonth;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method public constructor <init>()V
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
    aget-object v2, p1, v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v3

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v2

    const/4 v4, 0x1

    aget-object p1, p1, v4

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v5

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result p2

    invoke-static {p1, v5, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide p1

    double-to-int p1, p1

    const-wide/16 v5, 0x0

    cmpl-double p2, v2, v5

    if-ltz p2, :cond_1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpg-double p2, v2, v5

    if-gez p2, :cond_1

    move-wide v2, v5

    :cond_1
    invoke-static {v2, v3, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaDate(DZ)Ljava/util/Date;

    move-result-object p2

    invoke-static {}, Lorg/apache/poi/util/LocaleUtil;->getLocaleCalendar()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p2, 0xa

    invoke-virtual {v2, p2}, Ljava/util/Calendar;->clear(I)V

    const/16 p2, 0xb

    invoke-virtual {v2, p2, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xc

    invoke-virtual {v2, p2}, Ljava/util/Calendar;->clear(I)V

    const/16 p2, 0xd

    invoke-virtual {v2, p2}, Ljava/util/Calendar;->clear(I)V

    const/16 p2, 0xe

    invoke-virtual {v2, p2}, Ljava/util/Calendar;->clear(I)V

    add-int/2addr p1, v4

    invoke-virtual {v2, v1, p1}, Ljava/util/Calendar;->add(II)V

    const/4 p1, 0x5

    invoke-virtual {v2, p1, v4}, Ljava/util/Calendar;->set(II)V

    const/4 p2, -0x1

    invoke-virtual {v2, p1, p2}, Ljava/util/Calendar;->add(II)V

    new-instance p1, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

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
