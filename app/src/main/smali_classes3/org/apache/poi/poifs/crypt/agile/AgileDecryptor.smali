.class public Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;
.super Lorg/apache/poi/poifs/crypt/Decryptor;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor$AgileCipherInputStream;
    }
.end annotation


# static fields
.field static final kCryptoKeyBlock:[B

.field static final kHashedVerifierBlock:[B

.field static final kIntegrityKeyBlock:[B

.field static final kIntegrityValueBlock:[B

.field static final kVerifierInputBlock:[B


# instance fields
.field private _length:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->kVerifierInputBlock:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->kHashedVerifierBlock:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_2

    sput-object v1, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->kCryptoKeyBlock:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_3

    sput-object v1, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->kIntegrityKeyBlock:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->kIntegrityValueBlock:[B

    return-void

    :array_0
    .array-data 1
        -0x2t
        -0x59t
        -0x2et
        0x76t
        0x3bt
        0x4bt
        -0x62t
        0x79t
    .end array-data

    :array_1
    .array-data 1
        -0x29t
        -0x56t
        0xft
        0x6dt
        0x30t
        0x61t
        0x34t
        0x4et
    .end array-data

    :array_2
    .array-data 1
        0x14t
        0x6et
        0xbt
        -0x19t
        -0x55t
        -0x54t
        -0x30t
        -0x2at
    .end array-data

    :array_3
    .array-data 1
        0x5ft
        -0x4et
        -0x53t
        0x1t
        0xct
        -0x47t
        -0x1ft
        -0xat
    .end array-data

    :array_4
    .array-data 1
        -0x60t
        0x67t
        0x7ft
        0x2t
        -0x4et
        0x2ct
        -0x7ct
        0x33t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->_length:J

    return-void
.end method

.method public static getNextBlockSize(II)I
    .locals 1

    move v0, p1

    :goto_0
    if-ge v0, p0, :cond_0

    add-int/2addr v0, p1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static hashInput(Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;[B[B[BI)[B
    .locals 5

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getChainingMode()Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getKeySize()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getBlockSize()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v4

    invoke-static {p1, v4, p2, v2}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->generateKey([BLorg/apache/poi/poifs/crypt/HashAlgorithm;[BI)[B

    move-result-object p1

    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    invoke-direct {p2, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getSalt()[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {v4, p0, p1, v3}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->generateIv(Lorg/apache/poi/poifs/crypt/HashAlgorithm;[B[BI)[B

    move-result-object p0

    invoke-static {p2, v0, v1, p0, p4}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljavax/crypto/SecretKey;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BI)Ljavax/crypto/Cipher;

    move-result-object p0

    :try_start_0
    array-length p1, p3

    invoke-static {p1, v3}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->getNextBlockSize(II)I

    move-result p1

    invoke-static {p3, p1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlock0([BI)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {p1, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static initCipherForBlock(Ljavax/crypto/Cipher;IZLorg/apache/poi/poifs/crypt/EncryptionInfo;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;
    .locals 6

    invoke-virtual {p3}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object p3

    if-eqz p2, :cond_0

    const-string p2, "PKCS5Padding"

    :goto_0
    move-object v5, p2

    goto :goto_1

    :cond_0
    const-string p2, "NoPadding"

    goto :goto_0

    :goto_1
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    :cond_1
    invoke-virtual {p3}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v1

    invoke-virtual {p3}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getChainingMode()Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-result-object v2

    invoke-virtual {p3}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getKeySalt()[B

    move-result-object v3

    move-object v0, p4

    move v4, p5

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljava/security/Key;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BILjava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    :cond_2
    const/4 p2, 0x4

    new-array p2, p2, [B

    const/4 v0, 0x0

    invoke-static {p2, v0, p1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    invoke-virtual {p3}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object p1

    invoke-virtual {p3}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getKeySalt()[B

    move-result-object v0

    invoke-virtual {p3}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getBlockSize()I

    move-result v1

    invoke-static {p1, v0, p2, v1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->generateIv(Lorg/apache/poi/poifs/crypt/HashAlgorithm;[B[BI)[B

    move-result-object p1

    invoke-virtual {p3}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object p2

    sget-object p3, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rc2:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    if-ne p2, p3, :cond_3

    new-instance p2, Ljavax/crypto/spec/RC2ParameterSpec;

    invoke-interface {p4}, Ljava/security/Key;->getEncoded()[B

    move-result-object p3

    array-length p3, p3

    mul-int/lit8 p3, p3, 0x8

    invoke-direct {p2, p3, p1}, Ljavax/crypto/spec/RC2ParameterSpec;-><init>(I[B)V

    goto :goto_2

    :cond_3
    new-instance p2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p2, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    :goto_2
    invoke-virtual {p0, p5, p4, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-object p0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->clone()Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/poifs/crypt/Decryptor;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->clone()Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;
    .locals 1

    .line 3
    invoke-super {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;->clone()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;

    return-object v0
.end method

.method public getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/InputStream;
    .locals 3

    const-string v0, "EncryptedPackage"

    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->_length:J

    new-instance v0, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor$AgileCipherInputStream;

    iget-wide v1, p0, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->_length:J

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor$AgileCipherInputStream;-><init>(Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;Lorg/apache/poi/poifs/filesystem/DocumentInputStream;J)V

    return-object v0
.end method

.method public getLength()J
    .locals 5

    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->_length:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "EcmaDecryptor.getDataStream() was not called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verifyPassword(Ljava/lang/String;)Z
    .locals 11

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getBlockSize()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getSalt()[B

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getSpinCount()I

    move-result v5

    invoke-static {p1, v3, v4, v5}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->hashPassword(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;[BI)[B

    move-result-object p1

    sget-object v3, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->kVerifierInputBlock:[B

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getEncryptedVerifier()[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v0, p1, v3, v4, v5}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->hashInput(Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;[B[B[BI)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/poi/poifs/crypt/Decryptor;->setVerifier([B)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    sget-object v4, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->kHashedVerifierBlock:[B

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getEncryptedVerifierHash()[B

    move-result-object v6

    invoke-static {v0, p1, v4, v6, v5}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->hashInput(Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;[B[B[BI)[B

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v6

    iget v6, v6, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->hashSize:I

    invoke-static {v4, v6}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlock0([BI)[B

    move-result-object v4

    sget-object v6, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->kCryptoKeyBlock:[B

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getEncryptedKey()[B

    move-result-object v7

    invoke-static {v0, p1, v6, v7, v5}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->hashInput(Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;[B[B[BI)[B

    move-result-object p1

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getKeySize()I

    move-result v6

    div-int/lit8 v6, v6, 0x8

    invoke-static {p1, v6}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlock0([BI)[B

    move-result-object p1

    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v7

    iget-object v7, v7, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    invoke-direct {v6, p1, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object p1

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getKeySalt()[B

    move-result-object v7

    sget-object v8, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->kIntegrityKeyBlock:[B

    invoke-static {p1, v7, v8, v2}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->generateIv(Lorg/apache/poi/poifs/crypt/HashAlgorithm;[B[BI)[B

    move-result-object p1

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v7

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getChainingMode()Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-result-object v8

    invoke-static {v6, v7, v8, p1, v5}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljavax/crypto/SecretKey;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BI)Ljavax/crypto/Cipher;

    move-result-object p1

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getEncryptedHmacKey()[B

    move-result-object v8

    invoke-virtual {p1, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v8

    iget v8, v8, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->hashSize:I

    invoke-static {p1, v8}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlock0([BI)[B

    move-result-object p1

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v8

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getKeySalt()[B

    move-result-object v9

    sget-object v10, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->kIntegrityValueBlock:[B

    invoke-static {v8, v9, v10, v2}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->generateIv(Lorg/apache/poi/poifs/crypt/HashAlgorithm;[B[BI)[B

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getChainingMode()Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-result-object v0

    invoke-static {v6, v7, v0, v2, v5}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljavax/crypto/SecretKey;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BI)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getEncryptedHmacValue()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v1

    iget v1, v1, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->hashSize:I

    invoke-static {v0, v1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlock0([BI)[B

    move-result-object v0

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v6}, Lorg/apache/poi/poifs/crypt/Decryptor;->setSecretKey(Ljavax/crypto/SecretKey;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/Decryptor;->setIntegrityHmacKey([B)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/Decryptor;->setIntegrityHmacValue([B)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public verifyPassword(Ljava/security/KeyPair;Ljava/security/cert/X509Certificate;)Z
    .locals 10

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getBlockSize()I

    move-result v4

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getCertificates()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;

    iget-object v7, v6, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;->x509:Ljava/security/cert/X509Certificate;

    invoke-virtual {p2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    const/4 p2, 0x0

    if-nez v6, :cond_2

    return p2

    :cond_2
    const-string v5, "RSA"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p1

    const/4 v7, 0x2

    invoke-virtual {v5, v7, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    iget-object p1, v6, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;->encryptedKey:[B

    invoke-virtual {v5, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    invoke-direct {v5, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v2}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMac(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljavax/crypto/Mac;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    iget-object v0, v6, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;->x509:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getKeySalt()[B

    move-result-object v0

    sget-object v8, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->kIntegrityKeyBlock:[B

    invoke-static {v2, v0, v8, v4}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->generateIv(Lorg/apache/poi/poifs/crypt/HashAlgorithm;[B[BI)[B

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getChainingMode()Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-result-object v8

    invoke-static {v5, v3, v8, v0, v7}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljavax/crypto/SecretKey;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BI)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getEncryptedHmacKey()[B

    move-result-object v8

    invoke-virtual {v0, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    iget v8, v2, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->hashSize:I

    invoke-static {v0, v8}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlock0([BI)[B

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getKeySalt()[B

    move-result-object v8

    sget-object v9, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->kIntegrityValueBlock:[B

    invoke-static {v2, v8, v9, v4}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->generateIv(Lorg/apache/poi/poifs/crypt/HashAlgorithm;[B[BI)[B

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getChainingMode()Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-result-object v8

    invoke-static {v5, v3, v8, v4, v7}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljavax/crypto/SecretKey;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BI)Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->getEncryptedHmacValue()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    iget v2, v2, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->hashSize:I

    invoke-static {v1, v2}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlock0([BI)[B

    move-result-object v1

    iget-object v2, v6, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;->certVerifier:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, v5}, Lorg/apache/poi/poifs/crypt/Decryptor;->setSecretKey(Ljavax/crypto/SecretKey;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/Decryptor;->setIntegrityHmacKey([B)V

    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/crypt/Decryptor;->setIntegrityHmacValue([B)V

    const/4 p1, 0x1

    return p1

    :cond_3
    return p2
.end method
