.class public Lorg/apache/mina/proxy/utils/ByteUtilities;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asByteArray(Ljava/lang/String;)[B
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v3, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static asHex([B)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/mina/proxy/utils/ByteUtilities;->asHex([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static asHex([BLjava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    const/16 v3, 0x30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final changeByteEndianess([BII)V
    .locals 4

    move v0, p1

    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    aget-byte v1, p0, v0

    add-int/lit8 v2, v0, 0x1

    aget-byte v3, p0, v2

    aput-byte v3, p0, v0

    aput-byte v1, p0, v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final changeWordEndianess([BII)V
    .locals 5

    move v0, p1

    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    aget-byte v1, p0, v0

    add-int/lit8 v2, v0, 0x3

    aget-byte v3, p0, v2

    aput-byte v3, p0, v0

    aput-byte v1, p0, v2

    add-int/lit8 v1, v0, 0x1

    aget-byte v2, p0, v1

    add-int/lit8 v3, v0, 0x2

    aget-byte v4, p0, v3

    aput-byte v4, p0, v1

    aput-byte v2, p0, v3

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final encodeString(Ljava/lang/String;Z)[B
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p0}, Lorg/apache/mina/proxy/utils/ByteUtilities;->getUTFStringAsByteArray(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/apache/mina/proxy/utils/ByteUtilities;->getOEMStringAsByteArray(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static final getOEMStringAsByteArray(Ljava/lang/String;)[B
    .locals 1

    const-string v0, "ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static final getUTFStringAsByteArray(Ljava/lang/String;)[B
    .locals 1

    const-string v0, "UTF-16LE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static intToNetworkByteOrder(I[BII)V
    .locals 2

    .line 1
    const/4 v0, 0x4

    if-gt p3, v0, :cond_1

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-ltz p3, :cond_0

    add-int v0, p2, p3

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    ushr-int/lit8 p0, p0, 0x8

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot handle more than 4 bytes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static intToNetworkByteOrder(II)[B
    .locals 2

    .line 2
    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lorg/apache/mina/proxy/utils/ByteUtilities;->intToNetworkByteOrder(I[BII)V

    return-object v0
.end method

.method public static final isFlagSet(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final makeIntFromByte2([B)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/mina/proxy/utils/ByteUtilities;->makeIntFromByte2([BI)I

    move-result p0

    return p0
.end method

.method public static final makeIntFromByte2([BI)I
    .locals 1

    .line 2
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static final makeIntFromByte4([B)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/mina/proxy/utils/ByteUtilities;->makeIntFromByte4([BI)I

    move-result p0

    return p0
.end method

.method public static final makeIntFromByte4([BI)I
    .locals 2

    .line 2
    aget-byte v0, p0, p1

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

    return p0
.end method

.method public static networkByteOrderToInt([BII)I
    .locals 3

    const/4 v0, 0x4

    if-gt p2, v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    shl-int/lit8 v1, v1, 0x8

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot handle more than 4 bytes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final writeInt(I)[B
    .locals 2

    .line 1
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/mina/proxy/utils/ByteUtilities;->writeInt(I[BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static final writeInt(I[BI)[B
    .locals 2

    .line 2
    int-to-byte v0, p0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 p2, p2, 0x3

    shr-int/lit8 p0, p0, 0x18

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-object p1
.end method

.method public static final writeShort(S)[B
    .locals 2

    .line 1
    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/mina/proxy/utils/ByteUtilities;->writeShort(S[BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static final writeShort(S[BI)[B
    .locals 1

    .line 2
    int-to-byte v0, p0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    shr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-object p1
.end method
