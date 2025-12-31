.class final Lorg/apache/poi/ss/formula/functions/TextFunction$SearchFind;
.super Lorg/apache/poi/ss/formula/functions/Var2or3ArgFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/functions/TextFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SearchFind"
.end annotation


# instance fields
.field private final _isCaseSensitive:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Var2or3ArgFunction;-><init>()V

    iput-boolean p1, p0, Lorg/apache/poi/ss/formula/functions/TextFunction$SearchFind;->_isCaseSensitive:Z

    return-void
.end method

.method private eval(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 2

    iget-boolean v0, p0, Lorg/apache/poi/ss/formula/functions/TextFunction$SearchFind;->_isCaseSensitive:Z

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    goto :goto_1

    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :goto_1
    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1

    :cond_1
    new-instance p2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    add-int/lit8 p1, p1, 0x1

    int-to-double v0, p1

    invoke-direct {p2, v0, v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p2
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateStringArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateStringArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p3, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction$SearchFind;->eval(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p1

    return-object p1
.end method

.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    .line 2
    :try_start_0
    invoke-static {p3, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateStringArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateStringArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Ljava/lang/String;

    move-result-object p4

    invoke-static {p5, p1, p2}, Lorg/apache/poi/ss/formula/functions/TextFunction;->evaluateIntArg(Lorg/apache/poi/ss/formula/eval/ValueEval;II)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_0

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p4, p3, p1}, Lorg/apache/poi/ss/formula/functions/TextFunction$SearchFind;->eval(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_0
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p1

    return-object p1
.end method
