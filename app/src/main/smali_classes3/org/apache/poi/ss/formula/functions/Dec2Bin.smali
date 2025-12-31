.class public Lorg/apache/poi/ss/formula/functions/Dec2Bin;
.super Lorg/apache/poi/ss/formula/functions/Var1or2ArgFunction;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/functions/Dec2Bin;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/Dec2Bin;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Dec2Bin;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Var1or2ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/poi/ss/formula/functions/Dec2Bin;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 6

    .line 2
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p3
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p3

    if-nez p3, :cond_0

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x200

    cmp-long v4, v0, v2

    if-ltz v4, :cond_9

    invoke-virtual {p3}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1ff

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/16 v4, 0xa

    cmpg-double v5, v0, v2

    if-ltz v5, :cond_5

    if-nez p4, :cond_2

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    if-nez p1, :cond_3

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result p1

    if-ltz p1, :cond_4

    if-nez p1, :cond_6

    :cond_4
    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_0
    const/16 p1, 0xa

    :cond_6
    invoke-virtual {p3}, Ljava/lang/Double;->intValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-le p3, v4, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p3, v4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p4

    invoke-virtual {p2, p3, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-le p3, p1, :cond_8

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1

    :cond_8
    new-instance p1, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-direct {p1, p2}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_9
    :goto_1
    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p1

    return-object p1
.end method

.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/OperationEvaluationContext;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result p2

    aget-object p1, p1, v1

    invoke-virtual {p0, v0, p2, p1}, Lorg/apache/poi/ss/formula/functions/Dec2Bin;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1

    :cond_0
    array-length v0, p1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getRowIndex()I

    move-result v0

    invoke-virtual {p2}, Lorg/apache/poi/ss/formula/OperationEvaluationContext;->getColumnIndex()I

    move-result p2

    aget-object v1, p1, v1

    aget-object p1, p1, v2

    invoke-virtual {p0, v0, p2, v1, p1}, Lorg/apache/poi/ss/formula/functions/Dec2Bin;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1
.end method
