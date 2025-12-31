.class public final Lorg/apache/poi/ss/formula/functions/WeekdayFunc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/functions/WeekdayFunc;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/WeekdayFunc;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/WeekdayFunc;->instance:Lorg/apache/poi/ss/formula/functions/Function;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6

    :try_start_0
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_9

    array-length v0, p1

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    goto :goto_4

    :cond_0
    const/4 v0, 0x0

    aget-object v3, p1, v0

    invoke-static {v3, p2, p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/poi/ss/usermodel/DateUtil;->isValidExcelDate(D)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_5

    :cond_1
    invoke-static {v3, v4, v0}, Lorg/apache/poi/ss/usermodel/DateUtil;->getJavaCalendar(DZ)Ljava/util/Calendar;

    move-result-object v0

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    array-length v4, p1

    const/16 v5, 0xb

    if-ne v4, v2, :cond_4

    aget-object p1, p1, v1

    invoke-static {p1, p2, p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    sget-object p2, Lorg/apache/poi/ss/formula/eval/MissingArgEval;->instance:Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    if-eq p1, p2, :cond_3

    sget-object p2, Lorg/apache/poi/ss/formula/eval/BlankEval;->instance:Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result p1

    if-ne p1, v2, :cond_5

    const/16 p1, 0xb

    goto :goto_1

    :cond_3
    :goto_0
    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1

    :cond_4
    const/4 p1, 0x1

    :cond_5
    :goto_1
    if-ne p1, v1, :cond_6

    :goto_2
    int-to-double p1, v0

    goto :goto_3

    :cond_6
    const/4 p2, 0x3

    if-ne p1, p2, :cond_7

    add-int/lit8 v0, v0, 0x5

    rem-int/2addr v0, v3

    goto :goto_2

    :cond_7
    if-lt p1, v5, :cond_8

    const/16 p2, 0x11

    if-gt p1, p2, :cond_8

    add-int/lit8 v0, v0, 0x6

    add-int/lit8 p1, p1, -0xa

    sub-int/2addr v0, p1

    rem-int/2addr v0, v3

    add-int/2addr v0, v1

    goto :goto_2

    :goto_3
    new-instance p3, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p3

    :cond_8
    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1

    :cond_9
    :goto_4
    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_5
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p1

    return-object p1
.end method
