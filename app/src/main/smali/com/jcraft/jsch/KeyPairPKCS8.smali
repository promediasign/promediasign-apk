.class public Lcom/jcraft/jsch/KeyPairPKCS8;
.super Lcom/jcraft/jsch/KeyPair;
.source "SourceFile"


# static fields
.field private static final aes128cbc:[B

.field private static final aes192cbc:[B

.field private static final aes256cbc:[B

.field private static final begin:[B

.field private static final dsaEncryption:[B

.field private static final end:[B

.field private static final pbeWithMD5AndDESCBC:[B

.field private static final pbes2:[B

.field private static final pbkdf2:[B

.field private static final rsaEncryption:[B


# instance fields
.field private kpair:Lcom/jcraft/jsch/KeyPair;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/jcraft/jsch/KeyPairPKCS8;->rsaEncryption:[B

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    sput-object v1, Lcom/jcraft/jsch/KeyPairPKCS8;->dsaEncryption:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_2

    sput-object v1, Lcom/jcraft/jsch/KeyPairPKCS8;->pbes2:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_3

    sput-object v1, Lcom/jcraft/jsch/KeyPairPKCS8;->pbkdf2:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_4

    sput-object v1, Lcom/jcraft/jsch/KeyPairPKCS8;->aes128cbc:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_5

    sput-object v1, Lcom/jcraft/jsch/KeyPairPKCS8;->aes192cbc:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_6

    sput-object v1, Lcom/jcraft/jsch/KeyPairPKCS8;->aes256cbc:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    sput-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->pbeWithMD5AndDESCBC:[B

    const-string v0, "-----BEGIN DSA PRIVATE KEY-----"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->begin:[B

    const-string v0, "-----END DSA PRIVATE KEY-----"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairPKCS8;->end:[B

    return-void

    :array_0
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x38t
        0x4t
        0x1t
    .end array-data

    :array_2
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x5t
        0xdt
    .end array-data

    nop

    :array_3
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x5t
        0xct
    .end array-data

    nop

    :array_4
    .array-data 1
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x1t
        0x2t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x1t
        0x16t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x60t
        -0x7at
        0x48t
        0x1t
        0x65t
        0x3t
        0x4t
        0x1t
        0x2at
    .end array-data

    nop

    :array_7
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x5t
        0x3t
    .end array-data
.end method

.method public constructor <init>(Lcom/jcraft/jsch/JSch;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/KeyPair;-><init>(Lcom/jcraft/jsch/JSch;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->kpair:Lcom/jcraft/jsch/KeyPair;

    return-void
.end method


# virtual methods
.method public decrypt([B)Z
    .locals 10

    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->isEncrypted()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPair;->isEncrypted()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Lcom/jcraft/jsch/KeyPair$ASN1;

    iget-object v3, p0, Lcom/jcraft/jsch/KeyPair;->data:[B

    invoke-direct {v2, p0, v3}, Lcom/jcraft/jsch/KeyPair$ASN1;-><init>(Lcom/jcraft/jsch/KeyPair;[B)V

    invoke-virtual {v2}, Lcom/jcraft/jsch/KeyPair$ASN1;->getContents()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object v2

    aget-object v3, v2, v1

    invoke-virtual {v3}, Lcom/jcraft/jsch/KeyPair$ASN1;->getContent()[B

    move-result-object v5

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/jcraft/jsch/KeyPair$ASN1;->getContents()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object v2

    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/jcraft/jsch/KeyPair$ASN1;->getContent()[B

    move-result-object v3

    aget-object v2, v2, v1

    sget-object v4, Lcom/jcraft/jsch/KeyPairPKCS8;->pbes2:[B

    invoke-static {v3, v4}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Lcom/jcraft/jsch/KeyPair$ASN1;->getContents()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object v2

    aget-object v3, v2, v0

    aget-object v2, v2, v1

    invoke-virtual {v3}, Lcom/jcraft/jsch/KeyPair$ASN1;->getContents()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object v3

    aget-object v4, v3, v0

    invoke-virtual {v4}, Lcom/jcraft/jsch/KeyPair$ASN1;->getContent()[B

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/jcraft/jsch/KeyPair$ASN1;->getContents()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object v3

    aget-object v4, v3, v0

    invoke-virtual {v4}, Lcom/jcraft/jsch/KeyPair$ASN1;->getContent()[B

    move-result-object v4

    new-instance v6, Ljava/math/BigInteger;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/jcraft/jsch/KeyPair$ASN1;->getContent()[B

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v6}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Lcom/jcraft/jsch/KeyPair$ASN1;->getContents()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object v2

    aget-object v6, v2, v0

    invoke-virtual {v6}, Lcom/jcraft/jsch/KeyPair$ASN1;->getContent()[B

    move-result-object v6

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/jcraft/jsch/KeyPair$ASN1;->getContent()[B

    move-result-object v2

    invoke-virtual {p0, v6}, Lcom/jcraft/jsch/KeyPairPKCS8;->getCipher([B)Lcom/jcraft/jsch/Cipher;

    move-result-object v6
    :try_end_0
    .catch Lcom/jcraft/jsch/KeyPair$ASN1Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v6, :cond_2

    return v0

    :cond_2
    :try_start_1
    const-string v7, "pbkdf"

    invoke-static {v7}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jcraft/jsch/PBKDF;

    invoke-interface {v6}, Lcom/jcraft/jsch/Cipher;->getBlockSize()I

    move-result v8

    invoke-interface {v7, p1, v4, v3, v8}, Lcom/jcraft/jsch/PBKDF;->getKey([B[BII)[B

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    return v0

    :cond_3
    :try_start_2
    invoke-interface {v6, v1, p1, v2}, Lcom/jcraft/jsch/Cipher;->init(I[B[B)V

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->bzero([B)V

    array-length p1, v5

    new-array p1, p1, [B

    array-length v7, v5

    const/4 v9, 0x0

    const/4 v2, 0x0

    move-object v4, v6

    move v6, v2

    move-object v8, p1

    invoke-interface/range {v4 .. v9}, Lcom/jcraft/jsch/Cipher;->update([BII[BI)V

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/KeyPairPKCS8;->parse([B)Z

    move-result p1

    if-eqz p1, :cond_5

    iput-boolean v0, p0, Lcom/jcraft/jsch/KeyPair;->encrypted:Z

    return v1

    :cond_4
    sget-object p1, Lcom/jcraft/jsch/KeyPairPKCS8;->pbeWithMD5AndDESCBC:[B

    invoke-static {v3, p1}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z
    :try_end_2
    .catch Lcom/jcraft/jsch/KeyPair$ASN1Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_5
    return v0
.end method

.method public forSSHAgent()[B
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->kpair:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->forSSHAgent()[B

    move-result-object v0

    return-object v0
.end method

.method public getCipher([B)Lcom/jcraft/jsch/Cipher;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/jcraft/jsch/KeyPairPKCS8;->aes128cbc:[B

    .line 3
    .line 4
    invoke-static {p1, v1}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v1, "aes128-cbc"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    nop

    .line 14
    move-object v1, v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    sget-object v1, Lcom/jcraft/jsch/KeyPairPKCS8;->aes192cbc:[B

    .line 17
    .line 18
    invoke-static {p1, v1}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    const-string v1, "aes192-cbc"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    sget-object v1, Lcom/jcraft/jsch/KeyPairPKCS8;->aes256cbc:[B

    .line 28
    .line 29
    invoke-static {p1, v1}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    const-string v1, "aes256-cbc"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move-object v1, v0

    .line 39
    :goto_0
    :try_start_1
    invoke-static {v1}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lcom/jcraft/jsch/Cipher;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 52
    .line 53
    move-object v0, v2

    .line 54
    goto :goto_3

    .line 55
    :catch_1
    nop

    .line 56
    :goto_1
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const/4 v3, 0x4

    .line 61
    invoke-interface {v2, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_4

    .line 66
    .line 67
    if-nez v1, :cond_3

    .line 68
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v2, "unknown oid: "

    .line 72
    .line 73
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->toHex([B)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    goto :goto_2

    .line 88
    :cond_3
    const-string p1, "function "

    .line 89
    .line 90
    const-string v2, " is not supported"

    .line 91
    .line 92
    invoke-static {p1, v1, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    :goto_2
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v4, "PKCS8: "

    .line 103
    .line 104
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-interface {v1, v3, p1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :cond_4
    :goto_3
    return-object v0
.end method

.method public getKeyTypeName()[B
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->kpair:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->getKeyTypeName()[B

    move-result-object v0

    return-object v0
.end method

.method public getPublicKeyBlob()[B
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->kpair:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0}, Lcom/jcraft/jsch/KeyPair;->getPublicKeyBlob()[B

    move-result-object v0

    return-object v0
.end method

.method public getSignature([B)[B
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->kpair:Lcom/jcraft/jsch/KeyPair;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/KeyPair;->getSignature([B)[B

    move-result-object p1

    return-object p1
.end method

.method public parse([B)Z
    .locals 12

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    new-instance v2, Lcom/jcraft/jsch/KeyPair$ASN1;

    invoke-direct {v2, p0, p1}, Lcom/jcraft/jsch/KeyPair$ASN1;-><init>(Lcom/jcraft/jsch/KeyPair;[B)V

    invoke-virtual {v2}, Lcom/jcraft/jsch/KeyPair$ASN1;->getContents()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object p1

    const/4 v2, 0x1

    aget-object v3, p1, v2

    const/4 v4, 0x2

    aget-object p1, p1, v4

    invoke-virtual {v3}, Lcom/jcraft/jsch/KeyPair$ASN1;->getContents()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object v3

    aget-object v5, v3, v0

    invoke-virtual {v5}, Lcom/jcraft/jsch/KeyPair$ASN1;->getContent()[B

    move-result-object v5

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/jcraft/jsch/KeyPair$ASN1;->getContents()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object v3

    array-length v6, v3

    if-lez v6, :cond_0

    const/4 v6, 0x0

    :goto_0
    array-length v7, v3

    if-ge v6, v7, :cond_0

    aget-object v7, v3, v6

    invoke-virtual {v7}, Lcom/jcraft/jsch/KeyPair$ASN1;->getContent()[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/jcraft/jsch/KeyPair$ASN1;->getContent()[B

    move-result-object p1

    sget-object v3, Lcom/jcraft/jsch/KeyPairPKCS8;->rsaEncryption:[B

    invoke-static {v5, v3}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Lcom/jcraft/jsch/KeyPairRSA;

    iget-object v3, p0, Lcom/jcraft/jsch/KeyPair;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-direct {v1, v3}, Lcom/jcraft/jsch/KeyPairRSA;-><init>(Lcom/jcraft/jsch/JSch;)V

    invoke-virtual {v1, p0}, Lcom/jcraft/jsch/KeyPair;->copy(Lcom/jcraft/jsch/KeyPair;)V

    invoke-virtual {v1, p1}, Lcom/jcraft/jsch/KeyPairRSA;->parse([B)Z

    move-result p1

    if-eqz p1, :cond_4

    :goto_1
    iput-object v1, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->kpair:Lcom/jcraft/jsch/KeyPair;

    goto/16 :goto_4

    :cond_1
    sget-object v3, Lcom/jcraft/jsch/KeyPairPKCS8;->dsaEncryption:[B

    invoke-static {v5, v3}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lcom/jcraft/jsch/KeyPair$ASN1;

    invoke-direct {v3, p0, p1}, Lcom/jcraft/jsch/KeyPair$ASN1;-><init>(Lcom/jcraft/jsch/KeyPair;[B)V

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v3}, Lcom/jcraft/jsch/KeyPair$ASN1;->getContents()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object p1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lcom/jcraft/jsch/KeyPair$ASN1;->getContent()[B

    move-result-object v3

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/jcraft/jsch/KeyPair$ASN1;->getContents()[Lcom/jcraft/jsch/KeyPair$ASN1;

    move-result-object p1

    const/4 v5, 0x0

    :goto_2
    array-length v6, p1

    if-ge v5, v6, :cond_2

    aget-object v6, p1, v5

    invoke-virtual {v6}, Lcom/jcraft/jsch/KeyPair$ASN1;->getContent()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Lcom/jcraft/jsch/KeyPair$ASN1;->getContent()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_3
    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, [B

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, [B

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, [B

    const/4 p1, 0x3

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    move-object v11, p1

    check-cast v11, [B

    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v9}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v11}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v7}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1, v1, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v10

    new-instance p1, Lcom/jcraft/jsch/KeyPairDSA;

    iget-object v6, p0, Lcom/jcraft/jsch/KeyPair;->jsch:Lcom/jcraft/jsch/JSch;

    move-object v5, p1

    invoke-direct/range {v5 .. v11}, Lcom/jcraft/jsch/KeyPairDSA;-><init>(Lcom/jcraft/jsch/JSch;[B[B[B[B[B)V

    invoke-virtual {p1}, Lcom/jcraft/jsch/KeyPairDSA;->getPrivateKey()[B

    move-result-object p1

    new-instance v1, Lcom/jcraft/jsch/KeyPairDSA;

    iget-object v3, p0, Lcom/jcraft/jsch/KeyPair;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-direct {v1, v3}, Lcom/jcraft/jsch/KeyPairDSA;-><init>(Lcom/jcraft/jsch/JSch;)V

    invoke-virtual {v1, p0}, Lcom/jcraft/jsch/KeyPair;->copy(Lcom/jcraft/jsch/KeyPair;)V

    invoke-virtual {v1, p1}, Lcom/jcraft/jsch/KeyPairDSA;->parse([B)Z

    move-result p1
    :try_end_0
    .catch Lcom/jcraft/jsch/KeyPair$ASN1Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_4

    goto/16 :goto_1

    :cond_4
    :goto_4
    iget-object p1, p0, Lcom/jcraft/jsch/KeyPairPKCS8;->kpair:Lcom/jcraft/jsch/KeyPair;

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    :catch_0
    :cond_5
    return v0
.end method
