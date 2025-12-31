.class public final Lorg/apache/poi/ss/formula/functions/DGet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/IDStarAlgorithm;


# instance fields
.field private result:Lorg/apache/poi/ss/formula/eval/ValueEval;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/DGet;->result:Lorg/apache/poi/ss/formula/eval/ValueEval;

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    :cond_0
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-eqz v1, :cond_1

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1, v1}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToString(Lorg/apache/poi/ss/formula/eval/ValueEval;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/DGet;->result:Lorg/apache/poi/ss/formula/eval/ValueEval;
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_0
    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v0

    return-object v0
.end method

.method public processMatch(Lorg/apache/poi/ss/formula/eval/ValueEval;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/ss/formula/functions/DGet;->result:Lorg/apache/poi/ss/formula/eval/ValueEval;

    if-nez v0, :cond_0

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/DGet;->result:Lorg/apache/poi/ss/formula/eval/ValueEval;

    goto :goto_1

    :cond_0
    instance-of v0, v0, Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    instance-of p1, p1, Lorg/apache/poi/ss/formula/eval/BlankEval;

    if-nez p1, :cond_2

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/DGet;->result:Lorg/apache/poi/ss/formula/eval/ValueEval;

    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1
.end method
