.class public Lorg/h2/security/Fog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/h2/security/BlockCipher;


# instance fields
.field private key:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private decryptBlock([B[BI)V
    .locals 24

    aget-byte v0, p1, p3

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p3, 0x1

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    add-int/lit8 v2, p3, 0x2

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    add-int/lit8 v3, p3, 0x3

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v0, v4

    add-int/lit8 v4, p3, 0x4

    aget-byte v5, p1, v4

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v6, p3, 0x5

    aget-byte v7, p1, v6

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v5, v7

    add-int/lit8 v7, p3, 0x6

    aget-byte v8, p1, v7

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v5, v8

    add-int/lit8 v8, p3, 0x7

    aget-byte v9, p1, v8

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v5, v9

    add-int/lit8 v9, p3, 0x8

    aget-byte v10, p1, v9

    shl-int/lit8 v10, v10, 0x18

    add-int/lit8 v11, p3, 0x9

    aget-byte v12, p1, v11

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v10, v12

    add-int/lit8 v12, p3, 0xa

    aget-byte v13, p1, v12

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v10, v13

    add-int/lit8 v13, p3, 0xb

    aget-byte v14, p1, v13

    and-int/lit16 v14, v14, 0xff

    or-int/2addr v10, v14

    add-int/lit8 v14, p3, 0xc

    aget-byte v15, p1, v14

    shl-int/lit8 v15, v15, 0x18

    add-int/lit8 v16, p3, 0xd

    move/from16 v17, v14

    aget-byte v14, p1, v16

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x10

    or-int/2addr v14, v15

    add-int/lit8 v15, p3, 0xe

    move/from16 v18, v13

    aget-byte v13, p1, v15

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v13, v14

    add-int/lit8 v14, p3, 0xf

    move/from16 v19, v15

    aget-byte v15, p1, v14

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v13, v15

    move-object/from16 v15, p0

    move/from16 v20, v14

    iget v14, v15, Lorg/h2/security/Fog;->key:I

    and-int/lit8 v21, v0, 0x1f

    rsub-int/lit8 v21, v21, 0x20

    shl-int v22, v5, v21

    rsub-int/lit8 v23, v21, 0x20

    ushr-int v5, v5, v23

    or-int v5, v22, v5

    xor-int/2addr v5, v14

    shl-int v21, v13, v21

    ushr-int v13, v13, v23

    or-int v13, v21, v13

    xor-int/2addr v13, v14

    and-int/lit8 v21, v5, 0x1f

    rsub-int/lit8 v21, v21, 0x20

    shl-int v22, v0, v21

    rsub-int/lit8 v23, v21, 0x20

    ushr-int v0, v0, v23

    or-int v0, v22, v0

    xor-int/2addr v0, v14

    shl-int v21, v10, v21

    ushr-int v10, v10, v23

    or-int v10, v21, v10

    xor-int/2addr v10, v14

    shr-int/lit8 v14, v0, 0x18

    int-to-byte v14, v14

    aput-byte v14, p2, p3

    shr-int/lit8 v14, v0, 0x10

    int-to-byte v14, v14

    aput-byte v14, p2, v1

    shr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v2

    int-to-byte v0, v0

    aput-byte v0, p2, v3

    shr-int/lit8 v0, v5, 0x18

    int-to-byte v0, v0

    aput-byte v0, p2, v4

    shr-int/lit8 v0, v5, 0x10

    int-to-byte v0, v0

    aput-byte v0, p2, v6

    shr-int/lit8 v0, v5, 0x8

    int-to-byte v0, v0

    aput-byte v0, p2, v7

    int-to-byte v0, v5

    aput-byte v0, p2, v8

    shr-int/lit8 v0, v10, 0x18

    int-to-byte v0, v0

    aput-byte v0, p2, v9

    shr-int/lit8 v0, v10, 0x10

    int-to-byte v0, v0

    aput-byte v0, p2, v11

    shr-int/lit8 v0, v10, 0x8

    int-to-byte v0, v0

    aput-byte v0, p2, v12

    int-to-byte v0, v10

    aput-byte v0, p2, v18

    shr-int/lit8 v0, v13, 0x18

    int-to-byte v0, v0

    aput-byte v0, p2, v17

    shr-int/lit8 v0, v13, 0x10

    int-to-byte v0, v0

    aput-byte v0, p2, v16

    shr-int/lit8 v0, v13, 0x8

    int-to-byte v0, v0

    aput-byte v0, p2, v19

    int-to-byte v0, v13

    aput-byte v0, p2, v20

    return-void
.end method

.method private encryptBlock([B[BI)V
    .locals 24

    aget-byte v0, p1, p3

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p3, 0x1

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    add-int/lit8 v2, p3, 0x2

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    add-int/lit8 v3, p3, 0x3

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v0, v4

    add-int/lit8 v4, p3, 0x4

    aget-byte v5, p1, v4

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v6, p3, 0x5

    aget-byte v7, p1, v6

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v5, v7

    add-int/lit8 v7, p3, 0x6

    aget-byte v8, p1, v7

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v5, v8

    add-int/lit8 v8, p3, 0x7

    aget-byte v9, p1, v8

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v5, v9

    add-int/lit8 v9, p3, 0x8

    aget-byte v10, p1, v9

    shl-int/lit8 v10, v10, 0x18

    add-int/lit8 v11, p3, 0x9

    aget-byte v12, p1, v11

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v10, v12

    add-int/lit8 v12, p3, 0xa

    aget-byte v13, p1, v12

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v10, v13

    add-int/lit8 v13, p3, 0xb

    aget-byte v14, p1, v13

    and-int/lit16 v14, v14, 0xff

    or-int/2addr v10, v14

    add-int/lit8 v14, p3, 0xc

    aget-byte v15, p1, v14

    shl-int/lit8 v15, v15, 0x18

    add-int/lit8 v16, p3, 0xd

    move/from16 v17, v14

    aget-byte v14, p1, v16

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x10

    or-int/2addr v14, v15

    add-int/lit8 v15, p3, 0xe

    move/from16 v18, v13

    aget-byte v13, p1, v15

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v13, v14

    add-int/lit8 v14, p3, 0xf

    move/from16 v19, v15

    aget-byte v15, p1, v14

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v13, v15

    move-object/from16 v15, p0

    move/from16 v20, v14

    iget v14, v15, Lorg/h2/security/Fog;->key:I

    and-int/lit8 v21, v5, 0x1f

    xor-int/2addr v0, v14

    shl-int v22, v0, v21

    rsub-int/lit8 v23, v21, 0x20

    ushr-int v0, v0, v23

    or-int v0, v22, v0

    xor-int/2addr v10, v14

    shl-int v21, v10, v21

    ushr-int v10, v10, v23

    or-int v10, v21, v10

    and-int/lit8 v21, v0, 0x1f

    xor-int/2addr v5, v14

    shl-int v22, v5, v21

    rsub-int/lit8 v23, v21, 0x20

    ushr-int v5, v5, v23

    or-int v5, v22, v5

    xor-int/2addr v13, v14

    shl-int v14, v13, v21

    ushr-int v13, v13, v23

    or-int/2addr v13, v14

    shr-int/lit8 v14, v0, 0x18

    int-to-byte v14, v14

    aput-byte v14, p2, p3

    shr-int/lit8 v14, v0, 0x10

    int-to-byte v14, v14

    aput-byte v14, p2, v1

    shr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v2

    int-to-byte v0, v0

    aput-byte v0, p2, v3

    shr-int/lit8 v0, v5, 0x18

    int-to-byte v0, v0

    aput-byte v0, p2, v4

    shr-int/lit8 v0, v5, 0x10

    int-to-byte v0, v0

    aput-byte v0, p2, v6

    shr-int/lit8 v0, v5, 0x8

    int-to-byte v0, v0

    aput-byte v0, p2, v7

    int-to-byte v0, v5

    aput-byte v0, p2, v8

    shr-int/lit8 v0, v10, 0x18

    int-to-byte v0, v0

    aput-byte v0, p2, v9

    shr-int/lit8 v0, v10, 0x10

    int-to-byte v0, v0

    aput-byte v0, p2, v11

    shr-int/lit8 v0, v10, 0x8

    int-to-byte v0, v0

    aput-byte v0, p2, v12

    int-to-byte v0, v10

    aput-byte v0, p2, v18

    shr-int/lit8 v0, v13, 0x18

    int-to-byte v0, v0

    aput-byte v0, p2, v17

    shr-int/lit8 v0, v13, 0x10

    int-to-byte v0, v0

    aput-byte v0, p2, v16

    shr-int/lit8 v0, v13, 0x8

    int-to-byte v0, v0

    aput-byte v0, p2, v19

    int-to-byte v0, v13

    aput-byte v0, p2, v20

    return-void
.end method


# virtual methods
.method public decrypt([BII)V
    .locals 2

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    invoke-direct {p0, p1, p1, v0}, Lorg/h2/security/Fog;->decryptBlock([B[BI)V

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

    invoke-direct {p0, p1, p1, v0}, Lorg/h2/security/Fog;->encryptBlock([B[BI)V

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
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/h2/util/Utils;->readLong([BI)J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lorg/h2/security/Fog;->key:I

    return-void
.end method
