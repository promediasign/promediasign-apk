.class public Lorg/apache/poi/ss/formula/functions/Rate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/functions/Function;


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/ss/formula/functions/Rate;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Rate;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calculateRate(DDDDDD)D
    .locals 20

    invoke-static/range {p11 .. p12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide v4, 0x3e7ad7f29abcaf48L    # 1.0E-7

    const-wide/16 v6, 0x0

    cmpg-double v8, v0, v4

    if-gez v8, :cond_0

    move-wide v0, v6

    goto :goto_0

    :cond_0
    add-double v0, p11, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    mul-double v0, v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    :goto_0
    mul-double v8, p3, p1

    add-double v8, v8, p5

    add-double v8, v8, p7

    mul-double v10, p5, v0

    div-double v12, v2, p11

    add-double v12, v12, p9

    mul-double v12, v12, p3

    sub-double/2addr v0, v2

    mul-double v0, v0, v12

    add-double/2addr v0, v10

    add-double v0, v0, p7

    move-wide v12, v0

    move-wide v10, v8

    move-wide/from16 v0, p11

    move-wide v8, v6

    :goto_1
    sub-double v14, v10, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    cmpl-double v16, v14, v4

    if-lez v16, :cond_2

    const/16 v14, 0x14

    int-to-double v14, v14

    cmpg-double v16, v6, v14

    if-gez v16, :cond_2

    mul-double v8, v8, v12

    mul-double v14, v10, v0

    sub-double/2addr v8, v14

    sub-double v10, v12, v10

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    cmpg-double v14, v10, v4

    if-gez v14, :cond_1

    mul-double v10, p1, v8

    add-double/2addr v10, v2

    mul-double v10, v10, p5

    mul-double v14, v8, p9

    add-double/2addr v14, v2

    mul-double v14, v14, p3

    mul-double v14, v14, p1

    add-double/2addr v14, v10

    add-double v14, v14, p7

    goto :goto_2

    :cond_1
    add-double v10, v8, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    mul-double v10, v10, p1

    invoke-static {v10, v11}, Ljava/lang/Math;->exp(D)D

    move-result-wide v10

    mul-double v14, p5, v10

    div-double v16, v2, v8

    add-double v16, v16, p9

    mul-double v16, v16, p3

    sub-double/2addr v10, v2

    mul-double v10, v10, v16

    add-double/2addr v10, v14

    add-double v14, v10, p7

    :goto_2
    add-double/2addr v6, v2

    move-wide v10, v12

    move-wide v12, v14

    move-wide/from16 v18, v0

    move-wide v0, v8

    move-wide/from16 v8, v18

    goto :goto_1

    :cond_2
    return-wide v0
.end method

.method public static final checkValue(D)V
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/apache/poi/ss/formula/eval/EvaluationException;

    sget-object p1, Lorg/apache/poi/ss/formula/eval/ErrorEval;->NUM_ERROR:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/eval/EvaluationException;-><init>(Lorg/apache/poi/ss/formula/eval/ErrorEval;)V

    throw p0
.end method


# virtual methods
.method public evaluate([Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;
    .locals 29

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    array-length v6, v0

    const/4 v7, 0x3

    if-ge v6, v7, :cond_0

    sget-object v0, Lorg/apache/poi/ss/formula/eval/ErrorEval;->VALUE_INVALID:Lorg/apache/poi/ss/formula/eval/ErrorEval;

    return-object v0

    :cond_0
    :try_start_0
    aget-object v6, v0, v5

    invoke-static {v6, v1, v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v6

    aget-object v8, v0, v4

    invoke-static {v8, v1, v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v8

    aget-object v9, v0, v3

    invoke-static {v9, v1, v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v9

    array-length v10, v0

    const/4 v11, 0x4

    const/4 v12, 0x0

    if-lt v10, v11, :cond_1

    aget-object v7, v0, v7

    invoke-static {v7, v1, v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v7

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_1
    move-object v7, v12

    :goto_0
    array-length v10, v0

    const/4 v13, 0x5

    if-lt v10, v13, :cond_2

    aget-object v10, v0, v11

    invoke-static {v10, v1, v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v10

    goto :goto_1

    :cond_2
    move-object v10, v12

    :goto_1
    array-length v14, v0

    const/4 v15, 0x6

    if-lt v14, v15, :cond_3

    aget-object v12, v0, v13

    invoke-static {v12, v1, v2}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->getSingleValue(Lorg/apache/poi/ss/formula/eval/ValueEval;II)Lorg/apache/poi/ss/formula/eval/ValueEval;

    move-result-object v12

    :cond_3
    invoke-static {v6}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v17

    invoke-static {v8}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v19

    invoke-static {v9}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v21

    array-length v1, v0

    const-wide/16 v8, 0x0

    if-lt v1, v11, :cond_4

    invoke-static {v7}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v1

    move-wide/from16 v23, v1

    goto :goto_2

    :cond_4
    move-wide/from16 v23, v8

    :goto_2
    array-length v1, v0

    if-lt v1, v13, :cond_5

    invoke-static {v10}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v1

    move-wide/from16 v25, v1

    goto :goto_3

    :cond_5
    move-wide/from16 v25, v8

    :goto_3
    array-length v0, v0

    if-lt v0, v15, :cond_6

    invoke-static {v12}, Lorg/apache/poi/ss/formula/eval/OperandResolver;->coerceValueToDouble(Lorg/apache/poi/ss/formula/eval/ValueEval;)D

    move-result-wide v0

    :goto_4
    move-wide/from16 v27, v0

    goto :goto_5

    :cond_6
    const-wide v0, 0x3fb999999999999aL    # 0.1

    goto :goto_4

    :goto_5
    move-object/from16 v16, p0

    invoke-direct/range {v16 .. v28}, Lorg/apache/poi/ss/formula/functions/Rate;->calculateRate(DDDDDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/ss/formula/functions/Rate;->checkValue(D)V
    :try_end_0
    .catch Lorg/apache/poi/ss/formula/eval/EvaluationException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Lorg/apache/poi/ss/formula/eval/NumberEval;

    invoke-direct {v2, v0, v1}, Lorg/apache/poi/ss/formula/eval/NumberEval;-><init>(D)V

    return-object v2

    :goto_6
    sget-object v1, Lorg/apache/poi/ss/formula/functions/Rate;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "Can\'t evaluate rate function"

    aput-object v3, v2, v5

    aput-object v0, v2, v4

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/apache/poi/ss/formula/eval/EvaluationException;->getErrorEval()Lorg/apache/poi/ss/formula/eval/ErrorEval;

    move-result-object v0

    return-object v0
.end method
