.class public abstract Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;
.super Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation$SubtractEvalClass;
    }
.end annotation


# static fields
.field public static final AddEval:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final DivideEval:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final MultiplyEval:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final PowerEval:Lorg/apache/poi/ss/formula/functions/Function;

.field public static final SubtractEval:Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation$1;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation$1;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;->AddEval:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation$2;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation$2;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;->DivideEval:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation$3;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation$3;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;->MultiplyEval:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation$4;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation$4;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;->PowerEval:Lorg/apache/poi/ss/formula/functions/Function;

    new-instance v0, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation$SubtractEvalClass;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation$SubtractEvalClass;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;->SubtractEval:Lorg/apache/poi/ss/formula/functions/Function;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract evaluate(DD)D
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0, p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide v0

    invoke-virtual {p0, p4, p1, p2}, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation;->evaluate(DD)D

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmpl-double v0, p1, p3

    if-nez v0, :cond_0

    instance-of p3, p0, Lorg/apache/poi/ss/formula/eval/TwoOperandNumericOperation$SubtractEvalClass;

    if-nez p3, :cond_0

    sget-object p1, Lorg/apache/poi/ss/formula/eval/NumberEval;->ZERO:Lorg/apache/poi/ss/formula/eval/NumberEval;

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p3

    if-nez p3, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p3
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p3, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p3

    :cond_2
    :goto_0
    :try_start_1
    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p1

    return-object p1
.end method

.method public final singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide p1

    return-wide p1
.end method
