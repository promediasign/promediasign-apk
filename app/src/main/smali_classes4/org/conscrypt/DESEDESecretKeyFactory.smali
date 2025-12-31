.class public Lorg/conscrypt/DESEDESecretKeyFactory;
.super Ljavax/crypto/SecretKeyFactorySpi;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljavax/crypto/SecretKeyFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 2

    if-eqz p1, :cond_3

    instance-of v0, p1, Ljavax/crypto/spec/SecretKeySpec;

    if-eqz v0, :cond_1

    check-cast p1, Ljavax/crypto/spec/SecretKeySpec;

    :try_start_0
    invoke-virtual {p1}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljavax/crypto/spec/DESedeKeySpec;->isParityAdjusted([BI)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "SecretKeySpec is not a parity-adjusted DESEDE key"

    invoke-direct {p1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    instance-of v0, p1, Ljavax/crypto/spec/DESedeKeySpec;

    if-eqz v0, :cond_2

    check-cast p1, Ljavax/crypto/spec/DESedeKeySpec;

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/DESedeKeySpec;->getKey()[B

    move-result-object p1

    const-string v1, "DESEDE"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unsupported KeySpec class: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "Null KeySpec"

    invoke-direct {p1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 1

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    const-class v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 4
    .line 5
    if-ne p2, v0, :cond_2

    .line 6
    .line 7
    :try_start_0
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p2, v0}, Ljavax/crypto/spec/DESedeKeySpec;->isParityAdjusted([BI)Z

    .line 13
    .line 14
    .line 15
    move-result p2
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    instance-of p2, p1, Ljavax/crypto/spec/SecretKeySpec;

    .line 19
    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    check-cast p1, Ljava/security/spec/KeySpec;

    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_0
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "DESEDE"

    .line 32
    .line 33
    invoke-direct {p2, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-object p2

    .line 37
    :cond_1
    :try_start_1
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    .line 38
    .line 39
    const-string p2, "SecretKey is not a parity-adjusted DESEDE key"

    .line 40
    .line 41
    invoke-direct {p1, p2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0

    .line 45
    :catch_0
    move-exception p1

    .line 46
    new-instance p2, Ljava/security/spec/InvalidKeySpecException;

    .line 47
    .line 48
    invoke-direct {p2, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    throw p2

    .line 52
    :cond_2
    const-class v0, Ljavax/crypto/spec/DESedeKeySpec;

    .line 53
    .line 54
    if-ne p2, v0, :cond_3

    .line 55
    .line 56
    :try_start_2
    new-instance p2, Ljavax/crypto/spec/DESedeKeySpec;

    .line 57
    .line 58
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {p2, p1}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1

    .line 63
    .line 64
    .line 65
    return-object p2

    .line 66
    :catch_1
    move-exception p1

    .line 67
    new-instance p2, Ljava/security/spec/InvalidKeySpecException;

    .line 68
    .line 69
    invoke-direct {p2, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    throw p2

    .line 73
    :cond_3
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    .line 74
    .line 75
    const-string v0, "Unsupported KeySpec class: "

    .line 76
    .line 77
    invoke-static {v0, p2}, Lch/qos/logback/core/joran/util/a;->l(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-direct {p1, p2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p1

    .line 85
    :cond_4
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    .line 86
    .line 87
    const-string p2, "Null SecretKey"

    .line 88
    .line 89
    invoke-direct {p1, p2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p1
.end method

.method public engineTranslateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "Null SecretKey"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
