.class public Lorg/apache/poi/ss/formula/functions/Subtotal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findFunction(I)Lorg/apache/poi/ss/formula/functions/Function;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/16 v0, 0x64

    if-le p0, v0, :cond_0

    const/16 v0, 0x70

    if-ge p0, v0, :cond_0

    new-instance p0, Lorg/apache/poi/ss/formula/eval/NotImplementedException;

    const-string v0, "SUBTOTAL - with \'exclude hidden values\' option"

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/eval/NotImplementedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    invoke-static {}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->invalidValue()Lorg/apache/poi/ss/formula/eval/EvaluationException;

    move-result-object p0

    throw p0

    :pswitch_0
    new-instance p0, Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;

    const-string v0, "VARP"

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    new-instance p0, Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;

    const-string v0, "VAR"

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    sget-object p0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->SUM:Lorg/apache/poi/ss/formula/functions/Function;

    :goto_0
    invoke-static {p0}, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->subtotalInstance(Lorg/apache/poi/ss/formula/functions/Function;)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object p0

    return-object p0

    :pswitch_3
    new-instance p0, Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;

    const-string v0, "STDEVP"

    invoke-direct {p0, v0}, Lorg/apache/poi/ss/formula/eval/NotImplementedFunctionException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_4
    sget-object p0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->STDEV:Lorg/apache/poi/ss/formula/functions/Function;

    goto :goto_0

    :pswitch_5
    sget-object p0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->PRODUCT:Lorg/apache/poi/ss/formula/functions/Function;

    goto :goto_0

    :pswitch_6
    sget-object p0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->MIN:Lorg/apache/poi/ss/formula/functions/Function;

    goto :goto_0

    :pswitch_7
    sget-object p0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->MAX:Lorg/apache/poi/ss/formula/functions/Function;

    goto :goto_0

    :pswitch_8
    invoke-static {}, Lorg/apache/poi/ss/formula/functions/Counta;->subtotalInstance()Lorg/apache/poi/ss/formula/functions/Counta;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-static {}, Lorg/apache/poi/ss/formula/functions/Count;->subtotalInstance()Lorg/apache/poi/ss/formula/functions/Count;

    move-result-object p0

    return-object p0

    :pswitch_a
    sget-object p0, Lorg/apache/poi/ss/formula/functions/AggregateFunction;->AVERAGE:Lorg/apache/poi/ss/formula/functions/Function;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 4

    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge v0, v1, :cond_0

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    invoke-static {v0, p2, p3}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToInt(Lorg/apache/poi/ss/formula/eval/ValueEval;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/ss/formula/functions/Subtotal;->findFunction(I)Lorg/apache/poi/ss/formula/functions/Function;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    array-length p1, p1

    invoke-interface {v3, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/ss/formula/eval/ValueEval;

    instance-of v3, v1, Lorg/apache/poi/ss/formula/LazyRefEval;

    if-eqz v3, :cond_1

    check-cast v1, Lorg/apache/poi/ss/formula/LazyRefEval;

    invoke-virtual {v1}, Lorg/apache/poi/ss/formula/LazyRefEval;->isSubTotal()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/poi/ss/formula/functions/Function;->evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p1

    return-object p1
.end method
