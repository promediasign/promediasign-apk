.class public Lorg/apache/poi/ss/formula/functions/Address;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# static fields
.field public static final REF_ABSOLUTE:I = 0x1

.field public static final REF_RELATIVE:I = 0x4

.field public static final REF_ROW_ABSOLUTE_COLUMN_RELATIVE:I = 0x2

.field public static final REF_ROW_RELATIVE_RELATIVE_ABSOLUTE:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 9

    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_9

    array-length v0, p1

    const/4 v2, 0x5

    if-le v0, v2, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    aget-object v3, p1, v0

    invoke-static {v3, p2, p3}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v3

    double-to-int v3, v3

    const/4 v4, 0x1

    aget-object v5, p1, v4

    invoke-static {v5, p2, p3}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v5

    double-to-int v5, v5

    array-length v6, p1

    if-le v6, v1, :cond_1

    aget-object v6, p1, v1

    sget-object v7, Lorg/apache/poi/ss/formula/eval/MissingArgEval;->instance:Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    if-eq v6, v7, :cond_1

    invoke-static {v6, p2, p3}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v6

    double-to-int v6, v6

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_5

    :cond_1
    const/4 v6, 0x1

    :goto_0
    const/4 v7, 0x4

    if-eq v6, v4, :cond_5

    if-eq v6, v1, :cond_4

    const/4 v1, 0x3

    if-eq v6, v1, :cond_3

    if-ne v6, v7, :cond_2

    :goto_1
    const/4 v1, 0x0

    goto :goto_3

    :cond_2
    new-instance p1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object p2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p1, p2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p1

    :cond_3
    :goto_2
    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    goto :goto_2

    :goto_3
    array-length v6, p1

    const/4 v8, 0x0

    if-ne v6, v2, :cond_7

    aget-object p1, p1, v7

    invoke-static {p1, p2, p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    sget-object p2, Lorg/apache/poi/ss/formula/eval/MissingArgEval;->instance:Lorg/apache/poi/ss/formula/eval/MissingArgEval;

    if-ne p1, p2, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v8

    :cond_7
    :goto_4
    new-instance p1, Lorg/apache/poi/ss/util/CellReference;

    sub-int/2addr v3, v4

    sub-int/2addr v5, v4

    invoke-direct {p1, v3, v5, v0, v1}, Lorg/apache/poi/ss/util/CellReference;-><init>(IIZZ)V

    new-instance p2, Ljava/lang/StringBuffer;

    const/16 p3, 0x20

    invoke-direct {p2, p3}, Ljava/lang/StringBuffer;-><init>(I)V

    if-eqz v8, :cond_8

    invoke-static {p2, v8}, Lorg/apache/poi/ss/formula/SheetNameFormatter;->appendFormat(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    const/16 p3, 0x21

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_8
    invoke-virtual {p1}, Lorg/apache/poi/ss/util/CellReference;->formatAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance p1, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_5
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p1

    return-object p1

    :cond_9
    :goto_6
    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1
.end method
