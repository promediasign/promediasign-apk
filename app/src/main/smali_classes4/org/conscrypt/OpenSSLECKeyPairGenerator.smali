.class public final Lorg/conscrypt/OpenSSLECKeyPairGenerator;
.super Ljava/security/KeyPairGenerator;
.source "SourceFile"


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "EC"

.field private static final DEFAULT_KEY_SIZE:I = 0x100

.field private static final SIZE_TO_CURVE_NAME:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private group:Lorg/conscrypt/OpenSSLECGroupContext;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    .line 7
    .line 8
    const/16 v1, 0xe0

    .line 9
    .line 10
    const-string v2, "secp224r1"

    .line 11
    .line 12
    const/16 v3, 0x100

    .line 13
    .line 14
    const-string v4, "prime256v1"

    .line 15
    .line 16
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/16 v1, 0x180

    .line 20
    .line 21
    const-string v2, "secp384r1"

    .line 22
    .line 23
    const/16 v3, 0x209

    .line 24
    .line 25
    const-string v4, "secp521r1"

    .line 26
    .line 27
    invoke-static {v1, v0, v2, v3, v4}, Lorg/apache/ftpserver/main/a;->t(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "EC"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static assertCurvesAreValid()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lorg/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lorg/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lorg/conscrypt/OpenSSLECGroupContext;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_2

    return-void

    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid curve names: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/conscrypt/OpenSSLECKeyPairGenerator;->group:Lorg/conscrypt/OpenSSLECGroupContext;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lorg/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    .line 6
    .line 7
    const/16 v1, 0x100

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0}, Lorg/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lorg/conscrypt/OpenSSLECGroupContext;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, p0, Lorg/conscrypt/OpenSSLECKeyPairGenerator;->group:Lorg/conscrypt/OpenSSLECGroupContext;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    .line 29
    .line 30
    const-string v2, "Curve not recognized: "

    .line 31
    .line 32
    invoke-static {v2, v0}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v1

    .line 40
    :cond_1
    :goto_0
    new-instance v0, Lorg/conscrypt/OpenSSLKey;

    .line 41
    .line 42
    iget-object v1, p0, Lorg/conscrypt/OpenSSLECKeyPairGenerator;->group:Lorg/conscrypt/OpenSSLECGroupContext;

    .line 43
    .line 44
    invoke-virtual {v1}, Lorg/conscrypt/OpenSSLECGroupContext;->getNativeRef()Lorg/conscrypt/NativeRef$EC_GROUP;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v1}, Lorg/conscrypt/NativeCrypto;->EC_KEY_generate_key(Lorg/conscrypt/NativeRef$EC_GROUP;)J

    .line 49
    .line 50
    .line 51
    move-result-wide v1

    .line 52
    invoke-direct {v0, v1, v2}, Lorg/conscrypt/OpenSSLKey;-><init>(J)V

    .line 53
    .line 54
    .line 55
    new-instance v1, Ljava/security/KeyPair;

    .line 56
    .line 57
    new-instance v2, Lorg/conscrypt/OpenSSLECPublicKey;

    .line 58
    .line 59
    iget-object v3, p0, Lorg/conscrypt/OpenSSLECKeyPairGenerator;->group:Lorg/conscrypt/OpenSSLECGroupContext;

    .line 60
    .line 61
    invoke-direct {v2, v3, v0}, Lorg/conscrypt/OpenSSLECPublicKey;-><init>(Lorg/conscrypt/OpenSSLECGroupContext;Lorg/conscrypt/OpenSSLKey;)V

    .line 62
    .line 63
    .line 64
    new-instance v3, Lorg/conscrypt/OpenSSLECPrivateKey;

    .line 65
    .line 66
    iget-object v4, p0, Lorg/conscrypt/OpenSSLECKeyPairGenerator;->group:Lorg/conscrypt/OpenSSLECGroupContext;

    .line 67
    .line 68
    invoke-direct {v3, v4, v0}, Lorg/conscrypt/OpenSSLECPrivateKey;-><init>(Lorg/conscrypt/OpenSSLECGroupContext;Lorg/conscrypt/OpenSSLKey;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {v1, v2, v3}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    .line 72
    .line 73
    .line 74
    return-object v1
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 1

    sget-object p2, Lorg/conscrypt/OpenSSLECKeyPairGenerator;->SIZE_TO_CURVE_NAME:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-static {p2}, Lorg/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lorg/conscrypt/OpenSSLECGroupContext;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/conscrypt/OpenSSLECKeyPairGenerator;->group:Lorg/conscrypt/OpenSSLECGroupContext;

    return-void

    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string v0, "unknown curve "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p2, Ljava/security/InvalidParameterException;

    const-string v0, "unknown key size "

    .line 1
    invoke-static {p1, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p2, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1

    instance-of p2, p1, Ljava/security/spec/ECParameterSpec;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/security/spec/ECParameterSpec;

    invoke-static {p1}, Lorg/conscrypt/OpenSSLECGroupContext;->getInstance(Ljava/security/spec/ECParameterSpec;)Lorg/conscrypt/OpenSSLECGroupContext;

    move-result-object p1

    iput-object p1, p0, Lorg/conscrypt/OpenSSLECKeyPairGenerator;->group:Lorg/conscrypt/OpenSSLECGroupContext;

    goto :goto_0

    :cond_0
    instance-of p2, p1, Ljava/security/spec/ECGenParameterSpec;

    if-eqz p2, :cond_2

    check-cast p1, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p1}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lorg/conscrypt/OpenSSLECGroupContext;

    move-result-object p2

    if-eqz p2, :cond_1

    iput-object p2, p0, Lorg/conscrypt/OpenSSLECKeyPairGenerator;->group:Lorg/conscrypt/OpenSSLECGroupContext;

    :goto_0
    return-void

    :cond_1
    new-instance p2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v0, "unknown curve name: "

    .line 7
    invoke-static {v0, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-direct {p2, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "parameter must be ECParameterSpec or ECGenParameterSpec"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
