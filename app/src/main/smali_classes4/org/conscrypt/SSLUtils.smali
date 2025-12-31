.class final Lorg/conscrypt/SSLUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/SSLUtils$EngineStates;,
        Lorg/conscrypt/SSLUtils$SessionType;
    }
.end annotation


# static fields
.field private static final KEY_TYPE_EC:Ljava/lang/String; = "EC"

.field private static final KEY_TYPE_RSA:Ljava/lang/String; = "RSA"

.field private static final MAX_ENCRYPTION_OVERHEAD_DIFF:I = 0x7fffffa9

.field private static final MAX_ENCRYPTION_OVERHEAD_LENGTH:I = 0x56

.field private static final MAX_PROTOCOL_LENGTH:I = 0xff

.field static final USE_ENGINE_SOCKET_BY_DEFAULT:Z

.field private static final US_ASCII:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "org.conscrypt.useEngineSocketByDefault"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/conscrypt/SSLUtils;->USE_ENGINE_SOCKET_BY_DEFAULT:Z

    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/SSLUtils;->US_ASCII:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateOutNetBufSize(I)I
    .locals 1

    const v0, 0x7fffffa9

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    add-int/lit8 p0, p0, 0x56

    const/16 v0, 0x4145

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static varargs concat([[Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v4, p0, v2

    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v5, p0, v3

    array-length v6, v5

    invoke-static {v5, v1, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public static decodeProtocols([B)[Ljava/lang/String;
    .locals 8

    .line 1
    array-length v0, p0

    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    sget-object p0, Lorg/conscrypt/EmptyArray;->STRING:[Ljava/lang/String;

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    array-length v3, p0

    .line 11
    if-ge v1, v3, :cond_4

    .line 12
    .line 13
    aget-byte v3, p0, v1

    .line 14
    .line 15
    if-ltz v3, :cond_2

    .line 16
    .line 17
    array-length v4, p0

    .line 18
    sub-int/2addr v4, v1

    .line 19
    if-le v3, v4, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    add-int/lit8 v3, v3, 0x1

    .line 25
    .line 26
    add-int/2addr v1, v3

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    const-string v2, "Protocol has invalid length ("

    .line 31
    .line 32
    const-string v4, " at position "

    .line 33
    .line 34
    const-string v5, "): "

    .line 35
    .line 36
    invoke-static {v2, v3, v4, v1, v5}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    array-length v2, p0

    .line 41
    const/16 v3, 0x32

    .line 42
    .line 43
    if-ge v2, v3, :cond_3

    .line 44
    .line 45
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    goto :goto_2

    .line 50
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    array-length p0, p0

    .line 56
    const-string v3, " byte array"

    .line 57
    .line 58
    invoke-static {v3, p0, v2}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    :goto_2
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v0

    .line 73
    :cond_4
    new-array v1, v2, [Ljava/lang/String;

    .line 74
    .line 75
    const/4 v2, 0x0

    .line 76
    :goto_3
    array-length v3, p0

    .line 77
    if-ge v0, v3, :cond_6

    .line 78
    .line 79
    aget-byte v3, p0, v0

    .line 80
    .line 81
    add-int/lit8 v4, v2, 0x1

    .line 82
    .line 83
    if-lez v3, :cond_5

    .line 84
    .line 85
    new-instance v5, Ljava/lang/String;

    .line 86
    .line 87
    add-int/lit8 v6, v0, 0x1

    .line 88
    .line 89
    sget-object v7, Lorg/conscrypt/SSLUtils;->US_ASCII:Ljava/nio/charset/Charset;

    .line 90
    .line 91
    invoke-direct {v5, p0, v6, v3, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 92
    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_5
    const-string v5, ""

    .line 96
    .line 97
    :goto_4
    aput-object v5, v1, v2

    .line 98
    .line 99
    add-int/lit8 v3, v3, 0x1

    .line 100
    .line 101
    add-int/2addr v0, v3

    .line 102
    move v2, v4

    .line 103
    goto :goto_3

    .line 104
    :cond_6
    return-object v1
.end method

.method private static decodeX509Certificate(Ljava/security/cert/CertificateFactory;[B)Ljava/security/cert/X509Certificate;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    return-object p0

    :cond_0
    invoke-static {p1}, Lorg/conscrypt/OpenSSLX509Certificate;->fromX509Der([B)Lorg/conscrypt/OpenSSLX509Certificate;

    move-result-object p0

    return-object p0
.end method

.method public static decodeX509CertificateChain([[B)[Ljava/security/cert/X509Certificate;
    .locals 5

    invoke-static {}, Lorg/conscrypt/SSLUtils;->getCertificateFactory()Ljava/security/cert/CertificateFactory;

    move-result-object v0

    array-length v1, p0

    new-array v2, v1, [Ljava/security/cert/X509Certificate;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    invoke-static {v0, v4}, Lorg/conscrypt/SSLUtils;->decodeX509Certificate(Ljava/security/cert/CertificateFactory;[B)Ljava/security/cert/X509Certificate;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static encodeProtocols([Ljava/lang/String;)[B
    .locals 9

    .line 1
    if-eqz p0, :cond_7

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-object p0, Lorg/conscrypt/EmptyArray;->BYTE:[B

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    array-length v3, p0

    .line 13
    if-ge v1, v3, :cond_3

    .line 14
    .line 15
    aget-object v3, p0, v1

    .line 16
    .line 17
    const-string v4, "protocol["

    .line 18
    .line 19
    if-eqz v3, :cond_2

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    const/16 v5, 0xff

    .line 28
    .line 29
    if-gt v3, v5, :cond_1

    .line 30
    .line 31
    add-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    add-int/2addr v2, v3

    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    const-string v0, "] has invalid length: "

    .line 40
    .line 41
    invoke-static {v4, v1, v0, v3}, LA/g;->f(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p0

    .line 49
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    const-string v0, "] is null"

    .line 52
    .line 53
    invoke-static {v1, v4, v0}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0

    .line 61
    :cond_3
    new-array v1, v2, [B

    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    const/4 v3, 0x0

    .line 65
    :goto_1
    array-length v4, p0

    .line 66
    if-ge v2, v4, :cond_6

    .line 67
    .line 68
    aget-object v4, p0, v2

    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    add-int/lit8 v6, v3, 0x1

    .line 75
    .line 76
    int-to-byte v7, v5

    .line 77
    aput-byte v7, v1, v3

    .line 78
    .line 79
    move v3, v6

    .line 80
    const/4 v6, 0x0

    .line 81
    :goto_2
    if-ge v6, v5, :cond_5

    .line 82
    .line 83
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    const/16 v8, 0x7f

    .line 88
    .line 89
    if-gt v7, v8, :cond_4

    .line 90
    .line 91
    add-int/lit8 v8, v3, 0x1

    .line 92
    .line 93
    int-to-byte v7, v7

    .line 94
    aput-byte v7, v1, v3

    .line 95
    .line 96
    add-int/lit8 v6, v6, 0x1

    .line 97
    .line 98
    move v3, v8

    .line 99
    goto :goto_2

    .line 100
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 101
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v1, "Protocol contains invalid character: "

    .line 105
    .line 106
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v1, "(protocol="

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v1, ")"

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p0

    .line 133
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_6
    return-object v1

    .line 137
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 138
    .line 139
    const-string v0, "protocols array must be non-null"

    .line 140
    .line 141
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw p0
.end method

.method public static encodeSubjectX509Principals([Ljava/security/cert/X509Certificate;)[[B
    .locals 3

    array-length v0, p0

    new-array v0, v0, [[B

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getCertificateFactory()Ljava/security/cert/CertificateFactory;
    .locals 1

    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getClientKeyType(B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/16 v0, 0x40

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "EC"

    return-object p0

    :cond_1
    const-string p0, "RSA"

    return-object p0
.end method

.method public static getClientKeyTypeFromSignatureAlg(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/conscrypt/NativeCrypto;->SSL_get_signature_algorithm_key_type(I)I

    move-result p0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x198

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "EC"

    return-object p0

    :cond_1
    const-string p0, "RSA"

    return-object p0
.end method

.method private static getEncryptedPacketLength(Ljava/nio/ByteBuffer;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Lorg/conscrypt/SSLUtils;->unsignedByte(B)S

    move-result v1

    const/4 v2, -0x1

    packed-switch v1, :pswitch_data_0

    return v2

    :pswitch_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    invoke-static {v1}, Lorg/conscrypt/SSLUtils;->unsignedByte(B)S

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    return v2

    :cond_0
    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p0

    invoke-static {p0}, Lorg/conscrypt/SSLUtils;->unsignedShort(S)I

    move-result p0

    const/4 v0, 0x5

    add-int/2addr p0, v0

    if-gt p0, v0, :cond_1

    return v2

    :cond_1
    return p0

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getEncryptedPacketLength([Ljava/nio/ByteBuffer;I)I
    .locals 6

    .line 2
    aget-object v0, p0, p1

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    invoke-static {v0}, Lorg/conscrypt/SSLUtils;->getEncryptedPacketLength(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0

    :cond_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    add-int/lit8 v1, p1, 0x1

    aget-object p1, p0, p1

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    if-le v4, v5, :cond_1

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_1
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-static {v0}, Lorg/conscrypt/SSLUtils;->getEncryptedPacketLength(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0

    :cond_2
    move p1, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw p0
.end method

.method public static getServerX509KeyType(J)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lorg/conscrypt/NativeCrypto;->SSL_CIPHER_get_kx_name(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "RSA"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "DHE_RSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ECDHE_RSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "ECDHE_ECDSA"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "EC"

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public static getSupportedClientKeyTypes([B[I)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-byte v4, p0, v3

    invoke-static {v4}, Lorg/conscrypt/SSLUtils;->getClientKeyType(B)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/LinkedHashSet;

    array-length v3, p1

    invoke-direct {v1, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    array-length v3, p1

    :goto_2
    if-ge v2, v3, :cond_3

    aget v4, p1, v2

    invoke-static {v4}, Lorg/conscrypt/SSLUtils;->getClientKeyTypeFromSignatureAlg(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    array-length p0, p0

    if-lez p0, :cond_4

    array-length p0, p1

    if-lez p0, :cond_4

    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    return-object v1

    :cond_4
    array-length p0, p1

    if-lez p0, :cond_5

    return-object v1

    :cond_5
    return-object v0
.end method

.method public static toCertificateChain([Ljava/security/cert/X509Certificate;)[Ljavax/security/cert/X509Certificate;
    .locals 3

    :try_start_0
    array-length v0, p0

    new-array v0, v0, [Ljavax/security/cert/X509Certificate;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Ljavax/security/cert/X509Certificate;->getInstance([B)Ljavax/security/cert/X509Certificate;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    return-object v0

    :goto_1
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :goto_2
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method

.method public static toProtocolBytes(Ljava/lang/String;)[B
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lorg/conscrypt/SSLUtils;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static toProtocolString([B)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lorg/conscrypt/SSLUtils;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static toSSLException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;
    .locals 1

    instance-of v0, p0, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_0

    check-cast p0, Ljavax/net/ssl/SSLException;

    return-object p0

    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLException;

    invoke-direct {v0, p0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;
    .locals 2

    instance-of v0, p0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_0

    check-cast p0, Ljavax/net/ssl/SSLHandshakeException;

    return-object p0

    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/SSLHandshakeException;

    return-object p0
.end method

.method private static unsignedByte(B)S
    .locals 0

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    return p0
.end method

.method private static unsignedShort(S)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method
