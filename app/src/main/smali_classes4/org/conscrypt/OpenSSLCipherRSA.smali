.class public abstract Lorg/conscrypt/OpenSSLCipherRSA;
.super Ljavax/crypto/CipherSpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/OpenSSLCipherRSA$OAEP;,
        Lorg/conscrypt/OpenSSLCipherRSA$Raw;,
        Lorg/conscrypt/OpenSSLCipherRSA$PKCS1;,
        Lorg/conscrypt/OpenSSLCipherRSA$DirectRSA;
    }
.end annotation


# instance fields
.field private buffer:[B

.field private bufferOffset:I

.field encrypting:Z

.field private inputTooLarge:Z

.field key:Lorg/conscrypt/OpenSSLKey;

.field padding:I

.field usingPrivateKey:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    iput p1, p0, Lorg/conscrypt/OpenSSLCipherRSA;->padding:I

    return-void
.end method


# virtual methods
.method public doCryptoInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 0

    return-void
.end method

.method public abstract doCryptoOperation([B[B)I
.end method

.method public engineDoFinal([BII[BI)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/conscrypt/OpenSSLCipherRSA;->engineDoFinal([BII)[B

    move-result-object p1

    array-length p2, p1

    add-int/2addr p2, p5

    array-length p3, p4

    if-gt p2, p3, :cond_0

    const/4 p2, 0x0

    array-length p3, p1

    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    return p1

    :cond_0
    new-instance p1, Lorg/conscrypt/ShortBufferWithoutStackTraceException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p5, "output buffer is too small "

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p4, p4

    const-string p5, " < "

    .line 1
    invoke-static {p3, p4, p2, p5}, LA/g;->k(Ljava/lang/StringBuilder;IILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-direct {p1, p2}, Lorg/conscrypt/ShortBufferWithoutStackTraceException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineDoFinal([BII)[B
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/conscrypt/OpenSSLCipherRSA;->engineUpdate([BII)[B

    :cond_0
    iget-boolean p1, p0, Lorg/conscrypt/OpenSSLCipherRSA;->inputTooLarge:Z

    if-nez p1, :cond_4

    iget p1, p0, Lorg/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    iget-object p2, p0, Lorg/conscrypt/OpenSSLCipherRSA;->buffer:[B

    array-length p3, p2

    const/4 v0, 0x0

    if-eq p1, p3, :cond_2

    iget p3, p0, Lorg/conscrypt/OpenSSLCipherRSA;->padding:I

    const/4 v1, 0x3

    if-ne p3, v1, :cond_1

    array-length p3, p2

    new-array p3, p3, [B

    array-length v1, p2

    sub-int/2addr v1, p1

    invoke-static {p2, v0, p3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, p3

    goto :goto_0

    :cond_1
    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/conscrypt/OpenSSLCipherRSA;->buffer:[B

    array-length p1, p1

    new-array p3, p1, [B

    invoke-virtual {p0, p2, p3}, Lorg/conscrypt/OpenSSLCipherRSA;->doCryptoOperation([B[B)I

    move-result p2

    iget-boolean v1, p0, Lorg/conscrypt/OpenSSLCipherRSA;->encrypting:Z

    if-nez v1, :cond_3

    if-eq p2, p1, :cond_3

    invoke-static {p3, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p3

    :cond_3
    iput v0, p0, Lorg/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    return-object p3

    :cond_4
    new-instance p1, Ljavax/crypto/IllegalBlockSizeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "input must be under "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lorg/conscrypt/OpenSSLCipherRSA;->buffer:[B

    array-length p3, p3

    const-string v0, " bytes"

    .line 7
    invoke-static {v0, p3, p2}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-direct {p1, p2}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineGetBlockSize()I
    .locals 1

    iget-boolean v0, p0, Lorg/conscrypt/OpenSSLCipherRSA;->encrypting:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLCipherRSA;->paddedBlockSizeBytes()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLCipherRSA;->keySizeBytes()I

    move-result v0

    return v0
.end method

.method public engineGetIV()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public engineGetKeySize(Ljava/security/Key;)I
    .locals 1

    instance-of v0, p1, Lorg/conscrypt/OpenSSLRSAPrivateKey;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/conscrypt/OpenSSLRSAPrivateKey;

    invoke-virtual {p1}, Lorg/conscrypt/OpenSSLRSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    return p1

    :cond_0
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    :goto_1
    invoke-interface {p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    goto :goto_1

    :cond_2
    instance-of v0, p1, Lorg/conscrypt/OpenSSLRSAPublicKey;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/conscrypt/OpenSSLRSAPublicKey;

    invoke-virtual {p1}, Lorg/conscrypt/OpenSSLRSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_0

    :cond_3
    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    goto :goto_1

    :cond_4
    if-nez p1, :cond_5

    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "RSA private or public key is null"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "Need RSA private or public key"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineGetOutputSize(I)I
    .locals 0

    iget-boolean p1, p0, Lorg/conscrypt/OpenSSLCipherRSA;->encrypting:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLCipherRSA;->keySizeBytes()I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLCipherRSA;->paddedBlockSizeBytes()I

    move-result p1

    return p1
.end method

.method public engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 0

    .line 1
    if-nez p3, :cond_0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lorg/conscrypt/OpenSSLCipherRSA;->engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void

    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "unknown param type: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 0

    .line 2
    const/4 p3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/conscrypt/OpenSSLCipherRSA;->engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/security/InvalidKeyException;

    const-string p3, "Algorithm parameters rejected when none supplied"

    invoke-direct {p2, p3, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0

    .line 3
    if-nez p3, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/conscrypt/OpenSSLCipherRSA;->engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void

    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "unknown param type: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p1, v1, :cond_3

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    if-ne p1, v2, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const/4 v2, 0x2

    .line 10
    if-eq p1, v2, :cond_2

    .line 11
    .line 12
    const/4 v2, 0x4

    .line 13
    if-ne p1, v2, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    new-instance p2, Ljava/security/InvalidParameterException;

    .line 17
    .line 18
    const-string p3, "Unsupported opmode "

    .line 19
    .line 20
    invoke-static {p1, p3}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {p2, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p2

    .line 28
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lorg/conscrypt/OpenSSLCipherRSA;->encrypting:Z

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_3
    :goto_1
    iput-boolean v1, p0, Lorg/conscrypt/OpenSSLCipherRSA;->encrypting:Z

    .line 32
    .line 33
    :goto_2
    instance-of p1, p2, Lorg/conscrypt/OpenSSLRSAPrivateKey;

    .line 34
    .line 35
    if-eqz p1, :cond_4

    .line 36
    .line 37
    check-cast p2, Lorg/conscrypt/OpenSSLRSAPrivateKey;

    .line 38
    .line 39
    iput-boolean v1, p0, Lorg/conscrypt/OpenSSLCipherRSA;->usingPrivateKey:Z

    .line 40
    .line 41
    invoke-virtual {p2}, Lorg/conscrypt/OpenSSLRSAPrivateKey;->getOpenSSLKey()Lorg/conscrypt/OpenSSLKey;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :goto_3
    iput-object p1, p0, Lorg/conscrypt/OpenSSLCipherRSA;->key:Lorg/conscrypt/OpenSSLKey;

    .line 46
    .line 47
    goto :goto_4

    .line 48
    :cond_4
    instance-of p1, p2, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 49
    .line 50
    if-eqz p1, :cond_5

    .line 51
    .line 52
    check-cast p2, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 53
    .line 54
    iput-boolean v1, p0, Lorg/conscrypt/OpenSSLCipherRSA;->usingPrivateKey:Z

    .line 55
    .line 56
    invoke-static {p2}, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->getInstance(Ljava/security/interfaces/RSAPrivateCrtKey;)Lorg/conscrypt/OpenSSLKey;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    goto :goto_3

    .line 61
    :cond_5
    instance-of p1, p2, Ljava/security/interfaces/RSAPrivateKey;

    .line 62
    .line 63
    if-eqz p1, :cond_6

    .line 64
    .line 65
    check-cast p2, Ljava/security/interfaces/RSAPrivateKey;

    .line 66
    .line 67
    iput-boolean v1, p0, Lorg/conscrypt/OpenSSLCipherRSA;->usingPrivateKey:Z

    .line 68
    .line 69
    invoke-static {p2}, Lorg/conscrypt/OpenSSLRSAPrivateKey;->getInstance(Ljava/security/interfaces/RSAPrivateKey;)Lorg/conscrypt/OpenSSLKey;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    goto :goto_3

    .line 74
    :cond_6
    instance-of p1, p2, Lorg/conscrypt/OpenSSLRSAPublicKey;

    .line 75
    .line 76
    if-eqz p1, :cond_7

    .line 77
    .line 78
    check-cast p2, Lorg/conscrypt/OpenSSLRSAPublicKey;

    .line 79
    .line 80
    iput-boolean v0, p0, Lorg/conscrypt/OpenSSLCipherRSA;->usingPrivateKey:Z

    .line 81
    .line 82
    invoke-virtual {p2}, Lorg/conscrypt/OpenSSLRSAPublicKey;->getOpenSSLKey()Lorg/conscrypt/OpenSSLKey;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    goto :goto_3

    .line 87
    :cond_7
    instance-of p1, p2, Ljava/security/interfaces/RSAPublicKey;

    .line 88
    .line 89
    if-eqz p1, :cond_8

    .line 90
    .line 91
    check-cast p2, Ljava/security/interfaces/RSAPublicKey;

    .line 92
    .line 93
    iput-boolean v0, p0, Lorg/conscrypt/OpenSSLCipherRSA;->usingPrivateKey:Z

    .line 94
    .line 95
    invoke-static {p2}, Lorg/conscrypt/OpenSSLRSAPublicKey;->getInstance(Ljava/security/interfaces/RSAPublicKey;)Lorg/conscrypt/OpenSSLKey;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    goto :goto_3

    .line 100
    :goto_4
    iget-object p1, p0, Lorg/conscrypt/OpenSSLCipherRSA;->key:Lorg/conscrypt/OpenSSLKey;

    .line 101
    .line 102
    invoke-virtual {p1}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-static {p1}, Lorg/conscrypt/NativeCrypto;->RSA_size(Lorg/conscrypt/NativeRef$EVP_PKEY;)I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    new-array p1, p1, [B

    .line 111
    .line 112
    iput-object p1, p0, Lorg/conscrypt/OpenSSLCipherRSA;->buffer:[B

    .line 113
    .line 114
    iput v0, p0, Lorg/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    .line 115
    .line 116
    iput-boolean v0, p0, Lorg/conscrypt/OpenSSLCipherRSA;->inputTooLarge:Z

    .line 117
    .line 118
    invoke-virtual {p0, p3}, Lorg/conscrypt/OpenSSLCipherRSA;->doCryptoInit(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_8
    new-instance p1, Ljava/security/InvalidKeyException;

    .line 123
    .line 124
    if-nez p2, :cond_9

    .line 125
    .line 126
    const-string p2, "RSA private or public key is null"

    .line 127
    .line 128
    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p1

    .line 132
    :cond_9
    const-string p2, "Need RSA private or public key"

    .line 133
    .line 134
    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p1
.end method

.method public engineSetMode(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NONE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ECB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "mode not supported: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public engineSetPadding(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PKCS1PADDING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    :goto_0
    iput p1, p0, Lorg/conscrypt/OpenSSLCipherRSA;->padding:I

    return-void

    :cond_0
    const-string v1, "NOPADDING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    const-string v1, "padding not supported: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 3

    const-string v0, "wrappedKeyType == "

    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1}, Lorg/conscrypt/OpenSSLCipherRSA;->engineDoFinal([BII)[B

    move-result-object p1

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p2

    new-instance p3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {p3, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {p2, p3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p2

    new-instance p3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {p3, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {p2, p3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v1, 0x3

    if-ne p3, v1, :cond_2

    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p3, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p3

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance p2, Ljava/security/InvalidKeyException;

    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    new-instance p2, Ljava/security/InvalidKeyException;

    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_2
    new-instance p2, Ljava/security/InvalidKeyException;

    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public engineUpdate([BII[BI)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/conscrypt/OpenSSLCipherRSA;->engineUpdate([BII)[B

    const/4 p1, 0x0

    return p1
.end method

.method public engineUpdate([BII)[B
    .locals 4

    .line 2
    iget v0, p0, Lorg/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    add-int v1, v0, p3

    iget-object v2, p0, Lorg/conscrypt/OpenSSLCipherRSA;->buffer:[B

    array-length v3, v2

    if-le v1, v3, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/conscrypt/OpenSSLCipherRSA;->inputTooLarge:Z

    :goto_0
    sget-object p1, Lorg/conscrypt/EmptyArray;->BYTE:[B

    return-object p1

    :cond_0
    invoke-static {p1, p2, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    goto :goto_0
.end method

.method public engineWrap(Ljava/security/Key;)[B
    .locals 2

    :try_start_0
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/conscrypt/OpenSSLCipherRSA;->engineDoFinal([BII)[B

    move-result-object p1
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v0}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/OpenSSLCipherRSA;->key:Lorg/conscrypt/OpenSSLKey;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keySizeBytes()I
    .locals 2

    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLCipherRSA;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/conscrypt/OpenSSLCipherRSA;->key:Lorg/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v0

    invoke-static {v0}, Lorg/conscrypt/NativeCrypto;->RSA_size(Lorg/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cipher is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public paddedBlockSizeBytes()I
    .locals 3

    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLCipherRSA;->keySizeBytes()I

    move-result v0

    iget v1, p0, Lorg/conscrypt/OpenSSLCipherRSA;->padding:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, -0xb

    :cond_0
    return v0
.end method
