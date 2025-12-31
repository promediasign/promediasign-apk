.class public Lorg/apache/mina/proxy/utils/MD4;
.super Ljava/security/MessageDigestSpi;
.source "SourceFile"


# static fields
.field private static final A:I = 0x67452301

.field private static final B:I = -0x10325477

.field public static final BYTE_BLOCK_LENGTH:I = 0x40

.field public static final BYTE_DIGEST_LENGTH:I = 0x10

.field private static final C:I = -0x67452302

.field private static final D:I = 0x10325476


# instance fields
.field private a:I

.field private b:I

.field private final buffer:[B

.field private c:I

.field private d:I

.field private msgLength:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/security/MessageDigestSpi;-><init>()V

    const v0, 0x67452301

    iput v0, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    const v0, -0x10325477

    iput v0, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    const v0, -0x67452302

    iput v0, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    const v0, 0x10325476

    iput v0, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/mina/proxy/utils/MD4;->buffer:[B

    return-void
.end method

.method private pad()[B
    .locals 9

    iget-wide v0, p0, Lorg/apache/mina/proxy/utils/MD4;->msgLength:J

    const-wide/16 v2, 0x40

    rem-long v2, v0, v2

    long-to-int v3, v2

    const/16 v2, 0x38

    if-ge v3, v2, :cond_0

    rsub-int/lit8 v2, v3, 0x40

    goto :goto_0

    :cond_0
    rsub-int v2, v3, 0x80

    :goto_0
    new-array v3, v2, [B

    const/16 v4, -0x80

    const/4 v5, 0x0

    aput-byte v4, v3, v5

    const/4 v4, 0x3

    shl-long/2addr v0, v4

    const/16 v4, 0x8

    sub-int/2addr v2, v4

    :goto_1
    if-ge v5, v4, :cond_1

    add-int/lit8 v6, v2, 0x1

    shl-int/lit8 v7, v5, 0x3

    ushr-long v7, v0, v7

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v3, v2

    add-int/lit8 v5, v5, 0x1

    move v2, v6

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method private process([BI)V
    .locals 26

    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    iget v2, v0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    iget v3, v0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    iget v4, v0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    const/16 v5, 0x10

    new-array v6, v5, [I

    const/4 v7, 0x0

    move/from16 v8, p2

    const/4 v9, 0x0

    :goto_0
    const/16 v10, 0x8

    if-ge v9, v5, :cond_0

    add-int/lit8 v11, v8, 0x1

    aget-byte v12, p1, v8

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v13, v8, 0x2

    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v10, v11, 0x8

    or-int/2addr v10, v12

    add-int/lit8 v11, v8, 0x3

    aget-byte v12, p1, v13

    and-int/lit16 v12, v12, 0xff

    shl-int/2addr v12, v5

    or-int/2addr v10, v12

    add-int/lit8 v8, v8, 0x4

    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x18

    or-int/2addr v10, v11

    aput v10, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    iget v5, v0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    iget v8, v0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    iget v9, v0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    and-int v11, v8, v9

    not-int v12, v8

    iget v13, v0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    and-int/2addr v12, v13

    or-int/2addr v11, v12

    aget v7, v6, v7

    add-int/2addr v11, v7

    add-int/2addr v11, v5

    shl-int/lit8 v5, v11, 0x3

    ushr-int/lit8 v11, v11, 0x1d

    or-int/2addr v5, v11

    and-int v11, v5, v8

    not-int v12, v5

    and-int/2addr v12, v9

    or-int/2addr v11, v12

    const/4 v12, 0x1

    aget v12, v6, v12

    add-int/2addr v11, v12

    add-int/2addr v11, v13

    shl-int/lit8 v13, v11, 0x7

    ushr-int/lit8 v11, v11, 0x19

    or-int/2addr v11, v13

    and-int v13, v11, v5

    not-int v14, v11

    and-int/2addr v14, v8

    or-int/2addr v13, v14

    const/4 v14, 0x2

    aget v14, v6, v14

    add-int/2addr v13, v14

    add-int/2addr v13, v9

    shl-int/lit8 v9, v13, 0xb

    ushr-int/lit8 v13, v13, 0x15

    or-int/2addr v9, v13

    and-int v13, v9, v11

    not-int v15, v9

    and-int/2addr v15, v5

    or-int/2addr v13, v15

    const/4 v15, 0x3

    aget v15, v6, v15

    add-int/2addr v13, v15

    add-int/2addr v13, v8

    shl-int/lit8 v8, v13, 0x13

    const/16 v16, 0xd

    ushr-int/lit8 v13, v13, 0xd

    or-int/2addr v8, v13

    and-int v13, v8, v9

    not-int v10, v8

    and-int/2addr v10, v11

    or-int/2addr v10, v13

    const/4 v13, 0x4

    aget v13, v6, v13

    add-int/2addr v10, v13

    add-int/2addr v10, v5

    shl-int/lit8 v5, v10, 0x3

    ushr-int/lit8 v10, v10, 0x1d

    or-int/2addr v5, v10

    and-int v10, v5, v8

    move/from16 v17, v4

    not-int v4, v5

    and-int/2addr v4, v9

    or-int/2addr v4, v10

    const/4 v10, 0x5

    aget v10, v6, v10

    add-int/2addr v4, v10

    add-int/2addr v4, v11

    shl-int/lit8 v11, v4, 0x7

    ushr-int/lit8 v4, v4, 0x19

    or-int/2addr v4, v11

    and-int v11, v4, v5

    move/from16 v18, v3

    not-int v3, v4

    and-int/2addr v3, v8

    or-int/2addr v3, v11

    const/4 v11, 0x6

    aget v11, v6, v11

    add-int/2addr v3, v11

    add-int/2addr v3, v9

    shl-int/lit8 v9, v3, 0xb

    ushr-int/lit8 v3, v3, 0x15

    or-int/2addr v3, v9

    and-int v9, v3, v4

    move/from16 v19, v2

    not-int v2, v3

    and-int/2addr v2, v5

    or-int/2addr v2, v9

    const/4 v9, 0x7

    aget v9, v6, v9

    add-int/2addr v2, v9

    add-int/2addr v2, v8

    shl-int/lit8 v8, v2, 0x13

    ushr-int/lit8 v2, v2, 0xd

    or-int/2addr v2, v8

    and-int v8, v2, v3

    not-int v0, v2

    and-int/2addr v0, v4

    or-int/2addr v0, v8

    const/16 v8, 0x8

    aget v8, v6, v8

    add-int/2addr v0, v8

    add-int/2addr v0, v5

    shl-int/lit8 v5, v0, 0x3

    ushr-int/lit8 v0, v0, 0x1d

    or-int/2addr v0, v5

    and-int v5, v0, v2

    move/from16 v20, v1

    not-int v1, v0

    and-int/2addr v1, v3

    or-int/2addr v1, v5

    const/16 v5, 0x9

    aget v5, v6, v5

    add-int/2addr v1, v5

    add-int/2addr v1, v4

    shl-int/lit8 v4, v1, 0x7

    ushr-int/lit8 v1, v1, 0x19

    or-int/2addr v1, v4

    and-int v4, v1, v0

    move/from16 p1, v9

    not-int v9, v1

    and-int/2addr v9, v2

    or-int/2addr v4, v9

    const/16 v9, 0xa

    aget v9, v6, v9

    add-int/2addr v4, v9

    add-int/2addr v4, v3

    shl-int/lit8 v3, v4, 0xb

    ushr-int/lit8 v4, v4, 0x15

    or-int/2addr v3, v4

    and-int v4, v3, v1

    move/from16 p2, v15

    not-int v15, v3

    and-int/2addr v15, v0

    or-int/2addr v4, v15

    const/16 v15, 0xb

    aget v15, v6, v15

    add-int/2addr v4, v15

    add-int/2addr v4, v2

    shl-int/lit8 v2, v4, 0x13

    ushr-int/lit8 v4, v4, 0xd

    or-int/2addr v2, v4

    and-int v4, v2, v3

    move/from16 v21, v15

    not-int v15, v2

    and-int/2addr v15, v1

    or-int/2addr v4, v15

    const/16 v15, 0xc

    aget v15, v6, v15

    add-int/2addr v4, v15

    add-int/2addr v4, v0

    shl-int/lit8 v0, v4, 0x3

    ushr-int/lit8 v4, v4, 0x1d

    or-int/2addr v0, v4

    and-int v4, v0, v2

    move/from16 v22, v9

    not-int v9, v0

    and-int/2addr v9, v3

    or-int/2addr v4, v9

    aget v9, v6, v16

    add-int/2addr v4, v9

    add-int/2addr v4, v1

    shl-int/lit8 v1, v4, 0x7

    ushr-int/lit8 v4, v4, 0x19

    or-int/2addr v1, v4

    and-int v4, v1, v0

    move/from16 v23, v11

    not-int v11, v1

    and-int/2addr v11, v2

    or-int/2addr v4, v11

    const/16 v11, 0xe

    aget v11, v6, v11

    add-int/2addr v4, v11

    add-int/2addr v4, v3

    shl-int/lit8 v3, v4, 0xb

    ushr-int/lit8 v4, v4, 0x15

    or-int/2addr v3, v4

    and-int v4, v3, v1

    move/from16 v24, v11

    not-int v11, v3

    and-int/2addr v11, v0

    or-int/2addr v4, v11

    const/16 v11, 0xf

    aget v6, v6, v11

    add-int/2addr v4, v6

    add-int/2addr v4, v2

    shl-int/lit8 v2, v4, 0x13

    ushr-int/lit8 v4, v4, 0xd

    or-int/2addr v2, v4

    or-int v4, v3, v1

    and-int/2addr v4, v2

    and-int v11, v3, v1

    or-int/2addr v4, v11

    const v11, 0x5a827999

    invoke-static {v4, v7, v11, v0}, LA/g;->a(IIII)I

    move-result v0

    shl-int/lit8 v4, v0, 0x3

    ushr-int/lit8 v0, v0, 0x1d

    or-int/2addr v0, v4

    or-int v4, v2, v3

    and-int/2addr v4, v0

    and-int v16, v2, v3

    or-int v4, v4, v16

    invoke-static {v4, v13, v11, v1}, LA/g;->a(IIII)I

    move-result v1

    shl-int/lit8 v4, v1, 0x5

    ushr-int/lit8 v1, v1, 0x1b

    or-int/2addr v1, v4

    or-int v4, v0, v2

    and-int/2addr v4, v1

    and-int v16, v0, v2

    or-int v4, v4, v16

    invoke-static {v4, v8, v11, v3}, LA/g;->a(IIII)I

    move-result v3

    shl-int/lit8 v4, v3, 0x9

    ushr-int/lit8 v3, v3, 0x17

    or-int/2addr v3, v4

    or-int v4, v1, v0

    and-int/2addr v4, v3

    and-int v16, v1, v0

    or-int v4, v4, v16

    invoke-static {v4, v15, v11, v2}, LA/g;->a(IIII)I

    move-result v2

    shl-int/lit8 v4, v2, 0xd

    ushr-int/lit8 v2, v2, 0x13

    or-int/2addr v2, v4

    or-int v4, v3, v1

    and-int/2addr v4, v2

    and-int v16, v3, v1

    or-int v4, v4, v16

    invoke-static {v4, v12, v11, v0}, LA/g;->a(IIII)I

    move-result v0

    shl-int/lit8 v4, v0, 0x3

    ushr-int/lit8 v0, v0, 0x1d

    or-int/2addr v0, v4

    or-int v4, v2, v3

    and-int/2addr v4, v0

    and-int v16, v2, v3

    or-int v4, v4, v16

    invoke-static {v4, v10, v11, v1}, LA/g;->a(IIII)I

    move-result v1

    shl-int/lit8 v4, v1, 0x5

    ushr-int/lit8 v1, v1, 0x1b

    or-int/2addr v1, v4

    or-int v4, v0, v2

    and-int/2addr v4, v1

    and-int v16, v0, v2

    or-int v4, v4, v16

    invoke-static {v4, v5, v11, v3}, LA/g;->a(IIII)I

    move-result v3

    shl-int/lit8 v4, v3, 0x9

    ushr-int/lit8 v3, v3, 0x17

    or-int/2addr v3, v4

    or-int v4, v1, v0

    and-int/2addr v4, v3

    and-int v16, v1, v0

    or-int v4, v4, v16

    invoke-static {v4, v9, v11, v2}, LA/g;->a(IIII)I

    move-result v2

    shl-int/lit8 v4, v2, 0xd

    ushr-int/lit8 v2, v2, 0x13

    or-int/2addr v2, v4

    or-int v4, v3, v1

    and-int/2addr v4, v2

    and-int v16, v3, v1

    or-int v4, v4, v16

    invoke-static {v4, v14, v11, v0}, LA/g;->a(IIII)I

    move-result v0

    shl-int/lit8 v4, v0, 0x3

    ushr-int/lit8 v0, v0, 0x1d

    or-int/2addr v0, v4

    or-int v4, v2, v3

    and-int/2addr v4, v0

    and-int v16, v2, v3

    or-int v4, v4, v16

    move/from16 v16, v9

    move/from16 v9, v23

    invoke-static {v4, v9, v11, v1}, LA/g;->a(IIII)I

    move-result v1

    shl-int/lit8 v4, v1, 0x5

    ushr-int/lit8 v1, v1, 0x1b

    or-int/2addr v1, v4

    or-int v4, v0, v2

    and-int/2addr v4, v1

    and-int v23, v0, v2

    or-int v4, v4, v23

    move/from16 v23, v10

    move/from16 v10, v22

    invoke-static {v4, v10, v11, v3}, LA/g;->a(IIII)I

    move-result v3

    shl-int/lit8 v4, v3, 0x9

    ushr-int/lit8 v3, v3, 0x17

    or-int/2addr v3, v4

    or-int v4, v1, v0

    and-int/2addr v4, v3

    and-int v22, v1, v0

    or-int v4, v4, v22

    move/from16 v22, v5

    move/from16 v5, v24

    invoke-static {v4, v5, v11, v2}, LA/g;->a(IIII)I

    move-result v2

    shl-int/lit8 v4, v2, 0xd

    ushr-int/lit8 v2, v2, 0x13

    or-int/2addr v2, v4

    or-int v4, v3, v1

    and-int/2addr v4, v2

    and-int v24, v3, v1

    or-int v4, v4, v24

    move/from16 v24, v12

    move/from16 v12, p2

    invoke-static {v4, v12, v11, v0}, LA/g;->a(IIII)I

    move-result v0

    shl-int/lit8 v4, v0, 0x3

    ushr-int/lit8 v0, v0, 0x1d

    or-int/2addr v0, v4

    or-int v4, v2, v3

    and-int/2addr v4, v0

    and-int v25, v2, v3

    or-int v4, v4, v25

    move/from16 v12, p1

    invoke-static {v4, v12, v11, v1}, LA/g;->a(IIII)I

    move-result v1

    shl-int/lit8 v4, v1, 0x5

    ushr-int/lit8 v1, v1, 0x1b

    or-int/2addr v1, v4

    or-int v4, v0, v2

    and-int/2addr v4, v1

    and-int v25, v0, v2

    or-int v4, v4, v25

    move/from16 v12, v21

    invoke-static {v4, v12, v11, v3}, LA/g;->a(IIII)I

    move-result v3

    shl-int/lit8 v4, v3, 0x9

    ushr-int/lit8 v3, v3, 0x17

    or-int/2addr v3, v4

    or-int v4, v1, v0

    and-int/2addr v4, v3

    and-int v21, v1, v0

    or-int v4, v4, v21

    invoke-static {v4, v6, v11, v2}, LA/g;->a(IIII)I

    move-result v2

    shl-int/lit8 v4, v2, 0xd

    ushr-int/lit8 v2, v2, 0x13

    or-int/2addr v2, v4

    xor-int v4, v2, v3

    xor-int/2addr v4, v1

    const v11, 0x6ed9eba1

    invoke-static {v4, v7, v11, v0}, LA/g;->a(IIII)I

    move-result v0

    shl-int/lit8 v4, v0, 0x3

    ushr-int/lit8 v0, v0, 0x1d

    or-int/2addr v0, v4

    xor-int v4, v0, v2

    xor-int/2addr v4, v3

    invoke-static {v4, v8, v11, v1}, LA/g;->a(IIII)I

    move-result v1

    shl-int/lit8 v4, v1, 0x9

    ushr-int/lit8 v1, v1, 0x17

    or-int/2addr v1, v4

    xor-int v4, v1, v0

    xor-int/2addr v4, v2

    invoke-static {v4, v13, v11, v3}, LA/g;->a(IIII)I

    move-result v3

    shl-int/lit8 v4, v3, 0xb

    ushr-int/lit8 v3, v3, 0x15

    or-int/2addr v3, v4

    xor-int v4, v3, v1

    xor-int/2addr v4, v0

    invoke-static {v4, v15, v11, v2}, LA/g;->a(IIII)I

    move-result v2

    shl-int/lit8 v4, v2, 0xf

    ushr-int/lit8 v2, v2, 0x11

    or-int/2addr v2, v4

    xor-int v4, v2, v3

    xor-int/2addr v4, v1

    invoke-static {v4, v14, v11, v0}, LA/g;->a(IIII)I

    move-result v0

    shl-int/lit8 v4, v0, 0x3

    ushr-int/lit8 v0, v0, 0x1d

    or-int/2addr v0, v4

    xor-int v4, v0, v2

    xor-int/2addr v4, v3

    invoke-static {v4, v10, v11, v1}, LA/g;->a(IIII)I

    move-result v1

    shl-int/lit8 v4, v1, 0x9

    ushr-int/lit8 v1, v1, 0x17

    or-int/2addr v1, v4

    xor-int v4, v1, v0

    xor-int/2addr v4, v2

    invoke-static {v4, v9, v11, v3}, LA/g;->a(IIII)I

    move-result v3

    shl-int/lit8 v4, v3, 0xb

    ushr-int/lit8 v3, v3, 0x15

    or-int/2addr v3, v4

    xor-int v4, v3, v1

    xor-int/2addr v4, v0

    invoke-static {v4, v5, v11, v2}, LA/g;->a(IIII)I

    move-result v2

    shl-int/lit8 v4, v2, 0xf

    ushr-int/lit8 v2, v2, 0x11

    or-int/2addr v2, v4

    xor-int v4, v2, v3

    xor-int/2addr v4, v1

    move/from16 v5, v24

    invoke-static {v4, v5, v11, v0}, LA/g;->a(IIII)I

    move-result v0

    shl-int/lit8 v4, v0, 0x3

    ushr-int/lit8 v0, v0, 0x1d

    or-int/2addr v0, v4

    xor-int v4, v0, v2

    xor-int/2addr v4, v3

    move/from16 v5, v22

    invoke-static {v4, v5, v11, v1}, LA/g;->a(IIII)I

    move-result v1

    shl-int/lit8 v4, v1, 0x9

    ushr-int/lit8 v1, v1, 0x17

    or-int/2addr v1, v4

    xor-int v4, v1, v0

    xor-int/2addr v4, v2

    move/from16 v5, v23

    invoke-static {v4, v5, v11, v3}, LA/g;->a(IIII)I

    move-result v3

    shl-int/lit8 v4, v3, 0xb

    ushr-int/lit8 v3, v3, 0x15

    or-int/2addr v3, v4

    xor-int v4, v3, v1

    xor-int/2addr v4, v0

    move/from16 v5, v16

    invoke-static {v4, v5, v11, v2}, LA/g;->a(IIII)I

    move-result v2

    shl-int/lit8 v4, v2, 0xf

    ushr-int/lit8 v2, v2, 0x11

    or-int/2addr v2, v4

    xor-int v4, v2, v3

    xor-int/2addr v4, v1

    move/from16 v5, p2

    invoke-static {v4, v5, v11, v0}, LA/g;->a(IIII)I

    move-result v0

    shl-int/lit8 v4, v0, 0x3

    ushr-int/lit8 v0, v0, 0x1d

    or-int/2addr v0, v4

    xor-int v4, v0, v2

    xor-int/2addr v4, v3

    invoke-static {v4, v12, v11, v1}, LA/g;->a(IIII)I

    move-result v1

    shl-int/lit8 v4, v1, 0x9

    ushr-int/lit8 v1, v1, 0x17

    or-int/2addr v1, v4

    xor-int v4, v1, v0

    xor-int/2addr v4, v2

    move/from16 v5, p1

    invoke-static {v4, v5, v11, v3}, LA/g;->a(IIII)I

    move-result v3

    shl-int/lit8 v4, v3, 0xb

    ushr-int/lit8 v3, v3, 0x15

    or-int/2addr v3, v4

    xor-int v4, v3, v1

    xor-int/2addr v4, v0

    invoke-static {v4, v6, v11, v2}, LA/g;->a(IIII)I

    move-result v2

    shl-int/lit8 v4, v2, 0xf

    ushr-int/lit8 v2, v2, 0x11

    or-int/2addr v2, v4

    add-int v0, v0, v20

    move-object/from16 v4, p0

    iput v0, v4, Lorg/apache/mina/proxy/utils/MD4;->a:I

    add-int v2, v2, v19

    iput v2, v4, Lorg/apache/mina/proxy/utils/MD4;->b:I

    add-int v3, v3, v18

    iput v3, v4, Lorg/apache/mina/proxy/utils/MD4;->c:I

    add-int v1, v1, v17

    iput v1, v4, Lorg/apache/mina/proxy/utils/MD4;->d:I

    return-void
.end method


# virtual methods
.method public engineDigest([BII)I
    .locals 2

    .line 1
    if-ltz p2, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-ge v0, v1, :cond_0

    const/16 v0, 0x10

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {p0}, Lorg/apache/mina/proxy/utils/MD4;->engineDigest()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return p3

    :cond_0
    new-instance p1, Ljava/security/DigestException;

    const-string p2, "Wrong offset or not enough space to store the digest"

    invoke-direct {p1, p2}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineDigest()[B
    .locals 18

    .line 2
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lorg/apache/mina/proxy/utils/MD4;->pad()[B

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lorg/apache/mina/proxy/utils/MD4;->engineUpdate([BII)V

    iget v1, v0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    int-to-byte v2, v1

    const/16 v4, 0x8

    ushr-int/lit8 v5, v1, 0x8

    int-to-byte v5, v5

    const/16 v6, 0x10

    ushr-int/lit8 v7, v1, 0x10

    int-to-byte v7, v7

    ushr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    iget v8, v0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    int-to-byte v9, v8

    ushr-int/lit8 v10, v8, 0x8

    int-to-byte v10, v10

    ushr-int/lit8 v11, v8, 0x10

    int-to-byte v11, v11

    ushr-int/lit8 v8, v8, 0x18

    int-to-byte v8, v8

    iget v12, v0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    int-to-byte v13, v12

    ushr-int/lit8 v14, v12, 0x8

    int-to-byte v14, v14

    ushr-int/lit8 v15, v12, 0x10

    int-to-byte v15, v15

    ushr-int/lit8 v12, v12, 0x18

    int-to-byte v12, v12

    iget v3, v0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    int-to-byte v6, v3

    ushr-int/lit8 v0, v3, 0x8

    int-to-byte v0, v0

    move/from16 v17, v0

    const/16 v4, 0x10

    ushr-int/lit8 v0, v3, 0x10

    int-to-byte v0, v0

    ushr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    new-array v4, v4, [B

    const/16 v16, 0x0

    aput-byte v2, v4, v16

    const/4 v2, 0x1

    aput-byte v5, v4, v2

    const/4 v2, 0x2

    aput-byte v7, v4, v2

    const/4 v2, 0x3

    aput-byte v1, v4, v2

    const/4 v1, 0x4

    aput-byte v9, v4, v1

    const/4 v1, 0x5

    aput-byte v10, v4, v1

    const/4 v1, 0x6

    aput-byte v11, v4, v1

    const/4 v1, 0x7

    aput-byte v8, v4, v1

    const/16 v1, 0x8

    aput-byte v13, v4, v1

    const/16 v1, 0x9

    aput-byte v14, v4, v1

    const/16 v1, 0xa

    aput-byte v15, v4, v1

    const/16 v1, 0xb

    aput-byte v12, v4, v1

    const/16 v1, 0xc

    aput-byte v6, v4, v1

    const/16 v1, 0xd

    aput-byte v17, v4, v1

    const/16 v1, 0xe

    aput-byte v0, v4, v1

    const/16 v0, 0xf

    aput-byte v3, v4, v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/mina/proxy/utils/MD4;->engineReset()V

    return-object v4
.end method

.method public engineGetDigestLength()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public engineReset()V
    .locals 2

    const v0, 0x67452301

    iput v0, p0, Lorg/apache/mina/proxy/utils/MD4;->a:I

    const v0, -0x10325477

    iput v0, p0, Lorg/apache/mina/proxy/utils/MD4;->b:I

    const v0, -0x67452302

    iput v0, p0, Lorg/apache/mina/proxy/utils/MD4;->c:I

    const v0, 0x10325476

    iput v0, p0, Lorg/apache/mina/proxy/utils/MD4;->d:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/mina/proxy/utils/MD4;->msgLength:J

    return-void
.end method

.method public engineUpdate(B)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/apache/mina/proxy/utils/MD4;->msgLength:J

    const-wide/16 v2, 0x40

    rem-long v2, v0, v2

    long-to-int v3, v2

    iget-object v2, p0, Lorg/apache/mina/proxy/utils/MD4;->buffer:[B

    aput-byte p1, v2, v3

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    iput-wide v0, p0, Lorg/apache/mina/proxy/utils/MD4;->msgLength:J

    const/16 p1, 0x3f

    if-ne v3, p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, v2, p1}, Lorg/apache/mina/proxy/utils/MD4;->process([BI)V

    :cond_0
    return-void
.end method

.method public engineUpdate([BII)V
    .locals 6

    .line 2
    iget-wide v0, p0, Lorg/apache/mina/proxy/utils/MD4;->msgLength:J

    const-wide/16 v2, 0x40

    rem-long v2, v0, v2

    long-to-int v3, v2

    rsub-int/lit8 v2, v3, 0x40

    int-to-long v4, p3

    add-long/2addr v0, v4

    iput-wide v0, p0, Lorg/apache/mina/proxy/utils/MD4;->msgLength:J

    const/4 v0, 0x0

    if-lt p3, v2, :cond_1

    iget-object v1, p0, Lorg/apache/mina/proxy/utils/MD4;->buffer:[B

    invoke-static {p1, p2, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/apache/mina/proxy/utils/MD4;->buffer:[B

    invoke-direct {p0, v1, v0}, Lorg/apache/mina/proxy/utils/MD4;->process([BI)V

    :goto_0
    add-int/lit8 v1, v2, 0x40

    add-int/lit8 v3, v2, 0x3f

    if-ge v3, p3, :cond_0

    add-int/2addr v2, p2

    invoke-direct {p0, p1, v2}, Lorg/apache/mina/proxy/utils/MD4;->process([BI)V

    move v2, v1

    goto :goto_0

    :cond_0
    move v0, v2

    const/4 v3, 0x0

    :cond_1
    if-ge v0, p3, :cond_2

    add-int/2addr p2, v0

    iget-object v1, p0, Lorg/apache/mina/proxy/utils/MD4;->buffer:[B

    sub-int/2addr p3, v0

    invoke-static {p1, p2, v1, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-void
.end method
