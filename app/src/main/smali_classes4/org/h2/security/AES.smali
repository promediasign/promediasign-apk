.class public Lorg/h2/security/AES;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/security/BlockCipher;


# static fields
.field private static final FS:[I

.field private static final FT0:[I

.field private static final FT1:[I

.field private static final FT2:[I

.field private static final FT3:[I

.field private static final RCON:[I

.field private static final RS:[I

.field private static final RT0:[I

.field private static final RT1:[I

.field private static final RT2:[I

.field private static final RT3:[I


# instance fields
.field private final decKey:[I

.field private final encKey:[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0xa

    new-array v1, v0, [I

    sput-object v1, Lorg/h2/security/AES;->RCON:[I

    const/16 v1, 0x100

    new-array v2, v1, [I

    sput-object v2, Lorg/h2/security/AES;->FS:[I

    new-array v2, v1, [I

    sput-object v2, Lorg/h2/security/AES;->FT0:[I

    new-array v2, v1, [I

    sput-object v2, Lorg/h2/security/AES;->FT1:[I

    new-array v2, v1, [I

    sput-object v2, Lorg/h2/security/AES;->FT2:[I

    new-array v2, v1, [I

    sput-object v2, Lorg/h2/security/AES;->FT3:[I

    new-array v2, v1, [I

    sput-object v2, Lorg/h2/security/AES;->RS:[I

    new-array v2, v1, [I

    sput-object v2, Lorg/h2/security/AES;->RT0:[I

    new-array v2, v1, [I

    sput-object v2, Lorg/h2/security/AES;->RT1:[I

    new-array v2, v1, [I

    sput-object v2, Lorg/h2/security/AES;->RT2:[I

    new-array v2, v1, [I

    sput-object v2, Lorg/h2/security/AES;->RT3:[I

    new-array v2, v1, [I

    new-array v3, v1, [I

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_0
    if-ge v6, v1, :cond_0

    aput v7, v2, v6

    aput v6, v3, v7

    add-int/lit8 v6, v6, 0x1

    invoke-static {v7}, Lorg/h2/security/AES;->xtime(I)I

    move-result v8

    xor-int/2addr v7, v8

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_1
    if-ge v6, v0, :cond_1

    sget-object v8, Lorg/h2/security/AES;->RCON:[I

    shl-int/lit8 v9, v7, 0x18

    aput v9, v8, v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v7}, Lorg/h2/security/AES;->xtime(I)I

    move-result v7

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/h2/security/AES;->FS:[I

    const/16 v6, 0x63

    aput v6, v0, v4

    sget-object v0, Lorg/h2/security/AES;->RS:[I

    aput v4, v0, v6

    :goto_2
    if-ge v5, v1, :cond_2

    aget v0, v3, v5

    rsub-int v0, v0, 0xff

    aget v0, v2, v0

    shl-int/lit8 v7, v0, 0x1

    shr-int/lit8 v8, v0, 0x7

    or-int/2addr v7, v8

    and-int/lit16 v7, v7, 0xff

    xor-int/2addr v0, v7

    shl-int/lit8 v8, v7, 0x1

    shr-int/lit8 v7, v7, 0x7

    or-int/2addr v7, v8

    and-int/lit16 v7, v7, 0xff

    xor-int/2addr v0, v7

    shl-int/lit8 v8, v7, 0x1

    shr-int/lit8 v7, v7, 0x7

    or-int/2addr v7, v8

    and-int/lit16 v7, v7, 0xff

    xor-int/2addr v0, v7

    shl-int/lit8 v8, v7, 0x1

    shr-int/lit8 v7, v7, 0x7

    or-int/2addr v7, v8

    and-int/lit16 v7, v7, 0xff

    xor-int/2addr v7, v6

    xor-int/2addr v0, v7

    sget-object v7, Lorg/h2/security/AES;->FS:[I

    and-int/lit16 v8, v0, 0xff

    aput v8, v7, v5

    sget-object v7, Lorg/h2/security/AES;->RS:[I

    and-int/lit16 v8, v5, 0xff

    aput v8, v7, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-ge v4, v1, :cond_3

    sget-object v0, Lorg/h2/security/AES;->FS:[I

    aget v0, v0, v4

    invoke-static {v0}, Lorg/h2/security/AES;->xtime(I)I

    move-result v5

    sget-object v6, Lorg/h2/security/AES;->FT0:[I

    xor-int v7, v0, v5

    shl-int/lit8 v8, v0, 0x8

    xor-int/2addr v7, v8

    shl-int/lit8 v0, v0, 0x10

    xor-int/2addr v0, v7

    shl-int/lit8 v5, v5, 0x18

    xor-int/2addr v0, v5

    aput v0, v6, v4

    sget-object v5, Lorg/h2/security/AES;->FT1:[I

    invoke-static {v0}, Lorg/h2/security/AES;->rot8(I)I

    move-result v0

    aput v0, v5, v4

    sget-object v5, Lorg/h2/security/AES;->FT2:[I

    invoke-static {v0}, Lorg/h2/security/AES;->rot8(I)I

    move-result v0

    aput v0, v5, v4

    sget-object v5, Lorg/h2/security/AES;->FT3:[I

    invoke-static {v0}, Lorg/h2/security/AES;->rot8(I)I

    move-result v0

    aput v0, v5, v4

    sget-object v0, Lorg/h2/security/AES;->RS:[I

    aget v0, v0, v4

    sget-object v5, Lorg/h2/security/AES;->RT0:[I

    const/16 v6, 0xb

    invoke-static {v2, v3, v6, v0}, Lorg/h2/security/AES;->mul([I[III)I

    move-result v6

    const/16 v7, 0xd

    invoke-static {v2, v3, v7, v0}, Lorg/h2/security/AES;->mul([I[III)I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    const/16 v7, 0x9

    invoke-static {v2, v3, v7, v0}, Lorg/h2/security/AES;->mul([I[III)I

    move-result v7

    shl-int/lit8 v7, v7, 0x10

    xor-int/2addr v6, v7

    const/16 v7, 0xe

    invoke-static {v2, v3, v7, v0}, Lorg/h2/security/AES;->mul([I[III)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    xor-int/2addr v0, v6

    aput v0, v5, v4

    sget-object v5, Lorg/h2/security/AES;->RT1:[I

    invoke-static {v0}, Lorg/h2/security/AES;->rot8(I)I

    move-result v0

    aput v0, v5, v4

    sget-object v5, Lorg/h2/security/AES;->RT2:[I

    invoke-static {v0}, Lorg/h2/security/AES;->rot8(I)I

    move-result v0

    aput v0, v5, v4

    sget-object v5, Lorg/h2/security/AES;->RT3:[I

    invoke-static {v0}, Lorg/h2/security/AES;->rot8(I)I

    move-result v0

    aput v0, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2c

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/h2/security/AES;->encKey:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/h2/security/AES;->decKey:[I

    return-void
.end method

.method private decryptBlock([B[BI)V
    .locals 31

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/h2/security/AES;->decKey:[I

    aget-byte v2, p1, p3

    const/16 v3, 0x18

    shl-int/2addr v2, v3

    add-int/lit8 v4, p3, 0x1

    aget-byte v5, p1, v4

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x10

    shl-int/2addr v5, v6

    or-int/2addr v2, v5

    add-int/lit8 v5, p3, 0x2

    aget-byte v7, p1, v5

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0x8

    shl-int/2addr v7, v8

    or-int/2addr v2, v7

    add-int/lit8 v7, p3, 0x3

    aget-byte v9, p1, v7

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v2, v9

    const/4 v9, 0x0

    aget v9, v1, v9

    xor-int/2addr v2, v9

    add-int/lit8 v9, p3, 0x4

    aget-byte v10, p1, v9

    shl-int/2addr v10, v3

    add-int/lit8 v11, p3, 0x5

    aget-byte v12, p1, v11

    and-int/lit16 v12, v12, 0xff

    shl-int/2addr v12, v6

    or-int/2addr v10, v12

    add-int/lit8 v12, p3, 0x6

    aget-byte v13, p1, v12

    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v8

    or-int/2addr v10, v13

    add-int/lit8 v13, p3, 0x7

    aget-byte v14, p1, v13

    and-int/lit16 v14, v14, 0xff

    or-int/2addr v10, v14

    const/4 v14, 0x1

    aget v14, v1, v14

    xor-int/2addr v10, v14

    add-int/lit8 v14, p3, 0x8

    aget-byte v15, p1, v14

    shl-int/2addr v15, v3

    add-int/lit8 v16, p3, 0x9

    aget-byte v3, p1, v16

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v6

    or-int/2addr v3, v15

    add-int/lit8 v15, p3, 0xa

    aget-byte v6, p1, v15

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v8

    or-int/2addr v3, v6

    add-int/lit8 v6, p3, 0xb

    aget-byte v8, p1, v6

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v3, v8

    const/4 v8, 0x2

    aget v8, v1, v8

    xor-int/2addr v3, v8

    add-int/lit8 v8, p3, 0xc

    aget-byte v20, p1, v8

    const/16 v17, 0x18

    shl-int/lit8 v20, v20, 0x18

    add-int/lit8 v21, p3, 0xd

    aget-byte v0, p1, v21

    and-int/lit16 v0, v0, 0xff

    const/16 v18, 0x10

    shl-int/lit8 v0, v0, 0x10

    or-int v0, v20, v0

    add-int/lit8 v20, p3, 0xe

    move/from16 v22, v8

    aget-byte v8, p1, v20

    and-int/lit16 v8, v8, 0xff

    const/16 v19, 0x8

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v0, v8

    add-int/lit8 v8, p3, 0xf

    move/from16 v23, v6

    aget-byte v6, p1, v8

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v0, v6

    const/4 v6, 0x3

    aget v6, v1, v6

    xor-int/2addr v0, v6

    sget-object v6, Lorg/h2/security/AES;->RT0:[I

    move/from16 v24, v8

    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v8, v6, v8

    sget-object v25, Lorg/h2/security/AES;->RT1:[I

    move/from16 v26, v15

    shr-int/lit8 v15, v0, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v15, v25, v15

    xor-int/2addr v8, v15

    sget-object v15, Lorg/h2/security/AES;->RT2:[I

    move/from16 v27, v14

    shr-int/lit8 v14, v3, 0x8

    and-int/lit16 v14, v14, 0xff

    aget v14, v15, v14

    xor-int/2addr v8, v14

    sget-object v14, Lorg/h2/security/AES;->RT3:[I

    move/from16 v28, v13

    and-int/lit16 v13, v10, 0xff

    aget v13, v14, v13

    xor-int/2addr v8, v13

    const/4 v13, 0x4

    aget v13, v1, v13

    xor-int/2addr v8, v13

    shr-int/lit8 v13, v10, 0x18

    and-int/lit16 v13, v13, 0xff

    aget v13, v6, v13

    move/from16 v29, v12

    shr-int/lit8 v12, v2, 0x10

    and-int/lit16 v12, v12, 0xff

    aget v12, v25, v12

    xor-int/2addr v12, v13

    shr-int/lit8 v13, v0, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v15, v13

    xor-int/2addr v12, v13

    and-int/lit16 v13, v3, 0xff

    aget v13, v14, v13

    xor-int/2addr v12, v13

    const/4 v13, 0x5

    aget v13, v1, v13

    xor-int/2addr v12, v13

    shr-int/lit8 v13, v3, 0x18

    and-int/lit16 v13, v13, 0xff

    aget v13, v6, v13

    move/from16 v30, v11

    shr-int/lit8 v11, v10, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v11, v25, v11

    xor-int/2addr v11, v13

    shr-int/lit8 v13, v2, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v15, v13

    xor-int/2addr v11, v13

    and-int/lit16 v13, v0, 0xff

    aget v13, v14, v13

    xor-int/2addr v11, v13

    const/4 v13, 0x6

    aget v13, v1, v13

    xor-int/2addr v11, v13

    const/16 v13, 0x18

    shr-int/2addr v0, v13

    and-int/lit16 v0, v0, 0xff

    aget v0, v6, v0

    const/16 v13, 0x10

    shr-int/2addr v3, v13

    and-int/lit16 v3, v3, 0xff

    aget v3, v25, v3

    xor-int/2addr v0, v3

    const/16 v3, 0x8

    shr-int/2addr v10, v3

    and-int/lit16 v3, v10, 0xff

    aget v3, v15, v3

    xor-int/2addr v0, v3

    and-int/lit16 v2, v2, 0xff

    aget v2, v14, v2

    xor-int/2addr v0, v2

    const/4 v2, 0x7

    aget v2, v1, v2

    xor-int/2addr v0, v2

    shr-int/lit8 v2, v8, 0x18

    and-int/lit16 v2, v2, 0xff

    aget v2, v6, v2

    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    aget v3, v25, v3

    xor-int/2addr v2, v3

    shr-int/lit8 v3, v11, 0x8

    and-int/lit16 v3, v3, 0xff

    aget v3, v15, v3

    xor-int/2addr v2, v3

    and-int/lit16 v3, v12, 0xff

    aget v3, v14, v3

    xor-int/2addr v2, v3

    const/16 v3, 0x8

    aget v10, v1, v3

    xor-int/2addr v2, v10

    shr-int/lit8 v3, v12, 0x18

    and-int/lit16 v3, v3, 0xff

    aget v3, v6, v3

    shr-int/lit8 v10, v8, 0x10

    and-int/lit16 v10, v10, 0xff

    aget v10, v25, v10

    xor-int/2addr v3, v10

    shr-int/lit8 v10, v0, 0x8

    and-int/lit16 v10, v10, 0xff

    aget v10, v15, v10

    xor-int/2addr v3, v10

    and-int/lit16 v10, v11, 0xff

    aget v10, v14, v10

    xor-int/2addr v3, v10

    const/16 v10, 0x9

    aget v10, v1, v10

    xor-int/2addr v3, v10

    shr-int/lit8 v10, v11, 0x18

    and-int/lit16 v10, v10, 0xff

    aget v10, v6, v10

    shr-int/lit8 v13, v12, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v13, v25, v13

    xor-int/2addr v10, v13

    shr-int/lit8 v13, v8, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v15, v13

    xor-int/2addr v10, v13

    and-int/lit16 v13, v0, 0xff

    aget v13, v14, v13

    xor-int/2addr v10, v13

    const/16 v13, 0xa

    aget v13, v1, v13

    xor-int/2addr v10, v13

    const/16 v13, 0x18

    shr-int/2addr v0, v13

    and-int/lit16 v0, v0, 0xff

    aget v0, v6, v0

    const/16 v13, 0x10

    shr-int/2addr v11, v13

    and-int/lit16 v11, v11, 0xff

    aget v11, v25, v11

    xor-int/2addr v0, v11

    const/16 v11, 0x8

    shr-int/2addr v12, v11

    and-int/lit16 v11, v12, 0xff

    aget v11, v15, v11

    xor-int/2addr v0, v11

    and-int/lit16 v8, v8, 0xff

    aget v8, v14, v8

    xor-int/2addr v0, v8

    const/16 v8, 0xb

    aget v8, v1, v8

    xor-int/2addr v0, v8

    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v8, v6, v8

    shr-int/lit8 v11, v0, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v11, v25, v11

    xor-int/2addr v8, v11

    shr-int/lit8 v11, v10, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v11, v15, v11

    xor-int/2addr v8, v11

    and-int/lit16 v11, v3, 0xff

    aget v11, v14, v11

    xor-int/2addr v8, v11

    const/16 v11, 0xc

    aget v11, v1, v11

    xor-int/2addr v8, v11

    shr-int/lit8 v11, v3, 0x18

    and-int/lit16 v11, v11, 0xff

    aget v11, v6, v11

    shr-int/lit8 v12, v2, 0x10

    and-int/lit16 v12, v12, 0xff

    aget v12, v25, v12

    xor-int/2addr v11, v12

    shr-int/lit8 v12, v0, 0x8

    and-int/lit16 v12, v12, 0xff

    aget v12, v15, v12

    xor-int/2addr v11, v12

    and-int/lit16 v12, v10, 0xff

    aget v12, v14, v12

    xor-int/2addr v11, v12

    const/16 v12, 0xd

    aget v12, v1, v12

    xor-int/2addr v11, v12

    shr-int/lit8 v12, v10, 0x18

    and-int/lit16 v12, v12, 0xff

    aget v12, v6, v12

    shr-int/lit8 v13, v3, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v13, v25, v13

    xor-int/2addr v12, v13

    shr-int/lit8 v13, v2, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v15, v13

    xor-int/2addr v12, v13

    and-int/lit16 v13, v0, 0xff

    aget v13, v14, v13

    xor-int/2addr v12, v13

    const/16 v13, 0xe

    aget v13, v1, v13

    xor-int/2addr v12, v13

    const/16 v13, 0x18

    shr-int/2addr v0, v13

    and-int/lit16 v0, v0, 0xff

    aget v0, v6, v0

    const/16 v13, 0x10

    shr-int/2addr v10, v13

    and-int/lit16 v10, v10, 0xff

    aget v10, v25, v10

    xor-int/2addr v0, v10

    const/16 v10, 0x8

    shr-int/2addr v3, v10

    and-int/lit16 v3, v3, 0xff

    aget v3, v15, v3

    xor-int/2addr v0, v3

    and-int/lit16 v2, v2, 0xff

    aget v2, v14, v2

    xor-int/2addr v0, v2

    const/16 v2, 0xf

    aget v2, v1, v2

    xor-int/2addr v0, v2

    shr-int/lit8 v2, v8, 0x18

    and-int/lit16 v2, v2, 0xff

    aget v2, v6, v2

    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    aget v3, v25, v3

    xor-int/2addr v2, v3

    shr-int/lit8 v3, v12, 0x8

    and-int/lit16 v3, v3, 0xff

    aget v3, v15, v3

    xor-int/2addr v2, v3

    and-int/lit16 v3, v11, 0xff

    aget v3, v14, v3

    xor-int/2addr v2, v3

    const/16 v3, 0x10

    aget v10, v1, v3

    xor-int/2addr v2, v10

    shr-int/lit8 v3, v11, 0x18

    and-int/lit16 v3, v3, 0xff

    aget v3, v6, v3

    shr-int/lit8 v10, v8, 0x10

    and-int/lit16 v10, v10, 0xff

    aget v10, v25, v10

    xor-int/2addr v3, v10

    shr-int/lit8 v10, v0, 0x8

    and-int/lit16 v10, v10, 0xff

    aget v10, v15, v10

    xor-int/2addr v3, v10

    and-int/lit16 v10, v12, 0xff

    aget v10, v14, v10

    xor-int/2addr v3, v10

    const/16 v10, 0x11

    aget v10, v1, v10

    xor-int/2addr v3, v10

    shr-int/lit8 v10, v12, 0x18

    and-int/lit16 v10, v10, 0xff

    aget v10, v6, v10

    shr-int/lit8 v13, v11, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v13, v25, v13

    xor-int/2addr v10, v13

    shr-int/lit8 v13, v8, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v15, v13

    xor-int/2addr v10, v13

    and-int/lit16 v13, v0, 0xff

    aget v13, v14, v13

    xor-int/2addr v10, v13

    const/16 v13, 0x12

    aget v13, v1, v13

    xor-int/2addr v10, v13

    const/16 v13, 0x18

    shr-int/2addr v0, v13

    and-int/lit16 v0, v0, 0xff

    aget v0, v6, v0

    const/16 v13, 0x10

    shr-int/2addr v12, v13

    and-int/lit16 v12, v12, 0xff

    aget v12, v25, v12

    xor-int/2addr v0, v12

    const/16 v12, 0x8

    shr-int/2addr v11, v12

    and-int/lit16 v11, v11, 0xff

    aget v11, v15, v11

    xor-int/2addr v0, v11

    and-int/lit16 v8, v8, 0xff

    aget v8, v14, v8

    xor-int/2addr v0, v8

    const/16 v8, 0x13

    aget v8, v1, v8

    xor-int/2addr v0, v8

    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v8, v6, v8

    shr-int/lit8 v11, v0, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v11, v25, v11

    xor-int/2addr v8, v11

    shr-int/lit8 v11, v10, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v11, v15, v11

    xor-int/2addr v8, v11

    and-int/lit16 v11, v3, 0xff

    aget v11, v14, v11

    xor-int/2addr v8, v11

    const/16 v11, 0x14

    aget v11, v1, v11

    xor-int/2addr v8, v11

    shr-int/lit8 v11, v3, 0x18

    and-int/lit16 v11, v11, 0xff

    aget v11, v6, v11

    shr-int/lit8 v12, v2, 0x10

    and-int/lit16 v12, v12, 0xff

    aget v12, v25, v12

    xor-int/2addr v11, v12

    shr-int/lit8 v12, v0, 0x8

    and-int/lit16 v12, v12, 0xff

    aget v12, v15, v12

    xor-int/2addr v11, v12

    and-int/lit16 v12, v10, 0xff

    aget v12, v14, v12

    xor-int/2addr v11, v12

    const/16 v12, 0x15

    aget v12, v1, v12

    xor-int/2addr v11, v12

    shr-int/lit8 v12, v10, 0x18

    and-int/lit16 v12, v12, 0xff

    aget v12, v6, v12

    shr-int/lit8 v13, v3, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v13, v25, v13

    xor-int/2addr v12, v13

    shr-int/lit8 v13, v2, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v15, v13

    xor-int/2addr v12, v13

    and-int/lit16 v13, v0, 0xff

    aget v13, v14, v13

    xor-int/2addr v12, v13

    const/16 v13, 0x16

    aget v13, v1, v13

    xor-int/2addr v12, v13

    const/16 v13, 0x18

    shr-int/2addr v0, v13

    and-int/lit16 v0, v0, 0xff

    aget v0, v6, v0

    const/16 v13, 0x10

    shr-int/2addr v10, v13

    and-int/lit16 v10, v10, 0xff

    aget v10, v25, v10

    xor-int/2addr v0, v10

    const/16 v10, 0x8

    shr-int/2addr v3, v10

    and-int/lit16 v3, v3, 0xff

    aget v3, v15, v3

    xor-int/2addr v0, v3

    and-int/lit16 v2, v2, 0xff

    aget v2, v14, v2

    xor-int/2addr v0, v2

    const/16 v2, 0x17

    aget v2, v1, v2

    xor-int/2addr v0, v2

    shr-int/lit8 v2, v8, 0x18

    and-int/lit16 v2, v2, 0xff

    aget v2, v6, v2

    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    aget v3, v25, v3

    xor-int/2addr v2, v3

    shr-int/lit8 v3, v12, 0x8

    and-int/lit16 v3, v3, 0xff

    aget v3, v15, v3

    xor-int/2addr v2, v3

    and-int/lit16 v3, v11, 0xff

    aget v3, v14, v3

    xor-int/2addr v2, v3

    const/16 v3, 0x18

    aget v10, v1, v3

    xor-int/2addr v2, v10

    shr-int/lit8 v3, v11, 0x18

    and-int/lit16 v3, v3, 0xff

    aget v3, v6, v3

    shr-int/lit8 v10, v8, 0x10

    and-int/lit16 v10, v10, 0xff

    aget v10, v25, v10

    xor-int/2addr v3, v10

    shr-int/lit8 v10, v0, 0x8

    and-int/lit16 v10, v10, 0xff

    aget v10, v15, v10

    xor-int/2addr v3, v10

    and-int/lit16 v10, v12, 0xff

    aget v10, v14, v10

    xor-int/2addr v3, v10

    const/16 v10, 0x19

    aget v10, v1, v10

    xor-int/2addr v3, v10

    shr-int/lit8 v10, v12, 0x18

    and-int/lit16 v10, v10, 0xff

    aget v10, v6, v10

    shr-int/lit8 v13, v11, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v13, v25, v13

    xor-int/2addr v10, v13

    shr-int/lit8 v13, v8, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v15, v13

    xor-int/2addr v10, v13

    and-int/lit16 v13, v0, 0xff

    aget v13, v14, v13

    xor-int/2addr v10, v13

    const/16 v13, 0x1a

    aget v13, v1, v13

    xor-int/2addr v10, v13

    const/16 v13, 0x18

    shr-int/2addr v0, v13

    and-int/lit16 v0, v0, 0xff

    aget v0, v6, v0

    const/16 v13, 0x10

    shr-int/2addr v12, v13

    and-int/lit16 v12, v12, 0xff

    aget v12, v25, v12

    xor-int/2addr v0, v12

    const/16 v12, 0x8

    shr-int/2addr v11, v12

    and-int/lit16 v11, v11, 0xff

    aget v11, v15, v11

    xor-int/2addr v0, v11

    and-int/lit16 v8, v8, 0xff

    aget v8, v14, v8

    xor-int/2addr v0, v8

    const/16 v8, 0x1b

    aget v8, v1, v8

    xor-int/2addr v0, v8

    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v8, v6, v8

    shr-int/lit8 v11, v0, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v11, v25, v11

    xor-int/2addr v8, v11

    shr-int/lit8 v11, v10, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v11, v15, v11

    xor-int/2addr v8, v11

    and-int/lit16 v11, v3, 0xff

    aget v11, v14, v11

    xor-int/2addr v8, v11

    const/16 v11, 0x1c

    aget v11, v1, v11

    xor-int/2addr v8, v11

    shr-int/lit8 v11, v3, 0x18

    and-int/lit16 v11, v11, 0xff

    aget v11, v6, v11

    shr-int/lit8 v12, v2, 0x10

    and-int/lit16 v12, v12, 0xff

    aget v12, v25, v12

    xor-int/2addr v11, v12

    shr-int/lit8 v12, v0, 0x8

    and-int/lit16 v12, v12, 0xff

    aget v12, v15, v12

    xor-int/2addr v11, v12

    and-int/lit16 v12, v10, 0xff

    aget v12, v14, v12

    xor-int/2addr v11, v12

    const/16 v12, 0x1d

    aget v12, v1, v12

    xor-int/2addr v11, v12

    shr-int/lit8 v12, v10, 0x18

    and-int/lit16 v12, v12, 0xff

    aget v12, v6, v12

    shr-int/lit8 v13, v3, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v13, v25, v13

    xor-int/2addr v12, v13

    shr-int/lit8 v13, v2, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v15, v13

    xor-int/2addr v12, v13

    and-int/lit16 v13, v0, 0xff

    aget v13, v14, v13

    xor-int/2addr v12, v13

    const/16 v13, 0x1e

    aget v13, v1, v13

    xor-int/2addr v12, v13

    const/16 v13, 0x18

    shr-int/2addr v0, v13

    and-int/lit16 v0, v0, 0xff

    aget v0, v6, v0

    const/16 v13, 0x10

    shr-int/2addr v10, v13

    and-int/lit16 v10, v10, 0xff

    aget v10, v25, v10

    xor-int/2addr v0, v10

    const/16 v10, 0x8

    shr-int/2addr v3, v10

    and-int/lit16 v3, v3, 0xff

    aget v3, v15, v3

    xor-int/2addr v0, v3

    and-int/lit16 v2, v2, 0xff

    aget v2, v14, v2

    xor-int/2addr v0, v2

    const/16 v2, 0x1f

    aget v2, v1, v2

    xor-int/2addr v0, v2

    shr-int/lit8 v2, v8, 0x18

    and-int/lit16 v2, v2, 0xff

    aget v2, v6, v2

    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    aget v3, v25, v3

    xor-int/2addr v2, v3

    shr-int/lit8 v3, v12, 0x8

    and-int/lit16 v3, v3, 0xff

    aget v3, v15, v3

    xor-int/2addr v2, v3

    and-int/lit16 v3, v11, 0xff

    aget v3, v14, v3

    xor-int/2addr v2, v3

    const/16 v3, 0x20

    aget v3, v1, v3

    xor-int/2addr v2, v3

    shr-int/lit8 v3, v11, 0x18

    and-int/lit16 v3, v3, 0xff

    aget v3, v6, v3

    shr-int/lit8 v10, v8, 0x10

    and-int/lit16 v10, v10, 0xff

    aget v10, v25, v10

    xor-int/2addr v3, v10

    shr-int/lit8 v10, v0, 0x8

    and-int/lit16 v10, v10, 0xff

    aget v10, v15, v10

    xor-int/2addr v3, v10

    and-int/lit16 v10, v12, 0xff

    aget v10, v14, v10

    xor-int/2addr v3, v10

    const/16 v10, 0x21

    aget v10, v1, v10

    xor-int/2addr v3, v10

    shr-int/lit8 v10, v12, 0x18

    and-int/lit16 v10, v10, 0xff

    aget v10, v6, v10

    shr-int/lit8 v13, v11, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v13, v25, v13

    xor-int/2addr v10, v13

    shr-int/lit8 v13, v8, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v15, v13

    xor-int/2addr v10, v13

    and-int/lit16 v13, v0, 0xff

    aget v13, v14, v13

    xor-int/2addr v10, v13

    const/16 v13, 0x22

    aget v13, v1, v13

    xor-int/2addr v10, v13

    const/16 v13, 0x18

    shr-int/2addr v0, v13

    and-int/lit16 v0, v0, 0xff

    aget v0, v6, v0

    const/16 v13, 0x10

    shr-int/2addr v12, v13

    and-int/lit16 v12, v12, 0xff

    aget v12, v25, v12

    xor-int/2addr v0, v12

    const/16 v12, 0x8

    shr-int/2addr v11, v12

    and-int/lit16 v11, v11, 0xff

    aget v11, v15, v11

    xor-int/2addr v0, v11

    and-int/lit16 v8, v8, 0xff

    aget v8, v14, v8

    xor-int/2addr v0, v8

    const/16 v8, 0x23

    aget v8, v1, v8

    xor-int/2addr v0, v8

    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v8, v6, v8

    shr-int/lit8 v11, v0, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v11, v25, v11

    xor-int/2addr v8, v11

    shr-int/lit8 v11, v10, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v11, v15, v11

    xor-int/2addr v8, v11

    and-int/lit16 v11, v3, 0xff

    aget v11, v14, v11

    xor-int/2addr v8, v11

    const/16 v11, 0x24

    aget v11, v1, v11

    xor-int/2addr v8, v11

    shr-int/lit8 v11, v3, 0x18

    and-int/lit16 v11, v11, 0xff

    aget v11, v6, v11

    shr-int/lit8 v12, v2, 0x10

    and-int/lit16 v12, v12, 0xff

    aget v12, v25, v12

    xor-int/2addr v11, v12

    shr-int/lit8 v12, v0, 0x8

    and-int/lit16 v12, v12, 0xff

    aget v12, v15, v12

    xor-int/2addr v11, v12

    and-int/lit16 v12, v10, 0xff

    aget v12, v14, v12

    xor-int/2addr v11, v12

    const/16 v12, 0x25

    aget v12, v1, v12

    xor-int/2addr v11, v12

    shr-int/lit8 v12, v10, 0x18

    and-int/lit16 v12, v12, 0xff

    aget v12, v6, v12

    shr-int/lit8 v13, v3, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v13, v25, v13

    xor-int/2addr v12, v13

    shr-int/lit8 v13, v2, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v15, v13

    xor-int/2addr v12, v13

    and-int/lit16 v13, v0, 0xff

    aget v13, v14, v13

    xor-int/2addr v12, v13

    const/16 v13, 0x26

    aget v13, v1, v13

    xor-int/2addr v12, v13

    const/16 v13, 0x18

    shr-int/2addr v0, v13

    and-int/lit16 v0, v0, 0xff

    aget v0, v6, v0

    const/16 v6, 0x10

    shr-int/2addr v10, v6

    and-int/lit16 v6, v10, 0xff

    aget v6, v25, v6

    xor-int/2addr v0, v6

    const/16 v6, 0x8

    shr-int/2addr v3, v6

    and-int/lit16 v3, v3, 0xff

    aget v3, v15, v3

    xor-int/2addr v0, v3

    and-int/lit16 v2, v2, 0xff

    aget v2, v14, v2

    xor-int/2addr v0, v2

    const/16 v2, 0x27

    aget v2, v1, v2

    xor-int/2addr v0, v2

    sget-object v2, Lorg/h2/security/AES;->RS:[I

    shr-int/lit8 v3, v8, 0x18

    and-int/lit16 v3, v3, 0xff

    aget v3, v2, v3

    const/16 v6, 0x18

    shl-int/2addr v3, v6

    shr-int/lit8 v6, v0, 0x10

    and-int/lit16 v6, v6, 0xff

    aget v6, v2, v6

    const/16 v10, 0x10

    shl-int/2addr v6, v10

    or-int/2addr v3, v6

    shr-int/lit8 v6, v12, 0x8

    and-int/lit16 v6, v6, 0xff

    aget v6, v2, v6

    const/16 v10, 0x8

    shl-int/2addr v6, v10

    or-int/2addr v3, v6

    and-int/lit16 v6, v11, 0xff

    aget v6, v2, v6

    or-int/2addr v3, v6

    const/16 v6, 0x28

    aget v6, v1, v6

    xor-int/2addr v3, v6

    shr-int/lit8 v6, v11, 0x18

    and-int/lit16 v6, v6, 0xff

    aget v6, v2, v6

    const/16 v10, 0x18

    shl-int/2addr v6, v10

    shr-int/lit8 v10, v8, 0x10

    and-int/lit16 v10, v10, 0xff

    aget v10, v2, v10

    const/16 v13, 0x10

    shl-int/2addr v10, v13

    or-int/2addr v6, v10

    shr-int/lit8 v10, v0, 0x8

    and-int/lit16 v10, v10, 0xff

    aget v10, v2, v10

    const/16 v13, 0x8

    shl-int/2addr v10, v13

    or-int/2addr v6, v10

    and-int/lit16 v10, v12, 0xff

    aget v10, v2, v10

    or-int/2addr v6, v10

    const/16 v10, 0x29

    aget v10, v1, v10

    xor-int/2addr v6, v10

    shr-int/lit8 v10, v12, 0x18

    and-int/lit16 v10, v10, 0xff

    aget v10, v2, v10

    const/16 v13, 0x18

    shl-int/2addr v10, v13

    shr-int/lit8 v13, v11, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v13, v2, v13

    const/16 v14, 0x10

    shl-int/2addr v13, v14

    or-int/2addr v10, v13

    shr-int/lit8 v13, v8, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v2, v13

    const/16 v14, 0x8

    shl-int/2addr v13, v14

    or-int/2addr v10, v13

    and-int/lit16 v13, v0, 0xff

    aget v13, v2, v13

    or-int/2addr v10, v13

    const/16 v13, 0x2a

    aget v13, v1, v13

    xor-int/2addr v10, v13

    const/16 v13, 0x18

    shr-int/2addr v0, v13

    and-int/lit16 v0, v0, 0xff

    aget v0, v2, v0

    shl-int/2addr v0, v13

    const/16 v13, 0x10

    shr-int/2addr v12, v13

    and-int/lit16 v12, v12, 0xff

    aget v12, v2, v12

    shl-int/2addr v12, v13

    or-int/2addr v0, v12

    const/16 v12, 0x8

    shr-int/2addr v11, v12

    and-int/lit16 v11, v11, 0xff

    aget v11, v2, v11

    shl-int/2addr v11, v12

    or-int/2addr v0, v11

    and-int/lit16 v8, v8, 0xff

    aget v2, v2, v8

    or-int/2addr v0, v2

    const/16 v2, 0x2b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    shr-int/lit8 v1, v3, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    shr-int/lit8 v1, v3, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v4

    shr-int/lit8 v1, v3, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v5

    int-to-byte v1, v3

    aput-byte v1, p2, v7

    shr-int/lit8 v1, v6, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v9

    shr-int/lit8 v1, v6, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v30

    shr-int/lit8 v1, v6, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v29

    int-to-byte v1, v6

    aput-byte v1, p2, v28

    shr-int/lit8 v1, v10, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v27

    shr-int/lit8 v1, v10, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v16

    shr-int/lit8 v1, v10, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v26

    int-to-byte v1, v10

    aput-byte v1, p2, v23

    shr-int/lit8 v1, v0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v22

    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v21

    shr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v20

    int-to-byte v0, v0

    aput-byte v0, p2, v24

    return-void
.end method

.method private encryptBlock([B[BI)V
    .locals 31

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/h2/security/AES;->encKey:[I

    aget-byte v2, p1, p3

    const/16 v3, 0x18

    shl-int/2addr v2, v3

    add-int/lit8 v4, p3, 0x1

    aget-byte v5, p1, v4

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x10

    shl-int/2addr v5, v6

    or-int/2addr v2, v5

    add-int/lit8 v5, p3, 0x2

    aget-byte v7, p1, v5

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0x8

    shl-int/2addr v7, v8

    or-int/2addr v2, v7

    add-int/lit8 v7, p3, 0x3

    aget-byte v9, p1, v7

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v2, v9

    const/4 v9, 0x0

    aget v9, v1, v9

    xor-int/2addr v2, v9

    add-int/lit8 v9, p3, 0x4

    aget-byte v10, p1, v9

    shl-int/2addr v10, v3

    add-int/lit8 v11, p3, 0x5

    aget-byte v12, p1, v11

    and-int/lit16 v12, v12, 0xff

    shl-int/2addr v12, v6

    or-int/2addr v10, v12

    add-int/lit8 v12, p3, 0x6

    aget-byte v13, p1, v12

    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v8

    or-int/2addr v10, v13

    add-int/lit8 v13, p3, 0x7

    aget-byte v14, p1, v13

    and-int/lit16 v14, v14, 0xff

    or-int/2addr v10, v14

    const/4 v14, 0x1

    aget v14, v1, v14

    xor-int/2addr v10, v14

    add-int/lit8 v14, p3, 0x8

    aget-byte v15, p1, v14

    shl-int/2addr v15, v3

    add-int/lit8 v16, p3, 0x9

    aget-byte v3, p1, v16

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v6

    or-int/2addr v3, v15

    add-int/lit8 v15, p3, 0xa

    aget-byte v6, p1, v15

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v8

    or-int/2addr v3, v6

    add-int/lit8 v6, p3, 0xb

    aget-byte v8, p1, v6

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v3, v8

    const/4 v8, 0x2

    aget v8, v1, v8

    xor-int/2addr v3, v8

    add-int/lit8 v8, p3, 0xc

    aget-byte v20, p1, v8

    const/16 v17, 0x18

    shl-int/lit8 v20, v20, 0x18

    add-int/lit8 v21, p3, 0xd

    aget-byte v0, p1, v21

    and-int/lit16 v0, v0, 0xff

    const/16 v18, 0x10

    shl-int/lit8 v0, v0, 0x10

    or-int v0, v20, v0

    add-int/lit8 v20, p3, 0xe

    move/from16 v22, v8

    aget-byte v8, p1, v20

    and-int/lit16 v8, v8, 0xff

    const/16 v19, 0x8

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v0, v8

    add-int/lit8 v8, p3, 0xf

    move/from16 v23, v6

    aget-byte v6, p1, v8

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v0, v6

    const/4 v6, 0x3

    aget v6, v1, v6

    xor-int/2addr v0, v6

    sget-object v6, Lorg/h2/security/AES;->FT0:[I

    move/from16 v24, v8

    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v8, v6, v8

    sget-object v25, Lorg/h2/security/AES;->FT1:[I

    move/from16 v26, v15

    shr-int/lit8 v15, v10, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v15, v25, v15

    xor-int/2addr v8, v15

    sget-object v15, Lorg/h2/security/AES;->FT2:[I

    move/from16 v27, v14

    shr-int/lit8 v14, v3, 0x8

    and-int/lit16 v14, v14, 0xff

    aget v14, v15, v14

    xor-int/2addr v8, v14

    sget-object v14, Lorg/h2/security/AES;->FT3:[I

    move/from16 v28, v13

    and-int/lit16 v13, v0, 0xff

    aget v13, v14, v13

    xor-int/2addr v8, v13

    const/4 v13, 0x4

    aget v13, v1, v13

    xor-int/2addr v8, v13

    shr-int/lit8 v13, v10, 0x18

    and-int/lit16 v13, v13, 0xff

    aget v13, v6, v13

    move/from16 v29, v12

    shr-int/lit8 v12, v3, 0x10

    and-int/lit16 v12, v12, 0xff

    aget v12, v25, v12

    xor-int/2addr v12, v13

    shr-int/lit8 v13, v0, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v15, v13

    xor-int/2addr v12, v13

    and-int/lit16 v13, v2, 0xff

    aget v13, v14, v13

    xor-int/2addr v12, v13

    const/4 v13, 0x5

    aget v13, v1, v13

    xor-int/2addr v12, v13

    shr-int/lit8 v13, v3, 0x18

    and-int/lit16 v13, v13, 0xff

    aget v13, v6, v13

    move/from16 v30, v11

    shr-int/lit8 v11, v0, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v11, v25, v11

    xor-int/2addr v11, v13

    shr-int/lit8 v13, v2, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v15, v13

    xor-int/2addr v11, v13

    and-int/lit16 v13, v10, 0xff

    aget v13, v14, v13

    xor-int/2addr v11, v13

    const/4 v13, 0x6

    aget v13, v1, v13

    xor-int/2addr v11, v13

    const/16 v13, 0x18

    shr-int/2addr v0, v13

    and-int/lit16 v0, v0, 0xff

    aget v0, v6, v0

    const/16 v13, 0x10

    shr-int/2addr v2, v13

    and-int/lit16 v2, v2, 0xff

    aget v2, v25, v2

    xor-int/2addr v0, v2

    const/16 v2, 0x8

    shr-int/2addr v10, v2

    and-int/lit16 v2, v10, 0xff

    aget v2, v15, v2

    xor-int/2addr v0, v2

    and-int/lit16 v2, v3, 0xff

    aget v2, v14, v2

    xor-int/2addr v0, v2

    const/4 v2, 0x7

    aget v2, v1, v2

    xor-int/2addr v0, v2

    shr-int/lit8 v2, v8, 0x18

    and-int/lit16 v2, v2, 0xff

    aget v2, v6, v2

    shr-int/lit8 v3, v12, 0x10

    and-int/lit16 v3, v3, 0xff

    aget v3, v25, v3

    xor-int/2addr v2, v3

    shr-int/lit8 v3, v11, 0x8

    and-int/lit16 v3, v3, 0xff

    aget v3, v15, v3

    xor-int/2addr v2, v3

    and-int/lit16 v3, v0, 0xff

    aget v3, v14, v3

    xor-int/2addr v2, v3

    const/16 v3, 0x8

    aget v10, v1, v3

    xor-int/2addr v2, v10

    shr-int/lit8 v3, v12, 0x18

    and-int/lit16 v3, v3, 0xff

    aget v3, v6, v3

    shr-int/lit8 v10, v11, 0x10

    and-int/lit16 v10, v10, 0xff

    aget v10, v25, v10

    xor-int/2addr v3, v10

    shr-int/lit8 v10, v0, 0x8

    and-int/lit16 v10, v10, 0xff

    aget v10, v15, v10

    xor-int/2addr v3, v10

    and-int/lit16 v10, v8, 0xff

    aget v10, v14, v10

    xor-int/2addr v3, v10

    const/16 v10, 0x9

    aget v10, v1, v10

    xor-int/2addr v3, v10

    shr-int/lit8 v10, v11, 0x18

    and-int/lit16 v10, v10, 0xff

    aget v10, v6, v10

    shr-int/lit8 v13, v0, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v13, v25, v13

    xor-int/2addr v10, v13

    shr-int/lit8 v13, v8, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v15, v13

    xor-int/2addr v10, v13

    and-int/lit16 v13, v12, 0xff

    aget v13, v14, v13

    xor-int/2addr v10, v13

    const/16 v13, 0xa

    aget v13, v1, v13

    xor-int/2addr v10, v13

    const/16 v13, 0x18

    shr-int/2addr v0, v13

    and-int/lit16 v0, v0, 0xff

    aget v0, v6, v0

    const/16 v13, 0x10

    shr-int/2addr v8, v13

    and-int/lit16 v8, v8, 0xff

    aget v8, v25, v8

    xor-int/2addr v0, v8

    const/16 v8, 0x8

    shr-int/2addr v12, v8

    and-int/lit16 v8, v12, 0xff

    aget v8, v15, v8

    xor-int/2addr v0, v8

    and-int/lit16 v8, v11, 0xff

    aget v8, v14, v8

    xor-int/2addr v0, v8

    const/16 v8, 0xb

    aget v8, v1, v8

    xor-int/2addr v0, v8

    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v8, v6, v8

    shr-int/lit8 v11, v3, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v11, v25, v11

    xor-int/2addr v8, v11

    shr-int/lit8 v11, v10, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v11, v15, v11

    xor-int/2addr v8, v11

    and-int/lit16 v11, v0, 0xff

    aget v11, v14, v11

    xor-int/2addr v8, v11

    const/16 v11, 0xc

    aget v11, v1, v11

    xor-int/2addr v8, v11

    shr-int/lit8 v11, v3, 0x18

    and-int/lit16 v11, v11, 0xff

    aget v11, v6, v11

    shr-int/lit8 v12, v10, 0x10

    and-int/lit16 v12, v12, 0xff

    aget v12, v25, v12

    xor-int/2addr v11, v12

    shr-int/lit8 v12, v0, 0x8

    and-int/lit16 v12, v12, 0xff

    aget v12, v15, v12

    xor-int/2addr v11, v12

    and-int/lit16 v12, v2, 0xff

    aget v12, v14, v12

    xor-int/2addr v11, v12

    const/16 v12, 0xd

    aget v12, v1, v12

    xor-int/2addr v11, v12

    shr-int/lit8 v12, v10, 0x18

    and-int/lit16 v12, v12, 0xff

    aget v12, v6, v12

    shr-int/lit8 v13, v0, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v13, v25, v13

    xor-int/2addr v12, v13

    shr-int/lit8 v13, v2, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v15, v13

    xor-int/2addr v12, v13

    and-int/lit16 v13, v3, 0xff

    aget v13, v14, v13

    xor-int/2addr v12, v13

    const/16 v13, 0xe

    aget v13, v1, v13

    xor-int/2addr v12, v13

    const/16 v13, 0x18

    shr-int/2addr v0, v13

    and-int/lit16 v0, v0, 0xff

    aget v0, v6, v0

    const/16 v13, 0x10

    shr-int/2addr v2, v13

    and-int/lit16 v2, v2, 0xff

    aget v2, v25, v2

    xor-int/2addr v0, v2

    const/16 v2, 0x8

    shr-int/2addr v3, v2

    and-int/lit16 v2, v3, 0xff

    aget v2, v15, v2

    xor-int/2addr v0, v2

    and-int/lit16 v2, v10, 0xff

    aget v2, v14, v2

    xor-int/2addr v0, v2

    const/16 v2, 0xf

    aget v2, v1, v2

    xor-int/2addr v0, v2

    shr-int/lit8 v2, v8, 0x18

    and-int/lit16 v2, v2, 0xff

    aget v2, v6, v2

    shr-int/lit8 v3, v11, 0x10

    and-int/lit16 v3, v3, 0xff

    aget v3, v25, v3

    xor-int/2addr v2, v3

    shr-int/lit8 v3, v12, 0x8

    and-int/lit16 v3, v3, 0xff

    aget v3, v15, v3

    xor-int/2addr v2, v3

    and-int/lit16 v3, v0, 0xff

    aget v3, v14, v3

    xor-int/2addr v2, v3

    const/16 v3, 0x10

    aget v10, v1, v3

    xor-int/2addr v2, v10

    shr-int/lit8 v3, v11, 0x18

    and-int/lit16 v3, v3, 0xff

    aget v3, v6, v3

    shr-int/lit8 v10, v12, 0x10

    and-int/lit16 v10, v10, 0xff

    aget v10, v25, v10

    xor-int/2addr v3, v10

    shr-int/lit8 v10, v0, 0x8

    and-int/lit16 v10, v10, 0xff

    aget v10, v15, v10

    xor-int/2addr v3, v10

    and-int/lit16 v10, v8, 0xff

    aget v10, v14, v10

    xor-int/2addr v3, v10

    const/16 v10, 0x11

    aget v10, v1, v10

    xor-int/2addr v3, v10

    shr-int/lit8 v10, v12, 0x18

    and-int/lit16 v10, v10, 0xff

    aget v10, v6, v10

    shr-int/lit8 v13, v0, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v13, v25, v13

    xor-int/2addr v10, v13

    shr-int/lit8 v13, v8, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v15, v13

    xor-int/2addr v10, v13

    and-int/lit16 v13, v11, 0xff

    aget v13, v14, v13

    xor-int/2addr v10, v13

    const/16 v13, 0x12

    aget v13, v1, v13

    xor-int/2addr v10, v13

    const/16 v13, 0x18

    shr-int/2addr v0, v13

    and-int/lit16 v0, v0, 0xff

    aget v0, v6, v0

    const/16 v13, 0x10

    shr-int/2addr v8, v13

    and-int/lit16 v8, v8, 0xff

    aget v8, v25, v8

    xor-int/2addr v0, v8

    const/16 v8, 0x8

    shr-int/2addr v11, v8

    and-int/lit16 v8, v11, 0xff

    aget v8, v15, v8

    xor-int/2addr v0, v8

    and-int/lit16 v8, v12, 0xff

    aget v8, v14, v8

    xor-int/2addr v0, v8

    const/16 v8, 0x13

    aget v8, v1, v8

    xor-int/2addr v0, v8

    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v8, v6, v8

    shr-int/lit8 v11, v3, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v11, v25, v11

    xor-int/2addr v8, v11

    shr-int/lit8 v11, v10, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v11, v15, v11

    xor-int/2addr v8, v11

    and-int/lit16 v11, v0, 0xff

    aget v11, v14, v11

    xor-int/2addr v8, v11

    const/16 v11, 0x14

    aget v11, v1, v11

    xor-int/2addr v8, v11

    shr-int/lit8 v11, v3, 0x18

    and-int/lit16 v11, v11, 0xff

    aget v11, v6, v11

    shr-int/lit8 v12, v10, 0x10

    and-int/lit16 v12, v12, 0xff

    aget v12, v25, v12

    xor-int/2addr v11, v12

    shr-int/lit8 v12, v0, 0x8

    and-int/lit16 v12, v12, 0xff

    aget v12, v15, v12

    xor-int/2addr v11, v12

    and-int/lit16 v12, v2, 0xff

    aget v12, v14, v12

    xor-int/2addr v11, v12

    const/16 v12, 0x15

    aget v12, v1, v12

    xor-int/2addr v11, v12

    shr-int/lit8 v12, v10, 0x18

    and-int/lit16 v12, v12, 0xff

    aget v12, v6, v12

    shr-int/lit8 v13, v0, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v13, v25, v13

    xor-int/2addr v12, v13

    shr-int/lit8 v13, v2, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v15, v13

    xor-int/2addr v12, v13

    and-int/lit16 v13, v3, 0xff

    aget v13, v14, v13

    xor-int/2addr v12, v13

    const/16 v13, 0x16

    aget v13, v1, v13

    xor-int/2addr v12, v13

    const/16 v13, 0x18

    shr-int/2addr v0, v13

    and-int/lit16 v0, v0, 0xff

    aget v0, v6, v0

    const/16 v13, 0x10

    shr-int/2addr v2, v13

    and-int/lit16 v2, v2, 0xff

    aget v2, v25, v2

    xor-int/2addr v0, v2

    const/16 v2, 0x8

    shr-int/2addr v3, v2

    and-int/lit16 v2, v3, 0xff

    aget v2, v15, v2

    xor-int/2addr v0, v2

    and-int/lit16 v2, v10, 0xff

    aget v2, v14, v2

    xor-int/2addr v0, v2

    const/16 v2, 0x17

    aget v2, v1, v2

    xor-int/2addr v0, v2

    shr-int/lit8 v2, v8, 0x18

    and-int/lit16 v2, v2, 0xff

    aget v2, v6, v2

    shr-int/lit8 v3, v11, 0x10

    and-int/lit16 v3, v3, 0xff

    aget v3, v25, v3

    xor-int/2addr v2, v3

    shr-int/lit8 v3, v12, 0x8

    and-int/lit16 v3, v3, 0xff

    aget v3, v15, v3

    xor-int/2addr v2, v3

    and-int/lit16 v3, v0, 0xff

    aget v3, v14, v3

    xor-int/2addr v2, v3

    const/16 v3, 0x18

    aget v10, v1, v3

    xor-int/2addr v2, v10

    shr-int/lit8 v3, v11, 0x18

    and-int/lit16 v3, v3, 0xff

    aget v3, v6, v3

    shr-int/lit8 v10, v12, 0x10

    and-int/lit16 v10, v10, 0xff

    aget v10, v25, v10

    xor-int/2addr v3, v10

    shr-int/lit8 v10, v0, 0x8

    and-int/lit16 v10, v10, 0xff

    aget v10, v15, v10

    xor-int/2addr v3, v10

    and-int/lit16 v10, v8, 0xff

    aget v10, v14, v10

    xor-int/2addr v3, v10

    const/16 v10, 0x19

    aget v10, v1, v10

    xor-int/2addr v3, v10

    shr-int/lit8 v10, v12, 0x18

    and-int/lit16 v10, v10, 0xff

    aget v10, v6, v10

    shr-int/lit8 v13, v0, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v13, v25, v13

    xor-int/2addr v10, v13

    shr-int/lit8 v13, v8, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v15, v13

    xor-int/2addr v10, v13

    and-int/lit16 v13, v11, 0xff

    aget v13, v14, v13

    xor-int/2addr v10, v13

    const/16 v13, 0x1a

    aget v13, v1, v13

    xor-int/2addr v10, v13

    const/16 v13, 0x18

    shr-int/2addr v0, v13

    and-int/lit16 v0, v0, 0xff

    aget v0, v6, v0

    const/16 v13, 0x10

    shr-int/2addr v8, v13

    and-int/lit16 v8, v8, 0xff

    aget v8, v25, v8

    xor-int/2addr v0, v8

    const/16 v8, 0x8

    shr-int/2addr v11, v8

    and-int/lit16 v8, v11, 0xff

    aget v8, v15, v8

    xor-int/2addr v0, v8

    and-int/lit16 v8, v12, 0xff

    aget v8, v14, v8

    xor-int/2addr v0, v8

    const/16 v8, 0x1b

    aget v8, v1, v8

    xor-int/2addr v0, v8

    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v8, v6, v8

    shr-int/lit8 v11, v3, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v11, v25, v11

    xor-int/2addr v8, v11

    shr-int/lit8 v11, v10, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v11, v15, v11

    xor-int/2addr v8, v11

    and-int/lit16 v11, v0, 0xff

    aget v11, v14, v11

    xor-int/2addr v8, v11

    const/16 v11, 0x1c

    aget v11, v1, v11

    xor-int/2addr v8, v11

    shr-int/lit8 v11, v3, 0x18

    and-int/lit16 v11, v11, 0xff

    aget v11, v6, v11

    shr-int/lit8 v12, v10, 0x10

    and-int/lit16 v12, v12, 0xff

    aget v12, v25, v12

    xor-int/2addr v11, v12

    shr-int/lit8 v12, v0, 0x8

    and-int/lit16 v12, v12, 0xff

    aget v12, v15, v12

    xor-int/2addr v11, v12

    and-int/lit16 v12, v2, 0xff

    aget v12, v14, v12

    xor-int/2addr v11, v12

    const/16 v12, 0x1d

    aget v12, v1, v12

    xor-int/2addr v11, v12

    shr-int/lit8 v12, v10, 0x18

    and-int/lit16 v12, v12, 0xff

    aget v12, v6, v12

    shr-int/lit8 v13, v0, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v13, v25, v13

    xor-int/2addr v12, v13

    shr-int/lit8 v13, v2, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v15, v13

    xor-int/2addr v12, v13

    and-int/lit16 v13, v3, 0xff

    aget v13, v14, v13

    xor-int/2addr v12, v13

    const/16 v13, 0x1e

    aget v13, v1, v13

    xor-int/2addr v12, v13

    const/16 v13, 0x18

    shr-int/2addr v0, v13

    and-int/lit16 v0, v0, 0xff

    aget v0, v6, v0

    const/16 v13, 0x10

    shr-int/2addr v2, v13

    and-int/lit16 v2, v2, 0xff

    aget v2, v25, v2

    xor-int/2addr v0, v2

    const/16 v2, 0x8

    shr-int/2addr v3, v2

    and-int/lit16 v2, v3, 0xff

    aget v2, v15, v2

    xor-int/2addr v0, v2

    and-int/lit16 v2, v10, 0xff

    aget v2, v14, v2

    xor-int/2addr v0, v2

    const/16 v2, 0x1f

    aget v2, v1, v2

    xor-int/2addr v0, v2

    shr-int/lit8 v2, v8, 0x18

    and-int/lit16 v2, v2, 0xff

    aget v2, v6, v2

    shr-int/lit8 v3, v11, 0x10

    and-int/lit16 v3, v3, 0xff

    aget v3, v25, v3

    xor-int/2addr v2, v3

    shr-int/lit8 v3, v12, 0x8

    and-int/lit16 v3, v3, 0xff

    aget v3, v15, v3

    xor-int/2addr v2, v3

    and-int/lit16 v3, v0, 0xff

    aget v3, v14, v3

    xor-int/2addr v2, v3

    const/16 v3, 0x20

    aget v3, v1, v3

    xor-int/2addr v2, v3

    shr-int/lit8 v3, v11, 0x18

    and-int/lit16 v3, v3, 0xff

    aget v3, v6, v3

    shr-int/lit8 v10, v12, 0x10

    and-int/lit16 v10, v10, 0xff

    aget v10, v25, v10

    xor-int/2addr v3, v10

    shr-int/lit8 v10, v0, 0x8

    and-int/lit16 v10, v10, 0xff

    aget v10, v15, v10

    xor-int/2addr v3, v10

    and-int/lit16 v10, v8, 0xff

    aget v10, v14, v10

    xor-int/2addr v3, v10

    const/16 v10, 0x21

    aget v10, v1, v10

    xor-int/2addr v3, v10

    shr-int/lit8 v10, v12, 0x18

    and-int/lit16 v10, v10, 0xff

    aget v10, v6, v10

    shr-int/lit8 v13, v0, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v13, v25, v13

    xor-int/2addr v10, v13

    shr-int/lit8 v13, v8, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v15, v13

    xor-int/2addr v10, v13

    and-int/lit16 v13, v11, 0xff

    aget v13, v14, v13

    xor-int/2addr v10, v13

    const/16 v13, 0x22

    aget v13, v1, v13

    xor-int/2addr v10, v13

    const/16 v13, 0x18

    shr-int/2addr v0, v13

    and-int/lit16 v0, v0, 0xff

    aget v0, v6, v0

    const/16 v13, 0x10

    shr-int/2addr v8, v13

    and-int/lit16 v8, v8, 0xff

    aget v8, v25, v8

    xor-int/2addr v0, v8

    const/16 v8, 0x8

    shr-int/2addr v11, v8

    and-int/lit16 v8, v11, 0xff

    aget v8, v15, v8

    xor-int/2addr v0, v8

    and-int/lit16 v8, v12, 0xff

    aget v8, v14, v8

    xor-int/2addr v0, v8

    const/16 v8, 0x23

    aget v8, v1, v8

    xor-int/2addr v0, v8

    shr-int/lit8 v8, v2, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v8, v6, v8

    shr-int/lit8 v11, v3, 0x10

    and-int/lit16 v11, v11, 0xff

    aget v11, v25, v11

    xor-int/2addr v8, v11

    shr-int/lit8 v11, v10, 0x8

    and-int/lit16 v11, v11, 0xff

    aget v11, v15, v11

    xor-int/2addr v8, v11

    and-int/lit16 v11, v0, 0xff

    aget v11, v14, v11

    xor-int/2addr v8, v11

    const/16 v11, 0x24

    aget v11, v1, v11

    xor-int/2addr v8, v11

    shr-int/lit8 v11, v3, 0x18

    and-int/lit16 v11, v11, 0xff

    aget v11, v6, v11

    shr-int/lit8 v12, v10, 0x10

    and-int/lit16 v12, v12, 0xff

    aget v12, v25, v12

    xor-int/2addr v11, v12

    shr-int/lit8 v12, v0, 0x8

    and-int/lit16 v12, v12, 0xff

    aget v12, v15, v12

    xor-int/2addr v11, v12

    and-int/lit16 v12, v2, 0xff

    aget v12, v14, v12

    xor-int/2addr v11, v12

    const/16 v12, 0x25

    aget v12, v1, v12

    xor-int/2addr v11, v12

    shr-int/lit8 v12, v10, 0x18

    and-int/lit16 v12, v12, 0xff

    aget v12, v6, v12

    shr-int/lit8 v13, v0, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v13, v25, v13

    xor-int/2addr v12, v13

    shr-int/lit8 v13, v2, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v15, v13

    xor-int/2addr v12, v13

    and-int/lit16 v13, v3, 0xff

    aget v13, v14, v13

    xor-int/2addr v12, v13

    const/16 v13, 0x26

    aget v13, v1, v13

    xor-int/2addr v12, v13

    const/16 v13, 0x18

    shr-int/2addr v0, v13

    and-int/lit16 v0, v0, 0xff

    aget v0, v6, v0

    const/16 v6, 0x10

    shr-int/2addr v2, v6

    and-int/lit16 v2, v2, 0xff

    aget v2, v25, v2

    xor-int/2addr v0, v2

    const/16 v2, 0x8

    shr-int/2addr v3, v2

    and-int/lit16 v2, v3, 0xff

    aget v2, v15, v2

    xor-int/2addr v0, v2

    and-int/lit16 v2, v10, 0xff

    aget v2, v14, v2

    xor-int/2addr v0, v2

    const/16 v2, 0x27

    aget v2, v1, v2

    xor-int/2addr v0, v2

    sget-object v2, Lorg/h2/security/AES;->FS:[I

    shr-int/lit8 v3, v8, 0x18

    and-int/lit16 v3, v3, 0xff

    aget v3, v2, v3

    const/16 v6, 0x18

    shl-int/2addr v3, v6

    shr-int/lit8 v6, v11, 0x10

    and-int/lit16 v6, v6, 0xff

    aget v6, v2, v6

    const/16 v10, 0x10

    shl-int/2addr v6, v10

    or-int/2addr v3, v6

    shr-int/lit8 v6, v12, 0x8

    and-int/lit16 v6, v6, 0xff

    aget v6, v2, v6

    const/16 v10, 0x8

    shl-int/2addr v6, v10

    or-int/2addr v3, v6

    and-int/lit16 v6, v0, 0xff

    aget v6, v2, v6

    or-int/2addr v3, v6

    const/16 v6, 0x28

    aget v6, v1, v6

    xor-int/2addr v3, v6

    shr-int/lit8 v6, v11, 0x18

    and-int/lit16 v6, v6, 0xff

    aget v6, v2, v6

    const/16 v10, 0x18

    shl-int/2addr v6, v10

    shr-int/lit8 v10, v12, 0x10

    and-int/lit16 v10, v10, 0xff

    aget v10, v2, v10

    const/16 v13, 0x10

    shl-int/2addr v10, v13

    or-int/2addr v6, v10

    shr-int/lit8 v10, v0, 0x8

    and-int/lit16 v10, v10, 0xff

    aget v10, v2, v10

    const/16 v13, 0x8

    shl-int/2addr v10, v13

    or-int/2addr v6, v10

    and-int/lit16 v10, v8, 0xff

    aget v10, v2, v10

    or-int/2addr v6, v10

    const/16 v10, 0x29

    aget v10, v1, v10

    xor-int/2addr v6, v10

    shr-int/lit8 v10, v12, 0x18

    and-int/lit16 v10, v10, 0xff

    aget v10, v2, v10

    const/16 v13, 0x18

    shl-int/2addr v10, v13

    shr-int/lit8 v13, v0, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v13, v2, v13

    const/16 v14, 0x10

    shl-int/2addr v13, v14

    or-int/2addr v10, v13

    shr-int/lit8 v13, v8, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v13, v2, v13

    const/16 v14, 0x8

    shl-int/2addr v13, v14

    or-int/2addr v10, v13

    and-int/lit16 v13, v11, 0xff

    aget v13, v2, v13

    or-int/2addr v10, v13

    const/16 v13, 0x2a

    aget v13, v1, v13

    xor-int/2addr v10, v13

    const/16 v13, 0x18

    shr-int/2addr v0, v13

    and-int/lit16 v0, v0, 0xff

    aget v0, v2, v0

    shl-int/2addr v0, v13

    const/16 v13, 0x10

    shr-int/2addr v8, v13

    and-int/lit16 v8, v8, 0xff

    aget v8, v2, v8

    shl-int/2addr v8, v13

    or-int/2addr v0, v8

    const/16 v8, 0x8

    shr-int/2addr v11, v8

    and-int/lit16 v11, v11, 0xff

    aget v11, v2, v11

    shl-int/lit8 v8, v11, 0x8

    or-int/2addr v0, v8

    and-int/lit16 v8, v12, 0xff

    aget v2, v2, v8

    or-int/2addr v0, v2

    const/16 v2, 0x2b

    aget v1, v1, v2

    xor-int/2addr v0, v1

    shr-int/lit8 v1, v3, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    shr-int/lit8 v1, v3, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v4

    shr-int/lit8 v1, v3, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v5

    int-to-byte v1, v3

    aput-byte v1, p2, v7

    shr-int/lit8 v1, v6, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v9

    shr-int/lit8 v1, v6, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v30

    shr-int/lit8 v1, v6, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v29

    int-to-byte v1, v6

    aput-byte v1, p2, v28

    shr-int/lit8 v1, v10, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v27

    shr-int/lit8 v1, v10, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v16

    shr-int/lit8 v1, v10, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v26

    int-to-byte v1, v10

    aput-byte v1, p2, v23

    shr-int/lit8 v1, v0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v22

    shr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v21

    shr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v20

    int-to-byte v0, v0

    aput-byte v0, p2, v24

    return-void
.end method

.method private static getDec(I)I
    .locals 4

    sget-object v0, Lorg/h2/security/AES;->RT0:[I

    sget-object v1, Lorg/h2/security/AES;->FS:[I

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    aget v2, v1, v2

    aget v0, v0, v2

    sget-object v2, Lorg/h2/security/AES;->RT1:[I

    shr-int/lit8 v3, p0, 0x10

    and-int/lit16 v3, v3, 0xff

    aget v3, v1, v3

    aget v2, v2, v3

    xor-int/2addr v0, v2

    sget-object v2, Lorg/h2/security/AES;->RT2:[I

    shr-int/lit8 v3, p0, 0x8

    and-int/lit16 v3, v3, 0xff

    aget v3, v1, v3

    aget v2, v2, v3

    xor-int/2addr v0, v2

    sget-object v2, Lorg/h2/security/AES;->RT3:[I

    and-int/lit16 p0, p0, 0xff

    aget p0, v1, p0

    aget p0, v2, p0

    xor-int/2addr p0, v0

    return p0
.end method

.method private static mul([I[III)I
    .locals 0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    aget p2, p1, p2

    aget p1, p1, p3

    add-int/2addr p2, p1

    rem-int/lit16 p2, p2, 0xff

    aget p0, p0, p2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static rot8(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x8

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method private static xtime(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/16 p0, 0x1b

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, v0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method


# virtual methods
.method public decrypt([BII)V
    .locals 2

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    invoke-direct {p0, p1, p1, v0}, Lorg/h2/security/AES;->decryptBlock([B[BI)V

    add-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_0
    return-void
.end method

.method public encrypt([BII)V
    .locals 2

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    invoke-direct {p0, p1, p1, v0}, Lorg/h2/security/AES;->encryptBlock([B[BI)V

    add-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getKeyLength()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public setKey([B)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_0

    iget-object v4, p0, Lorg/h2/security/AES;->encKey:[I

    iget-object v5, p0, Lorg/h2/security/AES;->decKey:[I

    add-int/lit8 v6, v2, 0x1

    aget-byte v7, p1, v2

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    add-int/lit8 v8, v2, 0x2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v6, v7

    add-int/lit8 v7, v2, 0x3

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v6, v8

    add-int/2addr v2, v3

    aget-byte v3, p1, v7

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v6

    aput v3, v5, v1

    aput v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0xa

    if-ge p1, v2, :cond_1

    iget-object v2, p0, Lorg/h2/security/AES;->encKey:[I

    add-int/lit8 v4, v1, 0x4

    aget v5, v2, v1

    sget-object v6, Lorg/h2/security/AES;->RCON:[I

    aget v6, v6, p1

    xor-int/2addr v5, v6

    sget-object v6, Lorg/h2/security/AES;->FS:[I

    add-int/lit8 v7, v1, 0x3

    aget v8, v2, v7

    shr-int/lit8 v9, v8, 0x10

    and-int/lit16 v9, v9, 0xff

    aget v9, v6, v9

    shl-int/lit8 v9, v9, 0x18

    xor-int/2addr v5, v9

    shr-int/lit8 v9, v8, 0x8

    and-int/lit16 v9, v9, 0xff

    aget v9, v6, v9

    shl-int/lit8 v9, v9, 0x10

    xor-int/2addr v5, v9

    and-int/lit16 v9, v8, 0xff

    aget v9, v6, v9

    shl-int/lit8 v9, v9, 0x8

    xor-int/2addr v5, v9

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    aget v6, v6, v8

    xor-int/2addr v5, v6

    aput v5, v2, v4

    add-int/lit8 v6, v1, 0x5

    add-int/lit8 v8, v1, 0x1

    aget v8, v2, v8

    xor-int/2addr v5, v8

    aput v5, v2, v6

    add-int/lit8 v6, v1, 0x6

    add-int/lit8 v8, v1, 0x2

    aget v8, v2, v8

    xor-int/2addr v5, v8

    aput v5, v2, v6

    add-int/lit8 v1, v1, 0x7

    aget v6, v2, v7

    xor-int/2addr v5, v6

    aput v5, v2, v1

    add-int/lit8 p1, p1, 0x1

    move v1, v4

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/h2/security/AES;->decKey:[I

    iget-object v4, p0, Lorg/h2/security/AES;->encKey:[I

    add-int/lit8 v5, v1, 0x1

    aget v6, v4, v1

    aput v6, p1, v0

    add-int/lit8 v0, v1, 0x2

    aget v5, v4, v5

    const/4 v6, 0x1

    aput v5, p1, v6

    add-int/lit8 v5, v1, 0x3

    aget v0, v4, v0

    const/4 v7, 0x2

    aput v0, p1, v7

    add-int/2addr v1, v3

    aget v0, v4, v5

    const/4 v4, 0x3

    aput v0, p1, v4

    :goto_2
    add-int/lit8 p1, v1, -0x8

    iget-object v0, p0, Lorg/h2/security/AES;->decKey:[I

    if-ge v6, v2, :cond_2

    add-int/lit8 v5, v3, 0x1

    iget-object v7, p0, Lorg/h2/security/AES;->encKey:[I

    add-int/lit8 v8, v1, -0x7

    aget p1, v7, p1

    invoke-static {p1}, Lorg/h2/security/AES;->getDec(I)I

    move-result p1

    aput p1, v0, v3

    iget-object p1, p0, Lorg/h2/security/AES;->decKey:[I

    add-int/lit8 v0, v3, 0x2

    iget-object v7, p0, Lorg/h2/security/AES;->encKey:[I

    add-int/lit8 v9, v1, -0x6

    aget v7, v7, v8

    invoke-static {v7}, Lorg/h2/security/AES;->getDec(I)I

    move-result v7

    aput v7, p1, v5

    iget-object p1, p0, Lorg/h2/security/AES;->decKey:[I

    add-int/lit8 v5, v3, 0x3

    iget-object v7, p0, Lorg/h2/security/AES;->encKey:[I

    add-int/lit8 v8, v1, -0x5

    aget v7, v7, v9

    invoke-static {v7}, Lorg/h2/security/AES;->getDec(I)I

    move-result v7

    aput v7, p1, v0

    iget-object p1, p0, Lorg/h2/security/AES;->decKey:[I

    add-int/lit8 v3, v3, 0x4

    iget-object v0, p0, Lorg/h2/security/AES;->encKey:[I

    add-int/lit8 v1, v1, -0x4

    aget v0, v0, v8

    invoke-static {v0}, Lorg/h2/security/AES;->getDec(I)I

    move-result v0

    aput v0, p1, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v3, 0x1

    iget-object v5, p0, Lorg/h2/security/AES;->encKey:[I

    add-int/lit8 v6, v1, -0x7

    aget p1, v5, p1

    aput p1, v0, v3

    add-int/lit8 p1, v3, 0x2

    add-int/lit8 v7, v1, -0x6

    aget v6, v5, v6

    aput v6, v0, v2

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, -0x5

    aget v2, v5, v7

    aput v2, v0, p1

    aget p1, v5, v1

    aput p1, v0, v3

    return-void
.end method
