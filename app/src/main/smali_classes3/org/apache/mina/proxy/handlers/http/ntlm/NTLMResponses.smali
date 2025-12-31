.class public Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static LM_HASH_MAGIC_CONSTANT:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "KGS!@#$%"

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->LM_HASH_MAGIC_CONSTANT:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createBlob([B[BJ)[B
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x4

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    new-array v3, v1, [B

    fill-array-data v3, :array_1

    new-array v4, v1, [B

    fill-array-data v4, :array_2

    new-array v5, v1, [B

    fill-array-data v5, :array_3

    const-wide v6, 0xa9730b66800L

    add-long/2addr p2, v6

    const-wide/16 v6, 0x2710

    mul-long p2, p2, v6

    const/16 v6, 0x8

    new-array v7, v6, [B

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_0

    long-to-int v9, p2

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    ushr-long/2addr p2, v6

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    array-length p2, p1

    add-int/lit8 p2, p2, 0x14

    array-length p3, p0

    add-int/2addr p2, p3

    add-int/2addr p2, v1

    new-array p2, p2, [B

    invoke-static {v2, v0, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3, v0, p2, v1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v7, v0, p2, v6, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p3, p1

    const/16 v2, 0x10

    invoke-static {p1, v0, p2, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    add-int/2addr v2, p1

    invoke-static {v4, v0, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p1, p1, 0x14

    array-length p3, p0

    invoke-static {p0, v0, p2, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    add-int/2addr p1, p0

    invoke-static {v5, v0, p2, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static createDESKey([BI)Ljava/security/Key;
    .locals 16

    const/4 v0, 0x7

    new-array v1, v0, [B

    const/4 v2, 0x0

    move-object/from16 v3, p0

    move/from16 v4, p1

    invoke-static {v3, v4, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v3, v1, v2

    shl-int/lit8 v4, v3, 0x7

    const/4 v5, 0x1

    aget-byte v6, v1, v5

    and-int/lit16 v7, v6, 0xff

    ushr-int/2addr v7, v5

    or-int/2addr v4, v7

    int-to-byte v4, v4

    const/4 v7, 0x6

    shl-int/2addr v6, v7

    const/4 v8, 0x2

    aget-byte v9, v1, v8

    and-int/lit16 v10, v9, 0xff

    ushr-int/2addr v10, v8

    or-int/2addr v6, v10

    int-to-byte v6, v6

    const/4 v10, 0x5

    shl-int/2addr v9, v10

    const/4 v11, 0x3

    aget-byte v12, v1, v11

    and-int/lit16 v13, v12, 0xff

    ushr-int/2addr v13, v11

    or-int/2addr v9, v13

    int-to-byte v9, v9

    const/4 v13, 0x4

    shl-int/2addr v12, v13

    aget-byte v14, v1, v13

    and-int/lit16 v15, v14, 0xff

    ushr-int/2addr v15, v13

    or-int/2addr v12, v15

    int-to-byte v12, v12

    shl-int/2addr v14, v11

    aget-byte v15, v1, v10

    and-int/lit16 v0, v15, 0xff

    ushr-int/2addr v0, v10

    or-int/2addr v0, v14

    int-to-byte v0, v0

    shl-int/lit8 v14, v15, 0x2

    aget-byte v1, v1, v7

    and-int/lit16 v15, v1, 0xff

    ushr-int/2addr v15, v7

    or-int/2addr v14, v15

    int-to-byte v14, v14

    shl-int/2addr v1, v5

    int-to-byte v1, v1

    const/16 v15, 0x8

    new-array v15, v15, [B

    aput-byte v3, v15, v2

    aput-byte v4, v15, v5

    aput-byte v6, v15, v8

    aput-byte v9, v15, v11

    aput-byte v12, v15, v13

    aput-byte v0, v15, v10

    aput-byte v14, v15, v7

    const/4 v0, 0x7

    aput-byte v1, v15, v0

    invoke-static {v15}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->oddParity([B)V

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "DES"

    invoke-direct {v0, v15, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static getLMResponse(Ljava/lang/String;[B)[B
    .locals 0

    invoke-static {p0}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->lmHash(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->lmResponse([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static getLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)[B
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->ntlmv2Hash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, p4, p3}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->lmv2Response([B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static getNTLM2SessionResponse(Ljava/lang/String;[B[B)[B
    .locals 2

    invoke-static {p0}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->ntlmHash(Ljava/lang/String;)[B

    move-result-object p0

    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V

    const/16 p1, 0x8

    new-array p2, p1, [B

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p0, p2}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->lmResponse([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static getNTLMResponse(Ljava/lang/String;[B)[B
    .locals 0

    invoke-static {p0}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->ntlmHash(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->lmResponse([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static getNTLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B)[B
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->getNTLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[BJ)[B

    move-result-object p0

    return-object p0
.end method

.method public static getNTLMv2Response(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[BJ)[B
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->ntlmv2Hash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p3, p5, p6, p7}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->createBlob([B[BJ)[B

    move-result-object p1

    invoke-static {p0, p1, p4}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->lmv2Response([B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static hmacMD5([B[B)[B
    .locals 8

    const/16 v0, 0x40

    new-array v1, v0, [B

    new-array v2, v0, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    array-length v5, p1

    const/16 v6, 0x5c

    const/16 v7, 0x36

    if-ge v4, v5, :cond_0

    aget-byte v5, p1, v4

    xor-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    aget-byte v5, p1, v4

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    goto :goto_1

    :cond_0
    aput-byte v7, v1, v4

    aput-byte v6, v2, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    array-length p1, p0

    add-int/2addr p1, v0

    new-array p1, p1, [B

    invoke-static {v1, v3, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    invoke-static {p0, v3, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string p0, "MD5"

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    array-length v1, p1

    add-int/2addr v1, v0

    new-array v1, v1, [B

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p1

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method private static lmHash(Ljava/lang/String;)[B
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    array-length v0, p0

    const/16 v1, 0xe

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v2}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->createDESKey([BI)Ljava/security/Key;

    move-result-object p0

    const/4 v0, 0x7

    invoke-static {v1, v0}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->createDESKey([BI)Ljava/security/Key;

    move-result-object v0

    const-string v1, "DES/ECB/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    sget-object p0, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->LM_HASH_MAGIC_CONSTANT:[B

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    invoke-virtual {v1, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    sget-object v0, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->LM_HASH_MAGIC_CONSTANT:[B

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    const/16 v1, 0x10

    new-array v1, v1, [B

    const/16 v3, 0x8

    invoke-static {p0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, v2, v1, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private static lmResponse([B[B)[B
    .locals 6

    const/16 v0, 0x15

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, v1}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->createDESKey([BI)Ljava/security/Key;

    move-result-object p0

    const/4 v3, 0x7

    invoke-static {v0, v3}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->createDESKey([BI)Ljava/security/Key;

    move-result-object v3

    const/16 v4, 0xe

    invoke-static {v0, v4}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->createDESKey([BI)Ljava/security/Key;

    move-result-object v0

    const-string v4, "DES/ECB/NoPadding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v4, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    invoke-virtual {v4, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v4, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    invoke-virtual {v4, v5, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v4, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    const/16 v0, 0x18

    new-array v0, v0, [B

    const/16 v4, 0x8

    invoke-static {p0, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3, v1, v0, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v1, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static lmv2Response([B[B[B)[B
    .locals 3

    array-length v0, p2

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p2, p2

    array-length v1, p1

    invoke-static {p1, v2, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, p0}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->hmacMD5([B[B)[B

    move-result-object p0

    array-length p2, p0

    array-length v0, p1

    add-int/2addr p2, v0

    new-array p2, p2, [B

    array-length v0, p0

    invoke-static {p0, v2, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length v0, p1

    invoke-static {p1, v2, p2, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method

.method private static ntlmHash(Ljava/lang/String;)[B
    .locals 1

    const-string v0, "UnicodeLittleUnmarked"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const-string v0, "MD4"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method private static ntlmv2Hash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    invoke-static {p2}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->ntlmHash(Ljava/lang/String;)[B

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UnicodeLittleUnmarked"

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, p2}, Lorg/apache/mina/proxy/handlers/http/ntlm/NTLMResponses;->hmacMD5([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static oddParity([B)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-byte v1, p0, v0

    ushr-int/lit8 v2, v1, 0x7

    ushr-int/lit8 v3, v1, 0x6

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v1, 0x4

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v1, 0x3

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v1, 0x2

    xor-int/2addr v2, v3

    ushr-int/lit8 v3, v1, 0x1

    xor-int/2addr v2, v3

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    or-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    goto :goto_1

    :cond_0
    and-int/lit8 v1, v1, -0x2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
