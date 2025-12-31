.class public abstract Ludt/packets/PacketUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static decode([BI)J
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-long p0, p0

    return-wide p0
.end method

.method public static decodeType([BI)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static encode(J[BI)V
    .locals 3

    .line 1
    const/16 v0, 0x18

    shr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x10

    shr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x8

    shr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    aput-byte v1, p2, v0

    add-int/lit8 p3, p3, 0x3

    long-to-int p1, p0

    int-to-byte p0, p1

    aput-byte p0, p2, p3

    return-void
.end method

.method public static encode(J)[B
    .locals 4

    .line 2
    const/16 v0, 0x18

    shr-long v0, p0, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    const/16 v1, 0x10

    shr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    const/16 v2, 0x8

    shr-long v2, p0, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    long-to-int p1, p0

    int-to-byte p0, p1

    const/4 p1, 0x4

    new-array p1, p1, [B

    const/4 v3, 0x0

    aput-byte v0, p1, v3

    const/4 v0, 0x1

    aput-byte v1, p1, v0

    const/4 v0, 0x2

    aput-byte v2, p1, v0

    const/4 v0, 0x3

    aput-byte p0, p1, v0

    return-object p1
.end method

.method public static encodeControlPacketType(I)[B
    .locals 3

    int-to-byte p0, p0

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/16 v1, -0x80

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte p0, v0, v1

    const/4 p0, 0x2

    aput-byte v2, v0, p0

    const/4 p0, 0x3

    aput-byte v2, v0, p0

    return-object v0
.end method

.method public static encodeSetHighest(ZJ)[B
    .locals 5

    const/16 v0, 0x18

    if-eqz p0, :cond_0

    const-wide/16 v1, 0x80

    shr-long v3, p1, v0

    or-long v0, v3, v1

    :goto_0
    long-to-int p0, v0

    int-to-byte p0, p0

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x7f

    shr-long v3, p1, v0

    and-long v0, v3, v1

    goto :goto_0

    :goto_1
    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v1, v0

    int-to-byte v0, v1

    const/16 v1, 0x8

    shr-long v1, p1, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    long-to-int p2, p1

    int-to-byte p1, p2

    const/4 p2, 0x4

    new-array p2, p2, [B

    const/4 v2, 0x0

    aput-byte p0, p2, v2

    const/4 p0, 0x1

    aput-byte v0, p2, p0

    const/4 p0, 0x2

    aput-byte v1, p2, p0

    const/4 p0, 0x3

    aput-byte p1, p2, p0

    return-object p2
.end method
