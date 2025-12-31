.class public Lorg/apache/poi/ss/formula/functions/Mirr;
.super Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/apache/poi/ss/formula/functions/MultiOperandNumericFunction;-><init>(ZZ)V

    return-void
.end method

.method private static mirr([DDD)D
    .locals 16

    move-object/from16 v0, p0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    array-length v2, v0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-wide v7, v3

    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_0
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    if-ge v6, v2, :cond_1

    aget-wide v12, v0, v6

    cmpg-double v14, v12, v3

    if-gez v14, :cond_0

    add-double v10, p1, v10

    add-double v10, v10, p3

    add-int/lit8 v14, v9, 0x1

    int-to-double v3, v9

    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    div-double/2addr v12, v3

    add-double/2addr v7, v12

    move v9, v14

    :cond_0
    add-int/lit8 v6, v6, 0x1

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_1
    array-length v2, v0

    const-wide/16 v3, 0x0

    :goto_1
    if-ge v5, v2, :cond_3

    aget-wide v12, v0, v5

    const-wide/16 v14, 0x0

    cmpl-double v6, v12, v14

    if-lez v6, :cond_2

    add-double v14, p1, v10

    add-int/lit8 v6, v9, 0x1

    sub-int v9, v1, v9

    int-to-double v10, v9

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double v9, v9, v12

    add-double/2addr v3, v9

    move v9, v6

    :cond_2
    add-int/lit8 v5, v5, 0x1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :cond_3
    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-eqz v0, :cond_4

    cmpl-double v0, v7, v5

    if-eqz v0, :cond_4

    neg-double v2, v3

    div-double/2addr v2, v7

    int-to-double v0, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double v10, v4, v0

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double v3, v0, v4

    goto :goto_2

    :cond_4
    move-wide v3, v5

    :goto_2
    return-wide v3
.end method


# virtual methods
.method public evaluate([D)D
    .locals 14

    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-wide v2, p1, v0

    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget-wide v4, p1, v0

    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    new-array v6, v0, [D

    const/4 v7, 0x0

    invoke-static {p1, v7, v6, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x0

    const/4 v8, 0x1

    :goto_0
    const-wide/16 v9, 0x0

    if-ge p1, v0, :cond_1

    aget-wide v11, v6, p1

    cmpg-double v13, v11, v9

    if-gez v13, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    :goto_1
    and-int/2addr v8, v9

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v8, :cond_2

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0

    :cond_2
    const/4 p1, 0x0

    const/4 v8, 0x1

    :goto_2
    if-ge p1, v0, :cond_4

    aget-wide v11, v6, p1

    cmpl-double v13, v11, v9

    if-lez v13, :cond_3

    const/4 v11, 0x1

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    :goto_3
    and-int/2addr v8, v11

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    if-nez v8, :cond_5

    invoke-static {v6, v2, v3, v4, v5}, Lorg/apache/poi/ss/formula/functions/Mirr;->mirr([DDD)D

    move-result-wide v0

    return-wide v0

    :cond_5
    new-instance p1, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->DIV_ZERO:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p1, v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p1
.end method

.method public getMaxNumOperands()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
