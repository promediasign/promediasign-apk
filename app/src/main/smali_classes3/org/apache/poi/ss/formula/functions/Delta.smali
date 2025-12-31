.class public final Lorg/apache/poi/ss/formula/functions/Delta;
.super Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# static fields
.field private static final ONE:Lorg/apache/poi/ss/formula/eval/NumberEval;

.field private static final ZERO:Lorg/apache/poi/ss/formula/eval/NumberEval;

.field public static final instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/poi/ss/formula/functions/Delta;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/Delta;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Delta;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Delta;->ONE:Lorg/apache/poi/ss/formula/eval/NumberEval;

    new-instance v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Delta;->ZERO:Lorg/apache/poi/ss/formula/eval/NumberEval;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2

    .line 1
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
    :try_start_1
    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->parseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1

    :cond_1
    new-instance p2, Ljava/math/BigDecimal;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p3

    invoke-direct {p2, p3, p4}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance p3, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p3, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {p2, p3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lorg/apache/poi/ss/formula/functions/Delta;->ONE:Lorg/apache/poi/ss/formula/eval/NumberEval;

    goto :goto_0

    :cond_2
    sget-object p1, Lorg/apache/poi/ss/formula/functions/Delta;->ZERO:Lorg/apache/poi/ss/formula/eval/NumberEval;

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p1

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

    invoke-virtual {p0, v0, p2, v1, p1}, Lorg/apache/poi/ss/formula/functions/Delta;->evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1
.end method
