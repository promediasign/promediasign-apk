.class public Lcom/jcraft/jsch/KeyPairRSA;
.super Lcom/jcraft/jsch/KeyPair;
.source "SourceFile"


# static fields
.field private static final begin:[B

.field private static final end:[B

.field private static final sshrsa:[B


# instance fields
.field private c_array:[B

.field private ep_array:[B

.field private eq_array:[B

.field private key_size:I

.field private n_array:[B

.field private p_array:[B

.field private prv_array:[B

.field private pub_array:[B

.field private q_array:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "-----BEGIN RSA PRIVATE KEY-----"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairRSA;->begin:[B

    const-string v0, "-----END RSA PRIVATE KEY-----"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairRSA;->end:[B

    const-string v0, "ssh-rsa"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairRSA;->sshrsa:[B

    return-void
.end method

.method public constructor <init>(Lcom/jcraft/jsch/JSch;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Lcom/jcraft/jsch/KeyPairRSA;-><init>(Lcom/jcraft/jsch/JSch;[B[B[B)V

    return-void
.end method

.method public constructor <init>(Lcom/jcraft/jsch/JSch;[B[B[B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/KeyPair;-><init>(Lcom/jcraft/jsch/JSch;)V

    const/16 p1, 0x400

    iput p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->key_size:I

    iput-object p2, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    iput-object p3, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    iput-object p4, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    if-eqz p2, :cond_0

    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, p2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    iput p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->key_size:I

    :cond_0
    return-void
.end method

.method public static fromSSHAgent(Lcom/jcraft/jsch/JSch;Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyPair;
    .locals 4

    const/16 v0, 0x8

    const-string v1, "invalid key format"

    invoke-virtual {p1, v0, v1}, Lcom/jcraft/jsch/Buffer;->getBytes(ILjava/lang/String;)[[B

    move-result-object p1

    const/4 v0, 0x1

    aget-object v0, p1, v0

    const/4 v1, 0x2

    aget-object v1, p1, v1

    const/4 v2, 0x3

    aget-object v2, p1, v2

    new-instance v3, Lcom/jcraft/jsch/KeyPairRSA;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/jcraft/jsch/KeyPairRSA;-><init>(Lcom/jcraft/jsch/JSch;[B[B[B)V

    const/4 p0, 0x4

    aget-object p0, p1, p0

    iput-object p0, v3, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B

    const/4 p0, 0x5

    aget-object p0, p1, p0

    iput-object p0, v3, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    const/4 p0, 0x6

    aget-object p0, p1, p0

    iput-object p0, v3, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    new-instance p0, Ljava/lang/String;

    const/4 v0, 0x7

    aget-object p1, p1, v0

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([B)V

    iput-object p0, v3, Lcom/jcraft/jsch/KeyPair;->publicKeyComment:Ljava/lang/String;

    const/4 p0, 0x0

    iput p0, v3, Lcom/jcraft/jsch/KeyPair;->vendor:I

    return-object v3
.end method

.method private getCArray()[B
    .locals 3

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B

    return-object v0
.end method

.method private getEPArray()[B
    .locals 3

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->ep_array:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->ep_array:[B

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->ep_array:[B

    return-object v0
.end method

.method private getEQArray()[B
    .locals 3

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->eq_array:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->eq_array:[B

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->eq_array:[B

    return-object v0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    invoke-super {p0}, Lcom/jcraft/jsch/KeyPair;->dispose()V

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->bzero([B)V

    return-void
.end method

.method public forSSHAgent()[B
    .locals 4

    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->isEncrypted()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    sget-object v1, Lcom/jcraft/jsch/KeyPairRSA;->sshrsa:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->getCArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPair;->publicKeyComment:Ljava/lang/String;

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/jcraft/jsch/Buffer;->getByte([BII)V

    return-object v2

    :cond_0
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "key is encrypted."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getKeyTypeName()[B
    .locals 1

    sget-object v0, Lcom/jcraft/jsch/KeyPairRSA;->sshrsa:[B

    return-object v0
.end method

.method public getPublicKeyBlob()[B
    .locals 5

    invoke-super {p0}, Lcom/jcraft/jsch/KeyPair;->getPublicKeyBlob()[B

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    const/4 v2, 0x3

    new-array v2, v2, [[B

    sget-object v3, Lcom/jcraft/jsch/KeyPairRSA;->sshrsa:[B

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v2}, Lcom/jcraft/jsch/Buffer;->fromBytes([[B)Lcom/jcraft/jsch/Buffer;

    move-result-object v0

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    return-object v0
.end method

.method public getSignature([B)[B
    .locals 3

    :try_start_0
    const-string v0, "signature.rsa"

    invoke-static {v0}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/SignatureRSA;

    invoke-interface {v0}, Lcom/jcraft/jsch/Signature;->init()V

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/SignatureRSA;->setPrvKey([B[B)V

    invoke-interface {v0, p1}, Lcom/jcraft/jsch/Signature;->update([B)V

    invoke-interface {v0}, Lcom/jcraft/jsch/Signature;->sign()[B

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [[B

    sget-object v1, Lcom/jcraft/jsch/KeyPairRSA;->sshrsa:[B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/jcraft/jsch/Buffer;->fromBytes([[B)Lcom/jcraft/jsch/Buffer;

    move-result-object p1

    iget-object p1, p1, Lcom/jcraft/jsch/Buffer;->buffer:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public parse([B)Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lcom/jcraft/jsch/KeyPair;->vendor:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    array-length p1, p1

    invoke-virtual {v1, p1}, Lcom/jcraft/jsch/Buffer;->skip(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p1, ""

    const/4 v4, 0x4

    invoke-virtual {v1, v4, p1}, Lcom/jcraft/jsch/Buffer;->getBytes(ILjava/lang/String;)[[B

    move-result-object p1

    aget-object v1, p1, v0

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    aget-object v1, p1, v3

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    aget-object v1, p1, v2

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    const/4 v1, 0x3

    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B
    :try_end_1
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->getEPArray()[B

    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->getEQArray()[B

    return v3

    :catch_0
    return v0

    :cond_0
    if-ne v1, v3, :cond_3

    aget-byte v1, p1, v0

    const/16 v2, 0x30

    if-eq v1, v2, :cond_2

    new-instance v1, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    iget-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    if-eqz p1, :cond_1

    new-instance p1, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    invoke-direct {p1, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    iput p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->key_size:I

    :cond_1
    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->getEPArray()[B

    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->getEQArray()[B

    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->getCArray()[B

    return v3

    :cond_2
    return v0

    :cond_3
    aget-byte v1, p1, v3

    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_4

    and-int/lit8 v1, v1, 0x7f

    const/4 v4, 0x2

    :goto_0
    add-int/lit8 v5, v1, -0x1

    if-lez v1, :cond_5

    add-int/lit8 v1, v4, 0x1

    aget-byte v4, p1, v4

    move v4, v1

    move v1, v5

    goto :goto_0

    :cond_4
    const/4 v4, 0x2

    :cond_5
    aget-byte v1, p1, v4

    if-eq v1, v2, :cond_6

    return v0

    :cond_6
    add-int/lit8 v1, v4, 0x1

    add-int/2addr v4, v2

    aget-byte v1, p1, v1

    and-int/lit16 v5, v1, 0xff

    and-int/lit16 v6, v1, 0x80

    if-eqz v6, :cond_7

    and-int/lit8 v1, v1, 0x7f

    const/4 v5, 0x0

    :goto_1
    add-int/lit8 v6, v1, -0x1

    if-lez v1, :cond_7

    shl-int/lit8 v1, v5, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v1, v4

    move v4, v5

    move v5, v1

    move v1, v6

    goto :goto_1

    :cond_7
    add-int/2addr v4, v5

    add-int/lit8 v1, v4, 0x1

    add-int/2addr v4, v2

    aget-byte v1, p1, v1

    and-int/lit16 v5, v1, 0xff

    and-int/lit16 v6, v1, 0x80

    if-eqz v6, :cond_8

    and-int/lit8 v1, v1, 0x7f

    const/4 v5, 0x0

    :goto_2
    add-int/lit8 v6, v1, -0x1

    if-lez v1, :cond_8

    shl-int/lit8 v1, v5, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v1, v4

    move v4, v5

    move v5, v1

    move v1, v6

    goto :goto_2

    :cond_8
    new-array v1, v5, [B

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    invoke-static {p1, v4, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v5

    add-int/lit8 v1, v4, 0x1

    add-int/2addr v4, v2

    aget-byte v1, p1, v1

    and-int/lit16 v5, v1, 0xff

    and-int/lit16 v6, v1, 0x80

    if-eqz v6, :cond_9

    and-int/lit8 v1, v1, 0x7f

    const/4 v5, 0x0

    :goto_3
    add-int/lit8 v6, v1, -0x1

    if-lez v1, :cond_9

    shl-int/lit8 v1, v5, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v1, v4

    move v4, v5

    move v5, v1

    move v1, v6

    goto :goto_3

    :cond_9
    new-array v1, v5, [B

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    invoke-static {p1, v4, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v5

    add-int/lit8 v1, v4, 0x1

    add-int/2addr v4, v2

    aget-byte v1, p1, v1

    and-int/lit16 v5, v1, 0xff

    and-int/lit16 v6, v1, 0x80

    if-eqz v6, :cond_a

    and-int/lit8 v1, v1, 0x7f

    const/4 v5, 0x0

    :goto_4
    add-int/lit8 v6, v1, -0x1

    if-lez v1, :cond_a

    shl-int/lit8 v1, v5, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v1, v4

    move v4, v5

    move v5, v1

    move v1, v6

    goto :goto_4

    :cond_a
    new-array v1, v5, [B

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    invoke-static {p1, v4, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v5

    add-int/lit8 v1, v4, 0x1

    add-int/2addr v4, v2

    aget-byte v1, p1, v1

    and-int/lit16 v5, v1, 0xff

    and-int/lit16 v6, v1, 0x80

    if-eqz v6, :cond_b

    and-int/lit8 v1, v1, 0x7f

    const/4 v5, 0x0

    :goto_5
    add-int/lit8 v6, v1, -0x1

    if-lez v1, :cond_b

    shl-int/lit8 v1, v5, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v1, v4

    move v4, v5

    move v5, v1

    move v1, v6

    goto :goto_5

    :cond_b
    new-array v1, v5, [B

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    invoke-static {p1, v4, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v5

    add-int/lit8 v1, v4, 0x1

    add-int/2addr v4, v2

    aget-byte v1, p1, v1

    and-int/lit16 v5, v1, 0xff

    and-int/lit16 v6, v1, 0x80

    if-eqz v6, :cond_c

    and-int/lit8 v1, v1, 0x7f

    const/4 v5, 0x0

    :goto_6
    add-int/lit8 v6, v1, -0x1

    if-lez v1, :cond_c

    shl-int/lit8 v1, v5, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v1, v4

    move v4, v5

    move v5, v1

    move v1, v6

    goto :goto_6

    :cond_c
    new-array v1, v5, [B

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    invoke-static {p1, v4, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v5

    add-int/lit8 v1, v4, 0x1

    add-int/2addr v4, v2

    aget-byte v1, p1, v1

    and-int/lit16 v5, v1, 0xff

    and-int/lit16 v6, v1, 0x80

    if-eqz v6, :cond_d

    and-int/lit8 v1, v1, 0x7f

    const/4 v5, 0x0

    :goto_7
    add-int/lit8 v6, v1, -0x1

    if-lez v1, :cond_d

    shl-int/lit8 v1, v5, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v1, v4

    move v4, v5

    move v5, v1

    move v1, v6

    goto :goto_7

    :cond_d
    new-array v1, v5, [B

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->ep_array:[B

    invoke-static {p1, v4, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v5

    add-int/lit8 v1, v4, 0x1

    add-int/2addr v4, v2

    aget-byte v1, p1, v1

    and-int/lit16 v5, v1, 0xff

    and-int/lit16 v6, v1, 0x80

    if-eqz v6, :cond_e

    and-int/lit8 v1, v1, 0x7f

    const/4 v5, 0x0

    :goto_8
    add-int/lit8 v6, v1, -0x1

    if-lez v1, :cond_e

    shl-int/lit8 v1, v5, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v1, v4

    move v4, v5

    move v5, v1

    move v1, v6

    goto :goto_8

    :cond_e
    new-array v1, v5, [B

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->eq_array:[B

    invoke-static {p1, v4, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v5

    add-int/lit8 v1, v4, 0x1

    add-int/2addr v4, v2

    aget-byte v1, p1, v1

    and-int/lit16 v2, v1, 0xff

    and-int/lit16 v5, v1, 0x80

    if-eqz v5, :cond_f

    and-int/lit8 v1, v1, 0x7f

    const/4 v2, 0x0

    :goto_9
    add-int/lit8 v5, v1, -0x1

    if-lez v1, :cond_f

    shl-int/lit8 v1, v2, 0x8

    add-int/lit8 v2, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v1, v4

    move v4, v2

    move v2, v1

    move v1, v5

    goto :goto_9

    :cond_f
    new-array v1, v2, [B

    iput-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B

    invoke-static {p1, v4, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    if-eqz p1, :cond_10

    new-instance p1, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    invoke-direct {p1, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    iput p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->key_size:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_10
    return v3

    :catch_1
    return v0
.end method
