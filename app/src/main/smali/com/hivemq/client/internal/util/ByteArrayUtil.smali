.class public abstract Lcom/hivemq/client/internal/util/ByteArrayUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static equals([BII[BII)Z
    .locals 3

    sub-int v0, p2, p1

    sub-int/2addr p5, p4

    const/4 v1, 0x0

    if-eq v0, p5, :cond_0

    return v1

    :cond_0
    const/4 p5, 0x1

    if-ne p0, p3, :cond_1

    if-ne p1, p4, :cond_1

    return p5

    :cond_1
    :goto_0
    if-ge p1, p2, :cond_3

    aget-byte v0, p0, p1

    aget-byte v2, p3, p4

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_3
    return p5
.end method

.method public static hashCode([BII)I
    .locals 2

    const/4 v0, 0x1

    :goto_0
    if-ge p1, p2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    aget-byte v1, p0, p1

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static indexOf([BIB)I
    .locals 1

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    if-ne v0, p2, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    array-length p0, p0

    return p0
.end method
