.class public Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;
.super Lorg/apache/poi/poifs/crypt/Decryptor;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor$BinaryRC4CipherInputStream;
    }
.end annotation


# instance fields
.field private chunkSize:I

.field private length:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->length:J

    const/16 v0, 0x200

    iput v0, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->chunkSize:I

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->chunkSize:I

    return p0
.end method

.method public static generateSecretKey(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)Ljavax/crypto/SecretKey;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xff

    if-le v0, v2, :cond_0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {p0}, Lorg/apache/poi/util/StringUtil;->getToUnicodeLE(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getSalt()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x10

    const/4 v5, 0x5

    if-ge v3, v4, :cond_1

    invoke-virtual {v0, p0, v1, v5}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array p0, v5, [B

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0, v1, p0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static initCipherForBlock(Ljavax/crypto/Cipher;ILorg/apache/poi/poifs/crypt/EncryptionInfo;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;
    .locals 5

    .line 2
    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [B

    const/4 v2, 0x0

    int-to-long v3, p1

    invoke-static {v1, v2, v3, v4}, Lorg/apache/poi/util/LittleEndian;->putUInt([BIJ)V

    invoke-interface {p3}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    const/16 v2, 0x10

    invoke-static {p1, v0, v1, v2}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->generateKey([BLorg/apache/poi/poifs/crypt/HashAlgorithm;[BI)[B

    move-result-object p1

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p3}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p1, p3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    if-nez p0, :cond_0

    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {v0, p0, p1, p1, p4}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljavax/crypto/SecretKey;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BI)Ljavax/crypto/Cipher;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p4, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    :goto_0
    return-object p0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->clone()Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/poifs/crypt/Decryptor;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->clone()Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;
    .locals 1

    .line 3
    invoke-super {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;->clone()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;

    return-object v0
.end method

.method public getDataStream(Ljava/io/InputStream;II)Ljava/io/InputStream;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor$BinaryRC4CipherInputStream;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor$BinaryRC4CipherInputStream;-><init>(Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;Ljava/io/InputStream;II)V

    return-object v0
.end method

.method public bridge synthetic getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/InputStream;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    move-result-object p1

    return-object p1
.end method

.method public getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;
    .locals 3

    .line 3
    const-string v0, "EncryptedPackage"

    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->length:J

    new-instance v0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor$BinaryRC4CipherInputStream;

    iget-wide v1, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->length:J

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor$BinaryRC4CipherInputStream;-><init>(Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;Lorg/apache/poi/poifs/filesystem/DocumentInputStream;J)V

    return-object v0
.end method

.method public getLength()J
    .locals 5

    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->length:J

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

.method public initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p1, p2, v0, v1, v2}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->initCipherForBlock(Ljavax/crypto/Cipher;ILorg/apache/poi/poifs/crypt/EncryptionInfo;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;

    move-result-object p1

    return-object p1
.end method

.method public setChunkSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->chunkSize:I

    return-void
.end method

.method public verifyPassword(Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->generateSecretKey(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)Ljavax/crypto/SecretKey;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4, v3, v1, p1, v2}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->initCipherForBlock(Ljavax/crypto/Cipher;ILorg/apache/poi/poifs/crypt/EncryptionInfo;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getEncryptedVerifier()[B

    move-result-object v2

    array-length v4, v2

    new-array v4, v4, [B

    array-length v5, v2

    invoke-virtual {v1, v2, v3, v5, v4}, Ljavax/crypto/Cipher;->update([BII[B)I

    invoke-virtual {p0, v4}, Lorg/apache/poi/poifs/crypt/Decryptor;->setVerifier([B)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getEncryptedVerifierHash()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

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
    return v3

    :goto_0
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
