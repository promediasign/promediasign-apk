.class public abstract Lio/milton/dns/utils/base64;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static fromString(Ljava/lang/String;)[B
    .locals 16

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    aget-byte v4, v1, v3

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_0

    aget-byte v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x4

    rem-int/2addr v3, v4

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    return-object v5

    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v6, 0x0

    :goto_1
    array-length v7, v1

    const/4 v8, 0x3

    add-int/2addr v7, v8

    div-int/2addr v7, v4

    if-ge v6, v7, :cond_9

    new-array v7, v4, [S

    new-array v9, v8, [S

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v4, :cond_3

    mul-int/lit8 v11, v6, 0x4

    add-int/2addr v11, v10

    aget-byte v11, v1, v11

    const-string v12, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    invoke-virtual {v12, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    int-to-short v11, v11

    aput-short v11, v7, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    aget-short v10, v7, v2

    const/4 v11, 0x2

    shl-int/2addr v10, v11

    const/4 v12, 0x1

    aget-short v13, v7, v12

    shr-int/lit8 v14, v13, 0x4

    add-int/2addr v10, v14

    int-to-short v10, v10

    aput-short v10, v9, v2

    aget-short v10, v7, v11

    const/4 v14, -0x1

    const/16 v15, 0x40

    if-ne v10, v15, :cond_4

    aput-short v14, v9, v11

    aput-short v14, v9, v12

    aget-short v7, v7, v12

    and-int/lit8 v7, v7, 0xf

    if-eqz v7, :cond_6

    return-object v5

    :cond_4
    aget-short v2, v7, v8

    if-ne v2, v15, :cond_5

    shl-int/lit8 v2, v13, 0x4

    shr-int/lit8 v10, v10, 0x2

    add-int/2addr v2, v10

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    aput-short v2, v9, v12

    aput-short v14, v9, v11

    aget-short v2, v7, v11

    and-int/2addr v2, v8

    if-eqz v2, :cond_6

    return-object v5

    :cond_5
    shl-int/lit8 v7, v13, 0x4

    shr-int/lit8 v13, v10, 0x2

    add-int/2addr v7, v13

    and-int/lit16 v7, v7, 0xff

    int-to-short v7, v7

    aput-short v7, v9, v12

    shl-int/lit8 v7, v10, 0x6

    add-int/2addr v7, v2

    and-int/lit16 v2, v7, 0xff

    int-to-short v2, v2

    aput-short v2, v9, v11

    :cond_6
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v8, :cond_8

    :try_start_0
    aget-short v7, v9, v2

    if-ltz v7, :cond_7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_0
    :cond_8
    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x0

    goto :goto_1

    :cond_9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 12

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    const/4 v4, 0x2

    add-int/2addr v3, v4

    const/4 v5, 0x3

    div-int/2addr v3, v5

    if-ge v2, v3, :cond_6

    new-array v3, v5, [S

    const/4 v6, 0x4

    new-array v7, v6, [S

    const/4 v8, 0x0

    :goto_1
    const/4 v9, -0x1

    if-ge v8, v5, :cond_1

    mul-int/lit8 v10, v2, 0x3

    add-int/2addr v10, v8

    array-length v11, p0

    if-ge v10, v11, :cond_0

    aget-byte v9, p0, v10

    and-int/lit16 v9, v9, 0xff

    int-to-short v9, v9

    aput-short v9, v3, v8

    goto :goto_2

    :cond_0
    aput-short v9, v3, v8

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    aget-short v8, v3, v1

    shr-int/2addr v8, v4

    int-to-short v8, v8

    aput-short v8, v7, v1

    const/4 v8, 0x1

    aget-short v10, v3, v8

    if-ne v10, v9, :cond_2

    aget-short v10, v3, v1

    and-int/2addr v10, v5

    shl-int/2addr v10, v6

    int-to-short v10, v10

    aput-short v10, v7, v8

    goto :goto_3

    :cond_2
    aget-short v11, v3, v1

    and-int/2addr v11, v5

    shl-int/2addr v11, v6

    shr-int/lit8 v10, v10, 0x4

    add-int/2addr v11, v10

    int-to-short v10, v11

    aput-short v10, v7, v8

    :goto_3
    aget-short v8, v3, v8

    const/16 v10, 0x40

    if-ne v8, v9, :cond_3

    aput-short v10, v7, v5

    aput-short v10, v7, v4

    goto :goto_4

    :cond_3
    aget-short v11, v3, v4

    if-ne v11, v9, :cond_4

    and-int/lit8 v3, v8, 0xf

    shl-int/2addr v3, v4

    int-to-short v3, v3

    aput-short v3, v7, v4

    aput-short v10, v7, v5

    goto :goto_4

    :cond_4
    and-int/lit8 v8, v8, 0xf

    shl-int/2addr v8, v4

    shr-int/lit8 v9, v11, 0x6

    add-int/2addr v8, v9

    int-to-short v8, v8

    aput-short v8, v7, v4

    aget-short v3, v3, v4

    and-int/lit8 v3, v3, 0x3f

    int-to-short v3, v3

    aput-short v3, v7, v5

    :goto_4
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v6, :cond_5

    const-string v4, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    aget-short v5, v7, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    return-object p0
.end method
