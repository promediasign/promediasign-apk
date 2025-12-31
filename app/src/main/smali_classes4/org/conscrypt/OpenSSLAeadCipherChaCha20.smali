.class public Lorg/conscrypt/OpenSSLAeadCipherChaCha20;
.super Lorg/conscrypt/OpenSSLAeadCipher;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/conscrypt/OpenSSLCipher$Mode;->POLY1305:Lorg/conscrypt/OpenSSLCipher$Mode;

    invoke-direct {p0, v0}, Lorg/conscrypt/OpenSSLAeadCipher;-><init>(Lorg/conscrypt/OpenSSLCipher$Mode;)V

    return-void
.end method


# virtual methods
.method public checkSupportedKeySize(I)V
    .locals 3

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    .line 7
    .line 8
    const-string v1, "Unsupported key size: "

    .line 9
    .line 10
    const-string v2, " bytes (must be 32)"

    .line 11
    .line 12
    invoke-static {p1, v1, v2}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {v0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public checkSupportedMode(Lorg/conscrypt/OpenSSLCipher$Mode;)V
    .locals 1

    sget-object v0, Lorg/conscrypt/OpenSSLCipher$Mode;->POLY1305:Lorg/conscrypt/OpenSSLCipher$Mode;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/security/NoSuchAlgorithmException;

    const-string v0, "Mode must be Poly1305"

    invoke-direct {p1, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBaseCipherName()Ljava/lang/String;
    .locals 1

    const-string v0, "ChaCha20"

    return-object v0
.end method

.method public getCipherBlockSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEVP_AEAD(I)J
    .locals 2

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lorg/conscrypt/NativeCrypto;->EVP_aead_chacha20_poly1305()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 11
    .line 12
    const-string v1, "Unexpected key length: "

    .line 13
    .line 14
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public getOutputSizeForFinal(I)I
    .locals 1

    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLCipher;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x10

    return v0

    :cond_0
    iget v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x10

    const/4 p1, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method
