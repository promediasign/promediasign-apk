.class public final Lorg/apache/poi/ss/formula/functions/Irr;
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

.method public static irr([D)D
    .locals 2

    .line 1
    const-wide v0, 0x3fb999999999999aL    # 0.1

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/functions/Irr;->irr([DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static irr([DD)D
    .locals 18

    .line 2
    move-object/from16 v0, p0

    const/4 v1, 0x0

    move-wide/from16 v2, p1

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x14

    if-ge v4, v5, :cond_2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v5, v2

    aget-wide v7, v0, v1

    const-wide/16 v9, 0x0

    move-wide v12, v5

    const/4 v11, 0x0

    :goto_1
    add-int/lit8 v11, v11, 0x1

    array-length v14, v0

    if-ge v11, v14, :cond_0

    aget-wide v14, v0, v11

    div-double v16, v14, v12

    add-double v7, v16, v7

    mul-double v12, v12, v5

    move-wide/from16 p1, v2

    int-to-double v1, v11

    mul-double v1, v1, v14

    div-double/2addr v1, v12

    sub-double/2addr v9, v1

    move-wide/from16 v2, p1

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    move-wide/from16 p1, v2

    div-double/2addr v7, v9

    move-wide/from16 v1, p1

    sub-double v5, v1, v7

    sub-double v1, v5, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v7, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v3, v1, v7

    if-gtz v3, :cond_1

    return-wide v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    move-wide v2, v5

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    array-length v2, p1

    if-eqz v2, :cond_2

    array-length v2, p1

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    aget-object v2, p1, v1

    new-array v4, v0, [Lorg/apache/poi/ss/formula/eval/ValueEval;

    aput-object v2, v4, v1

    invoke-static {v4}, Lorg/apache/poi/ss/formula/functions/AggregateFunction$ValueCollector;->collectValues([Lorg/apache/poi/ss/formula/eval/ValueEval;)[D

    move-result-object v1

    array-length v2, p1

    if-ne v2, v3, :cond_1

    aget-object p1, p1, v0

    invoke-static {p1, p2, p3}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->singleOperandEvaluate(Lorg/apache/poi/ss/formula/eval/ValueEval;II)D

    move-result-wide p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    const-wide p1, 0x3fb999999999999aL    # 0.1

    :goto_0
    invoke-static {v1, p1, p2}, Lorg/apache/poi/ss/formula/functions/Irr;->irr([DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/apache/poi/ss/formula/functions/NumericFunction;->checkValue(D)V

    new-instance p3, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_2
    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1
.end method
