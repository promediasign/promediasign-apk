.class public final Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction;
.super Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;,
        Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$AreaValueArray;,
        Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$RefValueArray;,
        Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$SingleCellValueArray;,
        Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$ValueArray;
    }
.end annotation


# instance fields
.field public function:Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/Fixed2ArgFunction;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction;->function:Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;

    return-void
.end method

.method private static createValueVector(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;
    .locals 1

    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-nez v0, :cond_2

    instance-of v0, p0, Lorg/apache/poi/ss/formula/TwoDEval;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$AreaValueArray;

    check-cast p0, Lorg/apache/poi/ss/formula/TwoDEval;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$AreaValueArray;-><init>(Lorg/apache/poi/ss/formula/TwoDEval;)V

    return-object v0

    :cond_0
    instance-of v0, p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$RefValueArray;

    check-cast p0, Lorg/apache/poi/ss/formula/eval/RefEval;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$RefValueArray;-><init>(Lorg/apache/poi/ss/formula/eval/RefEval;)V

    return-object v0

    :cond_1
    new-instance v0, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$SingleCellValueArray;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$SingleCellValueArray;-><init>(Lorg/apache/poi/ss/formula/eval/ValueEval;)V

    return-object v0

    :cond_2
    new-instance v0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    check-cast p0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v0, p0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v0
.end method

.method private evaluateInternal(Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;I)D
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    const/4 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v7, v3

    move-wide v9, v5

    move-wide v11, v9

    const/4 v8, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v8, v2, :cond_3

    invoke-interface {v0, v8}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v14

    invoke-interface {v1, v8}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v15

    instance-of v4, v14, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v4, :cond_0

    if-nez v3, :cond_0

    check-cast v14, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-object v3, v14

    goto :goto_1

    :cond_0
    instance-of v4, v15, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v4, :cond_1

    if-nez v7, :cond_1

    check-cast v15, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-object v7, v15

    goto :goto_1

    :cond_1
    instance-of v4, v14, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v4, :cond_2

    instance-of v4, v15, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v4, :cond_2

    check-cast v14, Lorg/apache/poi/ss/formula/eval/NumberEval;

    check-cast v15, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {v14}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v13

    add-double/2addr v9, v13

    invoke-virtual {v15}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v13

    add-double/2addr v11, v13

    const/4 v13, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    int-to-double v14, v2

    div-double/2addr v9, v14

    div-double/2addr v11, v14

    move-object v14, v7

    const/4 v4, 0x0

    move-wide v7, v5

    :goto_2
    if-ge v4, v2, :cond_7

    invoke-interface {v0, v4}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v15

    invoke-interface {v1, v4}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getItem(I)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v0

    instance-of v1, v15, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v1, :cond_4

    if-nez v3, :cond_4

    check-cast v15, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-object v3, v15

    goto :goto_3

    :cond_4
    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    if-eqz v1, :cond_5

    if-nez v14, :cond_5

    check-cast v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-object v14, v0

    goto :goto_3

    :cond_5
    instance-of v1, v15, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v1, :cond_6

    instance-of v1, v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    if-eqz v1, :cond_6

    check-cast v15, Lorg/apache/poi/ss/formula/eval/NumberEval;

    check-cast v0, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-virtual {v15}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v16

    sub-double v16, v16, v9

    invoke-virtual {v15}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v18

    sub-double v18, v18, v9

    mul-double v18, v18, v16

    add-double v18, v18, v7

    invoke-virtual {v15}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v7

    sub-double/2addr v7, v9

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/NumberEval;->getNumberValue()D

    move-result-wide v0

    sub-double/2addr v0, v11

    mul-double v0, v0, v7

    add-double/2addr v0, v5

    move-wide v5, v0

    move-wide/from16 v7, v18

    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    goto :goto_2

    :cond_7
    div-double/2addr v5, v7

    mul-double v9, v9, v5

    sub-double/2addr v11, v9

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    if-nez v14, :cond_a

    if-eqz v13, :cond_9

    iget-object v1, v0, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction;->function:Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;

    sget-object v2, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;->INTERCEPT:Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction$FUNCTION;

    if-ne v1, v2, :cond_8

    return-wide v11

    :cond_8
    return-wide v5

    :cond_9
    new-instance v1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v2, Lorg/apache/poi/ss/formula/eval/ErrorEval;->DIV_ZERO:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {v1, v2}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v1

    :cond_a
    new-instance v1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    invoke-direct {v1, v14}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v1

    :cond_b
    move-object/from16 v0, p0

    new-instance v1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    invoke-direct {v1, v3}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw v1
.end method


# virtual methods
.method public evaluate(IILorg/apache/poi/ss/formula/eval/ValueEval;Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 0

    :try_start_0
    invoke-static {p3}, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction;->createValueVector(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object p1

    invoke-static {p4}, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction;->createValueVector(Lorg/apache/poi/ss/formula/eval/ValueEval;)Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getSize()I

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getSize()I

    move-result p4

    if-eq p4, p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p2, p1, p3}, Lorg/apache/poi/ss/formula/functions/LinearRegressionFunction;->evaluateInternal(Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;I)D

    move-result-wide p1
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p3

    if-nez p3, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p3, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {p3, p1, p2}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object p3

    :cond_2
    :goto_0
    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_1
    :try_start_1
    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NA:Lorg/apache/poi/ss/formula/eval/ErrorEval;
    :try_end_1
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :goto_2
    invoke-virtual {p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object p1

    return-object p1
.end method
