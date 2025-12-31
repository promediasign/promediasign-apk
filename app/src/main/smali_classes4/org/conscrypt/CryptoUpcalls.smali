.class final Lorg/conscrypt/CryptoUpcalls;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/conscrypt/CryptoUpcalls;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ecSignDigestWithPrivateKey(Ljava/security/PrivateKey;[B)[B
    .locals 2

    invoke-interface {p0}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NONEwithECDSA"

    invoke-static {p0, p1, v0}, Lorg/conscrypt/CryptoUpcalls;->signDigestWithPrivateKey(Ljava/security/PrivateKey;[BLjava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected key type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static getExternalProviders(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p0}, Ljava/security/Security;->getProviders(Ljava/lang/String;)[Ljava/security/Provider;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-static {v4}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljava/security/Provider;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lorg/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not find external provider for algorithm: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public static rsaDecryptWithPrivateKey(Ljava/security/PrivateKey;I[B)[B
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, p1, v0, p2}, Lorg/conscrypt/CryptoUpcalls;->rsaOpWithPrivateKey(Ljava/security/PrivateKey;II[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static rsaOpWithPrivateKey(Ljava/security/PrivateKey;II[B)[B
    .locals 5

    const-string v0, "Unsupported cipher algorithm: "

    invoke-interface {p0}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RSA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    sget-object p0, Lorg/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unexpected key type: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object v3

    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    sget-object p0, Lorg/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unsupported OpenSSL/BoringSSL padding: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object v3

    :cond_1
    const-string p1, "OAEPPadding"

    goto :goto_0

    :cond_2
    const-string p1, "NoPadding"

    goto :goto_0

    :cond_3
    const-string p1, "PKCS1Padding"

    :goto_0
    const-string v1, "RSA/ECB/"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-virtual {v1, p2, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v2

    invoke-static {v2}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljava/security/Provider;)Z

    move-result v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_4

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lorg/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Preferred provider doesn\'t support key:"

    invoke-virtual {v1, v2, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    move-object v1, v3

    :cond_4
    if-nez v1, :cond_6

    const-string v0, "Cipher."

    .line 1
    invoke-static {v0, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lorg/conscrypt/CryptoUpcalls;->getExternalProviders(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider;

    :try_start_1
    invoke-static {p1, v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-virtual {v1, p2, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    nop

    move-object v1, v3

    goto :goto_2

    :cond_5
    :goto_3
    if-nez v1, :cond_6

    sget-object p0, Lorg/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Could not find provider for algorithm: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object v3

    :cond_6
    :try_start_2
    invoke-virtual {v1, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    :catch_2
    move-exception p2

    sget-object p3, Lorg/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception while decrypting message with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " private key using "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, v0, p0, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3

    :catch_3
    sget-object p0, Lorg/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object v3

    :catch_4
    sget-object p0, Lorg/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object v3
.end method

.method public static rsaSignDigestWithPrivateKey(Ljava/security/PrivateKey;I[B)[B
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lorg/conscrypt/CryptoUpcalls;->rsaOpWithPrivateKey(Ljava/security/PrivateKey;II[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static signDigestWithPrivateKey(Ljava/security/PrivateKey;[BLjava/lang/String;)[B
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1, p0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/security/Signature;->getProvider()Ljava/security/Provider;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v2}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljava/security/Provider;)Z

    .line 14
    .line 15
    .line 16
    move-result v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v1

    .line 21
    sget-object v2, Lorg/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    .line 22
    .line 23
    const-string v3, "Preferred provider doesn\'t support key:"

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    .line 30
    .line 31
    :goto_0
    move-object v1, v0

    .line 32
    :cond_0
    if-nez v1, :cond_4

    .line 33
    .line 34
    const-string v2, "Signature."

    .line 35
    .line 36
    invoke-static {v2, p2}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v2}, Lorg/conscrypt/CryptoUpcalls;->getExternalProviders(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    move-object v3, v0

    .line 49
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_2

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Ljava/security/Provider;

    .line 60
    .line 61
    :try_start_1
    invoke-static {p2, v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1, p0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    .line 67
    .line 68
    goto :goto_4

    .line 69
    :catch_1
    move-exception v1

    .line 70
    goto :goto_2

    .line 71
    :catch_2
    nop

    .line 72
    goto :goto_3

    .line 73
    :goto_2
    if-nez v3, :cond_1

    .line 74
    .line 75
    move-object v3, v1

    .line 76
    :cond_1
    :goto_3
    move-object v1, v0

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    :goto_4
    if-nez v1, :cond_4

    .line 79
    .line 80
    if-nez v3, :cond_3

    .line 81
    .line 82
    sget-object p0, Lorg/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    .line 83
    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v1, "Could not find provider for algorithm: "

    .line 87
    .line 88
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-object v0

    .line 102
    :cond_3
    throw v3

    .line 103
    :cond_4
    :try_start_2
    invoke-virtual {v1, p1}, Ljava/security/Signature;->update([B)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    .line 107
    .line 108
    .line 109
    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 110
    return-object p0

    .line 111
    :catch_3
    move-exception p1

    .line 112
    sget-object p2, Lorg/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    .line 113
    .line 114
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 115
    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v3, "Exception while signing message with "

    .line 119
    .line 120
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-interface {p0}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string p0, " private key:"

    .line 131
    .line 132
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-virtual {p2, v1, p0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    .line 141
    .line 142
    return-object v0

    .line 143
    :catch_4
    sget-object p0, Lorg/conscrypt/CryptoUpcalls;->logger:Ljava/util/logging/Logger;

    .line 144
    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string v1, "Unsupported signature algorithm: "

    .line 148
    .line 149
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p0, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    return-object v0
.end method
