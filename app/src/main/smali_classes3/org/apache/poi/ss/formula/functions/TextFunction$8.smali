.class final Lorg/apache/poi/ss/formula/functions/TextFunction$8;
.super Lorg/apache/poi/ss/formula/functions/Fixed3ArgFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/TextFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed3ArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateStringArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateIntArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result p4

    invoke-static {p5, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateIntArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result p1
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p4, p4, -0x1

    if-gez p4, :cond_0

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1

    :cond_0
    if-gez p1, :cond_1

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1

    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    if-ltz p1, :cond_3

    if-le p4, p2, :cond_2

    goto :goto_0

    :cond_2
    add-int/2addr p1, p4

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p3, p4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lorg/apache/poi/ss/formula/eval/StringEval;

    invoke-direct {p2, p1}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object p2

    :cond_3
    :goto_0
    new-instance p1, Lorg/apache/poi/ss/formula/eval/StringEval;

    const-string p2, ""

    invoke-direct {p1, p2}, Lorg/apache/poi/ss/formula/eval/StringEval;-><init>(Ljava/lang/String;)V

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p1

    return-object p1
.end method
