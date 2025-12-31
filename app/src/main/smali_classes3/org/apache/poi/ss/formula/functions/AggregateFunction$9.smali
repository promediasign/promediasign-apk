.class final Lorg/apache/poi/ss/formula/functions/AggregateFunction$9;
.super Lorg/apache/poi/ss/formula/functions/AggregateFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/AggregateFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate([D)D
    .locals 2

    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Lorg/apache/poi/ss/formula/functions/StatsLib;->stdev([D)D

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance p1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->DIV_ZERO:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p1, v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p1
.end method
