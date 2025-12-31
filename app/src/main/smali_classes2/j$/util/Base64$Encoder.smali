.class public Lj$/util/Base64$Encoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Encoder"
.end annotation


# static fields
.field private static final e:[C

.field private static final f:[C

.field static final g:Lj$/util/Base64$Encoder;


# instance fields
.field private final a:[B

.field private final b:I

.field private final c:Z

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lj$/util/Base64$Encoder;->e:[C

    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lj$/util/Base64$Encoder;->f:[C

    new-instance v0, Lj$/util/Base64$Encoder;

    invoke-direct {v0}, Lj$/util/Base64$Encoder;-><init>()V

    sput-object v0, Lj$/util/Base64$Encoder;->g:Lj$/util/Base64$Encoder;

    return-void

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data

    :array_1
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2ds
        0x5fs
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/util/Base64$Encoder;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/Base64$Encoder;->a:[B

    const/4 v0, -0x1

    iput v0, p0, Lj$/util/Base64$Encoder;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/Base64$Encoder;->d:Z

    return-void
.end method


# virtual methods
.method public encodeToString([B)Ljava/lang/String;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 0
    array-length v2, v1

    .line 0
    iget-boolean v4, v0, Lj$/util/Base64$Encoder;->d:Z

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x4

    goto :goto_1

    :cond_0
    rem-int/lit8 v5, v2, 0x3

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x4

    if-nez v5, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    :goto_0
    add-int/2addr v2, v5

    :goto_1
    iget-object v5, v0, Lj$/util/Base64$Encoder;->a:[B

    iget v6, v0, Lj$/util/Base64$Encoder;->b:I

    if-lez v6, :cond_2

    add-int/lit8 v7, v2, -0x1

    div-int/2addr v7, v6

    array-length v8, v5

    mul-int v7, v7, v8

    add-int/2addr v2, v7

    .line 0
    :cond_2
    new-array v7, v2, [B

    array-length v8, v1

    .line 0
    sget-object v9, Lj$/util/Base64$Encoder;->e:[C

    sget-object v10, Lj$/util/Base64$Encoder;->f:[C

    iget-boolean v11, v0, Lj$/util/Base64$Encoder;->c:Z

    if-eqz v11, :cond_3

    move-object v12, v10

    goto :goto_2

    :cond_3
    move-object v12, v9

    :goto_2
    div-int/lit8 v13, v8, 0x3

    mul-int/lit8 v13, v13, 0x3

    if-lez v6, :cond_4

    div-int/lit8 v14, v6, 0x4

    mul-int/lit8 v14, v14, 0x3

    if-le v13, v14, :cond_4

    goto :goto_3

    :cond_4
    move v14, v13

    :goto_3
    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_4
    if-ge v15, v13, :cond_8

    add-int v3, v15, v14

    invoke-static {v3, v13}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-eqz v11, :cond_5

    move-object/from16 v17, v10

    goto :goto_5

    :cond_5
    move-object/from16 v17, v9

    :goto_5
    move v0, v15

    move/from16 v18, v16

    :goto_6
    if-ge v0, v3, :cond_6

    add-int/lit8 v19, v0, 0x1

    move-object/from16 v20, v9

    .line 0
    aget-byte v9, v1, v0

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    add-int/lit8 v21, v0, 0x2

    move-object/from16 v22, v10

    aget-byte v10, v1, v19

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    add-int/lit8 v0, v0, 0x3

    aget-byte v10, v1, v21

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    add-int/lit8 v10, v18, 0x1

    ushr-int/lit8 v19, v9, 0x12

    and-int/lit8 v19, v19, 0x3f

    move/from16 v21, v0

    aget-char v0, v17, v19

    int-to-byte v0, v0

    aput-byte v0, v7, v18

    add-int/lit8 v0, v18, 0x2

    ushr-int/lit8 v19, v9, 0xc

    and-int/lit8 v19, v19, 0x3f

    move/from16 v23, v11

    aget-char v11, v17, v19

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    add-int/lit8 v10, v18, 0x3

    ushr-int/lit8 v11, v9, 0x6

    and-int/lit8 v11, v11, 0x3f

    aget-char v11, v17, v11

    int-to-byte v11, v11

    aput-byte v11, v7, v0

    add-int/lit8 v18, v18, 0x4

    and-int/lit8 v0, v9, 0x3f

    aget-char v0, v17, v0

    int-to-byte v0, v0

    aput-byte v0, v7, v10

    move-object/from16 v9, v20

    move/from16 v0, v21

    move-object/from16 v10, v22

    move/from16 v11, v23

    goto :goto_6

    :cond_6
    move-object/from16 v20, v9

    move-object/from16 v22, v10

    move/from16 v23, v11

    sub-int v0, v3, v15

    .line 0
    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    add-int v16, v16, v0

    if-ne v0, v6, :cond_7

    if-ge v3, v8, :cond_7

    array-length v0, v5

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v0, :cond_7

    aget-byte v10, v5, v9

    add-int/lit8 v11, v16, 0x1

    aput-byte v10, v7, v16

    add-int/lit8 v9, v9, 0x1

    move/from16 v16, v11

    goto :goto_7

    :cond_7
    move-object/from16 v0, p0

    move v15, v3

    move-object/from16 v9, v20

    move-object/from16 v10, v22

    move/from16 v11, v23

    goto/16 :goto_4

    :cond_8
    if-ge v15, v8, :cond_9

    add-int/lit8 v0, v15, 0x1

    aget-byte v3, v1, v15

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v16, 0x1

    shr-int/lit8 v6, v3, 0x2

    aget-char v6, v12, v6

    int-to-byte v6, v6

    aput-byte v6, v7, v16

    const/16 v6, 0x3d

    if-ne v0, v8, :cond_a

    add-int/lit8 v0, v16, 0x2

    shl-int/lit8 v1, v3, 0x4

    and-int/lit8 v1, v1, 0x3f

    aget-char v1, v12, v1

    int-to-byte v1, v1

    aput-byte v1, v7, v5

    if-eqz v4, :cond_c

    add-int/lit8 v1, v16, 0x3

    aput-byte v6, v7, v0

    add-int/lit8 v16, v16, 0x4

    aput-byte v6, v7, v1

    :cond_9
    :goto_8
    move/from16 v0, v16

    goto :goto_9

    :cond_a
    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, v16, 0x2

    shl-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0x3f

    shr-int/lit8 v8, v0, 0x4

    or-int/2addr v3, v8

    aget-char v3, v12, v3

    int-to-byte v3, v3

    aput-byte v3, v7, v5

    add-int/lit8 v3, v16, 0x3

    shl-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, v12, v0

    int-to-byte v0, v0

    aput-byte v0, v7, v1

    if-eqz v4, :cond_b

    add-int/lit8 v16, v16, 0x4

    aput-byte v6, v7, v3

    goto :goto_8

    :cond_b
    move v0, v3

    :cond_c
    :goto_9
    if-eq v0, v2, :cond_d

    .line 0
    invoke-static {v7, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    .line 0
    :cond_d
    new-instance v0, Ljava/lang/String;

    array-length v1, v7

    const/4 v2, 0x0

    invoke-direct {v0, v7, v2, v2, v1}, Ljava/lang/String;-><init>([BIII)V

    return-object v0
.end method
