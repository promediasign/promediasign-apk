.class public Lorg/conscrypt/IvParameters;
.super Ljava/security/AlgorithmParametersSpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/IvParameters$ChaCha20;,
        Lorg/conscrypt/IvParameters$DESEDE;,
        Lorg/conscrypt/IvParameters$AES;
    }
.end annotation


# instance fields
.field private iv:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/security/AlgorithmParametersSpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGetEncoded()[B
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {}, Lorg/conscrypt/NativeCrypto;->asn1_write_init()J

    move-result-wide v0

    iget-object v2, p0, Lorg/conscrypt/IvParameters;->iv:[B

    invoke-static {v0, v1, v2}, Lorg/conscrypt/NativeCrypto;->asn1_write_octetstring(J[B)V

    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_finish(J)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    return-object v2

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_cleanup(J)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    throw v2
.end method

.method public engineGetEncoded(Ljava/lang/String;)[B
    .locals 2

    .line 2
    if-eqz p1, :cond_2

    const-string v0, "ASN.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "RAW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lorg/conscrypt/IvParameters;->iv:[B

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsupported format: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/conscrypt/IvParameters;->engineGetEncoded()[B

    move-result-object p1

    return-object p1
.end method

.method public engineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    const-class v0, Ljavax/crypto/spec/IvParameterSpec;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    .line 6
    .line 7
    iget-object v0, p0, Lorg/conscrypt/IvParameters;->iv:[B

    .line 8
    .line 9
    invoke-direct {p1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 10
    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_0
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    .line 14
    .line 15
    const-string v1, "Incompatible AlgorithmParametersSpec class: "

    .line 16
    .line 17
    invoke-static {v1, p1}, Lch/qos/logback/core/joran/util/a;->l(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {v0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method

.method public engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1

    .line 1
    instance-of v0, p1, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_0

    check-cast p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object p1

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/conscrypt/IvParameters;->iv:[B

    return-void

    :cond_0
    new-instance p1, Ljava/security/spec/InvalidParameterSpecException;

    const-string v0, "Only IvParameterSpec is supported"

    invoke-direct {p1, v0}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineInit([B)V
    .locals 3

    .line 2
    :try_start_0
    invoke-static {p1}, Lorg/conscrypt/NativeCrypto;->asn1_read_init([B)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_read_octetstring(J)[B

    move-result-object p1

    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object p1, p0, Lorg/conscrypt/IvParameters;->iv:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_2
    new-instance p1, Ljava/io/IOException;

    const-string v2, "Error reading ASN.1 encoding"

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_1
    move-exception p1

    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    throw p1
.end method

.method public engineInit([BLjava/lang/String;)V
    .locals 1

    .line 3
    if-eqz p2, :cond_2

    const-string v0, "ASN.1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "RAW"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/conscrypt/IvParameters;->iv:[B

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unsupported format: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lorg/conscrypt/IvParameters;->engineInit([B)V

    :goto_1
    return-void
.end method

.method public engineToString()Ljava/lang/String;
    .locals 1

    const-string v0, "Conscrypt IV AlgorithmParameters"

    return-object v0
.end method
