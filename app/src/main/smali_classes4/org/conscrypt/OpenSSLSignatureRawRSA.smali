.class public final Lorg/conscrypt/OpenSSLSignatureRawRSA;
.super Ljava/security/SignatureSpi;
.source "SourceFile"


# instance fields
.field private inputBuffer:[B

.field private inputIsTooLong:Z

.field private inputOffset:I

.field private key:Lorg/conscrypt/OpenSSLKey;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public engineInitSign(Ljava/security/PrivateKey;)V
    .locals 1

    instance-of v0, p1, Lorg/conscrypt/OpenSSLRSAPrivateKey;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/conscrypt/OpenSSLRSAPrivateKey;

    invoke-virtual {p1}, Lorg/conscrypt/OpenSSLRSAPrivateKey;->getOpenSSLKey()Lorg/conscrypt/OpenSSLKey;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->key:Lorg/conscrypt/OpenSSLKey;

    goto :goto_1

    :cond_0
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    invoke-static {p1}, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->getInstance(Ljava/security/interfaces/RSAPrivateCrtKey;)Lorg/conscrypt/OpenSSLKey;

    move-result-object p1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    invoke-static {p1}, Lorg/conscrypt/OpenSSLRSAPrivateKey;->getInstance(Ljava/security/interfaces/RSAPrivateKey;)Lorg/conscrypt/OpenSSLKey;

    move-result-object p1

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->key:Lorg/conscrypt/OpenSSLKey;

    invoke-virtual {p1}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object p1

    invoke-static {p1}, Lorg/conscrypt/NativeCrypto;->RSA_size(Lorg/conscrypt/NativeRef$EVP_PKEY;)I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    const/4 p1, 0x0

    iput p1, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    return-void

    :cond_2
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "Need RSA private key"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineInitVerify(Ljava/security/PublicKey;)V
    .locals 1

    instance-of v0, p1, Lorg/conscrypt/OpenSSLRSAPublicKey;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/conscrypt/OpenSSLRSAPublicKey;

    invoke-virtual {p1}, Lorg/conscrypt/OpenSSLRSAPublicKey;->getOpenSSLKey()Lorg/conscrypt/OpenSSLKey;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->key:Lorg/conscrypt/OpenSSLKey;

    goto :goto_1

    :cond_0
    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    invoke-static {p1}, Lorg/conscrypt/OpenSSLRSAPublicKey;->getInstance(Ljava/security/interfaces/RSAPublicKey;)Lorg/conscrypt/OpenSSLKey;

    move-result-object p1

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->key:Lorg/conscrypt/OpenSSLKey;

    invoke-virtual {p1}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object p1

    invoke-static {p1}, Lorg/conscrypt/NativeCrypto;->RSA_size(Lorg/conscrypt/NativeRef$EVP_PKEY;)I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    const/4 p1, 0x0

    iput p1, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    return-void

    :cond_1
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "Need RSA public key"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public engineSign()[B
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->key:Lorg/conscrypt/OpenSSLKey;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputIsTooLong:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    .line 10
    .line 11
    array-length v2, v1

    .line 12
    new-array v2, v2, [B

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    :try_start_0
    iget v4, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 16
    .line 17
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v5, 0x1

    .line 22
    invoke-static {v4, v1, v2, v0, v5}, Lorg/conscrypt/NativeCrypto;->RSA_private_encrypt(I[B[BLorg/conscrypt/NativeRef$EVP_PKEY;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    iput v3, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 26
    .line 27
    return-object v2

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    :try_start_1
    new-instance v1, Ljava/security/SignatureException;

    .line 32
    .line 33
    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :goto_0
    iput v3, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 38
    .line 39
    throw v0

    .line 40
    :cond_0
    new-instance v0, Ljava/security/SignatureException;

    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v2, "input length "

    .line 45
    .line 46
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget v2, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, " != "

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    .line 60
    .line 61
    array-length v2, v2

    .line 62
    const-string v3, " (modulus size)"

    .line 63
    .line 64
    invoke-static {v3, v2, v1}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v0

    .line 72
    :cond_1
    new-instance v0, Ljava/security/SignatureException;

    .line 73
    .line 74
    const-string v1, "Need RSA private key"

    .line 75
    .line 76
    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v0
.end method

.method public engineUpdate(B)V
    .locals 4

    .line 1
    iget v0, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    iget-object v2, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v3, v2

    if-le v1, v3, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputIsTooLong:Z

    return-void

    :cond_0
    aput-byte p1, v2, v0

    return-void
.end method

.method public engineUpdate([BII)V
    .locals 4

    .line 2
    iget v0, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    add-int v1, v0, p3

    iput v1, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    iget-object v2, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v3, v2

    if-le v1, v3, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputIsTooLong:Z

    return-void

    :cond_0
    invoke-static {p1, p2, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public engineVerify([B)Z
    .locals 6

    iget-object v0, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->key:Lorg/conscrypt/OpenSSLKey;

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputIsTooLong:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    array-length v1, p1

    iget-object v3, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v4, v3

    if-gt v1, v4, :cond_4

    array-length v1, v3

    new-array v1, v1, [B

    :try_start_0
    array-length v3, p1

    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v0

    const/4 v4, 0x1

    invoke-static {v3, p1, v1, v0, v4}, Lorg/conscrypt/NativeCrypto;->RSA_public_decrypt(I[B[BLorg/conscrypt/NativeRef$EVP_PKEY;I)I

    move-result p1
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget v0, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_3

    iget-object v3, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    aget-byte v3, v3, v0

    aget-byte v5, v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v3, v5, :cond_2

    const/4 v4, 0x0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_3
    iput v2, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    return v4

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    iput v2, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    return v2

    :goto_2
    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    :try_start_3
    new-instance v0, Ljava/security/SignatureException;

    invoke-direct {v0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    iput v2, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    throw p1

    :cond_4
    new-instance v0, Ljava/security/SignatureException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Input signature length is too large: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance p1, Ljava/security/SignatureException;

    const-string v0, "Need RSA public key"

    invoke-direct {p1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
