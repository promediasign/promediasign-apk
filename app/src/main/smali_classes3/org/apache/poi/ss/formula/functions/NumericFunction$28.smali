.class final Lorg/apache/poi/ss/formula/functions/NumericFunction$28;
.super Lorg/apache/poi/ss/formula/functions/NumericFunction$TwoArg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/NumericFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/NumericFunction$TwoArg;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(DD)D
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p3, v0

    if-eqz v2, :cond_0

    invoke-static {p1, p2, p3, p4}, Lorg/apache/poi/ss/formula/functions/MathX;->mod(DD)D

    move-result-wide p1

    return-wide p1

    :cond_0
    new-instance p1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object p2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->DIV_ZERO:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p1, p2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p1
.end method
