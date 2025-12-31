.class public Lorg/apache/poi/ss/formula/functions/BaseNumberUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToDecimal(Ljava/lang/String;II)D
    .locals 17

    move/from16 v0, p1

    move/from16 v1, p2

    const-wide/16 v2, 0x0

    if-eqz p0, :cond_9

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v4, v4

    int-to-long v6, v1

    cmp-long v8, v4, v6

    if-gtz v8, :cond_8

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-wide/16 v9, 0x0

    move-wide v15, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_6

    aget-char v3, v4, v2

    const/16 v11, 0x30

    if-gt v11, v3, :cond_1

    const/16 v11, 0x39

    if-gt v3, v11, :cond_1

    add-int/lit8 v3, v3, -0x30

    :goto_1
    int-to-long v11, v3

    goto :goto_2

    :cond_1
    const/16 v11, 0x41

    if-gt v11, v3, :cond_2

    const/16 v11, 0x5a

    if-gt v3, v11, :cond_2

    add-int/lit8 v3, v3, -0x37

    goto :goto_1

    :cond_2
    const/16 v11, 0x61

    if-gt v11, v3, :cond_3

    const/16 v11, 0x7a

    if-gt v3, v11, :cond_3

    add-int/lit8 v3, v3, -0x57

    goto :goto_1

    :cond_3
    int-to-long v11, v0

    :goto_2
    int-to-long v13, v0

    cmp-long v3, v11, v13

    if-gez v3, :cond_5

    if-eqz v7, :cond_4

    move-wide v9, v11

    const/4 v7, 0x0

    :cond_4
    int-to-double v13, v0

    mul-double v15, v15, v13

    long-to-double v11, v11

    add-double/2addr v15, v11

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "character not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-nez v7, :cond_7

    if-nez v8, :cond_7

    div-int/lit8 v2, v0, 0x2

    int-to-long v2, v2

    cmp-long v4, v9, v2

    if-ltz v4, :cond_7

    int-to-double v11, v0

    int-to-double v13, v1

    invoke-static/range {v11 .. v16}, Lorg/apache/poi/ss/formula/functions/BaseNumberUtils;->getTwoComplement(DDD)D

    move-result-wide v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    mul-double v15, v0, v2

    :cond_7
    return-wide v15

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_9
    :goto_3
    return-wide v2
.end method

.method private static getTwoComplement(DDD)D
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    sub-double/2addr p0, p4

    return-wide p0
.end method
