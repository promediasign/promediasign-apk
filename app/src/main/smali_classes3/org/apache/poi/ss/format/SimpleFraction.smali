.class public Lorg/apache/poi/ss/format/SimpleFraction;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final denominator:I

.field private final numerator:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/ss/format/SimpleFraction;->numerator:I

    iput p2, p0, Lorg/apache/poi/ss/format/SimpleFraction;->denominator:I

    return-void
.end method

.method public static buildFractionExactDenominator(DI)Lorg/apache/poi/ss/format/SimpleFraction;
    .locals 2

    int-to-double v0, p2

    mul-double p0, p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p1, p0

    new-instance p0, Lorg/apache/poi/ss/format/SimpleFraction;

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ss/format/SimpleFraction;-><init>(II)V

    return-object p0
.end method

.method private static buildFractionMaxDenominator(DDII)Lorg/apache/poi/ss/format/SimpleFraction;
    .locals 33

    move-wide/from16 v0, p0

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-long v4, v4

    const-string v6, " to fraction ("

    const-string v7, "Overflow trying to convert "

    const-wide/32 v8, 0x7fffffff

    cmp-long v10, v4, v8

    if-gtz v10, :cond_8

    long-to-double v10, v4

    sub-double/2addr v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const/4 v12, 0x1

    cmpg-double v13, v10, p2

    if-gez v13, :cond_0

    new-instance v0, Lorg/apache/poi/ss/format/SimpleFraction;

    long-to-int v1, v4

    invoke-direct {v0, v1, v12}, Lorg/apache/poi/ss/format/SimpleFraction;-><init>(II)V

    return-object v0

    :cond_0
    const/4 v10, 0x0

    const-wide/16 v13, 0x1

    const-wide/16 v15, 0x0

    move-wide/from16 v19, v0

    move-wide v10, v4

    move-wide v8, v13

    move-wide/from16 v17, v15

    move-wide v15, v8

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    add-int/2addr v13, v12

    move/from16 v21, v13

    long-to-double v12, v4

    sub-double v12, v19, v12

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    div-double v22, v22, v12

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-long v12, v12

    mul-long v24, v12, v10

    move-wide/from16 v26, v4

    add-long v4, v24, v15

    mul-long v24, v12, v8

    move-wide/from16 v28, v12

    add-long v12, v24, v17

    const-wide/16 v24, 0x0

    cmpl-double v30, p2, v24

    if-nez v30, :cond_2

    if-lez v2, :cond_2

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v24

    move/from16 v30, v14

    move-wide/from16 v31, v15

    int-to-long v14, v2

    cmp-long v16, v24, v14

    if-lez v16, :cond_1

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v24

    cmp-long v16, v24, v14

    if-gez v16, :cond_1

    new-instance v0, Lorg/apache/poi/ss/format/SimpleFraction;

    long-to-int v1, v10

    long-to-int v2, v8

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/format/SimpleFraction;-><init>(II)V

    return-object v0

    :cond_1
    :goto_1
    const-wide/32 v14, 0x7fffffff

    goto :goto_2

    :cond_2
    move/from16 v30, v14

    move-wide/from16 v31, v15

    goto :goto_1

    :goto_2
    cmp-long v16, v4, v14

    if-gtz v16, :cond_7

    cmp-long v16, v12, v14

    if-gtz v16, :cond_7

    long-to-double v14, v4

    move-wide/from16 v24, v8

    long-to-double v8, v12

    div-double/2addr v14, v8

    move/from16 v8, v21

    if-ge v8, v3, :cond_3

    sub-double/2addr v14, v0

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    cmpl-double v9, v14, p2

    if-lez v9, :cond_3

    int-to-long v14, v2

    cmp-long v9, v12, v14

    if-gez v9, :cond_3

    move-wide v14, v4

    move-wide/from16 v31, v10

    move-wide v9, v12

    move-wide/from16 v19, v22

    move-wide/from16 v17, v24

    move-wide/from16 v26, v28

    goto :goto_3

    :cond_3
    move-wide v14, v10

    move-wide/from16 v9, v24

    const/16 v30, 0x1

    :goto_3
    if-eqz v30, :cond_6

    if-ge v8, v3, :cond_5

    int-to-long v0, v2

    cmp-long v2, v12, v0

    new-instance v0, Lorg/apache/poi/ss/format/SimpleFraction;

    if-gez v2, :cond_4

    long-to-int v1, v4

    long-to-int v2, v12

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/format/SimpleFraction;-><init>(II)V

    return-object v0

    :cond_4
    long-to-int v1, v14

    long-to-int v2, v9

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/ss/format/SimpleFraction;-><init>(II)V

    return-object v0

    :cond_5
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to convert "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " to fraction after "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " iterations"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    move v13, v8

    move-wide v8, v9

    move-wide v10, v14

    move-wide/from16 v4, v26

    move/from16 v14, v30

    move-wide/from16 v15, v31

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_7
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/1)"

    .line 1
    invoke-static {v3, v4, v5, v0}, LA/g;->l(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static buildFractionMaxDenominator(DI)Lorg/apache/poi/ss/format/SimpleFraction;
    .locals 6

    .line 6
    const-wide/16 v2, 0x0

    const/16 v5, 0x64

    move-wide v0, p0

    move v4, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/ss/format/SimpleFraction;->buildFractionMaxDenominator(DDII)Lorg/apache/poi/ss/format/SimpleFraction;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDenominator()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/format/SimpleFraction;->denominator:I

    return v0
.end method

.method public getNumerator()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/format/SimpleFraction;->numerator:I

    return v0
.end method
