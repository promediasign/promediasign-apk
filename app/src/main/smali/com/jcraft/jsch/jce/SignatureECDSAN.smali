.class public abstract Lcom/jcraft/jsch/jce/SignatureECDSAN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jcraft/jsch/SignatureECDSA;


# instance fields
.field keyFactory:Ljava/security/KeyFactory;

.field signature:Ljava/security/Signature;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private bzero([B)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aput-byte v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private chop0([B)[B
    .locals 4

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    new-array v3, v1, [B

    invoke-static {p1, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/jce/SignatureECDSAN;->bzero([B)V

    return-object v3
.end method

.method private insert0([B)[B
    .locals 4

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    return-object p1

    :cond_0
    array-length v1, p1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/jce/SignatureECDSAN;->bzero([B)V

    return-object v1
.end method


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public init()V
    .locals 2

    invoke-virtual {p0}, Lcom/jcraft/jsch/jce/SignatureECDSAN;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ecdsa-sha2-nistp384"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "SHA384withECDSA"

    goto :goto_0

    :cond_0
    const-string v1, "ecdsa-sha2-nistp521"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SHA512withECDSA"

    goto :goto_0

    :cond_1
    const-string v0, "SHA256withECDSA"

    :goto_0
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/SignatureECDSAN;->signature:Ljava/security/Signature;

    const-string v0, "EC"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/SignatureECDSAN;->keyFactory:Ljava/security/KeyFactory;

    return-void
.end method

.method public setPrvKey([B)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/jce/SignatureECDSAN;->insert0([B)[B

    move-result-object p1

    array-length v0, p1

    const/16 v1, 0x40

    if-lt v0, v1, :cond_0

    const-string v0, "secp521r1"

    goto :goto_0

    :cond_0
    array-length v0, p1

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    const-string v0, "secp384r1"

    goto :goto_0

    :cond_1
    const-string v0, "secp256r1"

    :goto_0
    const-string v1, "EC"

    invoke-static {v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    invoke-direct {v2, v0}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    const-class v0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljava/security/spec/ECParameterSpec;

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    iget-object p1, p0, Lcom/jcraft/jsch/jce/SignatureECDSAN;->keyFactory:Ljava/security/KeyFactory;

    new-instance v2, Ljava/security/spec/ECPrivateKeySpec;

    invoke-direct {v2, v1, v0}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {p1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    iget-object v0, p0, Lcom/jcraft/jsch/jce/SignatureECDSAN;->signature:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    return-void
.end method

.method public setPubKey([B[B)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/jce/SignatureECDSAN;->insert0([B)[B

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/jcraft/jsch/jce/SignatureECDSAN;->insert0([B)[B

    move-result-object p2

    array-length v0, p1

    const/16 v1, 0x40

    if-lt v0, v1, :cond_0

    const-string v0, "secp521r1"

    goto :goto_0

    :cond_0
    array-length v0, p1

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    const-string v0, "secp384r1"

    goto :goto_0

    :cond_1
    const-string v0, "secp256r1"

    :goto_0
    const-string v1, "EC"

    invoke-static {v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECGenParameterSpec;

    invoke-direct {v2, v0}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    const-class v0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljava/security/spec/ECParameterSpec;

    new-instance v1, Ljava/security/spec/ECPoint;

    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v3, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v1, v2, p1}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iget-object p1, p0, Lcom/jcraft/jsch/jce/SignatureECDSAN;->keyFactory:Ljava/security/KeyFactory;

    new-instance p2, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {p2, v1, v0}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {p1, p2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    iget-object p2, p0, Lcom/jcraft/jsch/jce/SignatureECDSAN;->signature:Ljava/security/Signature;

    invoke-virtual {p2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    return-void
.end method

.method public sign()[B
    .locals 8

    iget-object v0, p0, Lcom/jcraft/jsch/jce/SignatureECDSAN;->signature:Ljava/security/Signature;

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/16 v3, 0x30

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    add-int/lit8 v3, v2, 0x2

    array-length v4, v0

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v3, v4, :cond_0

    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_2

    aget-byte v3, v0, v6

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v3, v5

    array-length v4, v0

    if-ne v3, v4, :cond_2

    :cond_0
    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    aget-byte v2, v0, v6

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v2, v5

    array-length v3, v0

    if-ne v2, v3, :cond_1

    const/4 v5, 0x4

    :cond_1
    aget-byte v2, v0, v5

    new-array v3, v2, [B

    add-int/lit8 v4, v5, 0x2

    add-int/2addr v4, v2

    aget-byte v4, v0, v4

    new-array v6, v4, [B

    add-int/lit8 v7, v5, 0x1

    invoke-static {v0, v7, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v5, 0x3

    aget-byte v5, v0, v5

    add-int/2addr v2, v5

    invoke-static {v0, v2, v6, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v3}, Lcom/jcraft/jsch/jce/SignatureECDSAN;->chop0([B)[B

    move-result-object v0

    invoke-direct {p0, v6}, Lcom/jcraft/jsch/jce/SignatureECDSAN;->chop0([B)[B

    move-result-object v2

    new-instance v3, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v3}, Lcom/jcraft/jsch/Buffer;-><init>()V

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    invoke-virtual {v3, v2}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v3, v1}, Lcom/jcraft/jsch/Buffer;->setOffSet(I)V

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    :cond_2
    return-object v0
.end method

.method public update([B)V
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/jce/SignatureECDSAN;->signature:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    return-void
.end method

.method public verify([B)Z
    .locals 10

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/16 v5, 0x30

    if-ne v1, v5, :cond_0

    aget-byte v1, p1, v3

    add-int/lit8 v6, v1, 0x2

    array-length v7, p1

    if-eq v6, v7, :cond_2

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    aget-byte v1, p1, v4

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v1, v2

    array-length v6, p1

    if-eq v1, v6, :cond_2

    :cond_0
    new-instance v1, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    move-result-object p1

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/jce/SignatureECDSAN;->insert0([B)[B

    move-result-object p1

    invoke-direct {p0, v1}, Lcom/jcraft/jsch/jce/SignatureECDSAN;->insert0([B)[B

    move-result-object v1

    array-length v6, p1

    const/16 v7, 0x40

    const/4 v8, 0x5

    const/4 v9, 0x4

    if-ge v6, v7, :cond_1

    array-length v6, p1

    add-int/lit8 v6, v6, 0x6

    array-length v7, v1

    add-int/2addr v6, v7

    new-array v6, v6, [B

    aput-byte v5, v6, v0

    array-length v5, p1

    add-int/2addr v5, v9

    array-length v7, v1

    add-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v6, v3

    aput-byte v4, v6, v4

    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v6, v2

    array-length v2, p1

    invoke-static {p1, v0, v6, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p1

    add-int/2addr v2, v9

    aput-byte v4, v6, v2

    array-length v2, p1

    add-int/2addr v2, v8

    array-length v3, v1

    int-to-byte v3, v3

    aput-byte v3, v6, v2

    array-length p1, p1

    add-int/lit8 p1, p1, 0x6

    array-length v2, v1

    invoke-static {v1, v0, v6, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    move-object p1, v6

    goto :goto_1

    :cond_1
    array-length v6, p1

    add-int/lit8 v6, v6, 0x6

    array-length v7, v1

    add-int/2addr v6, v7

    add-int/2addr v6, v3

    new-array v6, v6, [B

    aput-byte v5, v6, v0

    const/16 v5, -0x7f

    aput-byte v5, v6, v3

    array-length v3, p1

    add-int/2addr v3, v9

    array-length v5, v1

    add-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v6, v4

    aput-byte v4, v6, v2

    array-length v2, p1

    int-to-byte v2, v2

    aput-byte v2, v6, v9

    array-length v2, p1

    invoke-static {p1, v0, v6, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p1

    add-int/2addr v2, v8

    aput-byte v4, v6, v2

    array-length v2, p1

    add-int/lit8 v2, v2, 0x6

    array-length v3, v1

    int-to-byte v3, v3

    aput-byte v3, v6, v2

    array-length p1, p1

    add-int/lit8 p1, p1, 0x7

    array-length v2, v1

    invoke-static {v1, v0, v6, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/jcraft/jsch/jce/SignatureECDSAN;->signature:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p1

    return p1
.end method
