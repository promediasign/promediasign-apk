.class public abstract Lcom/hivemq/client/internal/util/Utf8Util;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static encodedLength(Ljava/lang/String;)I
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7f

    if-le v3, v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x7ff

    if-le v3, v5, :cond_0

    add-int/lit8 v2, v2, 0x2

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v2, v4

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static isWellFormed([B)J
    .locals 12

    array-length v0, p0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-lt v1, v0, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1
    add-int/lit8 v2, v1, 0x1

    aget-byte v3, p0, v1

    if-gez v3, :cond_11

    const/16 v4, -0x20

    const-wide/high16 v5, -0x8000000000000000L

    const/16 v7, -0x41

    const-wide/high16 v8, -0x4000000000000000L    # -2.0

    if-ge v3, v4, :cond_4

    if-ne v2, v0, :cond_2

    int-to-long v0, v2

    add-long/2addr v0, v8

    return-wide v0

    :cond_2
    const/16 v4, -0x3e

    if-ge v3, v4, :cond_3

    int-to-long v0, v2

    add-long/2addr v0, v5

    return-wide v0

    :cond_3
    add-int/lit8 v1, v1, 0x2

    aget-byte v2, p0, v2

    if-le v2, v7, :cond_0

    int-to-long v0, v1

    add-long/2addr v0, v8

    return-wide v0

    :cond_4
    const/16 v10, -0x10

    if-ge v3, v10, :cond_9

    add-int/lit8 v10, v1, 0x2

    if-lt v10, v0, :cond_5

    int-to-long v0, v2

    add-long/2addr v0, v8

    return-wide v0

    :cond_5
    aget-byte v2, p0, v2

    if-le v2, v7, :cond_6

    int-to-long v0, v10

    add-long/2addr v0, v8

    return-wide v0

    :cond_6
    const/16 v11, -0x60

    if-ne v3, v4, :cond_7

    if-ge v2, v11, :cond_7

    int-to-long v0, v10

    add-long/2addr v0, v5

    return-wide v0

    :cond_7
    const/16 v4, -0x13

    if-ne v3, v4, :cond_8

    if-lt v2, v11, :cond_8

    int-to-long v0, v10

    const-wide/high16 v2, -0x2000000000000000L    # -2.6815615859885194E154

    add-long/2addr v0, v2

    return-wide v0

    :cond_8
    add-int/lit8 v1, v1, 0x3

    aget-byte v2, p0, v10

    if-le v2, v7, :cond_0

    int-to-long v0, v1

    add-long/2addr v0, v8

    return-wide v0

    :cond_9
    add-int/lit8 v4, v1, 0x3

    if-lt v4, v0, :cond_a

    int-to-long v0, v2

    add-long/2addr v0, v8

    return-wide v0

    :cond_a
    add-int/lit8 v4, v1, 0x2

    aget-byte v2, p0, v2

    if-le v2, v7, :cond_b

    int-to-long v0, v4

    add-long/2addr v0, v8

    return-wide v0

    :cond_b
    if-ne v3, v10, :cond_c

    const/16 v10, -0x70

    if-ge v2, v10, :cond_c

    int-to-long v0, v4

    add-long/2addr v0, v5

    return-wide v0

    :cond_c
    const/16 v5, -0xc

    if-ne v3, v5, :cond_d

    const/16 v6, -0x71

    if-gt v2, v6, :cond_e

    :cond_d
    if-le v3, v5, :cond_f

    :cond_e
    int-to-long v0, v4

    const-wide/high16 v2, -0x1000000000000000L    # -3.105036184601418E231

    add-long/2addr v0, v2

    return-wide v0

    :cond_f
    add-int/lit8 v2, v1, 0x3

    aget-byte v3, p0, v4

    if-le v3, v7, :cond_10

    int-to-long v0, v2

    add-long/2addr v0, v8

    return-wide v0

    :cond_10
    add-int/lit8 v1, v1, 0x4

    aget-byte v2, p0, v2

    if-le v2, v7, :cond_0

    int-to-long v0, v1

    add-long/2addr v0, v8

    return-wide v0

    :cond_11
    move v1, v2

    goto/16 :goto_0
.end method
