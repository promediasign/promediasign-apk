.class public final Lorg/apache/poi/ss/formula/functions/DMin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;


# instance fields
.field private minimumValue:Lorg/apache/poi/ss/formula/eval/ValueEval;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/DMin;->minimumValue:Lorg/apache/poi/ss/formula/eval/ValueEval;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/ss/formula/eval/NumberEval;->ZERO:Lorg/apache/poi/ss/formula/eval/NumberEval;

    :cond_0
    return-object v0
.end method

.method public processMatch(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z
    .locals 5

    instance-of v0, p1, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/DMin;->minimumValue:Lorg/apache/poi/ss/formula/eval/ValueEval;

    if-nez v0, :cond_0

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/DMin;->minimumValue:Lorg/apache/poi/ss/formula/eval/ValueEval;

    goto :goto_1

    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    invoke-interface {v0}, Lorg/apache/poi/ss/formula/eval/NumericValueEval;->getNumberValue()D

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/poi/ss/formula/functions/DMin;->minimumValue:Lorg/apache/poi/ss/formula/eval/ValueEval;

    check-cast v2, Lorg/apache/poi/ss/formula/eval/NumericValueEval;

    invoke-interface {v2}, Lorg/apache/poi/ss/formula/eval/NumericValueEval;->getNumberValue()D

    move-result-wide v2

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x1

    return p1
.end method
