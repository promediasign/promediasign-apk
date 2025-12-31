.class public abstract Lorg/spongycastle/math/raw/Nat256;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static add([I[I[I)I
    .locals 10

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p2, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    const/4 v5, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x4

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x5

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x6

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x7

    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    add-long/2addr v6, v1

    long-to-int p0, v6

    aput p0, p2, v5

    ushr-long p0, v6, v0

    long-to-int p1, p0

    return p1
.end method

.method public static addBothTo([I[I[I)I
    .locals 10

    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    aget v5, p2, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p2, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    const/4 v5, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x4

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x5

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x6

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x7

    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    aget p0, p2, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    add-long/2addr v6, p0

    add-long/2addr v6, v1

    long-to-int p0, v6

    aput p0, p2, v5

    ushr-long p0, v6, v0

    long-to-int p1, p0

    return p1
.end method

.method public static addTo([II[III)I
    .locals 9

    .line 1
    int-to-long v0, p4

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    aget p4, p0, p1

    int-to-long v4, p4

    and-long/2addr v4, v2

    aget p4, p2, p3

    int-to-long v6, p4

    and-long/2addr v6, v2

    add-long/2addr v4, v6

    add-long/2addr v4, v0

    long-to-int p4, v4

    aput p4, p2, p3

    const/16 p4, 0x20

    ushr-long v0, v4, p4

    add-int/lit8 v4, p1, 0x1

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x1

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v4, v0

    long-to-int v0, v4

    aput v0, p2, v6

    ushr-long v0, v4, p4

    add-int/lit8 v4, p1, 0x2

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x2

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v4, v0

    long-to-int v0, v4

    aput v0, p2, v6

    ushr-long v0, v4, p4

    add-int/lit8 v4, p1, 0x3

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x3

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v4, v0

    long-to-int v0, v4

    aput v0, p2, v6

    ushr-long v0, v4, p4

    add-int/lit8 v4, p1, 0x4

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x4

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v4, v0

    long-to-int v0, v4

    aput v0, p2, v6

    ushr-long v0, v4, p4

    add-int/lit8 v4, p1, 0x5

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x5

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v4, v0

    long-to-int v0, v4

    aput v0, p2, v6

    ushr-long v0, v4, p4

    add-int/lit8 v4, p1, 0x6

    aget v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x6

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    add-long/2addr v4, v7

    add-long/2addr v4, v0

    long-to-int v0, v4

    aput v0, p2, v6

    ushr-long v0, v4, p4

    add-int/lit8 p1, p1, 0x7

    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    add-int/lit8 p3, p3, 0x7

    aget v4, p2, p3

    int-to-long v4, v4

    and-long/2addr v2, v4

    add-long/2addr p0, v2

    add-long/2addr p0, v0

    long-to-int v0, p0

    aput v0, p2, p3

    ushr-long/2addr p0, p4

    long-to-int p1, p0

    return p1
.end method

.method public static addTo([I[I)I
    .locals 10

    .line 2
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p1, v0

    const/16 v0, 0x20

    ushr-long/2addr v1, v0

    const/4 v5, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p1, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p1, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p1, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x4

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p1, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x5

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p1, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x6

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p1, v5

    ushr-long v1, v6, v0

    const/4 v5, 0x7

    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long v8, p0

    and-long/2addr v3, v8

    add-long/2addr v6, v3

    add-long/2addr v6, v1

    long-to-int p0, v6

    aput p0, p1, v5

    ushr-long p0, v6, v0

    long-to-int p1, p0

    return p1
.end method

.method public static addToEachOther([II[II)I
    .locals 11

    aget v0, p0, p1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    aget v4, p2, p3

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-long/2addr v0, v4

    long-to-int v4, v0

    aput v4, p0, p1

    aput v4, p2, p3

    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-int/lit8 v8, p3, 0x1

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v6, v0

    long-to-int v0, v6

    aput v0, p0, v5

    aput v0, p2, v8

    ushr-long v0, v6, v4

    add-int/lit8 v5, p1, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-int/lit8 v8, p3, 0x2

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v6, v0

    long-to-int v0, v6

    aput v0, p0, v5

    aput v0, p2, v8

    ushr-long v0, v6, v4

    add-int/lit8 v5, p1, 0x3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-int/lit8 v8, p3, 0x3

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v6, v0

    long-to-int v0, v6

    aput v0, p0, v5

    aput v0, p2, v8

    ushr-long v0, v6, v4

    add-int/lit8 v5, p1, 0x4

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-int/lit8 v8, p3, 0x4

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v6, v0

    long-to-int v0, v6

    aput v0, p0, v5

    aput v0, p2, v8

    ushr-long v0, v6, v4

    add-int/lit8 v5, p1, 0x5

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-int/lit8 v8, p3, 0x5

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v6, v0

    long-to-int v0, v6

    aput v0, p0, v5

    aput v0, p2, v8

    ushr-long v0, v6, v4

    add-int/lit8 v5, p1, 0x6

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-int/lit8 v8, p3, 0x6

    aget v9, p2, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v6, v0

    long-to-int v0, v6

    aput v0, p0, v5

    aput v0, p2, v8

    ushr-long v0, v6, v4

    add-int/lit8 p1, p1, 0x7

    aget v5, p0, p1

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 p3, p3, 0x7

    aget v7, p2, p3

    int-to-long v7, v7

    and-long/2addr v2, v7

    add-long/2addr v5, v2

    add-long/2addr v5, v0

    long-to-int v0, v5

    aput v0, p0, p1

    aput v0, p2, p3

    ushr-long p0, v5, v4

    long-to-int p1, p0

    return p1
.end method

.method public static create()[I
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    return-object v0
.end method

.method public static create64()[J
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [J

    return-object v0
.end method

.method public static createExt()[I
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [I

    return-object v0
.end method

.method public static createExt64()[J
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [J

    return-object v0
.end method

.method public static diff([II[II[II)Z
    .locals 7

    invoke-static {p0, p1, p2, p3}, Lorg/spongycastle/math/raw/Nat256;->gte([II[II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static/range {p0 .. p5}, Lorg/spongycastle/math/raw/Nat256;->sub([II[II[II)I

    goto :goto_0

    :cond_0
    move-object v1, p2

    move v2, p3

    move-object v3, p0

    move v4, p1

    move-object v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lorg/spongycastle/math/raw/Nat256;->sub([II[II[II)I

    :goto_0
    return v0
.end method

.method public static eq([I[I)Z
    .locals 3

    const/4 v0, 0x7

    :goto_0
    if-ltz v0, :cond_1

    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static eq64([J[J)Z
    .locals 6

    const/4 v0, 0x3

    :goto_0
    if-ltz v0, :cond_1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 4

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x100

    if-gt v0, v1, :cond_1

    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    aput v3, v0, v1

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static fromBigInteger64(Ljava/math/BigInteger;)[J
    .locals 5

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x100

    if-gt v0, v1, :cond_1

    invoke-static {}, Lorg/spongycastle/math/raw/Nat256;->create64()[J

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    aput-wide v3, v0, v1

    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static getBit([II)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    aget p0, p0, v0

    :goto_0
    and-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v1, p1, 0xff

    if-eq v1, p1, :cond_1

    return v0

    :cond_1
    ushr-int/lit8 v0, p1, 0x5

    and-int/lit8 p1, p1, 0x1f

    aget p0, p0, v0

    ushr-int/2addr p0, p1

    goto :goto_0
.end method

.method public static gte([II[II)Z
    .locals 5

    .line 1
    const/4 v0, 0x7

    :goto_0
    const/4 v1, 0x1

    if-ltz v0, :cond_2

    add-int v2, p1, v0

    aget v2, p0, v2

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    add-int v4, p3, v0

    aget v4, p2, v4

    xor-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-le v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static gte([I[I)Z
    .locals 5

    .line 2
    const/4 v0, 0x7

    :goto_0
    const/4 v1, 0x1

    if-ltz v0, :cond_2

    aget v2, p0, v0

    const/high16 v3, -0x80000000

    xor-int/2addr v2, v3

    aget v4, p1, v0

    xor-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-le v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static isOne([I)Z
    .locals 4

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const/16 v3, 0x8

    if-ge v1, v3, :cond_2

    aget v3, p0, v1

    if-eqz v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static isOne64([J)Z
    .locals 8

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_2

    aget-wide v3, p0, v2

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static isZero([I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    aget v2, p0, v1

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isZero64([J)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    aget-wide v2, p0, v1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static mul([II[II[II)V
    .locals 29

    .line 1
    aget v0, p2, p3

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 v4, p3, 0x1

    aget v4, p2, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-int/lit8 v6, p3, 0x2

    aget v6, p2, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-int/lit8 v8, p3, 0x3

    aget v8, p2, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-int/lit8 v10, p3, 0x4

    aget v10, p2, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    add-int/lit8 v12, p3, 0x5

    aget v12, p2, v12

    int-to-long v12, v12

    and-long/2addr v12, v2

    add-int/lit8 v14, p3, 0x6

    aget v14, p2, v14

    int-to-long v14, v14

    and-long/2addr v14, v2

    add-int/lit8 v16, p3, 0x7

    move-wide/from16 v17, v14

    aget v14, p2, v16

    int-to-long v14, v14

    and-long/2addr v14, v2

    move-wide/from16 p2, v14

    aget v14, p0, p1

    int-to-long v14, v14

    and-long/2addr v14, v2

    mul-long v2, v14, v0

    move-wide/from16 v21, v0

    long-to-int v0, v2

    aput v0, p4, p5

    const/16 v0, 0x20

    ushr-long v1, v2, v0

    mul-long v23, v14, v4

    add-long v1, v23, v1

    add-int/lit8 v3, p5, 0x1

    move-wide/from16 v23, v4

    long-to-int v4, v1

    aput v4, p4, v3

    ushr-long/2addr v1, v0

    mul-long v3, v14, v6

    add-long/2addr v3, v1

    add-int/lit8 v1, p5, 0x2

    long-to-int v2, v3

    aput v2, p4, v1

    ushr-long v1, v3, v0

    mul-long v3, v14, v8

    add-long/2addr v3, v1

    add-int/lit8 v1, p5, 0x3

    long-to-int v2, v3

    aput v2, p4, v1

    ushr-long v1, v3, v0

    mul-long v3, v14, v10

    add-long/2addr v3, v1

    add-int/lit8 v1, p5, 0x4

    long-to-int v2, v3

    aput v2, p4, v1

    ushr-long v1, v3, v0

    mul-long v3, v14, v12

    add-long/2addr v3, v1

    add-int/lit8 v1, p5, 0x5

    long-to-int v2, v3

    aput v2, p4, v1

    ushr-long v1, v3, v0

    mul-long v3, v14, v17

    add-long/2addr v3, v1

    add-int/lit8 v1, p5, 0x6

    long-to-int v2, v3

    aput v2, p4, v1

    ushr-long v1, v3, v0

    move-wide/from16 v3, p2

    mul-long v14, v14, v3

    add-long/2addr v14, v1

    add-int/lit8 v1, p5, 0x7

    long-to-int v2, v14

    aput v2, p4, v1

    ushr-long v1, v14, v0

    add-int/lit8 v5, p5, 0x8

    long-to-int v2, v1

    aput v2, p4, v5

    const/4 v1, 0x1

    move/from16 v1, p5

    const/4 v2, 0x1

    :goto_0
    const/16 v5, 0x8

    if-ge v2, v5, :cond_0

    add-int/lit8 v5, v1, 0x1

    add-int v14, p1, v2

    aget v14, p0, v14

    int-to-long v14, v14

    const-wide v19, 0xffffffffL

    and-long v14, v14, v19

    mul-long v25, v14, v21

    aget v0, p4, v5

    move-wide/from16 v27, v3

    move v4, v2

    int-to-long v2, v0

    and-long v2, v2, v19

    add-long v2, v25, v2

    long-to-int v0, v2

    aput v0, p4, v5

    const/16 v0, 0x20

    ushr-long/2addr v2, v0

    mul-long v25, v14, v23

    add-int/lit8 v16, v1, 0x2

    aget v0, p4, v16

    move/from16 p5, v4

    move/from16 p3, v5

    int-to-long v4, v0

    and-long v4, v4, v19

    add-long v25, v25, v4

    add-long v2, v25, v2

    long-to-int v0, v2

    aput v0, p4, v16

    const/16 v0, 0x20

    ushr-long/2addr v2, v0

    mul-long v4, v14, v6

    add-int/lit8 v16, v1, 0x3

    aget v0, p4, v16

    move-wide/from16 v25, v6

    int-to-long v6, v0

    and-long v6, v6, v19

    add-long/2addr v4, v6

    add-long/2addr v4, v2

    long-to-int v0, v4

    aput v0, p4, v16

    const/16 v0, 0x20

    ushr-long v2, v4, v0

    mul-long v4, v14, v8

    add-int/lit8 v6, v1, 0x4

    aget v7, p4, v6

    move/from16 p2, v1

    int-to-long v0, v7

    and-long v0, v0, v19

    add-long/2addr v4, v0

    add-long/2addr v4, v2

    long-to-int v0, v4

    aput v0, p4, v6

    const/16 v0, 0x20

    ushr-long v1, v4, v0

    mul-long v3, v14, v10

    add-int/lit8 v5, p2, 0x5

    aget v6, p4, v5

    int-to-long v6, v6

    and-long v6, v6, v19

    add-long/2addr v3, v6

    add-long/2addr v3, v1

    long-to-int v1, v3

    aput v1, p4, v5

    ushr-long v1, v3, v0

    mul-long v3, v14, v12

    add-int/lit8 v5, p2, 0x6

    aget v6, p4, v5

    int-to-long v6, v6

    and-long v6, v6, v19

    add-long/2addr v3, v6

    add-long/2addr v3, v1

    long-to-int v1, v3

    aput v1, p4, v5

    ushr-long v1, v3, v0

    mul-long v3, v14, v17

    add-int/lit8 v5, p2, 0x7

    aget v6, p4, v5

    int-to-long v6, v6

    and-long v6, v6, v19

    add-long/2addr v3, v6

    add-long/2addr v3, v1

    long-to-int v1, v3

    aput v1, p4, v5

    ushr-long v1, v3, v0

    mul-long v14, v14, v27

    add-int/lit8 v3, p2, 0x8

    aget v4, p4, v3

    int-to-long v4, v4

    and-long v4, v4, v19

    add-long/2addr v14, v4

    add-long/2addr v14, v1

    long-to-int v1, v14

    aput v1, p4, v3

    ushr-long v1, v14, v0

    add-int/lit8 v3, p2, 0x9

    long-to-int v2, v1

    aput v2, p4, v3

    add-int/lit8 v2, p5, 0x1

    move/from16 v1, p3

    move-wide/from16 v6, v25

    move-wide/from16 v3, v27

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method public static mul([I[I[I)V
    .locals 33

    .line 2
    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/4 v5, 0x1

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    const/4 v8, 0x2

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    const/4 v11, 0x3

    aget v12, p1, v11

    int-to-long v12, v12

    and-long/2addr v12, v3

    const/4 v14, 0x4

    aget v15, p1, v14

    int-to-long v14, v15

    and-long/2addr v14, v3

    const/16 v17, 0x5

    aget v11, p1, v17

    move-wide/from16 v20, v9

    int-to-long v8, v11

    and-long/2addr v8, v3

    const/4 v10, 0x6

    aget v11, p1, v10

    int-to-long v10, v11

    and-long/2addr v10, v3

    const/16 v23, 0x7

    aget v5, p1, v23

    move-wide/from16 v25, v10

    int-to-long v10, v5

    and-long/2addr v10, v3

    aget v5, p0, v0

    move-wide/from16 v27, v10

    int-to-long v10, v5

    and-long/2addr v10, v3

    mul-long v3, v10, v1

    long-to-int v5, v3

    aput v5, p2, v0

    const/16 v0, 0x20

    ushr-long/2addr v3, v0

    mul-long v31, v10, v6

    add-long v3, v31, v3

    long-to-int v5, v3

    const/16 v24, 0x1

    aput v5, p2, v24

    ushr-long/2addr v3, v0

    mul-long v31, v10, v20

    add-long v3, v31, v3

    long-to-int v5, v3

    const/16 v19, 0x2

    aput v5, p2, v19

    ushr-long/2addr v3, v0

    mul-long v31, v10, v12

    add-long v3, v31, v3

    long-to-int v5, v3

    const/16 v18, 0x3

    aput v5, p2, v18

    ushr-long/2addr v3, v0

    mul-long v18, v10, v14

    add-long v3, v18, v3

    long-to-int v5, v3

    const/16 v16, 0x4

    aput v5, p2, v16

    ushr-long/2addr v3, v0

    mul-long v18, v10, v8

    add-long v3, v18, v3

    long-to-int v5, v3

    aput v5, p2, v17

    ushr-long/2addr v3, v0

    mul-long v16, v10, v25

    add-long v3, v16, v3

    long-to-int v5, v3

    const/16 v16, 0x6

    aput v5, p2, v16

    ushr-long/2addr v3, v0

    mul-long v10, v10, v27

    add-long/2addr v10, v3

    long-to-int v3, v10

    aput v3, p2, v23

    ushr-long v3, v10, v0

    long-to-int v4, v3

    const/16 v3, 0x8

    aput v4, p2, v3

    const/4 v5, 0x1

    :goto_0
    if-ge v5, v3, :cond_0

    aget v4, p0, v5

    int-to-long v10, v4

    const-wide v16, 0xffffffffL

    and-long v10, v10, v16

    mul-long v18, v10, v1

    aget v4, p2, v5

    int-to-long v3, v4

    and-long v3, v3, v16

    add-long v3, v18, v3

    move-wide/from16 v18, v1

    long-to-int v1, v3

    aput v1, p2, v5

    ushr-long v1, v3, v0

    mul-long v3, v10, v6

    add-int/lit8 v22, v5, 0x1

    aget v0, p2, v22

    move-wide/from16 v29, v6

    int-to-long v6, v0

    and-long v6, v6, v16

    add-long/2addr v3, v6

    add-long/2addr v3, v1

    long-to-int v0, v3

    aput v0, p2, v22

    const/16 v0, 0x20

    ushr-long v1, v3, v0

    mul-long v3, v10, v20

    add-int/lit8 v6, v5, 0x2

    aget v7, p2, v6

    move-wide/from16 v31, v1

    int-to-long v0, v7

    and-long v0, v0, v16

    add-long/2addr v3, v0

    add-long v3, v3, v31

    long-to-int v0, v3

    aput v0, p2, v6

    const/16 v0, 0x20

    ushr-long v1, v3, v0

    mul-long v3, v10, v12

    add-int/lit8 v6, v5, 0x3

    aget v7, p2, v6

    move-wide/from16 v31, v1

    int-to-long v0, v7

    and-long v0, v0, v16

    add-long/2addr v3, v0

    add-long v3, v3, v31

    long-to-int v0, v3

    aput v0, p2, v6

    const/16 v0, 0x20

    ushr-long v1, v3, v0

    mul-long v3, v10, v14

    add-int/lit8 v6, v5, 0x4

    aget v7, p2, v6

    move-wide/from16 v31, v1

    int-to-long v0, v7

    and-long v0, v0, v16

    add-long/2addr v3, v0

    add-long v3, v3, v31

    long-to-int v0, v3

    aput v0, p2, v6

    const/16 v0, 0x20

    ushr-long v1, v3, v0

    mul-long v3, v10, v8

    add-int/lit8 v6, v5, 0x5

    aget v7, p2, v6

    move-wide/from16 v31, v1

    int-to-long v0, v7

    and-long v0, v0, v16

    add-long/2addr v3, v0

    add-long v3, v3, v31

    long-to-int v0, v3

    aput v0, p2, v6

    const/16 v0, 0x20

    ushr-long v1, v3, v0

    mul-long v3, v10, v25

    add-int/lit8 v6, v5, 0x6

    aget v7, p2, v6

    move-wide/from16 v31, v1

    int-to-long v0, v7

    and-long v0, v0, v16

    add-long/2addr v3, v0

    add-long v3, v3, v31

    long-to-int v0, v3

    aput v0, p2, v6

    const/16 v0, 0x20

    ushr-long v1, v3, v0

    mul-long v10, v10, v27

    add-int/lit8 v3, v5, 0x7

    aget v4, p2, v3

    int-to-long v6, v4

    and-long v6, v6, v16

    add-long/2addr v10, v6

    add-long/2addr v10, v1

    long-to-int v1, v10

    aput v1, p2, v3

    ushr-long v1, v10, v0

    add-int/lit8 v5, v5, 0x8

    long-to-int v2, v1

    aput v2, p2, v5

    move-wide/from16 v1, v18

    move/from16 v5, v22

    move-wide/from16 v6, v29

    const/16 v3, 0x8

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method public static mul33Add(I[II[II[II)J
    .locals 13

    move v0, p0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    aget v4, p1, p2

    int-to-long v4, v4

    and-long/2addr v4, v2

    mul-long v6, v0, v4

    aget v8, p3, p4

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-long/2addr v6, v8

    long-to-int v8, v6

    aput v8, p5, p6

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    add-int/lit8 v9, p2, 0x1

    aget v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v2

    mul-long v11, v0, v9

    add-long/2addr v11, v4

    add-int/lit8 v4, p4, 0x1

    aget v4, p3, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-long/2addr v11, v4

    add-long/2addr v11, v6

    add-int/lit8 v4, p6, 0x1

    long-to-int v5, v11

    aput v5, p5, v4

    ushr-long v4, v11, v8

    add-int/lit8 v6, p2, 0x2

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long v11, v0, v6

    add-long/2addr v11, v9

    add-int/lit8 v9, p4, 0x2

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v11, v9

    add-long/2addr v11, v4

    add-int/lit8 v4, p6, 0x2

    long-to-int v5, v11

    aput v5, p5, v4

    ushr-long v4, v11, v8

    add-int/lit8 v9, p2, 0x3

    aget v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v2

    mul-long v11, v0, v9

    add-long/2addr v11, v6

    add-int/lit8 v6, p4, 0x3

    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v11, v6

    add-long/2addr v11, v4

    add-int/lit8 v4, p6, 0x3

    long-to-int v5, v11

    aput v5, p5, v4

    ushr-long v4, v11, v8

    add-int/lit8 v6, p2, 0x4

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long v11, v0, v6

    add-long/2addr v11, v9

    add-int/lit8 v9, p4, 0x4

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v11, v9

    add-long/2addr v11, v4

    add-int/lit8 v4, p6, 0x4

    long-to-int v5, v11

    aput v5, p5, v4

    ushr-long v4, v11, v8

    add-int/lit8 v9, p2, 0x5

    aget v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v2

    mul-long v11, v0, v9

    add-long/2addr v11, v6

    add-int/lit8 v6, p4, 0x5

    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v11, v6

    add-long/2addr v11, v4

    add-int/lit8 v4, p6, 0x5

    long-to-int v5, v11

    aput v5, p5, v4

    ushr-long v4, v11, v8

    add-int/lit8 v6, p2, 0x6

    aget v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long v11, v0, v6

    add-long/2addr v11, v9

    add-int/lit8 v9, p4, 0x6

    aget v9, p3, v9

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v11, v9

    add-long/2addr v11, v4

    add-int/lit8 v4, p6, 0x6

    long-to-int v5, v11

    aput v5, p5, v4

    ushr-long v4, v11, v8

    add-int/lit8 v9, p2, 0x7

    aget v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v2

    mul-long v0, v0, v9

    add-long/2addr v0, v6

    add-int/lit8 v6, p4, 0x7

    aget v6, p3, v6

    int-to-long v6, v6

    and-long/2addr v2, v6

    add-long/2addr v0, v2

    add-long/2addr v0, v4

    add-int/lit8 v2, p6, 0x7

    long-to-int v3, v0

    aput v3, p5, v2

    ushr-long/2addr v0, v8

    add-long/2addr v0, v9

    return-wide v0
.end method

.method public static mul33DWordAdd(IJ[II)I
    .locals 10

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    and-long v4, p1, v2

    mul-long v6, v0, v4

    aget p0, p3, p4

    int-to-long v8, p0

    and-long/2addr v8, v2

    add-long/2addr v6, v8

    long-to-int p0, v6

    aput p0, p3, p4

    const/16 p0, 0x20

    ushr-long/2addr v6, p0

    ushr-long/2addr p1, p0

    mul-long v0, v0, p1

    add-long/2addr v0, v4

    add-int/lit8 v4, p4, 0x1

    aget v5, p3, v4

    int-to-long v8, v5

    and-long/2addr v8, v2

    add-long/2addr v0, v8

    add-long/2addr v0, v6

    long-to-int v5, v0

    aput v5, p3, v4

    ushr-long/2addr v0, p0

    add-int/lit8 v4, p4, 0x2

    aget v5, p3, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-long/2addr p1, v5

    add-long/2addr p1, v0

    long-to-int v0, p1

    aput v0, p3, v4

    ushr-long/2addr p1, p0

    add-int/lit8 v0, p4, 0x3

    aget v1, p3, v0

    int-to-long v4, v1

    and-long v1, v4, v2

    add-long/2addr p1, v1

    long-to-int v1, p1

    aput v1, p3, v0

    ushr-long p0, p1, p0

    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    const/4 p1, 0x4

    invoke-static {p0, p3, p4, p1}, Lorg/spongycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static mul33WordAdd(II[II)I
    .locals 8

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long p0, p1

    and-long/2addr p0, v2

    mul-long v0, v0, p0

    aget v4, p2, p3

    int-to-long v4, v4

    and-long/2addr v4, v2

    add-long/2addr v0, v4

    long-to-int v4, v0

    aput v4, p2, p3

    const/16 v4, 0x20

    ushr-long/2addr v0, v4

    add-int/lit8 v5, p3, 0x1

    aget v6, p2, v5

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr p0, v6

    add-long/2addr p0, v0

    long-to-int v0, p0

    aput v0, p2, v5

    ushr-long/2addr p0, v4

    add-int/lit8 v0, p3, 0x2

    aget v1, p2, v0

    int-to-long v5, v1

    and-long v1, v5, v2

    add-long/2addr p0, v1

    long-to-int v1, p0

    aput v1, p2, v0

    ushr-long/2addr p0, v4

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    const/4 p1, 0x3

    invoke-static {p0, p2, p3, p1}, Lorg/spongycastle/math/raw/Nat;->incAt(I[III)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static mulAddTo([I[I[I)I
    .locals 33

    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/4 v5, 0x1

    aget v5, p1, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/4 v7, 0x2

    aget v7, p1, v7

    int-to-long v7, v7

    and-long/2addr v7, v3

    const/4 v9, 0x3

    aget v9, p1, v9

    int-to-long v9, v9

    and-long/2addr v9, v3

    const/4 v11, 0x4

    aget v11, p1, v11

    int-to-long v11, v11

    and-long/2addr v11, v3

    const/4 v13, 0x5

    aget v13, p1, v13

    int-to-long v13, v13

    and-long/2addr v13, v3

    const/4 v15, 0x6

    aget v15, p1, v15

    move-wide/from16 v17, v1

    int-to-long v0, v15

    and-long/2addr v0, v3

    const/4 v2, 0x7

    aget v2, p1, v2

    move-wide/from16 v19, v0

    int-to-long v0, v2

    and-long/2addr v0, v3

    const-wide/16 v21, 0x0

    move-wide/from16 v23, v21

    const/4 v2, 0x0

    :goto_0
    const/16 v15, 0x8

    if-ge v2, v15, :cond_0

    aget v15, p0, v2

    move-wide/from16 v21, v0

    int-to-long v0, v15

    and-long/2addr v0, v3

    mul-long v15, v0, v17

    move-wide/from16 v25, v13

    aget v13, p2, v2

    int-to-long v13, v13

    and-long/2addr v13, v3

    add-long/2addr v13, v15

    long-to-int v15, v13

    aput v15, p2, v2

    const/16 v15, 0x20

    ushr-long/2addr v13, v15

    mul-long v27, v0, v5

    add-int/lit8 v16, v2, 0x1

    aget v15, p2, v16

    move-wide/from16 v29, v5

    int-to-long v5, v15

    and-long/2addr v5, v3

    add-long v27, v27, v5

    add-long v5, v27, v13

    long-to-int v13, v5

    aput v13, p2, v16

    const/16 v13, 0x20

    ushr-long/2addr v5, v13

    mul-long v14, v0, v7

    add-int/lit8 v27, v2, 0x2

    aget v13, p2, v27

    move-wide/from16 v31, v7

    int-to-long v7, v13

    and-long/2addr v7, v3

    add-long/2addr v14, v7

    add-long/2addr v14, v5

    long-to-int v5, v14

    aput v5, p2, v27

    const/16 v5, 0x20

    ushr-long v6, v14, v5

    mul-long v13, v0, v9

    add-int/lit8 v8, v2, 0x3

    aget v15, p2, v8

    move-wide/from16 v27, v6

    int-to-long v5, v15

    and-long/2addr v5, v3

    add-long/2addr v13, v5

    add-long v13, v13, v27

    long-to-int v5, v13

    aput v5, p2, v8

    const/16 v5, 0x20

    ushr-long v6, v13, v5

    mul-long v13, v0, v11

    add-int/lit8 v8, v2, 0x4

    aget v15, p2, v8

    move-wide/from16 v27, v6

    int-to-long v5, v15

    and-long/2addr v5, v3

    add-long/2addr v13, v5

    add-long v13, v13, v27

    long-to-int v5, v13

    aput v5, p2, v8

    const/16 v5, 0x20

    ushr-long v6, v13, v5

    mul-long v13, v0, v25

    add-int/lit8 v8, v2, 0x5

    aget v15, p2, v8

    move-wide/from16 v27, v6

    int-to-long v5, v15

    and-long/2addr v5, v3

    add-long/2addr v13, v5

    add-long v13, v13, v27

    long-to-int v5, v13

    aput v5, p2, v8

    const/16 v5, 0x20

    ushr-long v6, v13, v5

    mul-long v13, v0, v19

    add-int/lit8 v8, v2, 0x6

    aget v15, p2, v8

    move-wide/from16 v27, v6

    int-to-long v5, v15

    and-long/2addr v5, v3

    add-long/2addr v13, v5

    add-long v13, v13, v27

    long-to-int v5, v13

    aput v5, p2, v8

    const/16 v5, 0x20

    ushr-long v6, v13, v5

    mul-long v0, v0, v21

    add-int/lit8 v8, v2, 0x7

    aget v13, p2, v8

    int-to-long v13, v13

    and-long/2addr v13, v3

    add-long/2addr v0, v13

    add-long/2addr v0, v6

    long-to-int v6, v0

    aput v6, p2, v8

    ushr-long/2addr v0, v5

    add-int/lit8 v2, v2, 0x8

    aget v6, p2, v2

    int-to-long v6, v6

    and-long/2addr v6, v3

    move-wide/from16 v13, v23

    add-long v23, v13, v6

    add-long v0, v23, v0

    long-to-int v6, v0

    aput v6, p2, v2

    ushr-long v23, v0, v5

    move/from16 v2, v16

    move-wide/from16 v0, v21

    move-wide/from16 v13, v25

    move-wide/from16 v5, v29

    move-wide/from16 v7, v31

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v13, v23

    long-to-int v0, v13

    return v0
.end method

.method public static mulByWordAddTo(I[I[I)I
    .locals 11

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 p0, 0x0

    aget v4, p2, p0

    int-to-long v4, v4

    and-long/2addr v4, v2

    mul-long v4, v4, v0

    aget v6, p1, p0

    int-to-long v6, v6

    and-long/2addr v6, v2

    add-long/2addr v4, v6

    long-to-int v6, v4

    aput v6, p2, p0

    const/16 p0, 0x20

    ushr-long/2addr v4, p0

    const/4 v6, 0x1

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long v7, v7, v0

    aget v9, p1, v6

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v7, v9

    add-long/2addr v7, v4

    long-to-int v4, v7

    aput v4, p2, v6

    ushr-long v4, v7, p0

    const/4 v6, 0x2

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long v7, v7, v0

    aget v9, p1, v6

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v7, v9

    add-long/2addr v7, v4

    long-to-int v4, v7

    aput v4, p2, v6

    ushr-long v4, v7, p0

    const/4 v6, 0x3

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long v7, v7, v0

    aget v9, p1, v6

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v7, v9

    add-long/2addr v7, v4

    long-to-int v4, v7

    aput v4, p2, v6

    ushr-long v4, v7, p0

    const/4 v6, 0x4

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long v7, v7, v0

    aget v9, p1, v6

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v7, v9

    add-long/2addr v7, v4

    long-to-int v4, v7

    aput v4, p2, v6

    ushr-long v4, v7, p0

    const/4 v6, 0x5

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long v7, v7, v0

    aget v9, p1, v6

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v7, v9

    add-long/2addr v7, v4

    long-to-int v4, v7

    aput v4, p2, v6

    ushr-long v4, v7, p0

    const/4 v6, 0x6

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long v7, v7, v0

    aget v9, p1, v6

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v7, v9

    add-long/2addr v7, v4

    long-to-int v4, v7

    aput v4, p2, v6

    ushr-long v4, v7, p0

    const/4 v6, 0x7

    aget v7, p2, v6

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long v0, v0, v7

    aget p1, p1, v6

    int-to-long v7, p1

    and-long/2addr v2, v7

    add-long/2addr v0, v2

    add-long/2addr v0, v4

    long-to-int p1, v0

    aput p1, p2, v6

    ushr-long p0, v0, p0

    long-to-int p1, p0

    return p1
.end method

.method public static square([II[II)V
    .locals 61

    .line 1
    aget v0, p0, p1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/16 v6, 0x10

    const/4 v7, 0x7

    :goto_0
    add-int/lit8 v8, v7, -0x1

    add-int v7, p1, v7

    aget v7, p0, v7

    int-to-long v9, v7

    and-long/2addr v9, v2

    mul-long v9, v9, v9

    add-int/lit8 v7, v6, -0x1

    add-int v7, v7, p3

    shl-int/lit8 v4, v4, 0x1f

    const/16 v11, 0x21

    ushr-long v12, v9, v11

    long-to-int v13, v12

    or-int/2addr v4, v13

    aput v4, p2, v7

    add-int/lit8 v6, v6, -0x2

    add-int v4, p3, v6

    const/4 v7, 0x1

    ushr-long v12, v9, v7

    long-to-int v13, v12

    aput v13, p2, v4

    long-to-int v4, v9

    if-gtz v8, :cond_0

    mul-long v8, v0, v0

    shl-int/lit8 v4, v4, 0x1f

    int-to-long v12, v4

    and-long/2addr v12, v2

    ushr-long v10, v8, v11

    or-long/2addr v10, v12

    long-to-int v4, v8

    aput v4, p2, p3

    const/16 v4, 0x20

    ushr-long/2addr v8, v4

    long-to-int v6, v8

    and-int/2addr v6, v7

    add-int/lit8 v8, p1, 0x1

    aget v8, p0, v8

    int-to-long v8, v8

    and-long/2addr v8, v2

    add-int/lit8 v12, p3, 0x2

    aget v13, p2, v12

    int-to-long v13, v13

    and-long/2addr v13, v2

    mul-long v15, v8, v0

    add-long/2addr v10, v15

    long-to-int v15, v10

    add-int/lit8 v16, p3, 0x1

    shl-int/lit8 v17, v15, 0x1

    or-int v6, v17, v6

    aput v6, p2, v16

    ushr-int/lit8 v6, v15, 0x1f

    ushr-long/2addr v10, v4

    add-long/2addr v13, v10

    add-int/lit8 v10, p1, 0x2

    aget v10, p0, v10

    int-to-long v10, v10

    and-long/2addr v10, v2

    add-int/lit8 v20, p3, 0x3

    aget v15, p2, v20

    move-wide/from16 v23, v8

    int-to-long v7, v15

    and-long v18, v7, v2

    add-int/lit8 v7, p3, 0x4

    aget v8, p2, v7

    int-to-long v8, v8

    and-long/2addr v8, v2

    mul-long v15, v10, v0

    add-long/2addr v13, v15

    long-to-int v15, v13

    shl-int/lit8 v16, v15, 0x1

    or-int v6, v16, v6

    aput v6, p2, v12

    ushr-int/lit8 v6, v15, 0x1f

    ushr-long v16, v13, v4

    move-wide v12, v10

    move-wide/from16 v14, v23

    invoke-static/range {v12 .. v19}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v12

    ushr-long v14, v12, v4

    add-long v18, v8, v14

    and-long v8, v12, v2

    add-int/lit8 v12, p1, 0x3

    aget v12, p0, v12

    int-to-long v12, v12

    and-long v33, v12, v2

    add-int/lit8 v35, p3, 0x5

    aget v12, p2, v35

    int-to-long v12, v12

    and-long v21, v12, v2

    add-int/lit8 v36, p3, 0x6

    aget v12, p2, v36

    int-to-long v12, v12

    and-long v25, v12, v2

    mul-long v12, v33, v0

    add-long/2addr v12, v8

    long-to-int v8, v12

    shl-int/lit8 v9, v8, 0x1

    or-int/2addr v6, v9

    aput v6, p2, v20

    ushr-int/lit8 v6, v8, 0x1f

    ushr-long v16, v12, v4

    move-wide/from16 v12, v33

    move-wide/from16 v14, v23

    invoke-static/range {v12 .. v19}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v8

    ushr-long v19, v8, v4

    move-wide/from16 v15, v33

    move-wide/from16 v17, v10

    invoke-static/range {v15 .. v22}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v12

    and-long/2addr v8, v2

    ushr-long v14, v12, v4

    add-long v21, v25, v14

    and-long v18, v12, v2

    add-int/lit8 v12, p1, 0x4

    aget v12, p0, v12

    int-to-long v12, v12

    and-long v37, v12, v2

    add-int/lit8 v39, p3, 0x7

    aget v12, p2, v39

    int-to-long v12, v12

    and-long v31, v12, v2

    add-int/lit8 v40, p3, 0x8

    aget v12, p2, v40

    int-to-long v12, v12

    and-long v41, v12, v2

    mul-long v12, v37, v0

    add-long/2addr v12, v8

    long-to-int v8, v12

    shl-int/lit8 v9, v8, 0x1

    or-int/2addr v6, v9

    aput v6, p2, v7

    ushr-int/lit8 v6, v8, 0x1f

    ushr-long v16, v12, v4

    move-wide/from16 v12, v37

    move-wide/from16 v14, v23

    invoke-static/range {v12 .. v19}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v7

    ushr-long v19, v7, v4

    move-wide/from16 v15, v37

    move-wide/from16 v17, v10

    invoke-static/range {v15 .. v22}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v12

    and-long/2addr v7, v2

    ushr-long v29, v12, v4

    move-wide/from16 v25, v37

    move-wide/from16 v27, v33

    invoke-static/range {v25 .. v32}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v14

    and-long v18, v12, v2

    ushr-long v12, v14, v4

    add-long v31, v41, v12

    and-long v21, v14, v2

    add-int/lit8 v9, p1, 0x5

    aget v9, p0, v9

    int-to-long v12, v9

    and-long v49, v12, v2

    add-int/lit8 v9, p3, 0x9

    aget v12, p2, v9

    int-to-long v12, v12

    and-long v41, v12, v2

    add-int/lit8 v51, p3, 0xa

    aget v12, p2, v51

    int-to-long v12, v12

    and-long v43, v12, v2

    mul-long v12, v49, v0

    add-long/2addr v12, v7

    long-to-int v7, v12

    shl-int/lit8 v8, v7, 0x1

    or-int/2addr v6, v8

    aput v6, p2, v35

    ushr-int/lit8 v6, v7, 0x1f

    ushr-long v16, v12, v4

    move-wide/from16 v12, v49

    move-wide/from16 v14, v23

    invoke-static/range {v12 .. v19}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v7

    ushr-long v19, v7, v4

    move-wide/from16 v15, v49

    move-wide/from16 v17, v10

    invoke-static/range {v15 .. v22}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v12

    and-long/2addr v7, v2

    ushr-long v29, v12, v4

    move-wide/from16 v25, v49

    invoke-static/range {v25 .. v32}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v14

    and-long v18, v12, v2

    ushr-long v29, v14, v4

    move-wide/from16 v27, v37

    move-wide/from16 v31, v41

    invoke-static/range {v25 .. v32}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v12

    and-long v21, v14, v2

    ushr-long v14, v12, v4

    add-long v41, v43, v14

    and-long v31, v12, v2

    add-int/lit8 v12, p1, 0x6

    aget v12, p0, v12

    int-to-long v12, v12

    and-long v54, v12, v2

    add-int/lit8 v35, p3, 0xb

    aget v12, p2, v35

    int-to-long v12, v12

    and-long v47, v12, v2

    add-int/lit8 v60, p3, 0xc

    aget v12, p2, v60

    int-to-long v12, v12

    and-long v52, v12, v2

    mul-long v12, v54, v0

    add-long/2addr v12, v7

    long-to-int v7, v12

    shl-int/lit8 v8, v7, 0x1

    or-int/2addr v6, v8

    aput v6, p2, v36

    ushr-int/lit8 v6, v7, 0x1f

    ushr-long v16, v12, v4

    move-wide/from16 v12, v54

    move-wide/from16 v14, v23

    invoke-static/range {v12 .. v19}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v7

    ushr-long v19, v7, v4

    move-wide/from16 v15, v54

    move-wide/from16 v17, v10

    invoke-static/range {v15 .. v22}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v12

    and-long/2addr v7, v2

    ushr-long v29, v12, v4

    move-wide/from16 v25, v54

    move-wide/from16 v27, v33

    invoke-static/range {v25 .. v32}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v14

    and-long v18, v12, v2

    ushr-long v29, v14, v4

    move-wide/from16 v27, v37

    move-wide/from16 v31, v41

    invoke-static/range {v25 .. v32}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v12

    and-long v21, v14, v2

    ushr-long v45, v12, v4

    move-wide/from16 v41, v54

    move-wide/from16 v43, v49

    invoke-static/range {v41 .. v48}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v14

    and-long v31, v12, v2

    ushr-long v12, v14, v4

    add-long v47, v52, v12

    and-long v41, v14, v2

    add-int/lit8 v5, p1, 0x7

    aget v5, p0, v5

    int-to-long v12, v5

    and-long v52, v12, v2

    add-int/lit8 v5, p3, 0xd

    aget v12, p2, v5

    int-to-long v12, v12

    and-long v58, v12, v2

    add-int/lit8 v36, p3, 0xe

    aget v12, p2, v36

    int-to-long v12, v12

    and-long/2addr v2, v12

    mul-long v0, v0, v52

    add-long/2addr v0, v7

    long-to-int v7, v0

    shl-int/lit8 v8, v7, 0x1

    or-int/2addr v6, v8

    aput v6, p2, v39

    ushr-int/lit8 v6, v7, 0x1f

    ushr-long v16, v0, v4

    move-wide/from16 v12, v52

    move-wide/from16 v14, v23

    invoke-static/range {v12 .. v19}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v0

    ushr-long v19, v0, v4

    move-wide/from16 v15, v52

    move-wide/from16 v17, v10

    invoke-static/range {v15 .. v22}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v7

    ushr-long v29, v7, v4

    move-wide/from16 v25, v52

    move-wide/from16 v27, v33

    invoke-static/range {v25 .. v32}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v10

    ushr-long v29, v10, v4

    move-wide/from16 v27, v37

    move-wide/from16 v31, v41

    invoke-static/range {v25 .. v32}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v12

    ushr-long v45, v12, v4

    move-wide/from16 v41, v52

    invoke-static/range {v41 .. v48}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v14

    ushr-long v56, v14, v4

    move-wide/from16 p0, v14

    invoke-static/range {v52 .. v59}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v14

    ushr-long v16, v14, v4

    add-long v2, v2, v16

    long-to-int v1, v0

    shl-int/lit8 v0, v1, 0x1

    or-int/2addr v0, v6

    aput v0, p2, v40

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v7

    shl-int/lit8 v6, v1, 0x1

    or-int/2addr v0, v6

    aput v0, p2, v9

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v10

    shl-int/lit8 v6, v1, 0x1

    or-int/2addr v0, v6

    aput v0, p2, v51

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v12

    shl-int/lit8 v6, v1, 0x1

    or-int/2addr v0, v6

    aput v0, p2, v35

    ushr-int/lit8 v0, v1, 0x1f

    move-wide/from16 v6, p0

    long-to-int v1, v6

    shl-int/lit8 v6, v1, 0x1

    or-int/2addr v0, v6

    aput v0, p2, v60

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v14

    shl-int/lit8 v6, v1, 0x1

    or-int/2addr v0, v6

    aput v0, p2, v5

    ushr-int/lit8 v0, v1, 0x1f

    long-to-int v1, v2

    shl-int/lit8 v5, v1, 0x1

    or-int/2addr v0, v5

    aput v0, p2, v36

    ushr-int/lit8 v0, v1, 0x1f

    add-int/lit8 v1, p3, 0xf

    aget v5, p2, v1

    shr-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v5, v3

    const/4 v2, 0x1

    shl-int/lit8 v2, v5, 0x1

    or-int/2addr v0, v2

    aput v0, p2, v1

    return-void

    :cond_0
    move v7, v8

    goto/16 :goto_0
.end method

.method public static square([I[I)V
    .locals 60

    .line 2
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/4 v5, 0x7

    const/16 v6, 0x10

    const/4 v7, 0x7

    const/4 v8, 0x0

    :goto_0
    add-int/lit8 v9, v7, -0x1

    aget v7, p0, v7

    int-to-long v10, v7

    and-long/2addr v10, v3

    mul-long v10, v10, v10

    add-int/lit8 v7, v6, -0x1

    shl-int/lit8 v8, v8, 0x1f

    const/16 v12, 0x21

    ushr-long v13, v10, v12

    long-to-int v14, v13

    or-int/2addr v8, v14

    aput v8, p1, v7

    add-int/lit8 v6, v6, -0x2

    const/4 v7, 0x1

    ushr-long v13, v10, v7

    long-to-int v8, v13

    aput v8, p1, v6

    long-to-int v8, v10

    if-gtz v9, :cond_0

    mul-long v9, v1, v1

    shl-int/lit8 v6, v8, 0x1f

    int-to-long v13, v6

    and-long/2addr v13, v3

    ushr-long v11, v9, v12

    or-long/2addr v11, v13

    long-to-int v6, v9

    aput v6, p1, v0

    const/16 v0, 0x20

    ushr-long v8, v9, v0

    long-to-int v6, v8

    and-int/2addr v6, v7

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    const/4 v10, 0x2

    aget v13, p1, v10

    int-to-long v13, v13

    and-long/2addr v13, v3

    mul-long v15, v8, v1

    add-long/2addr v11, v15

    long-to-int v15, v11

    shl-int/lit8 v16, v15, 0x1

    or-int v6, v16, v6

    aput v6, p1, v7

    ushr-int/lit8 v6, v15, 0x1f

    ushr-long/2addr v11, v0

    add-long/2addr v13, v11

    aget v11, p0, v10

    int-to-long v11, v11

    and-long/2addr v11, v3

    const/16 v21, 0x3

    aget v15, p1, v21

    move-wide/from16 v23, v8

    int-to-long v7, v15

    and-long v19, v7, v3

    const/4 v7, 0x4

    aget v8, p1, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    mul-long v15, v11, v1

    add-long/2addr v13, v15

    long-to-int v15, v13

    shl-int/lit8 v16, v15, 0x1

    or-int v6, v16, v6

    aput v6, p1, v10

    ushr-int/lit8 v6, v15, 0x1f

    ushr-long v17, v13, v0

    move-wide v13, v11

    move-wide/from16 v15, v23

    invoke-static/range {v13 .. v20}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v13

    ushr-long v15, v13, v0

    add-long v19, v8, v15

    and-long v8, v13, v3

    aget v10, p0, v21

    int-to-long v13, v10

    and-long v33, v13, v3

    const/4 v10, 0x5

    aget v13, p1, v10

    int-to-long v13, v13

    and-long v25, v13, v3

    const/16 v35, 0x6

    aget v13, p1, v35

    int-to-long v13, v13

    and-long v27, v13, v3

    mul-long v13, v33, v1

    add-long/2addr v13, v8

    long-to-int v8, v13

    shl-int/lit8 v9, v8, 0x1

    or-int/2addr v6, v9

    aput v6, p1, v21

    ushr-int/lit8 v6, v8, 0x1f

    ushr-long v17, v13, v0

    move-wide/from16 v13, v33

    move-wide/from16 v15, v23

    invoke-static/range {v13 .. v20}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v8

    ushr-long v19, v8, v0

    move-wide/from16 v15, v33

    move-wide/from16 v17, v11

    move-wide/from16 v21, v25

    invoke-static/range {v15 .. v22}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v13

    and-long/2addr v8, v3

    ushr-long v15, v13, v0

    add-long v21, v27, v15

    and-long v19, v13, v3

    aget v13, p0, v7

    int-to-long v13, v13

    and-long v36, v13, v3

    aget v13, p1, v5

    int-to-long v13, v13

    and-long v31, v13, v3

    const/16 v38, 0x8

    aget v13, p1, v38

    int-to-long v13, v13

    and-long v39, v13, v3

    mul-long v13, v36, v1

    add-long/2addr v13, v8

    long-to-int v8, v13

    shl-int/lit8 v9, v8, 0x1

    or-int/2addr v6, v9

    aput v6, p1, v7

    ushr-int/lit8 v6, v8, 0x1f

    ushr-long v17, v13, v0

    move-wide/from16 v13, v36

    move-wide/from16 v15, v23

    invoke-static/range {v13 .. v20}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v7

    ushr-long v19, v7, v0

    move-wide/from16 v15, v36

    move-wide/from16 v17, v11

    invoke-static/range {v15 .. v22}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v13

    and-long/2addr v7, v3

    ushr-long v29, v13, v0

    move-wide/from16 v25, v36

    move-wide/from16 v27, v33

    invoke-static/range {v25 .. v32}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v15

    and-long v19, v13, v3

    ushr-long v13, v15, v0

    add-long v31, v39, v13

    and-long v21, v15, v3

    aget v9, p0, v10

    int-to-long v13, v9

    and-long v47, v13, v3

    const/16 v9, 0x9

    aget v13, p1, v9

    int-to-long v13, v13

    and-long v39, v13, v3

    const/16 v49, 0xa

    aget v13, p1, v49

    int-to-long v13, v13

    and-long v41, v13, v3

    mul-long v13, v47, v1

    add-long/2addr v13, v7

    long-to-int v7, v13

    shl-int/lit8 v8, v7, 0x1

    or-int/2addr v6, v8

    aput v6, p1, v10

    ushr-int/lit8 v6, v7, 0x1f

    ushr-long v17, v13, v0

    move-wide/from16 v13, v47

    move-wide/from16 v15, v23

    invoke-static/range {v13 .. v20}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v7

    ushr-long v19, v7, v0

    move-wide/from16 v15, v47

    move-wide/from16 v17, v11

    invoke-static/range {v15 .. v22}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v13

    and-long/2addr v7, v3

    ushr-long v29, v13, v0

    move-wide/from16 v25, v47

    invoke-static/range {v25 .. v32}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v15

    and-long v19, v13, v3

    ushr-long v29, v15, v0

    move-wide/from16 v27, v36

    move-wide/from16 v31, v39

    invoke-static/range {v25 .. v32}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v13

    and-long v21, v15, v3

    ushr-long v15, v13, v0

    add-long v39, v41, v15

    and-long v31, v13, v3

    aget v10, p0, v35

    int-to-long v13, v10

    and-long v52, v13, v3

    const/16 v10, 0xb

    aget v13, p1, v10

    int-to-long v13, v13

    and-long v45, v13, v3

    const/16 v58, 0xc

    aget v13, p1, v58

    int-to-long v13, v13

    and-long v50, v13, v3

    mul-long v13, v52, v1

    add-long/2addr v13, v7

    long-to-int v7, v13

    shl-int/lit8 v8, v7, 0x1

    or-int/2addr v6, v8

    aput v6, p1, v35

    ushr-int/lit8 v6, v7, 0x1f

    ushr-long v17, v13, v0

    move-wide/from16 v13, v52

    move-wide/from16 v15, v23

    invoke-static/range {v13 .. v20}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v7

    ushr-long v19, v7, v0

    move-wide/from16 v15, v52

    move-wide/from16 v17, v11

    invoke-static/range {v15 .. v22}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v13

    and-long/2addr v7, v3

    ushr-long v29, v13, v0

    move-wide/from16 v25, v52

    move-wide/from16 v27, v33

    invoke-static/range {v25 .. v32}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v15

    and-long v19, v13, v3

    ushr-long v29, v15, v0

    move-wide/from16 v27, v36

    move-wide/from16 v31, v39

    invoke-static/range {v25 .. v32}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v13

    and-long v21, v15, v3

    ushr-long v43, v13, v0

    move-wide/from16 v39, v52

    move-wide/from16 v41, v47

    invoke-static/range {v39 .. v46}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v15

    and-long v31, v13, v3

    ushr-long v13, v15, v0

    add-long v45, v50, v13

    and-long v39, v15, v3

    aget v13, p0, v5

    int-to-long v13, v13

    and-long v50, v13, v3

    const/16 v35, 0xd

    aget v13, p1, v35

    int-to-long v13, v13

    and-long v56, v13, v3

    const/16 v59, 0xe

    aget v13, p1, v59

    int-to-long v13, v13

    and-long/2addr v3, v13

    mul-long v1, v1, v50

    add-long/2addr v1, v7

    long-to-int v7, v1

    shl-int/lit8 v8, v7, 0x1

    or-int/2addr v6, v8

    aput v6, p1, v5

    ushr-int/lit8 v5, v7, 0x1f

    ushr-long v17, v1, v0

    move-wide/from16 v13, v50

    move-wide/from16 v15, v23

    invoke-static/range {v13 .. v20}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v1

    ushr-long v19, v1, v0

    move-wide/from16 v15, v50

    move-wide/from16 v17, v11

    invoke-static/range {v15 .. v22}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v6

    ushr-long v29, v6, v0

    move-wide/from16 v25, v50

    move-wide/from16 v27, v33

    invoke-static/range {v25 .. v32}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v11

    ushr-long v29, v11, v0

    move-wide/from16 v27, v36

    move-wide/from16 v31, v39

    invoke-static/range {v25 .. v32}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v13

    ushr-long v43, v13, v0

    move-wide/from16 v39, v50

    move-wide v15, v11

    invoke-static/range {v39 .. v46}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v10

    ushr-long v54, v10, v0

    invoke-static/range {v50 .. v57}, Lorg/apache/ftpserver/main/a;->d(JJJJ)J

    move-result-wide v8

    ushr-long v17, v8, v0

    add-long v3, v3, v17

    long-to-int v2, v1

    shl-int/lit8 v1, v2, 0x1

    or-int/2addr v1, v5

    aput v1, p1, v38

    ushr-int/lit8 v1, v2, 0x1f

    long-to-int v2, v6

    shl-int/lit8 v5, v2, 0x1

    or-int/2addr v1, v5

    const/16 v5, 0x9

    aput v1, p1, v5

    ushr-int/lit8 v1, v2, 0x1f

    move-wide v5, v15

    long-to-int v2, v5

    shl-int/lit8 v5, v2, 0x1

    or-int/2addr v1, v5

    aput v1, p1, v49

    ushr-int/lit8 v1, v2, 0x1f

    long-to-int v2, v13

    shl-int/lit8 v5, v2, 0x1

    or-int/2addr v1, v5

    const/16 v5, 0xb

    aput v1, p1, v5

    ushr-int/lit8 v1, v2, 0x1f

    long-to-int v2, v10

    shl-int/lit8 v5, v2, 0x1

    or-int/2addr v1, v5

    aput v1, p1, v58

    ushr-int/lit8 v1, v2, 0x1f

    long-to-int v2, v8

    shl-int/lit8 v5, v2, 0x1

    or-int/2addr v1, v5

    aput v1, p1, v35

    ushr-int/lit8 v1, v2, 0x1f

    long-to-int v2, v3

    shl-int/lit8 v5, v2, 0x1

    or-int/2addr v1, v5

    aput v1, p1, v59

    ushr-int/lit8 v1, v2, 0x1f

    const/16 v2, 0xf

    aget v5, p1, v2

    shr-long/2addr v3, v0

    long-to-int v0, v3

    add-int/2addr v5, v0

    const/4 v0, 0x1

    shl-int/lit8 v0, v5, 0x1

    or-int/2addr v0, v1

    aput v0, p1, v2

    return-void

    :cond_0
    move v7, v9

    goto/16 :goto_0
.end method

.method public static sub([II[II[II)I
    .locals 9

    .line 1
    aget v0, p0, p1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    aget v4, p2, p3

    int-to-long v4, v4

    and-long/2addr v4, v2

    sub-long/2addr v0, v4

    long-to-int v4, v0

    aput v4, p4, p5

    const/16 v4, 0x20

    shr-long/2addr v0, v4

    add-int/lit8 v5, p1, 0x1

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x1

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v5, v0

    add-int/lit8 v0, p5, 0x1

    long-to-int v1, v5

    aput v1, p4, v0

    shr-long v0, v5, v4

    add-int/lit8 v5, p1, 0x2

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x2

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v5, v0

    add-int/lit8 v0, p5, 0x2

    long-to-int v1, v5

    aput v1, p4, v0

    shr-long v0, v5, v4

    add-int/lit8 v5, p1, 0x3

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x3

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v5, v0

    add-int/lit8 v0, p5, 0x3

    long-to-int v1, v5

    aput v1, p4, v0

    shr-long v0, v5, v4

    add-int/lit8 v5, p1, 0x4

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x4

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v5, v0

    add-int/lit8 v0, p5, 0x4

    long-to-int v1, v5

    aput v1, p4, v0

    shr-long v0, v5, v4

    add-int/lit8 v5, p1, 0x5

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x5

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v5, v0

    add-int/lit8 v0, p5, 0x5

    long-to-int v1, v5

    aput v1, p4, v0

    shr-long v0, v5, v4

    add-int/lit8 v5, p1, 0x6

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    add-int/lit8 v7, p3, 0x6

    aget v7, p2, v7

    int-to-long v7, v7

    and-long/2addr v7, v2

    sub-long/2addr v5, v7

    add-long/2addr v5, v0

    add-int/lit8 v0, p5, 0x6

    long-to-int v1, v5

    aput v1, p4, v0

    shr-long v0, v5, v4

    add-int/lit8 p1, p1, 0x7

    aget p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    add-int/lit8 p3, p3, 0x7

    aget p2, p2, p3

    int-to-long p2, p2

    and-long/2addr p2, v2

    sub-long/2addr p0, p2

    add-long/2addr p0, v0

    add-int/lit8 p5, p5, 0x7

    long-to-int p2, p0

    aput p2, p4, p5

    shr-long/2addr p0, v4

    long-to-int p1, p0

    return p1
.end method

.method public static sub([I[I[I)I
    .locals 10

    .line 2
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p1, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p2, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const/4 v5, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    shr-long v1, v6, v0

    const/4 v5, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    shr-long v1, v6, v0

    const/4 v5, 0x3

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    shr-long v1, v6, v0

    const/4 v5, 0x4

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    shr-long v1, v6, v0

    const/4 v5, 0x5

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    shr-long v1, v6, v0

    const/4 v5, 0x6

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p1, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p2, v5

    shr-long v1, v6, v0

    const/4 v5, 0x7

    aget p0, p0, v5

    int-to-long v6, p0

    and-long/2addr v6, v3

    aget p0, p1, v5

    int-to-long p0, p0

    and-long/2addr p0, v3

    sub-long/2addr v6, p0

    add-long/2addr v6, v1

    long-to-int p0, v6

    aput p0, p2, v5

    shr-long p0, v6, v0

    long-to-int p1, p0

    return p1
.end method

.method public static subFrom([I[I)I
    .locals 10

    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    aget v5, p0, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    long-to-int v5, v1

    aput v5, p1, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    const/4 v5, 0x1

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p1, v5

    shr-long v1, v6, v0

    const/4 v5, 0x2

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p1, v5

    shr-long v1, v6, v0

    const/4 v5, 0x3

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p1, v5

    shr-long v1, v6, v0

    const/4 v5, 0x4

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p1, v5

    shr-long v1, v6, v0

    const/4 v5, 0x5

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p1, v5

    shr-long v1, v6, v0

    const/4 v5, 0x6

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget v8, p0, v5

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v6, v8

    add-long/2addr v6, v1

    long-to-int v1, v6

    aput v1, p1, v5

    shr-long v1, v6, v0

    const/4 v5, 0x7

    aget v6, p1, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    aget p0, p0, v5

    int-to-long v8, p0

    and-long/2addr v3, v8

    sub-long/2addr v6, v3

    add-long/2addr v6, v1

    long-to-int p0, v6

    aput p0, p1, v5

    shr-long p0, v6, v0

    long-to-int p1, p0

    return p1
.end method

.method public static toBigInteger([I)Ljava/math/BigInteger;
    .locals 4

    const/16 v0, 0x20

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    aget v2, p0, v1

    if-eqz v2, :cond_0

    rsub-int/lit8 v3, v1, 0x7

    shl-int/lit8 v3, v3, 0x2

    invoke-static {v2, v0, v3}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public static toBigInteger64([J)Ljava/math/BigInteger;
    .locals 7

    const/16 v0, 0x20

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    aget-wide v2, p0, v1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    rsub-int/lit8 v4, v1, 0x3

    shl-int/lit8 v4, v4, 0x3

    invoke-static {v2, v3, v0, v4}, Lorg/spongycastle/util/Pack;->longToBigEndian(J[BI)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public static zero([I)V
    .locals 2

    const/4 v0, 0x0

    aput v0, p0, v0

    const/4 v1, 0x1

    aput v0, p0, v1

    const/4 v1, 0x2

    aput v0, p0, v1

    const/4 v1, 0x3

    aput v0, p0, v1

    const/4 v1, 0x4

    aput v0, p0, v1

    const/4 v1, 0x5

    aput v0, p0, v1

    const/4 v1, 0x6

    aput v0, p0, v1

    const/4 v1, 0x7

    aput v0, p0, v1

    return-void
.end method
