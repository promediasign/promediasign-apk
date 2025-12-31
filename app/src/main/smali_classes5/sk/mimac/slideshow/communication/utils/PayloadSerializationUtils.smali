.class public abstract Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static deserializeInt([BI)I
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

    return p0
.end method

.method public static deserializeIpAddress([BI)Lsk/mimac/slideshow/communication/address/IPAddress;
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x2

    aget-byte v3, p0, p1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    if-nez v3, :cond_0

    add-int/lit8 v5, p1, 0x2

    aget-byte v5, p0, v5

    if-nez v5, :cond_0

    add-int/lit8 v5, p1, 0x3

    aget-byte v5, p0, v5

    if-nez v5, :cond_0

    add-int/lit8 v5, p1, 0x4

    aget-byte v5, p0, v5

    if-nez v5, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/lit8 v5, p1, 0x2

    aget-byte v5, p0, v5

    add-int/lit8 v6, p1, 0x3

    aget-byte v6, p0, v6

    add-int/lit8 v7, p1, 0x4

    aget-byte v7, p0, v7

    new-array v4, v4, [B

    const/4 v8, 0x0

    aput-byte v3, v4, v8

    aput-byte v5, v4, v0

    aput-byte v6, v4, v2

    aput-byte v7, v4, v1

    new-instance v0, Lsk/mimac/slideshow/communication/address/IPv4Address;

    add-int/lit8 p1, p1, 0x5

    invoke-static {p0, p1}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->deserializeShort([BI)I

    move-result p0

    invoke-direct {v0, v4, p0}, Lsk/mimac/slideshow/communication/address/IPv4Address;-><init>([BI)V

    return-object v0

    :cond_1
    new-instance v0, Lsk/mimac/slideshow/communication/PacketDecodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown IP address type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte p0, p0, p1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lsk/mimac/slideshow/communication/PacketDecodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static deserializeLong([BI)J
    .locals 5

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x4

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x5

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x6

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    or-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x7

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-long p0, p0

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static deserializeMap([BI)Lsk/mimac/slideshow/communication/utils/DeserializeData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Lsk/mimac/slideshow/communication/utils/DeserializeData<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    aget-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    if-nez v0, :cond_0

    new-instance p0, Lsk/mimac/slideshow/communication/utils/DeserializeData;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lsk/mimac/slideshow/communication/utils/DeserializeData;-><init>(Ljava/lang/Object;I)V

    return-object p0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-static {p0, p1}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->deserializeString([BI)Lsk/mimac/slideshow/communication/utils/DeserializeData;

    move-result-object p1

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/utils/DeserializeData;->getOffset()I

    move-result v3

    invoke-static {p0, v3}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->deserializeString([BI)Lsk/mimac/slideshow/communication/utils/DeserializeData;

    move-result-object v3

    invoke-virtual {v3}, Lsk/mimac/slideshow/communication/utils/DeserializeData;->getOffset()I

    move-result v4

    invoke-virtual {p1}, Lsk/mimac/slideshow/communication/utils/DeserializeData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v3}, Lsk/mimac/slideshow/communication/utils/DeserializeData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    move p1, v4

    goto :goto_0

    :cond_1
    new-instance p0, Lsk/mimac/slideshow/communication/utils/DeserializeData;

    invoke-direct {p0, v1, p1}, Lsk/mimac/slideshow/communication/utils/DeserializeData;-><init>(Ljava/lang/Object;I)V

    return-object p0
.end method

.method public static deserializeShort([BI)I
    .locals 1

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static deserializeString([BI)Lsk/mimac/slideshow/communication/utils/DeserializeData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Lsk/mimac/slideshow/communication/utils/DeserializeData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->deserializeInt([BI)I

    move-result v0

    add-int/lit8 p1, p1, 0x4

    if-nez v0, :cond_0

    new-instance p0, Lsk/mimac/slideshow/communication/utils/DeserializeData;

    const-string v0, ""

    invoke-direct {p0, v0, p1}, Lsk/mimac/slideshow/communication/utils/DeserializeData;-><init>(Ljava/lang/Object;I)V

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    new-instance p0, Lsk/mimac/slideshow/communication/utils/DeserializeData;

    add-int/2addr p1, v0

    invoke-direct {p0, v1, p1}, Lsk/mimac/slideshow/communication/utils/DeserializeData;-><init>(Ljava/lang/Object;I)V

    return-object p0
.end method

.method public static packSignedMessage([BLsk/mimac/slideshow/communication/key/PrivateKey;)[B
    .locals 3

    invoke-interface {p1, p0}, Lsk/mimac/slideshow/communication/key/PrivateKey;->sign([B)[B

    move-result-object p1

    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static serializeInt(I)[B
    .locals 5

    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v3, 0x4

    new-array v3, v3, [B

    const/4 v4, 0x0

    aput-byte v0, v3, v4

    const/4 v0, 0x1

    aput-byte v1, v3, v0

    const/4 v0, 0x2

    aput-byte v2, v3, v0

    const/4 v0, 0x3

    aput-byte p0, v3, v0

    return-object v3
.end method

.method public static serializeIpAddress(Lsk/mimac/slideshow/communication/address/IPAddress;)[B
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Lsk/mimac/slideshow/communication/address/IPAddress;->getIp()[B

    move-result-object v3

    aget-byte v1, v3, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    invoke-interface {p0}, Lsk/mimac/slideshow/communication/address/IPAddress;->getIp()[B

    move-result-object v1

    aget-byte v1, v1, v3

    const/4 v3, 0x2

    aput-byte v1, v0, v3

    invoke-interface {p0}, Lsk/mimac/slideshow/communication/address/IPAddress;->getIp()[B

    move-result-object v1

    aget-byte v1, v1, v3

    const/4 v3, 0x3

    aput-byte v1, v0, v3

    invoke-interface {p0}, Lsk/mimac/slideshow/communication/address/IPAddress;->getIp()[B

    move-result-object v1

    aget-byte v1, v1, v3

    aput-byte v1, v0, v2

    invoke-interface {p0}, Lsk/mimac/slideshow/communication/address/IPAddress;->getPort()I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    invoke-interface {p0}, Lsk/mimac/slideshow/communication/address/IPAddress;->getPort()I

    move-result p0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x6

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static serializeLong(J)[B
    .locals 11

    const/16 v0, 0x38

    shr-long v0, p0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v1, v0

    int-to-byte v0, v1

    const/16 v1, 0x30

    shr-long v4, p0, v1

    and-long/2addr v4, v2

    long-to-int v1, v4

    int-to-byte v1, v1

    const/16 v4, 0x28

    shr-long v4, p0, v4

    and-long/2addr v4, v2

    long-to-int v5, v4

    int-to-byte v4, v5

    const/16 v5, 0x20

    shr-long v5, p0, v5

    and-long/2addr v5, v2

    long-to-int v6, v5

    int-to-byte v5, v6

    const/16 v6, 0x18

    shr-long v6, p0, v6

    and-long/2addr v6, v2

    long-to-int v7, v6

    int-to-byte v6, v7

    const/16 v7, 0x10

    shr-long v7, p0, v7

    and-long/2addr v7, v2

    long-to-int v8, v7

    int-to-byte v7, v8

    const/16 v8, 0x8

    shr-long v9, p0, v8

    and-long/2addr v9, v2

    long-to-int v10, v9

    int-to-byte v9, v10

    and-long/2addr p0, v2

    long-to-int p1, p0

    int-to-byte p0, p1

    new-array p1, v8, [B

    const/4 v2, 0x0

    aput-byte v0, p1, v2

    const/4 v0, 0x1

    aput-byte v1, p1, v0

    const/4 v0, 0x2

    aput-byte v4, p1, v0

    const/4 v0, 0x3

    aput-byte v5, p1, v0

    const/4 v0, 0x4

    aput-byte v6, p1, v0

    const/4 v0, 0x5

    aput-byte v7, p1, v0

    const/4 v0, 0x6

    aput-byte v9, p1, v0

    const/4 v0, 0x7

    aput-byte p0, p1, v0

    return-object p1
.end method

.method public static serializeMap(Ljava/util/Map;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p1}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->serializeString(Ljava/lang/String;Ljava/io/OutputStream;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->serializeString(Ljava/lang/String;Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static serializeString(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->serializeInt(I)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length v0, p0

    invoke-static {v0}, Lsk/mimac/slideshow/communication/utils/PayloadSerializationUtils;->serializeInt(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    return-void
.end method

.method public static verifySignedMessage([B[BLsk/mimac/slideshow/communication/key/PrivateKey;)V
    .locals 0

    invoke-interface {p2, p1, p0}, Lsk/mimac/slideshow/communication/key/PrivateKey;->verify([B[B)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lsk/mimac/slideshow/communication/PacketDecodingException;

    const-string p1, "Invalid signature"

    invoke-direct {p0, p1}, Lsk/mimac/slideshow/communication/PacketDecodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
