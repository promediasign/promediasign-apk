.class public abstract Lsk/mimac/slideshow/utils/HashBase64;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final base64Alphabet:[B

.field private static final lookUpBase64Alphabet:[B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v0, 0xff

    new-array v1, v0, [B

    sput-object v1, Lsk/mimac/slideshow/utils/HashBase64;->base64Alphabet:[B

    const/16 v1, 0x40

    new-array v1, v1, [B

    sput-object v1, Lsk/mimac/slideshow/utils/HashBase64;->lookUpBase64Alphabet:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    sget-object v3, Lsk/mimac/slideshow/utils/HashBase64;->base64Alphabet:[B

    const/4 v4, -0x1

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x5a

    :goto_1
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    sget-object v2, Lsk/mimac/slideshow/utils/HashBase64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x7a

    :goto_2
    const/16 v2, 0x61

    if-lt v0, v2, :cond_2

    sget-object v2, Lsk/mimac/slideshow/utils/HashBase64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x47

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    const/16 v0, 0x39

    :goto_3
    const/16 v2, 0x30

    if-lt v0, v2, :cond_3

    sget-object v2, Lsk/mimac/slideshow/utils/HashBase64;->base64Alphabet:[B

    add-int/lit8 v3, v0, 0x4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_3
    sget-object v0, Lsk/mimac/slideshow/utils/HashBase64;->base64Alphabet:[B

    const/16 v2, 0x2d

    const/16 v3, 0x3e

    aput-byte v3, v0, v2

    const/16 v4, 0x5f

    const/16 v5, 0x3f

    aput-byte v5, v0, v4

    const/4 v0, 0x0

    :goto_4
    const/16 v6, 0x19

    if-gt v0, v6, :cond_4

    sget-object v6, Lsk/mimac/slideshow/utils/HashBase64;->lookUpBase64Alphabet:[B

    add-int/lit8 v7, v0, 0x41

    int-to-byte v7, v7

    aput-byte v7, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    const/16 v0, 0x1a

    const/4 v6, 0x0

    :goto_5
    const/16 v7, 0x33

    if-gt v0, v7, :cond_5

    sget-object v7, Lsk/mimac/slideshow/utils/HashBase64;->lookUpBase64Alphabet:[B

    add-int/lit8 v8, v6, 0x61

    int-to-byte v8, v8

    aput-byte v8, v7, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_5
    const/16 v0, 0x34

    :goto_6
    const/16 v6, 0x3d

    if-gt v0, v6, :cond_6

    sget-object v6, Lsk/mimac/slideshow/utils/HashBase64;->lookUpBase64Alphabet:[B

    add-int/lit8 v7, v1, 0x30

    int-to-byte v7, v7

    aput-byte v7, v6, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_6
    sget-object v0, Lsk/mimac/slideshow/utils/HashBase64;->lookUpBase64Alphabet:[B

    aput-byte v2, v0, v3

    aput-byte v4, v0, v5

    return-void
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 10

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [B

    return-object p0

    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    array-length v2, p0

    sub-int/2addr v2, v0

    new-array v2, v2, [B

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    mul-int/lit8 v4, v1, 0x4

    sget-object v5, Lsk/mimac/slideshow/utils/HashBase64;->base64Alphabet:[B

    aget-byte v6, p0, v4

    aget-byte v6, v5, v6

    add-int/lit8 v7, v4, 0x1

    aget-byte v7, p0, v7

    aget-byte v7, v5, v7

    array-length v8, p0

    add-int/lit8 v9, v4, 0x3

    if-le v8, v9, :cond_1

    add-int/lit8 v4, v4, 0x2

    aget-byte v4, p0, v4

    aget-byte v4, v5, v4

    aget-byte v8, p0, v9

    aget-byte v5, v5, v8

    shl-int/lit8 v6, v6, 0x2

    shr-int/lit8 v8, v7, 0x4

    or-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, v2, v3

    add-int/lit8 v6, v3, 0x1

    and-int/lit8 v7, v7, 0xf

    shl-int/lit8 v7, v7, 0x4

    shr-int/lit8 v8, v4, 0x2

    and-int/lit8 v8, v8, 0xf

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v2, v6

    add-int/lit8 v6, v3, 0x2

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v6

    goto :goto_1

    :cond_1
    array-length v8, p0

    add-int/lit8 v4, v4, 0x2

    if-gt v8, v4, :cond_2

    shl-int/lit8 v4, v6, 0x2

    shr-int/lit8 v5, v7, 0x4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    goto :goto_1

    :cond_2
    array-length v8, p0

    if-gt v8, v9, :cond_3

    aget-byte v4, p0, v4

    aget-byte v4, v5, v4

    shl-int/lit8 v5, v6, 0x2

    shr-int/lit8 v6, v7, 0x4

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    add-int/lit8 v5, v3, 0x1

    and-int/lit8 v6, v7, 0xf

    shl-int/lit8 v6, v6, 0x4

    shr-int/lit8 v4, v4, 0x2

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v2, v5

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method public static encodeBase64([B)Ljava/lang/String;
    .locals 13

    array-length v0, p0

    const/16 v1, 0x8

    mul-int/lit8 v0, v0, 0x8

    rem-int/lit8 v2, v0, 0x18

    div-int/lit8 v0, v0, 0x18

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    mul-int/lit8 v6, v4, 0x3

    aget-byte v7, p0, v6

    add-int/lit8 v8, v6, 0x1

    aget-byte v8, p0, v8

    add-int/lit8 v6, v6, 0x2

    aget-byte v6, p0, v6

    and-int/lit8 v9, v8, 0xf

    int-to-byte v9, v9

    and-int/lit8 v10, v7, 0x3

    int-to-byte v10, v10

    and-int/lit8 v11, v7, -0x80

    shr-int/lit8 v7, v7, 0x2

    if-nez v11, :cond_0

    :goto_1
    int-to-byte v7, v7

    goto :goto_2

    :cond_0
    xor-int/lit16 v7, v7, 0xc0

    goto :goto_1

    :goto_2
    and-int/lit8 v11, v8, -0x80

    shr-int/lit8 v8, v8, 0x4

    if-nez v11, :cond_1

    :goto_3
    int-to-byte v8, v8

    goto :goto_4

    :cond_1
    xor-int/lit16 v8, v8, 0xf0

    goto :goto_3

    :goto_4
    and-int/lit8 v11, v6, -0x80

    if-nez v11, :cond_2

    shr-int/lit8 v11, v6, 0x6

    :goto_5
    int-to-byte v11, v11

    goto :goto_6

    :cond_2
    shr-int/lit8 v11, v6, 0x6

    xor-int/lit16 v11, v11, 0xfc

    goto :goto_5

    :goto_6
    sget-object v12, Lsk/mimac/slideshow/utils/HashBase64;->lookUpBase64Alphabet:[B

    aget-byte v7, v12, v7

    aput-byte v7, v3, v5

    add-int/lit8 v7, v5, 0x1

    shl-int/lit8 v10, v10, 0x4

    or-int/2addr v8, v10

    aget-byte v8, v12, v8

    aput-byte v8, v3, v7

    add-int/lit8 v7, v5, 0x2

    shl-int/lit8 v8, v9, 0x2

    or-int/2addr v8, v11

    aget-byte v8, v12, v8

    aput-byte v8, v3, v7

    add-int/lit8 v7, v5, 0x3

    and-int/lit8 v6, v6, 0x3f

    aget-byte v6, v12, v6

    aput-byte v6, v3, v7

    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    mul-int/lit8 v4, v4, 0x3

    if-ne v2, v1, :cond_5

    aget-byte p0, p0, v4

    and-int/lit8 v0, p0, 0x3

    int-to-byte v0, v0

    and-int/lit8 v1, p0, -0x80

    shr-int/lit8 p0, p0, 0x2

    if-nez v1, :cond_4

    :goto_7
    int-to-byte p0, p0

    goto :goto_8

    :cond_4
    xor-int/lit16 p0, p0, 0xc0

    goto :goto_7

    :goto_8
    sget-object v1, Lsk/mimac/slideshow/utils/HashBase64;->lookUpBase64Alphabet:[B

    aget-byte p0, v1, p0

    aput-byte p0, v3, v5

    add-int/lit8 v5, v5, 0x1

    shl-int/lit8 p0, v0, 0x4

    aget-byte p0, v1, p0

    aput-byte p0, v3, v5

    goto :goto_d

    :cond_5
    const/16 v0, 0x10

    if-ne v2, v0, :cond_8

    aget-byte v0, p0, v4

    add-int/lit8 v4, v4, 0x1

    aget-byte p0, p0, v4

    and-int/lit8 v1, p0, 0xf

    int-to-byte v1, v1

    and-int/lit8 v2, v0, 0x3

    int-to-byte v2, v2

    and-int/lit8 v4, v0, -0x80

    shr-int/lit8 v0, v0, 0x2

    if-nez v4, :cond_6

    :goto_9
    int-to-byte v0, v0

    goto :goto_a

    :cond_6
    xor-int/lit16 v0, v0, 0xc0

    goto :goto_9

    :goto_a
    and-int/lit8 v4, p0, -0x80

    shr-int/lit8 p0, p0, 0x4

    if-nez v4, :cond_7

    :goto_b
    int-to-byte p0, p0

    goto :goto_c

    :cond_7
    xor-int/lit16 p0, p0, 0xf0

    goto :goto_b

    :goto_c
    sget-object v4, Lsk/mimac/slideshow/utils/HashBase64;->lookUpBase64Alphabet:[B

    aget-byte v0, v4, v0

    aput-byte v0, v3, v5

    add-int/lit8 v0, v5, 0x1

    shl-int/lit8 v2, v2, 0x4

    or-int/2addr p0, v2

    aget-byte p0, v4, p0

    aput-byte p0, v3, v0

    add-int/lit8 v5, v5, 0x2

    shl-int/lit8 p0, v1, 0x2

    aget-byte p0, v4, p0

    aput-byte p0, v3, v5

    :cond_8
    :goto_d
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([B)V

    return-object p0
.end method
