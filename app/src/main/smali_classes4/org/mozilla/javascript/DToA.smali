.class Lorg/mozilla/javascript/DToA;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final Bias:I = 0x3ff

.field private static final Bletch:I = 0x10

.field private static final Bndry_mask:I = 0xfffff

.field static final DTOSTR_EXPONENTIAL:I = 0x3

.field static final DTOSTR_FIXED:I = 0x2

.field static final DTOSTR_PRECISION:I = 0x4

.field static final DTOSTR_STANDARD:I = 0x0

.field static final DTOSTR_STANDARD_EXPONENTIAL:I = 0x1

.field private static final Exp_11:I = 0x3ff00000

.field private static final Exp_mask:I = 0x7ff00000

.field private static final Exp_mask_shifted:I = 0x7ff

.field private static final Exp_msk1:I = 0x100000

.field private static final Exp_msk1L:J = 0x10000000000000L

.field private static final Exp_shift:I = 0x14

.field private static final Exp_shift1:I = 0x14

.field private static final Exp_shiftL:I = 0x34

.field private static final Frac_mask:I = 0xfffff

.field private static final Frac_mask1:I = 0xfffff

.field private static final Frac_maskL:J = 0xfffffffffffffL

.field private static final Int_max:I = 0xe

.field private static final Log2P:I = 0x1

.field private static final P:I = 0x35

.field private static final Quick_max:I = 0xe

.field private static final Sign_bit:I = -0x80000000

.field private static final Ten_pmax:I = 0x16

