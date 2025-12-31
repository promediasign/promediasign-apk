.class public abstract Lorg/spongycastle/util/Arrays;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/util/Arrays$Iterator;
    }
.end annotation


# direct methods
.method public static areEqual([B[B)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-eq v2, v3, :cond_4

    aget-byte v3, p0, v2

    aget-byte v4, p1, v2

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public static areEqual([C[C)Z
    .locals 5

    .line 2
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-eq v2, v3, :cond_4

    aget-char v3, p0, v2

    aget-char v4, p1, v2

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public static areEqual([I[I)Z
    .locals 5

    .line 3
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-eq v2, v3, :cond_4

    aget v3, p0, v2

    aget v4, p1, v2

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public static clone([B)[B
    .locals 3

    .line 1
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static clone([I)[I
    .locals 3

    .line 2
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [I

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static clone([J)[J
    .locals 3

    .line 3
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [J

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static hashCode([B)I
    .locals 3

    .line 1
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    mul-int/lit16 v1, v1, 0x101

    aget-byte v2, p0, v0

    xor-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static hashCode([C)I
    .locals 3

    .line 2
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    mul-int/lit16 v1, v1, 0x101

    aget-char v2, p0, v0

    xor-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static hashCode([I)I
    .locals 3

    .line 3
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    mul-int/lit16 v1, v1, 0x101

    aget v2, p0, v0

    xor-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static hashCode([III)I
    .locals 2

    .line 4
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v0, p2, 0x1

    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_1

    mul-int/lit16 v0, v0, 0x101

    add-int v1, p1, p2

    aget v1, p0, v1

    xor-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static hashCode([JII)I
    .locals 4

    .line 5
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v0, p2, 0x1

    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_1

    add-int v1, p1, p2

    aget-wide v1, p0, v1

    mul-int/lit16 v0, v0, 0x101

    long-to-int v3, v1

    xor-int/2addr v0, v3

    mul-int/lit16 v0, v0, 0x101

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v2, v1

    xor-int/2addr v0, v2

    goto :goto_0

    :cond_1
    return v0
.end method
