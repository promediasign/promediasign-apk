.class public Lorg/apache/poi/ss/formula/functions/Finance;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fv(DIDD)D
    .locals 8

    .line 1
    const/4 v7, 0x0

    move-wide v0, p0

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/ss/formula/functions/Finance;->fv(DIDDI)D

    move-result-wide p0

    return-wide p0
.end method

.method public static fv(DIDDI)D
    .locals 8

    .line 2
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double v2, p0, v0

    int-to-double v4, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double v6, v6, p5

    int-to-double p5, p7

    mul-double p5, p5, p0

    add-double/2addr p5, v0

    mul-double p5, p5, p3

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p2

    sub-double/2addr p2, v0

    mul-double p2, p2, p5

    div-double/2addr p2, p0

    add-double/2addr p2, v6

    neg-double p0, p2

    return-wide p0
.end method

.method public static ipmt(DIID)D
    .locals 8

    .line 1
    const-wide/16 v6, 0x0

    move-wide v0, p0

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/ss/formula/functions/Finance;->ipmt(DIIDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static ipmt(DIIDD)D
    .locals 9

    .line 2
    const/4 v8, 0x0

    move-wide v0, p0

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide v6, p6

    invoke-static/range {v0 .. v8}, Lorg/apache/poi/ss/formula/functions/Finance;->ipmt(DIIDDI)D

    move-result-wide v0

    return-wide v0
.end method

.method public static ipmt(DIIDDI)D
    .locals 10

    .line 3
    const/4 v8, 0x1

    add-int/lit8 v9, p2, -0x1

    move-wide v0, p0

    move v2, p3

    move-wide v3, p4

    move-wide/from16 v5, p6

    move/from16 v7, p8

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/ss/formula/functions/Finance;->pmt(DIDDI)D

    move-result-wide v3

    move v2, v9

    move-wide v5, p4

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/ss/formula/functions/Finance;->fv(DIDDI)D

    move-result-wide v0

    mul-double v0, v0, p0

    move/from16 v2, p8

    if-ne v2, v8, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, p0

    div-double/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public static pmt(DID)D
    .locals 7

    .line 1
    const-wide/16 v5, 0x0

    move-wide v0, p0

    move v2, p2

    move-wide v3, p3

    invoke-static/range {v0 .. v6}, Lorg/apache/poi/ss/formula/functions/Finance;->pmt(DIDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static pmt(DIDD)D
    .locals 8

    .line 2
    const/4 v7, 0x0

    move-wide v0, p0

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/ss/formula/functions/Finance;->pmt(DIDDI)D

    move-result-wide p0

    return-wide p0
.end method

.method public static pmt(DIDDI)D
    .locals 12

    .line 3
    move-wide v0, p0

    neg-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double v6, v0, v4

    move v8, p2

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double v10, v10, p3

    add-double v10, v10, p5

    mul-double v10, v10, v2

    move/from16 v2, p7

    int-to-double v2, v2

    mul-double v0, v0, v2

    add-double/2addr v0, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v2, v4

    mul-double v2, v2, v0

    div-double/2addr v10, v2

    return-wide v10
.end method

.method public static ppmt(DIID)D
    .locals 2

    .line 1
    invoke-static {p0, p1, p3, p4, p5}, Lorg/apache/poi/ss/formula/functions/Finance;->pmt(DID)D

    move-result-wide v0

    invoke-static/range {p0 .. p5}, Lorg/apache/poi/ss/formula/functions/Finance;->ipmt(DIID)D

    move-result-wide p0

    sub-double/2addr v0, p0

    return-wide v0
.end method

.method public static ppmt(DIIDD)D
    .locals 7

    .line 2
    move-wide v0, p0

    move v2, p3

    move-wide v3, p4

    move-wide v5, p6

    invoke-static/range {v0 .. v6}, Lorg/apache/poi/ss/formula/functions/Finance;->pmt(DIDD)D

    move-result-wide v0

    invoke-static/range {p0 .. p7}, Lorg/apache/poi/ss/formula/functions/Finance;->ipmt(DIIDD)D

    move-result-wide p0

    sub-double/2addr v0, p0

    return-wide v0
.end method

.method public static ppmt(DIIDDI)D
    .locals 8

    .line 3
    move-wide v0, p0

    move v2, p3

    move-wide v3, p4

    move-wide v5, p6

    move/from16 v7, p8

    invoke-static/range {v0 .. v7}, Lorg/apache/poi/ss/formula/functions/Finance;->pmt(DIDDI)D

    move-result-wide v0

    invoke-static/range {p0 .. p8}, Lorg/apache/poi/ss/formula/functions/Finance;->ipmt(DIIDDI)D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0
.end method