.field private static final bigtens:[D

.field private static final dtoaModes:[I

.field private static final n_bigtens:I = 0x5

.field private static final tens:[D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x17

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lorg/mozilla/javascript/DToA;->tens:[D

    const/4 v0, 0x5

    new-array v0, v0, [D

    fill-array-data v0, :array_1

    sput-object v0, Lorg/mozilla/javascript/DToA;->bigtens:[D

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    filled-new-array {v2, v2, v0, v1, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/DToA;->dtoaModes:[I

    return-void

    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4024000000000000L    # 10.0
        0x4059000000000000L    # 100.0
        0x408f400000000000L    # 1000.0
        0x40c3880000000000L    # 10000.0
        0x40f86a0000000000L    # 100000.0
        0x412e848000000000L    # 1000000.0
        0x416312d000000000L    # 1.0E7
        0x4197d78400000000L    # 1.0E8
        0x41cdcd6500000000L    # 1.0E9
        0x4202a05f20000000L    # 1.0E10
        0x42374876e8000000L    # 1.0E11
        0x426d1a94a2000000L    # 1.0E12
        0x42a2309ce5400000L    # 1.0E13
        0x42d6bcc41e900000L    # 1.0E14
        0x430c6bf526340000L    # 1.0E15
        0x4341c37937e08000L    # 1.0E16
        0x4376345785d8a000L    # 1.0E17
        0x43abc16d674ec800L    # 1.0E18
        0x43e158e460913d00L    # 1.0E19
        0x4415af1d78b58c40L    # 1.0E20
        0x444b1ae4d6e2ef50L    # 1.0E21
        0x4480f0cf064dd592L    # 1.0E22
    .end array-data

    :array_1
    .array-data 8
        0x4341c37937e08000L    # 1.0E16
        0x4693b8b5b5056e17L    # 1.0E32
        0x4d384f03e93ff9f5L    # 1.0E64
        0x5a827748f9301d32L    # 1.0E128
        0x75154fdd7f73bf3cL    # 1.0E256
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static BASEDIGIT(I)C
    .locals 1

    const/16 v0, 0xa

    if-lt p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x57

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x30

    :goto_0
    int-to-char p0, p0

    return p0
.end method

.method public static JS_dtoa(DIZI[ZLjava/lang/StringBuilder;)I
    .locals 44

    move/from16 v0, p2

    move-object/from16 v1, p6

    const/4 v2, 0x1

    new-array v3, v2, [I

    new-array v4, v2, [I

    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result v5

    const/high16 v6, -0x80000000

    and-int/2addr v5, v6

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    aput-boolean v2, p5, v6

    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result v5

    const v7, 0x7fffffff

    and-int/2addr v5, v7

    move-wide/from16 v7, p0

    invoke-static {v7, v8, v5}, Lorg/mozilla/javascript/DToA;->setWord0(DI)D

    move-result-wide v7

    goto :goto_0

    :cond_0
    move-wide/from16 v7, p0

    aput-boolean v6, p5, v6

    :goto_0
    invoke-static {v7, v8}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result v5

    const/high16 v9, 0x7ff00000

    and-int/2addr v5, v9

    const v10, 0xfffff

    if-ne v5, v9, :cond_2

    invoke-static {v7, v8}, Lorg/mozilla/javascript/DToA;->word1(D)I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v7, v8}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result v0

    and-int/2addr v0, v10

    if-nez v0, :cond_1

    const-string v0, "Infinity"

    goto :goto_1

    :cond_1
    const-string v0, "NaN"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x270f

    return v0

    :cond_2
    const-wide/16 v11, 0x0

    const/16 v5, 0x30

    cmpl-double v9, v7, v11

    if-nez v9, :cond_3

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v2

    :cond_3
    invoke-static {v7, v8, v3, v4}, Lorg/mozilla/javascript/DToA;->d2b(D[I[I)Ljava/math/BigInteger;

    move-result-object v9

    invoke-static {v7, v8}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result v13

    ushr-int/lit8 v13, v13, 0x14

    and-int/lit16 v13, v13, 0x7ff

    const/16 v14, 0x20

    const/4 v15, -0x1

    if-eqz v13, :cond_4

    invoke-static {v7, v8}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result v16

    and-int v16, v16, v10

    const/high16 v17, 0x3ff00000    # 1.875f

    or-int v10, v16, v17

    invoke-static {v7, v8, v10}, Lorg/mozilla/javascript/DToA;->setWord0(DI)D

    move-result-wide v16

    add-int/lit16 v13, v13, -0x3ff

    const/4 v5, 0x0

    move-wide/from16 v42, v16

    move-object/from16 v17, v3

    move-wide/from16 v2, v42

    goto :goto_3

    :cond_4
    aget v10, v4, v6

    aget v13, v3, v6

    add-int/2addr v10, v13

    add-int/lit16 v13, v10, 0x432

    if-le v13, v14, :cond_5

    invoke-static {v7, v8}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result v5

    move-object/from16 v17, v3

    int-to-long v2, v5

    rsub-int/lit8 v5, v13, 0x40

    shl-long/2addr v2, v5

    invoke-static {v7, v8}, Lorg/mozilla/javascript/DToA;->word1(D)I

    move-result v5

    add-int/lit16 v13, v10, 0x412

    ushr-int/2addr v5, v13

    int-to-long v11, v5

    or-long/2addr v2, v11

    goto :goto_2

    :cond_5
    move-object/from16 v17, v3

    invoke-static {v7, v8}, Lorg/mozilla/javascript/DToA;->word1(D)I

    move-result v2

    int-to-long v2, v2

    rsub-int/lit8 v5, v13, 0x20

    shl-long/2addr v2, v5

    :goto_2
    long-to-double v2, v2

    invoke-static {v2, v3}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result v5

    const/high16 v11, 0x1f00000

    sub-int/2addr v5, v11

    invoke-static {v2, v3, v5}, Lorg/mozilla/javascript/DToA;->setWord0(DI)D

    move-result-wide v2

    add-int/lit8 v13, v10, -0x1

    const/4 v5, 0x1

    :goto_3
    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    sub-double/2addr v2, v10

    const-wide v10, 0x3fd287a7636f4361L    # 0.289529654602168

    mul-double v2, v2, v10

    const-wide v10, 0x3fc68a288b60c8b3L    # 0.1760912590558

    add-double/2addr v2, v10

    int-to-double v10, v13

    const-wide v20, 0x3fd34413509f79fbL    # 0.301029995663981

    mul-double v10, v10, v20

    add-double/2addr v10, v2

    double-to-int v2, v10

    const-wide/16 v18, 0x0

    cmpg-double v3, v10, v18

    if-gez v3, :cond_6

    int-to-double v14, v2

    cmpl-double v12, v10, v14

    if-eqz v12, :cond_6

    add-int/lit8 v2, v2, -0x1

    :cond_6
    if-ltz v2, :cond_8

    const/16 v10, 0x16

    if-gt v2, v10, :cond_8

    sget-object v10, Lorg/mozilla/javascript/DToA;->tens:[D

    aget-wide v11, v10, v2

    cmpg-double v10, v7, v11

    if-gez v10, :cond_7

    add-int/lit8 v2, v2, -0x1

    :cond_7
    const/4 v10, 0x0

    goto :goto_4

    :cond_8
    const/4 v10, 0x1

    :goto_4
    aget v11, v4, v6

    sub-int/2addr v11, v13

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    if-ltz v11, :cond_9

    move v12, v11

    const/4 v11, 0x0

    goto :goto_5

    :cond_9
    neg-int v11, v11

    const/4 v12, 0x0

    :goto_5
    if-ltz v2, :cond_a

    add-int/2addr v12, v2

    move v14, v2

    const/4 v13, 0x0

    goto :goto_6

    :cond_a
    sub-int/2addr v11, v2

    neg-int v13, v2

    const/4 v14, 0x0

    :goto_6
    if-ltz v0, :cond_b

    const/16 v15, 0x9

    if-le v0, v15, :cond_c

    :cond_b
    const/4 v0, 0x0

    :cond_c
    const/4 v15, 0x5

    if-le v0, v15, :cond_d

    add-int/lit8 v0, v0, -0x4

    const/16 v20, 0x0

    goto :goto_7

    :cond_d
    const/16 v20, 0x1

    :goto_7
    const/4 v3, 0x3

    const/4 v15, 0x2

    if-eqz v0, :cond_13

    const/4 v6, 0x1

    if-eq v0, v6, :cond_13

    if-eq v0, v15, :cond_11

    if-eq v0, v3, :cond_10

    const/4 v6, 0x4

    if-eq v0, v6, :cond_f

    const/4 v6, 0x5

    if-eq v0, v6, :cond_e

    move/from16 v21, p4

    const/4 v6, 0x0

    const/16 v23, 0x0

    :goto_8
    const/16 v24, 0x1

    goto :goto_c

    :cond_e
    const/4 v6, 0x1

    goto :goto_9

    :cond_f
    const/4 v6, 0x1

    goto :goto_a

    :cond_10
    const/4 v6, 0x0

    :goto_9
    add-int v21, p4, v2

    add-int/lit8 v23, v21, 0x1

    move/from16 v24, v6

    move/from16 v6, v23

    move/from16 v23, v21

    move/from16 v21, p4

    goto :goto_c

    :cond_11
    const/4 v6, 0x0

    :goto_a
    if-gtz p4, :cond_12

    const/16 v21, 0x1

    goto :goto_b

    :cond_12
    move/from16 v21, p4

    :goto_b
    move/from16 v24, v6

    move/from16 v6, v21

    move/from16 v23, v6

    goto :goto_c

    :cond_13
    const/4 v6, -0x1

    const/16 v21, 0x0

    const/16 v23, -0x1

    goto :goto_8

    :goto_c
    const/16 v3, 0xe

    const-wide/16 v25, 0x30

    const-wide/high16 v27, 0x4024000000000000L    # 10.0

    if-ltz v6, :cond_2d

    if-gt v6, v3, :cond_2d

    if-eqz v20, :cond_2d

    if-lez v2, :cond_17

    sget-object v20, Lorg/mozilla/javascript/DToA;->tens:[D

    and-int/lit8 v29, v2, 0xf

    aget-wide v29, v20, v29

    shr-int/lit8 v20, v2, 0x4

    and-int/lit8 v31, v20, 0x10

    if-eqz v31, :cond_14

    and-int/lit8 v20, v20, 0xf

    sget-object v31, Lorg/mozilla/javascript/DToA;->bigtens:[D

    const/16 v22, 0x4

    aget-wide v32, v31, v22

    div-double v31, v7, v32

    move-wide/from16 v33, v31

    move-wide/from16 v31, v29

    const/16 v30, 0x0

    move/from16 v29, v20

    const/16 v20, 0x3

    goto :goto_d

    :cond_14
    move-wide/from16 v33, v7

    move-wide/from16 v31, v29

    const/16 v30, 0x0

    move/from16 v29, v20

    const/16 v20, 0x2

    :goto_d
    if-eqz v29, :cond_16

    and-int/lit8 v35, v29, 0x1

    if-eqz v35, :cond_15

    add-int/lit8 v20, v20, 0x1

    sget-object v35, Lorg/mozilla/javascript/DToA;->bigtens:[D

    aget-wide v36, v35, v30

    mul-double v31, v31, v36

    :cond_15
    shr-int/lit8 v29, v29, 0x1

    add-int/lit8 v30, v30, 0x1

    goto :goto_d

    :cond_16
    div-double v33, v33, v31

    move/from16 v29, v20

    goto :goto_f

    :cond_17
    neg-int v3, v2

    if-eqz v3, :cond_19

    sget-object v20, Lorg/mozilla/javascript/DToA;->tens:[D

    and-int/lit8 v29, v3, 0xf

    aget-wide v29, v20, v29

    mul-double v29, v29, v7

    const/16 v20, 0x4

    shr-int/lit8 v3, v3, 0x4

    move-wide/from16 v33, v29

    const/16 v20, 0x0

    const/16 v29, 0x2

    :goto_e
    if-eqz v3, :cond_1a

    and-int/lit8 v30, v3, 0x1

    if-eqz v30, :cond_18

    add-int/lit8 v29, v29, 0x1

    sget-object v30, Lorg/mozilla/javascript/DToA;->bigtens:[D

    aget-wide v31, v30, v20

    mul-double v33, v33, v31

    :cond_18
    shr-int/lit8 v3, v3, 0x1

    add-int/lit8 v20, v20, 0x1

    goto :goto_e

    :cond_19
    move-wide/from16 v33, v7

    const/16 v29, 0x2

    :cond_1a
    :goto_f
    if-eqz v10, :cond_1c

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, v33, v30

    if-gez v3, :cond_1c

    if-lez v6, :cond_1c

    if-gtz v23, :cond_1b

    move v3, v2

    move/from16 v30, v3

    move v2, v6

    move-wide/from16 v31, v7

    move/from16 v15, v29

    const/16 v20, 0x1

    :goto_10
    move v8, v2

    goto :goto_11

    :cond_1b
    add-int/lit8 v3, v2, -0x1

    mul-double v33, v33, v27

    add-int/lit8 v29, v29, 0x1

    move/from16 v30, v2

    move-wide/from16 v31, v7

    move/from16 v2, v23

    move/from16 v15, v29

    const/16 v20, 0x0

    move v8, v6

    goto :goto_11

    :cond_1c
    move v3, v2

    move/from16 v30, v3

    move v2, v6

    move-wide/from16 v31, v7

    move/from16 v15, v29

    const/16 v20, 0x0

    goto :goto_10

    :goto_11
    int-to-double v6, v15

    mul-double v6, v6, v33

    const-wide/high16 v35, 0x401c000000000000L    # 7.0

    add-double v6, v6, v35

    invoke-static {v6, v7}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result v15

    const/high16 v35, 0x3400000

    sub-int v15, v15, v35

    invoke-static {v6, v7, v15}, Lorg/mozilla/javascript/DToA;->setWord0(DI)D

    move-result-wide v6

    if-nez v2, :cond_1f

    const-wide/high16 v35, 0x4014000000000000L    # 5.0

    sub-double v33, v33, v35

    cmpl-double v15, v33, v6

    if-lez v15, :cond_1d

    const/16 v15, 0x31

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    add-int/2addr v3, v0

    return v3

    :cond_1d
    move/from16 v35, v8

    move-object v15, v9

    neg-double v8, v6

    cmpg-double v20, v33, v8

    if-gez v20, :cond_1e

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v0, 0x30

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    return v0

    :cond_1e
    const/16 v20, 0x1

    goto :goto_12

    :cond_1f
    move/from16 v35, v8

    move-object v15, v9

    :goto_12
    if-nez v20, :cond_2b

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    if-eqz v24, :cond_26

    sget-object v20, Lorg/mozilla/javascript/DToA;->tens:[D

    add-int/lit8 v36, v2, -0x1

    aget-wide v36, v20, v36

    div-double v8, v8, v36

    sub-double/2addr v8, v6

    move/from16 v36, v10

    move/from16 v37, v11

    move/from16 v38, v14

    move-object/from16 v39, v15

    move-wide/from16 v10, v33

    const/4 v6, 0x0

    :goto_13
    double-to-long v14, v10

    move/from16 v40, v12

    move/from16 v41, v13

    long-to-double v12, v14

    sub-double v33, v10, v12

    add-long v14, v14, v25

    long-to-int v7, v14

    int-to-char v7, v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    cmpg-double v7, v33, v8

    if-gez v7, :cond_20

    const/4 v7, 0x1

    add-int/2addr v3, v7

    return v3

    :cond_20
    const/4 v7, 0x1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v10, v10, v33

    cmpg-double v12, v10, v8

    if-gez v12, :cond_23

    :cond_21
    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v2, 0x39

    if-eq v0, v2, :cond_22

    move v5, v0

    goto :goto_14

    :cond_22
    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_21

    add-int/lit8 v3, v3, 0x1

    const/16 v5, 0x30

    :goto_14
    add-int/2addr v5, v7

    int-to-char v0, v5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v3, v7

    return v3

    :cond_23
    add-int/2addr v6, v7

    if-lt v6, v2, :cond_25

    :cond_24
    const/16 v20, 0x1

    goto/16 :goto_17

    :cond_25
    mul-double v8, v8, v27

    mul-double v10, v33, v27

    move/from16 v12, v40

    move/from16 v13, v41

    goto :goto_13

    :cond_26
    move/from16 v36, v10

    move/from16 v37, v11

    move/from16 v40, v12

    move/from16 v41, v13

    move/from16 v38, v14

    move-object/from16 v39, v15

    sget-object v10, Lorg/mozilla/javascript/DToA;->tens:[D

    add-int/lit8 v11, v2, -0x1

    aget-wide v11, v10, v11

    mul-double v6, v6, v11

    move-wide/from16 v11, v33

    const/4 v10, 0x1

    :goto_15
    double-to-long v13, v11

    long-to-double v8, v13

    sub-double v33, v11, v8

    add-long v13, v13, v25

    long-to-int v8, v13

    int-to-char v8, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v10, v2, :cond_2a

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double v10, v6, v8

    cmpl-double v8, v33, v10

    if-lez v8, :cond_29

    :cond_27
    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v8, 0x1

    sub-int/2addr v0, v8

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v2, 0x39

    if-eq v0, v2, :cond_28

    move v5, v0

    goto :goto_16

    :cond_28
    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_27

    add-int/lit8 v3, v3, 0x1

    const/16 v5, 0x30

    :goto_16
    add-int/2addr v5, v8

    int-to-char v0, v5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v3, v8

    return v3

    :cond_29
    const/4 v8, 0x1

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    sub-double v6, v11, v6

    cmpg-double v9, v33, v6

    if-gez v9, :cond_24

    invoke-static/range {p6 .. p6}, Lorg/mozilla/javascript/DToA;->stripTrailingZeroes(Ljava/lang/StringBuilder;)V

    add-int/2addr v3, v8

    return v3

    :cond_2a
    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    add-int/lit8 v10, v10, 0x1

    mul-double v8, v33, v27

    move-wide/from16 v42, v8

    move-wide v8, v11

    move-wide/from16 v11, v42

    goto :goto_15

    :cond_2b
    move/from16 v36, v10

    move/from16 v37, v11

    move/from16 v40, v12

    move/from16 v41, v13

    move/from16 v38, v14

    move-object/from16 v39, v15

    :goto_17
    const/4 v6, 0x0

    if-eqz v20, :cond_2c

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_18

    :cond_2c
    move-wide/from16 v7, v33

    move/from16 v42, v3

    move v3, v2

    move/from16 v2, v42

    goto :goto_19

    :cond_2d
    move/from16 v30, v2

    move/from16 v35, v6

    move-wide/from16 v31, v7

    move-object/from16 v39, v9

    move/from16 v36, v10

    move/from16 v37, v11

    move/from16 v40, v12

    move/from16 v41, v13

    move/from16 v38, v14

    const/4 v6, 0x0

    :goto_18
    move/from16 v2, v30

    move-wide/from16 v7, v31

    move/from16 v3, v35

    :goto_19
    aget v9, v17, v6

    const-wide/16 v10, 0x1

    if-ltz v9, :cond_36

    const/16 v6, 0xe

    if-gt v2, v6, :cond_36

    sget-object v0, Lorg/mozilla/javascript/DToA;->tens:[D

    aget-wide v12, v0, v2

    if-gez v21, :cond_30

    if-gtz v3, :cond_30

    if-ltz v3, :cond_2e

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    mul-double v12, v12, v3

    cmpg-double v0, v7, v12

    if-ltz v0, :cond_2e

    if-nez p3, :cond_2f

    cmpl-double v0, v7, v12

    if-nez v0, :cond_2f

    :cond_2e
    const/4 v0, 0x0

    goto :goto_1a

    :cond_2f
    const/16 v0, 0x31

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    add-int/2addr v2, v0

    return v2

    :goto_1a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v0, 0x30

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    return v0

    :cond_30
    const/4 v0, 0x1

    :goto_1b
    div-double v4, v7, v12

    double-to-long v4, v4

    long-to-double v14, v4

    mul-double v14, v14, v12

    sub-double/2addr v7, v14

    add-long v14, v4, v25

    long-to-int v6, v14

    int-to-char v6, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v0, v3, :cond_34

    add-double/2addr v7, v7

    cmpl-double v0, v7, v12

    if-gtz v0, :cond_32

    if-nez v0, :cond_31

    and-long v3, v4, v10

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_32

    if-eqz p3, :cond_31

    goto :goto_1c

    :cond_31
    const/4 v4, 0x1

    goto :goto_1e

    :cond_32
    :goto_1c
    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v3, 0x39

    if-eq v0, v3, :cond_33

    move v5, v0

    goto :goto_1d

    :cond_33
    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_32

    add-int/lit8 v2, v2, 0x1

    const/16 v5, 0x30

    :goto_1d
    add-int/2addr v5, v4

    int-to-char v0, v5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1e

    :cond_34
    const/4 v4, 0x1

    mul-double v7, v7, v27

    const-wide/16 v14, 0x0

    cmpl-double v5, v7, v14

    if-nez v5, :cond_35

    :goto_1e
    add-int/2addr v2, v4

    return v2

    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_36
    if-eqz v24, :cond_3b

    const/4 v6, 0x2

    if-ge v0, v6, :cond_38

    if-eqz v5, :cond_37

    add-int/lit16 v9, v9, 0x433

    goto :goto_1f

    :cond_37
    const/4 v5, 0x0

    aget v4, v4, v5

    rsub-int/lit8 v4, v4, 0x36

    move v9, v4

    :goto_1f
    move/from16 v5, v37

    move/from16 v14, v38

    move/from16 v4, v41

    move v13, v4

    goto :goto_21

    :cond_38
    add-int/lit8 v4, v3, -0x1

    move/from16 v13, v41

    if-lt v13, v4, :cond_39

    sub-int v4, v13, v4

    move/from16 v14, v38

    move/from16 v42, v13

    move v13, v4

    move/from16 v4, v42

    goto :goto_20

    :cond_39
    sub-int/2addr v4, v13

    add-int v14, v38, v4

    add-int/2addr v13, v4

    move v4, v13

    const/4 v13, 0x0

    :goto_20
    if-gez v3, :cond_3a

    sub-int v5, v37, v3

    const/4 v9, 0x0

    goto :goto_21

    :cond_3a
    move v9, v3

    move/from16 v5, v37

    :goto_21
    add-int v6, v37, v9

    add-int v12, v40, v9

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    goto :goto_22

    :cond_3b
    move/from16 v13, v41

    const/4 v9, 0x0

    move v4, v13

    move/from16 v5, v37

    move v6, v5

    move/from16 v14, v38

    move/from16 v12, v40

    :goto_22
    if-lez v5, :cond_3d

    if-lez v12, :cond_3d

    if-ge v5, v12, :cond_3c

    move v15, v5

    goto :goto_23

    :cond_3c
    move v15, v12

    :goto_23
    sub-int/2addr v6, v15

    sub-int/2addr v5, v15

    sub-int/2addr v12, v15

    :cond_3d
    if-lez v4, :cond_40

    if-eqz v24, :cond_3f

    if-lez v13, :cond_3e

    invoke-static {v9, v13}, Lorg/mozilla/javascript/DToA;->pow5mult(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v9

    move-object/from16 v15, v39

    invoke-virtual {v9, v15}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    :goto_24
    move-object/from16 v42, v15

    move-object v15, v9

    move-object/from16 v9, v42

    goto :goto_25

    :cond_3e
    move-object/from16 v15, v39

    goto :goto_24

    :goto_25
    sub-int/2addr v4, v13

    if-eqz v4, :cond_41

    invoke-static {v9, v4}, Lorg/mozilla/javascript/DToA;->pow5mult(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v9

    goto :goto_26

    :cond_3f
    move-object/from16 v15, v39

    invoke-static {v15, v4}, Lorg/mozilla/javascript/DToA;->pow5mult(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v4

    move-object v15, v9

    move-object v9, v4

    goto :goto_26

    :cond_40
    move-object/from16 v15, v39

    move-object/from16 v42, v15

    move-object v15, v9

    move-object/from16 v9, v42

    :cond_41
    :goto_26
    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    if-lez v14, :cond_42

    invoke-static {v4, v14}, Lorg/mozilla/javascript/DToA;->pow5mult(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v4

    :cond_42
    const/4 v10, 0x2

    if-ge v0, v10, :cond_43

    invoke-static {v7, v8}, Lorg/mozilla/javascript/DToA;->word1(D)I

    move-result v10

    if-nez v10, :cond_43

    invoke-static {v7, v8}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result v10

    const v11, 0xfffff

    and-int/2addr v10, v11

    if-nez v10, :cond_43

    invoke-static {v7, v8}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result v10

    const/high16 v11, 0x7fe00000

    and-int/2addr v10, v11

    if-eqz v10, :cond_43

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v12, v12, 0x1

    const/4 v10, 0x1

    goto :goto_27

    :cond_43
    const/4 v10, 0x0

    :goto_27
    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v11

    move/from16 p0, v3

    const/4 v3, 0x4

    const/4 v13, 0x0

    const/16 v17, 0x0

    :goto_28
    if-ge v13, v3, :cond_45

    shl-int/lit8 v3, v17, 0x8

    move-wide/from16 v18, v7

    array-length v7, v11

    if-ge v13, v7, :cond_44

    aget-byte v7, v11, v13

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v3, v7

    :cond_44
    move/from16 v17, v3

    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v7, v18

    const/4 v3, 0x4

    goto :goto_28

    :cond_45
    move-wide/from16 v18, v7

    if-eqz v14, :cond_46

    invoke-static/range {v17 .. v17}, Lorg/mozilla/javascript/DToA;->hi0bits(I)I

    move-result v3

    const/16 v7, 0x20

    rsub-int/lit8 v3, v3, 0x20

    goto :goto_29

    :cond_46
    const/4 v3, 0x1

    :goto_29
    add-int/2addr v3, v12

    and-int/lit8 v3, v3, 0x1f

    if-eqz v3, :cond_47

    rsub-int/lit8 v3, v3, 0x20

    :cond_47
    const/4 v7, 0x4

    if-le v3, v7, :cond_48

    add-int/lit8 v3, v3, -0x4

    :goto_2a
    add-int/2addr v6, v3

    add-int/2addr v5, v3

    add-int/2addr v12, v3

    goto :goto_2b

    :cond_48
    if-ge v3, v7, :cond_49

    add-int/lit8 v3, v3, 0x1c

    goto :goto_2a

    :cond_49
    :goto_2b
    if-lez v6, :cond_4a

    invoke-virtual {v9, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v9

    :cond_4a
    if-lez v12, :cond_4b

    invoke-virtual {v4, v12}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    :cond_4b
    const-wide/16 v6, 0xa

    if-eqz v36, :cond_4d

    invoke-virtual {v9, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_4d

    add-int/lit8 v2, v2, -0x1

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    if-eqz v24, :cond_4c

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    :cond_4c
    move/from16 v3, v23

    goto :goto_2c

    :cond_4d
    move/from16 v3, p0

    :goto_2c
    if-gtz v3, :cond_50

    const/4 v8, 0x2

    if-le v0, v8, :cond_50

    if-ltz v3, :cond_4e

    const-wide/16 v5, 0x5

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_4e

    if-nez v0, :cond_4f

    if-nez p3, :cond_4f

    :cond_4e
    const/4 v0, 0x0

    goto :goto_2d

    :cond_4f
    const/16 v0, 0x31

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    add-int/2addr v2, v0

    return v2

    :goto_2d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v0, 0x30

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    return v8

    :cond_50
    const/4 v8, 0x1

    if-eqz v24, :cond_64

    if-lez v5, :cond_51

    invoke-virtual {v15, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v15

    :cond_51
    if-eqz v10, :cond_52

    invoke-virtual {v15, v8}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    goto :goto_2e

    :cond_52
    move-object v5, v15

    :goto_2e
    const/4 v10, 0x1

    :goto_2f
    invoke-virtual {v9, v4}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v9

    aget-object v11, v9, v8

    const/4 v8, 0x0

    aget-object v9, v9, v8

    invoke-virtual {v9}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    const/16 v9, 0x30

    add-int/2addr v8, v9

    int-to-char v8, v8

    invoke-virtual {v11, v15}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v9

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->signum()I

    move-result v13

    if-gtz v13, :cond_53

    const/4 v12, 0x1

    goto :goto_30

    :cond_53
    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v12

    :goto_30
    if-nez v12, :cond_57

    if-nez v0, :cond_57

    invoke-static/range {v18 .. v19}, Lorg/mozilla/javascript/DToA;->word1(D)I

    move-result v13

    const/4 v14, 0x1

    and-int/2addr v13, v14

    if-nez v13, :cond_58

    const/16 v13, 0x39

    if-ne v8, v13, :cond_55

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static/range {p6 .. p6}, Lorg/mozilla/javascript/DToA;->roundOff(Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_54

    add-int/lit8 v2, v2, 0x1

    const/16 v0, 0x31

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_54
    add-int/2addr v2, v14

    return v2

    :cond_55
    if-lez v9, :cond_56

    add-int/lit8 v8, v8, 0x1

    int-to-char v8, v8

    :cond_56
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v2, v14

    return v2

    :cond_57
    const/4 v14, 0x1

    :cond_58
    if-ltz v9, :cond_5f

    if-nez v9, :cond_59

    if-nez v0, :cond_59

    invoke-static/range {v18 .. v19}, Lorg/mozilla/javascript/DToA;->word1(D)I

    move-result v9

    and-int/2addr v9, v14

    if-nez v9, :cond_59

    goto :goto_32

    :cond_59
    if-lez v12, :cond_5c

    const/16 v9, 0x39

    if-ne v8, v9, :cond_5b

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static/range {p6 .. p6}, Lorg/mozilla/javascript/DToA;->roundOff(Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_5a

    add-int/lit8 v2, v2, 0x1

    const/16 v0, 0x31

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5a
    const/4 v0, 0x1

    add-int/2addr v2, v0

    return v2

    :cond_5b
    const/4 v0, 0x1

    add-int/2addr v8, v0

    int-to-char v3, v8

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v2, v0

    return v2

    :cond_5c
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v10, v3, :cond_5d

    const/4 v5, 0x1

    goto/16 :goto_36

    :cond_5d
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    if-ne v15, v5, :cond_5e

    invoke-virtual {v5, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    move-object v15, v5

    goto :goto_31

    :cond_5e
    invoke-virtual {v15, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    move-object v15, v8

    :goto_31
    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x1

    goto/16 :goto_2f

    :cond_5f
    :goto_32
    if-lez v12, :cond_60

    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gtz v3, :cond_61

    if-nez v3, :cond_60

    and-int/lit8 v3, v8, 0x1

    if-eq v3, v0, :cond_61

    if-eqz p3, :cond_60

    goto :goto_33

    :cond_60
    const/4 v5, 0x1

    goto :goto_34

    :cond_61
    :goto_33
    add-int/lit8 v0, v8, 0x1

    int-to-char v0, v0

    const/16 v3, 0x39

    if-ne v8, v3, :cond_63

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static/range {p6 .. p6}, Lorg/mozilla/javascript/DToA;->roundOff(Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_62

    add-int/lit8 v2, v2, 0x1

    const/16 v0, 0x31

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_62
    const/4 v5, 0x1

    add-int/2addr v2, v5

    return v2

    :cond_63
    const/4 v5, 0x1

    move v8, v0

    :goto_34
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v2, v5

    return v2

    :cond_64
    const/4 v5, 0x1

    const/4 v12, 0x1

    :goto_35
    invoke-virtual {v9, v4}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    aget-object v11, v0, v5

    const/4 v8, 0x0

    aget-object v0, v0, v8

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    const/16 v9, 0x30

    add-int/2addr v0, v9

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-lt v12, v3, :cond_68

    move v8, v0

    :goto_36
    invoke-virtual {v11, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_67

    if-nez v0, :cond_65

    and-int/lit8 v0, v8, 0x1

    if-eq v0, v5, :cond_67

    if-eqz p3, :cond_65

    goto :goto_37

    :cond_65
    invoke-static/range {p6 .. p6}, Lorg/mozilla/javascript/DToA;->stripTrailingZeroes(Ljava/lang/StringBuilder;)V

    :cond_66
    const/4 v10, 0x1

    goto :goto_38

    :cond_67
    :goto_37
    invoke-static/range {p6 .. p6}, Lorg/mozilla/javascript/DToA;->roundOff(Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_66

    const/16 v0, 0x31

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    add-int/2addr v2, v5

    return v2

    :goto_38
    add-int/2addr v2, v10

    return v2

    :cond_68
    const/16 v0, 0x31

    const/4 v5, 0x2

    const/4 v10, 0x1

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    add-int/lit8 v12, v12, 0x1

    move-object v9, v11

    const/4 v5, 0x1

    goto :goto_35
.end method

.method public static JS_dtobasestr(ID)Ljava/lang/String;
    .locals 12

    .line 1
    const/4 v0, 0x2

    .line 2
    if-gt v0, p0, :cond_16

    .line 3
    .line 4
    const/16 v0, 0x24

    .line 5
    .line 6
    if-gt p0, v0, :cond_16

    .line 7
    .line 8
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string p0, "NaN"

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const-wide/16 v1, 0x0

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    cmpl-double p0, p1, v1

    .line 26
    .line 27
    if-lez p0, :cond_1

    .line 28
    .line 29
    const-string p0, "Infinity"

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const-string p0, "-Infinity"

    .line 33
    .line 34
    :goto_0
    return-object p0

    .line 35
    :cond_2
    cmpl-double v0, p1, v1

    .line 36
    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    const-string p0, "0"

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_3
    const/4 v1, 0x0

    .line 43
    const/4 v2, 0x1

    .line 44
    if-ltz v0, :cond_4

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    goto :goto_1

    .line 48
    :cond_4
    neg-double p1, p1

    .line 49
    const/4 v0, 0x1

    .line 50
    :goto_1
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    .line 51
    .line 52
    .line 53
    move-result-wide v3

    .line 54
    double-to-long v5, v3

    .line 55
    long-to-double v7, v5

    .line 56
    cmpl-double v9, v7, v3

    .line 57
    .line 58
    if-nez v9, :cond_6

    .line 59
    .line 60
    if-eqz v0, :cond_5

    .line 61
    .line 62
    neg-long v5, v5

    .line 63
    :cond_5
    invoke-static {v5, v6, p0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    goto :goto_4

    .line 68
    :cond_6
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 69
    .line 70
    .line 71
    move-result-wide v5

    .line 72
    const/16 v7, 0x34

    .line 73
    .line 74
    shr-long v7, v5, v7

    .line 75
    .line 76
    long-to-int v8, v7

    .line 77
    and-int/lit16 v7, v8, 0x7ff

    .line 78
    .line 79
    const-wide v8, 0xfffffffffffffL

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    and-long/2addr v5, v8

    .line 85
    if-nez v7, :cond_7

    .line 86
    .line 87
    shl-long/2addr v5, v2

    .line 88
    goto :goto_2

    .line 89
    :cond_7
    const-wide/high16 v8, 0x10000000000000L

    .line 90
    .line 91
    or-long/2addr v5, v8

    .line 92
    :goto_2
    if-eqz v0, :cond_8

    .line 93
    .line 94
    neg-long v5, v5

    .line 95
    :cond_8
    add-int/lit16 v7, v7, -0x433

    .line 96
    .line 97
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    if-lez v7, :cond_9

    .line 102
    .line 103
    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    goto :goto_3

    .line 108
    :cond_9
    if-gez v7, :cond_a

    .line 109
    .line 110
    neg-int v5, v7

    .line 111
    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    :cond_a
    :goto_3
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    :goto_4
    cmpl-double v5, p1, v3

    .line 120
    .line 121
    if-nez v5, :cond_b

    .line 122
    .line 123
    return-object v0

    .line 124
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const/16 v0, 0x2e

    .line 133
    .line 134
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    sub-double v3, p1, v3

    .line 138
    .line 139
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 140
    .line 141
    .line 142
    move-result-wide p1

    .line 143
    const/16 v0, 0x20

    .line 144
    .line 145
    shr-long v6, p1, v0

    .line 146
    .line 147
    long-to-int v0, v6

    .line 148
    long-to-int p2, p1

    .line 149
    new-array p1, v2, [I

    .line 150
    .line 151
    new-array v6, v2, [I

    .line 152
    .line 153
    invoke-static {v3, v4, p1, v6}, Lorg/mozilla/javascript/DToA;->d2b(D[I[I)Ljava/math/BigInteger;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    ushr-int/lit8 v4, v0, 0x14

    .line 158
    .line 159
    and-int/lit16 v4, v4, 0x7ff

    .line 160
    .line 161
    neg-int v4, v4

    .line 162
    if-nez v4, :cond_c

    .line 163
    .line 164
    const/4 v4, -0x1

    .line 165
    :cond_c
    add-int/lit16 v6, v4, 0x434

    .line 166
    .line 167
    const-wide/16 v7, 0x1

    .line 168
    .line 169
    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 170
    .line 171
    .line 172
    move-result-object v9

    .line 173
    if-nez p2, :cond_d

    .line 174
    .line 175
    const v10, 0xfffff

    .line 176
    .line 177
    .line 178
    and-int/2addr v10, v0

    .line 179
    if-nez v10, :cond_d

    .line 180
    .line 181
    const/high16 v10, 0x7fe00000

    .line 182
    .line 183
    and-int/2addr v0, v10

    .line 184
    if-eqz v0, :cond_d

    .line 185
    .line 186
    add-int/lit16 v6, v4, 0x435

    .line 187
    .line 188
    const-wide/16 v10, 0x2

    .line 189
    .line 190
    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    goto :goto_5

    .line 195
    :cond_d
    move-object v0, v9

    .line 196
    :goto_5
    aget p1, p1, v1

    .line 197
    .line 198
    add-int/2addr p1, v6

    .line 199
    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    int-to-long v6, p0

    .line 212
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    const/4 p0, 0x0

    .line 217
    :goto_6
    invoke-virtual {p1, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    aget-object v6, p1, v2

    .line 226
    .line 227
    aget-object p1, p1, v1

    .line 228
    .line 229
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    .line 230
    .line 231
    .line 232
    move-result p1

    .line 233
    int-to-char p1, p1

    .line 234
    if-ne v9, v0, :cond_e

    .line 235
    .line 236
    invoke-virtual {v9, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    move-object v9, v0

    .line 241
    goto :goto_7

    .line 242
    :cond_e
    invoke-virtual {v9, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    move-object v9, v7

    .line 251
    :goto_7
    invoke-virtual {v6, v9}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 252
    .line 253
    .line 254
    move-result v7

    .line 255
    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 256
    .line 257
    .line 258
    move-result-object v8

    .line 259
    invoke-virtual {v8}, Ljava/math/BigInteger;->signum()I

    .line 260
    .line 261
    .line 262
    move-result v10

    .line 263
    if-gtz v10, :cond_f

    .line 264
    .line 265
    const/4 v8, 0x1

    .line 266
    goto :goto_8

    .line 267
    :cond_f
    invoke-virtual {v6, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 268
    .line 269
    .line 270
    move-result v8

    .line 271
    :goto_8
    if-nez v8, :cond_11

    .line 272
    .line 273
    and-int/lit8 v10, p2, 0x1

    .line 274
    .line 275
    if-nez v10, :cond_11

    .line 276
    .line 277
    if-lez v7, :cond_10

    .line 278
    .line 279
    goto :goto_a

    .line 280
    :cond_10
    :goto_9
    const/4 p0, 0x1

    .line 281
    goto :goto_c

    .line 282
    :cond_11
    if-ltz v7, :cond_13

    .line 283
    .line 284
    if-nez v7, :cond_12

    .line 285
    .line 286
    and-int/lit8 v7, p2, 0x1

    .line 287
    .line 288
    if-nez v7, :cond_12

    .line 289
    .line 290
    goto :goto_b

    .line 291
    :cond_12
    if-lez v8, :cond_14

    .line 292
    .line 293
    :goto_a
    add-int/lit8 p1, p1, 0x1

    .line 294
    .line 295
    goto :goto_9

    .line 296
    :cond_13
    :goto_b
    if-lez v8, :cond_10

    .line 297
    .line 298
    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    .line 299
    .line 300
    .line 301
    move-result-object v6

    .line 302
    invoke-virtual {v6, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    .line 303
    .line 304
    .line 305
    move-result p0

    .line 306
    if-lez p0, :cond_10

    .line 307
    .line 308
    goto :goto_a

    .line 309
    :cond_14
    :goto_c
    invoke-static {p1}, Lorg/mozilla/javascript/DToA;->BASEDIGIT(I)C

    .line 310
    .line 311
    .line 312
    move-result p1

    .line 313
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    if-eqz p0, :cond_15

    .line 317
    .line 318
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object p0

    .line 322
    return-object p0

    .line 323
    :cond_15
    move-object p1, v6

    .line 324
    goto :goto_6

    .line 325
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 326
    .line 327
    const-string p2, "Bad base: "

    .line 328
    .line 329
    invoke-static {p0, p2}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object p0

    .line 333
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    throw p1
.end method

.method public static JS_dtostr(Ljava/lang/StringBuilder;IID)V
    .locals 11

    const/4 v0, 0x1

    new-array v8, v0, [Z

    const/4 v9, 0x0

    const/4 v10, 0x2

    if-ne p1, v10, :cond_1

    const-wide v1, 0x444b1ae4d6e2ef50L    # 1.0E21

    cmpl-double v3, p3, v1

    if-gez v3, :cond_0

    const-wide v1, -0x3bb4e51b291d10b0L    # -1.0E21

    cmpg-double v3, p3, v1

    if-gtz v3, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    sget-object v1, Lorg/mozilla/javascript/DToA;->dtoaModes:[I

    aget v3, v1, p1

    if-lt p1, v10, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    move-wide v1, p3

    move v5, p2

    move-object v6, v8

    move-object v7, p0

    invoke-static/range {v1 .. v7}, Lorg/mozilla/javascript/DToA;->JS_dtoa(DIZI[ZLjava/lang/StringBuilder;)I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v3, 0x270f

    if-eq v1, v3, :cond_12

    const/4 v3, -0x5

    if-eqz p1, :cond_8

    if-eq p1, v0, :cond_7

    if-eq p1, v10, :cond_6

    const/4 v4, 0x3

    if-eq p1, v4, :cond_5

    const/4 v4, 0x4

    if-eq p1, v4, :cond_3

    const/4 p1, 0x0

    :goto_1
    const/4 p2, 0x0

    goto :goto_5

    :cond_3
    if-lt v1, v3, :cond_5

    if-le v1, p2, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p1, 0x0

    goto :goto_5

    :cond_5
    :goto_3
    const/4 p1, 0x1

    goto :goto_5

    :cond_6
    if-ltz p2, :cond_9

    add-int/2addr p2, v1

    goto :goto_2

    :cond_7
    const/4 p2, 0x0

    goto :goto_3

    :cond_8
    if-lt v1, v3, :cond_a

    const/16 p1, 0x15

    if-le v1, p1, :cond_9

    goto :goto_4

    :cond_9
    move p2, v1

    goto :goto_2

    :cond_a
    :goto_4
    const/4 p1, 0x1

    goto :goto_1

    :goto_5
    const/16 v3, 0x30

    if-ge v2, p2, :cond_c

    :cond_b
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ne v2, p2, :cond_b

    move v2, p2

    :cond_c
    const/16 p2, 0x2e

    if-eqz p1, :cond_f

    if-eq v2, v0, :cond_d

    invoke-virtual {p0, v0, p2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_d
    const/16 p1, 0x65

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr v1, v0

    if-ltz v1, :cond_e

    const/16 p1, 0x2b

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_e
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_f
    if-eq v1, v2, :cond_12

    if-lez v1, :cond_10

    invoke-virtual {p0, v1, p2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_10
    const/4 p1, 0x0

    :goto_6
    rsub-int/lit8 v2, v1, 0x1

    if-ge p1, v2, :cond_11

    invoke-virtual {p0, v9, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_11
    invoke-virtual {p0, v0, p2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_12
    :goto_7
    aget-boolean p1, v8, v9

    if-eqz p1, :cond_15

    invoke-static {p3, p4}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result p1

    const/high16 p2, -0x80000000

    if-ne p1, p2, :cond_13

    invoke-static {p3, p4}, Lorg/mozilla/javascript/DToA;->word1(D)I

    move-result p1

    if-eqz p1, :cond_15

    :cond_13
    invoke-static {p3, p4}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result p1

    const/high16 p2, 0x7ff00000

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_14

    invoke-static {p3, p4}, Lorg/mozilla/javascript/DToA;->word1(D)I

    move-result p1

    if-nez p1, :cond_15

    invoke-static {p3, p4}, Lorg/mozilla/javascript/DToA;->word0(D)I

    move-result p1

    const p2, 0xfffff

    and-int/2addr p1, p2

    if-nez p1, :cond_15

    :cond_14
    const/16 p1, 0x2d

    invoke-virtual {p0, v9, p1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_15
    return-void
.end method

.method private static d2b(D[I[I)Ljava/math/BigInteger;
    .locals 8

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    const/16 v0, 0x20

    ushr-long v1, p0, v0

    long-to-int v2, v1

    long-to-int p1, p0

    const p0, 0xfffff

    and-int/2addr p0, v2

    const v1, 0x7fffffff

    and-int/2addr v1, v2

    ushr-int/lit8 v1, v1, 0x14

    if-eqz v1, :cond_0

    const/high16 v2, 0x100000

    or-int/2addr p0, v2

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    const/16 v5, 0x8

    new-array v5, v5, [B

    invoke-static {p1}, Lorg/mozilla/javascript/DToA;->lo0bits(I)I

    move-result v6

    ushr-int/2addr p1, v6

    if-eqz v6, :cond_1

    rsub-int/lit8 v7, v6, 0x20

    shl-int v7, p0, v7

    or-int/2addr p1, v7

    invoke-static {v5, v3, p1}, Lorg/mozilla/javascript/DToA;->stuffBits([BII)V

    shr-int/2addr p0, v6

    goto :goto_0

    :cond_1
    invoke-static {v5, v3, p1}, Lorg/mozilla/javascript/DToA;->stuffBits([BII)V

    :goto_0
    invoke-static {v5, v4, p0}, Lorg/mozilla/javascript/DToA;->stuffBits([BII)V

    if-eqz p0, :cond_3

    const/4 v2, 0x2

    goto :goto_1

    :cond_2
    new-array v5, v3, [B

    invoke-static {p0}, Lorg/mozilla/javascript/DToA;->lo0bits(I)I

    move-result p1

    ushr-int/2addr p0, p1

    invoke-static {v5, v4, p0}, Lorg/mozilla/javascript/DToA;->stuffBits([BII)V

    add-int/lit8 v6, p1, 0x20

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    add-int/lit16 v1, v1, -0x433

    add-int/2addr v1, v6

    aput v1, p2, v4

    rsub-int/lit8 p0, v6, 0x35

    aput p0, p3, v4

    goto :goto_2

    :cond_4
    add-int/lit16 v1, v1, -0x432

    add-int/2addr v1, v6

    aput v1, p2, v4

    mul-int/lit8 v2, v2, 0x20

    invoke-static {p0}, Lorg/mozilla/javascript/DToA;->hi0bits(I)I

    move-result p0

    sub-int/2addr v2, p0

    aput v2, p3, v4

    :goto_2
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v5}, Ljava/math/BigInteger;-><init>([B)V

    return-object p0
.end method

.method private static hi0bits(I)I
    .locals 2

    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    shl-int/lit8 p0, p0, 0x10

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/high16 v1, -0x1000000

    and-int/2addr v1, p0

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x8

    shl-int/lit8 p0, p0, 0x8

    :cond_1
    const/high16 v1, -0x10000000

    and-int/2addr v1, p0

    if-nez v1, :cond_2

    add-int/lit8 v0, v0, 0x4

    shl-int/lit8 p0, p0, 0x4

    :cond_2
    const/high16 v1, -0x40000000    # -2.0f

    and-int/2addr v1, p0

    if-nez v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    shl-int/lit8 p0, p0, 0x2

    :cond_3
    const/high16 v1, -0x80000000

    and-int/2addr v1, p0

    if-nez v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr p0, v1

    if-nez p0, :cond_4

    const/16 p0, 0x20

    return p0

    :cond_4
    return v0
.end method

.method private static lo0bits(I)I
    .locals 3

    and-int/lit8 v0, p0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-eqz p0, :cond_1

    return v2

    :cond_1
    return v0

    :cond_2
    const v0, 0xffff

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    ushr-int/lit8 p0, p0, 0x10

    const/16 v1, 0x10

    :cond_3
    and-int/lit16 v0, p0, 0xff

    if-nez v0, :cond_4

    add-int/lit8 v1, v1, 0x8

    ushr-int/lit8 p0, p0, 0x8

    :cond_4
    and-int/lit8 v0, p0, 0xf

    if-nez v0, :cond_5

    add-int/lit8 v1, v1, 0x4

    ushr-int/lit8 p0, p0, 0x4

    :cond_5
    and-int/lit8 v0, p0, 0x3

    if-nez v0, :cond_6

    add-int/lit8 v1, v1, 0x2

    ushr-int/lit8 p0, p0, 0x2

    :cond_6
    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_7

    add-int/lit8 v1, v1, 0x1

    ushr-int/2addr p0, v2

    and-int/2addr p0, v2

    if-nez p0, :cond_7

    const/16 p0, 0x20

    return p0

    :cond_7
    return v1
.end method

.method public static pow5mult(Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .locals 2

    const-wide/16 v0, 0x5

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static roundOff(Ljava/lang/StringBuilder;)Z
    .locals 6

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x39

    if-eq v4, v5, :cond_0

    add-int/2addr v4, v2

    int-to-char v2, v4

    invoke-virtual {p0, v3, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    return v1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return v2
.end method

.method public static setWord0(DI)D
    .locals 4

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    int-to-long v0, p2

    const/16 p2, 0x20

    shl-long/2addr v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method private static stripTrailingZeroes(Ljava/lang/StringBuilder;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method private static stuffBits([BII)V
    .locals 2

    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x3

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    return-void
.end method

.method public static word0(D)I
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method public static word1(D)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    long-to-int p1, p0

    return p1
.end method
