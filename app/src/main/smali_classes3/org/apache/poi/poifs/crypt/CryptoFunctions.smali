.class public Lorg/apache/poi/poifs/crypt/CryptoFunctions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final ENCRYPTION_MATRIX:[[I

.field private static final INITIAL_CODE_ARRAY:[I

.field private static final PAD_ARRAY:[B


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/16 v0, 0xf

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->INITIAL_CODE_ARRAY:[I

    new-array v2, v0, [B

    fill-array-data v2, :array_1

    sput-object v2, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->PAD_ARRAY:[B

    const/4 v2, 0x7

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    new-array v4, v2, [I

    fill-array-data v4, :array_3

    new-array v5, v2, [I

    fill-array-data v5, :array_4

    new-array v6, v2, [I

    fill-array-data v6, :array_5

    new-array v7, v2, [I

    fill-array-data v7, :array_6

    new-array v8, v2, [I

    fill-array-data v8, :array_7

    new-array v9, v2, [I

    fill-array-data v9, :array_8

    new-array v10, v2, [I

    fill-array-data v10, :array_9

    new-array v11, v2, [I

    fill-array-data v11, :array_a

    new-array v12, v2, [I

    fill-array-data v12, :array_b

    new-array v13, v2, [I

    fill-array-data v13, :array_c

    new-array v14, v2, [I

    fill-array-data v14, :array_d

    new-array v15, v2, [I

    fill-array-data v15, :array_e

    new-array v1, v2, [I

    fill-array-data v1, :array_f

    move-object/from16 v17, v1

    new-array v1, v2, [I

    fill-array-data v1, :array_10

    new-array v0, v0, [[I

    const/16 v16, 0x0

    aput-object v3, v0, v16

    const/4 v3, 0x1

    aput-object v4, v0, v3

    const/4 v3, 0x2

    aput-object v5, v0, v3

    const/4 v3, 0x3

    aput-object v6, v0, v3

    const/4 v3, 0x4

    aput-object v7, v0, v3

    const/4 v3, 0x5

    aput-object v8, v0, v3

    const/4 v3, 0x6

    aput-object v9, v0, v3

    aput-object v10, v0, v2

    const/16 v2, 0x8

    aput-object v11, v0, v2

    const/16 v2, 0x9

    aput-object v12, v0, v2

    const/16 v2, 0xa

    aput-object v13, v0, v2

    const/16 v2, 0xb

    aput-object v14, v0, v2

    const/16 v2, 0xc

    aput-object v15, v0, v2

    const/16 v2, 0xd

    aput-object v17, v0, v2

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->ENCRYPTION_MATRIX:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0xe1f0
        0x1d0f
        0xcc9c
        0x84c0
        0x110c
        0xe10
        0xf1ce
        0x313e
        0x1872
        0xe139
        0xd40f
        0x84f9
        0x280c
        0xa96a
        0x4ec3
    .end array-data

    :array_1
    .array-data 1
        -0x45t
        -0x1t
        -0x1t
        -0x46t
        -0x1t
        -0x1t
        -0x47t
        -0x80t
        0x0t
        -0x42t
        0xft
        0x0t
        -0x41t
        0xft
        0x0t
    .end array-data

    :array_2
    .array-data 4
        0xaefc
        0x4dd9
        0x9bb2
        0x2745
        0x4e8a
        0x9d14
        0x2a09
    .end array-data

    :array_3
    .array-data 4
        0x7b61
        0xf6c2
        0xfda5
        0xeb6b
        0xc6f7
        0x9dcf
        0x2bbf
    .end array-data

    :array_4
    .array-data 4
        0x4563
        0x8ac6
        0x5ad
        0xb5a
        0x16b4
        0x2d68
        0x5ad0
    .end array-data

    :array_5
    .array-data 4
        0x375
        0x6ea
        0xdd4
        0x1ba8
        0x3750
        0x6ea0
        0xdd40
    .end array-data

    :array_6
    .array-data 4
        0xd849
        0xa0b3
        0x5147
        0xa28e
        0x553d
        0xaa7a
        0x44d5
    .end array-data

    :array_7
    .array-data 4
        0x6f45
        0xde8a
        0xad35
        0x4a4b
        0x9496
        0x390d
        0x721a
    .end array-data

    :array_8
    .array-data 4
        0xeb23
        0xc667
        0x9cef
        0x29ff
        0x53fe
        0xa7fc
        0x5fd9
    .end array-data

    :array_9
    .array-data 4
        0x47d3
        0x8fa6
        0xf6d
        0x1eda
        0x3db4
        0x7b68
        0xf6d0
    .end array-data

    :array_a
    .array-data 4
        0xb861
        0x60e3
        0xc1c6
        0x93ad
        0x377b
        0x6ef6
        0xddec
    .end array-data

    :array_b
    .array-data 4
        0x45a0
        0x8b40
        0x6a1
        0xd42
        0x1a84
        0x3508
        0x6a10
    .end array-data

    :array_c
    .array-data 4
        0xaa51
        0x4483
        0x8906
        0x22d
        0x45a
        0x8b4
        0x1168
    .end array-data

    :array_d
    .array-data 4
        0x76b4
        0xed68
        0xcaf1
        0x85c3
        0x1ba7
        0x374e
        0x6e9c
    .end array-data

    :array_e
    .array-data 4
        0x3730
        0x6e60
        0xdcc0
        0xa9a1
        0x4363
        0x86c6
        0x1dad
    .end array-data

    :array_f
    .array-data 4
        0x3331
        0x6662
        0xccc4
        0x89a9
        0x373
        0x6e6
        0xdcc
    .end array-data

    :array_10
    .array-data 4
        0x1021
        0x2042
        0x4084
        0x8108
        0x1231
        0x2462
        0x48c4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createXorArray1(Ljava/lang/String;)[B
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0xf

    if-le v2, v4, :cond_0

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v2, "ASCII"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const/16 v4, 0x10

    new-array v5, v4, [B

    array-length v6, v2

    invoke-static {v2, v3, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v6, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->PAD_ARRAY:[B

    array-length v7, v2

    array-length v8, v6

    array-length v2, v2

    sub-int/2addr v8, v2

    add-int/2addr v8, v1

    invoke-static {v6, v3, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->createXorKey1(Ljava/lang/String;)I

    move-result p0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    ushr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    new-array v6, v0, [B

    aput-byte v2, v6, v3

    aput-byte p0, v6, v1

    :goto_0
    if-ge v3, v4, :cond_1

    aget-byte p0, v5, v3

    and-int/lit8 v2, v3, 0x1

    aget-byte v2, v6, v2

    xor-int/2addr p0, v2

    int-to-byte p0, p0

    aput-byte p0, v5, v3

    invoke-static {p0, v0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->rotateLeft(BI)B

    move-result p0

    aput-byte p0, v5, v3

    add-int/2addr v3, v1

    goto :goto_0

    :cond_1
    return-object v5
.end method

.method public static createXorKey1(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->createXorVerifier2(Ljava/lang/String;)I

    move-result p0

    ushr-int/lit8 p0, p0, 0x10

    return p0
.end method

.method public static createXorVerifier1(Ljava/lang/String;)I
    .locals 3

    invoke-static {p0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->toAnsiPassword(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_1

    array-length p0, v0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_0

    invoke-static {v1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->rotateLeftBase15Bit(S)S

    move-result v1

    aget-byte v2, v0, p0

    xor-int/2addr v1, v2

    int-to-short v1, v1

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->rotateLeftBase15Bit(S)S

    move-result p0

    array-length v0, v0

    xor-int/2addr p0, v0

    int-to-short p0, p0

    const v0, 0xce4b

    xor-int/2addr p0, v0

    int-to-short v1, p0

    :cond_1
    const p0, 0xffff

    and-int/2addr p0, v1

    return p0
.end method

.method public static createXorVerifier2(Ljava/lang/String;)I
    .locals 11

    const/4 v0, 0x4

    new-array v0, v0, [B

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->toAnsiPassword(Ljava/lang/String;)[B

    move-result-object v1

    sget-object v4, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->INITIAL_CODE_ARRAY:[I

    array-length v5, v1

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget v4, v4, v5

    const/4 v5, 0x0

    :goto_0
    array-length v7, v1

    if-ge v5, v7, :cond_2

    array-length v7, v1

    rsub-int/lit8 v7, v7, 0xf

    add-int/2addr v7, v5

    const/4 v8, 0x0

    :goto_1
    const/4 v9, 0x7

    if-ge v8, v9, :cond_1

    aget-byte v9, v1, v5

    shl-int v10, v6, v8

    and-int/2addr v9, v10

    if-eqz v9, :cond_0

    sget-object v9, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->ENCRYPTION_MATRIX:[[I

    aget-object v9, v9, v7

    aget v9, v9, v8

    xor-int/2addr v4, v9

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->createXorVerifier1(Ljava/lang/String;)I

    move-result p0

    int-to-short p0, p0

    invoke-static {v0, v3, p0}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    const/4 p0, 0x2

    int-to-short v1, v4

    invoke-static {v0, p0, v1}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    :cond_3
    invoke-static {v0}, Lorg/apache/poi/util/LittleEndian;->getInt([B)I

    move-result p0

    return p0
.end method

.method public static generateIv(Lorg/apache/poi/poifs/crypt/HashAlgorithm;[B[BI)[B
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {p0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    :cond_0
    invoke-static {p1, p3}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlock36([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static generateKey([BLorg/apache/poi/poifs/crypt/HashAlgorithm;[BI)[B
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p1, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0, p3}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlock36([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static getBlock0([BI)[B
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlockX([BIB)[B

    move-result-object p0

    return-object p0
.end method

.method private static getBlock36([BI)[B
    .locals 1

    const/16 v0, 0x36

    invoke-static {p0, p1, v0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlockX([BIB)[B

    move-result-object p0

    return-object p0
.end method

.method private static getBlockX([BIB)[B
    .locals 1

    array-length v0, p0

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    new-array v0, p1, [B

    invoke-static {v0, p2}, Ljava/util/Arrays;->fill([BB)V

    array-length p2, p0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p0, p2, v0, p2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static getCipher(Ljava/security/Key;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BILjava/lang/String;)Ljavax/crypto/Cipher;
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    if-nez p5, :cond_0

    const-string p5, "NoPadding"

    :cond_0
    :try_start_0
    iget-object v1, p1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    invoke-static {v1}, Ljavax/crypto/Cipher;->getMaxAllowedKeyLength(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v0, v0, 0x8

    if-lt v1, v0, :cond_5

    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rc4:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    if-ne p1, v0, :cond_1

    iget-object p2, p1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    :goto_0
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_1
    iget-boolean v0, p1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->needsBouncyCastle:Z
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "/"

    if-eqz v0, :cond_2

    :try_start_1
    invoke-static {}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->registerBouncyCastle()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lorg/apache/poi/poifs/crypt/ChainingMode;->jceId:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p5, "BC"

    invoke-static {p2, p5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lorg/apache/poi/poifs/crypt/ChainingMode;->jceId:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :goto_1
    if-nez p3, :cond_3

    invoke-virtual {p2, p4, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    goto :goto_3

    :cond_3
    sget-object p5, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rc2:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    if-ne p1, p5, :cond_4

    new-instance p1, Ljavax/crypto/spec/RC2ParameterSpec;

    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object p5

    array-length p5, p5

    mul-int/lit8 p5, p5, 0x8

    invoke-direct {p1, p5, p3}, Ljavax/crypto/spec/RC2ParameterSpec;-><init>(I[B)V

    goto :goto_2

    :cond_4
    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p1, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    :goto_2
    invoke-virtual {p2, p4, p0, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    :goto_3
    return-object p2

    :cond_5
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    const-string p1, "Export Restrictions in place - please install JCE Unlimited Strength Jurisdiction Policy files"

    invoke-direct {p0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    new-instance p1, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {p1, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getCipher(Ljavax/crypto/SecretKey;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BI)Ljavax/crypto/Cipher;
    .locals 6

    .line 2
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljava/security/Key;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BILjava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0
.end method

.method public static getMac(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljavax/crypto/Mac;
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->needsBouncyCastle:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->registerBouncyCastle()V

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->jceHmacId:Ljava/lang/String;

    const-string v0, "BC"

    invoke-static {p0, v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->jceHmacId:Ljava/lang/String;

    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v1, "hmac algo not supported"

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->needsBouncyCastle:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->registerBouncyCastle()V

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->jceId:Ljava/lang/String;

    const-string v0, "BC"

    invoke-static {p0, v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->jceId:Ljava/lang/String;

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v1, "hash algo not supported"

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static hashPassword(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;[BI)[B
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->hashPassword(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;[BIZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static hashPassword(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;[BIZ)[B
    .locals 4

    .line 2
    if-nez p0, :cond_0

    const-string p0, "VelvetSweatshop"

    :cond_0
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/security/MessageDigest;->update([B)V

    invoke-static {p0}, Lorg/apache/poi/util/StringUtil;->getToUnicodeLE(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    const/4 p2, 0x4

    new-array p2, p2, [B

    if-eqz p4, :cond_1

    move-object v0, p2

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    if-eqz p4, :cond_2

    move-object p4, p0

    goto :goto_1

    :cond_2
    move-object p4, p2

    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p3, :cond_3

    :try_start_0
    invoke-static {p2, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    invoke-virtual {p1}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p1, p4}, Ljava/security/MessageDigest;->update([B)V

    array-length v3, p0

    invoke-virtual {p1, p0, v1, v3}, Ljava/security/MessageDigest;->digest([BII)I
    :try_end_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    const-string p1, "error in password hashing"

    invoke-direct {p0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-object p0
.end method

.method public static registerBouncyCastle()V
    .locals 3

    const-string v0, "BC"

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "org.bouncycastle.jce.provider.BouncyCastleProvider"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider;

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/poi/EncryptedDocumentException;

    const-string v2, "Only the BouncyCastle provider supports your encryption settings - please add it to the classpath."

    invoke-direct {v1, v2, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static rotateLeft(BI)B
    .locals 1

    and-int/lit16 p0, p0, 0xff

    shl-int v0, p0, p1

    rsub-int/lit8 p1, p1, 0x8

    ushr-int/2addr p0, p1

    or-int/2addr p0, v0

    int-to-byte p0, p0

    return p0
.end method

.method private static rotateLeftBase15Bit(S)S
    .locals 2

    and-int/lit16 v0, p0, 0x4000

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    int-to-short v0, v0

    shl-int/2addr p0, v1

    and-int/lit16 p0, p0, 0x7fff

    int-to-short p0, p0

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method private static toAnsiPassword(Ljava/lang/String;)[B
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    and-int/lit16 v3, v2, 0xff

    int-to-byte v3, v3

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    move v3, v2

    :goto_1
    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static xorHashPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->createXorVerifier2(Ljava/lang/String;)I

    move-result p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "%1$08X"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static xorHashPasswordReversed(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {p0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->createXorVerifier2(Ljava/lang/String;)I

    move-result p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    and-int/lit16 v1, p0, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    ushr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    ushr-int/lit8 v3, p0, 0x10

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    ushr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object v3, v4, v1

    const/4 v1, 0x3

    aput-object p0, v4, v1

    const-string p0, "%1$02X%2$02X%3$02X%4$02X"

    invoke-static {v0, p0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
