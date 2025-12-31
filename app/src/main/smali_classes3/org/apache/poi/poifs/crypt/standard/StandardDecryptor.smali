.class public Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;
.super Lorg/apache/poi/poifs/crypt/Decryptor;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private _length:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->_length:J

    return-void
.end method

.method public static fillAndXor([BB)[B
    .locals 3

    const/16 v0, 0x40

    new-array v0, v0, [B

    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([BB)V

    const/4 p1, 0x0

    :goto_0
    array-length v1, p0

    if-ge p1, v1, :cond_0

    aget-byte v1, v0, p1

    aget-byte v2, p0, p1

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha1:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    invoke-static {p0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static generateSecretKey(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionVerifier;I)Ljavax/crypto/SecretKey;
    .locals 4

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getSalt()[B

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getSpinCount()I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->hashPassword(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;[BI)[B

    move-result-object p0

    const/4 v1, 0x4

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    iget v3, v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->hashSize:I

    invoke-static {p0, v0, v1, v3}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->generateKey([BLorg/apache/poi/poifs/crypt/HashAlgorithm;[BI)[B

    move-result-object p0

    const/16 v0, 0x36

    invoke-static {p0, v0}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->fillAndXor([BB)[B

    move-result-object v0

    const/16 v1, 0x5c

    invoke-static {p0, v1}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->fillAndXor([BB)[B

    move-result-object p0

    array-length v1, v0

    array-length v3, p0

    add-int/2addr v1, v3

    new-array v1, v1, [B

    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v3, p0

    invoke-static {p0, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    invoke-direct {p2, p0, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p2
.end method

.method private getCipher(Ljavax/crypto/SecretKey;)Ljavax/crypto/Cipher;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getChainingMode()Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v0, v1, v2, v3}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljavax/crypto/SecretKey;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BI)Ljavax/crypto/Cipher;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->clone()Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/poifs/crypt/Decryptor;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->clone()Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;
    .locals 1

    .line 3
    invoke-super {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;->clone()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;

    return-object v0
.end method

.method public getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/InputStream;
    .locals 7

    const-string v0, "EncryptedPackage"

    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->_length:J

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->verifyPassword(Ljava/lang/String;)Z

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v0

    iget v0, v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->blockSize:I

    iget-wide v1, p0, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->_length:J

    int-to-long v3, v0

    div-long/2addr v1, v3

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    mul-long v1, v1, v3

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->getCipher(Ljavax/crypto/SecretKey;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v3, Lorg/apache/poi/util/BoundedInputStream;

    invoke-direct {v3, p1, v1, v2}, Lorg/apache/poi/util/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    new-instance p1, Lorg/apache/poi/util/BoundedInputStream;

    new-instance v1, Ljavax/crypto/CipherInputStream;

    invoke-direct {v1, v3, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    iget-wide v2, p0, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->_length:J

    invoke-direct {p1, v1, v2, v3}, Lorg/apache/poi/util/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    return-object p1
.end method

.method public getLength()J
    .locals 5

    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->_length:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Decryptor.getDataStream() was not called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verifyPassword(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getKeySizeInBytes()I

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->generateSecretKey(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionVerifier;I)Ljavax/crypto/SecretKey;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->getCipher(Ljavax/crypto/SecretKey;)Ljavax/crypto/Cipher;

    move-result-object v1

    :try_start_0
    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getEncryptedVerifier()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/poi/poifs/crypt/Decryptor;->setVerifier([B)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getEncryptedVerifierHash()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    array-length v1, v2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/Decryptor;->setSecretKey(Ljavax/crypto/SecretKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :goto_0
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
