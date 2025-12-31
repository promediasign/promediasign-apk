.class public final Lorg/apache/poi/ss/formula/eval/UnaryMinusEval;
.super Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;
.source "SourceFile"


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/eval/UnaryMinusEval;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/eval/UnaryMinusEval;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/UnaryMinusEval;->instance:Lorg/apache/poi/ss/formula/functions/Function;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed1ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2

    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide p1
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v0, 0x0

    cmpl-double p3, p1, v0

    if-nez p3, :cond_0

    sget-object p1, Lorg/apache/poi/ss/formula/eval/NumberEval;->ZERO:Lorg/apache/poi/ss/formula/eval/NumberEval;

    return-object p1

    :cond_0
    new-instance p3, Lorg/apache/poi/ss/formula/eval/NumberEval;

    neg-double p1, p1

    invoke-direct {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p1

    return-object p1
.end method
