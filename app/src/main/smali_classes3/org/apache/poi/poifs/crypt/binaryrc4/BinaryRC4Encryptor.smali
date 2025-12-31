.class public Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;
.super Lorg/apache/poi/poifs/crypt/Encryptor;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor$BinaryRC4CipherOutputStream;
    }
.end annotation


# instance fields
.field private chunkSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;-><init>()V

    const/16 v0, 0x200

    iput v0, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;->chunkSize:I

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;->chunkSize:I

    return p0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;->clone()Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/poifs/crypt/Encryptor;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;->clone()Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;
    .locals 1

    .line 3
    invoke-super {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->clone()Lorg/apache/poi/poifs/crypt/Encryptor;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;

    return-object v0
.end method

.method public confirmPassword(Ljava/lang/String;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x10

    new-array v7, v1, [B

    new-array v6, v1, [B

    invoke-virtual {v0, v7}, Ljava/util/Random;->nextBytes([B)V

    invoke-virtual {v0, v6}, Ljava/util/Random;->nextBytes([B)V

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;->confirmPassword(Ljava/lang/String;[B[B[B[B[B)V

    return-void
.end method

.method public confirmPassword(Ljava/lang/String;[B[B[B[B[B)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;

    invoke-virtual {p2, p5}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;->setSalt([B)V

    invoke-static {p1, p2}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->generateSecretKey(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)Ljavax/crypto/SecretKey;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/Encryptor;->setSecretKey(Ljavax/crypto/SecretKey;)V

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object p3

    const/4 p5, 0x1

    const/4 p6, 0x0

    const/4 v0, 0x0

    invoke-static {v0, p6, p3, p1, p5}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->initCipherForBlock(Ljavax/crypto/Cipher;ILorg/apache/poi/poifs/crypt/EncryptionInfo;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;

    move-result-object p1

    const/16 p3, 0x10

    new-array p5, p3, [B

    invoke-virtual {p1, p4, p6, p3, p5}, Ljavax/crypto/Cipher;->update([BII[B)I

    invoke-virtual {p2, p5}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;->setEncryptedVerifier([B)V

    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object p3

    invoke-static {p3}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p3

    invoke-virtual {p1, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;->setEncryptedVerifierHash([B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/poi/EncryptedDocumentException;

    const-string p3, "Password confirmation failed"

    invoke-direct {p2, p3, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public createEncryptionInfoEntry(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 4

    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->addDefaultDataSpace(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;

    new-instance v3, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor$1;

    invoke-direct {v3, p0, v0, v1, v2}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor$1;-><init>(Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;)V

    const-string v0, "EncryptionInfo"

    invoke-static {p1, v0, v3}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->createEncryptionEntry(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    return-void
.end method

.method public getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/OutputStream;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor$BinaryRC4CipherOutputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor$BinaryRC4CipherOutputStream;-><init>(Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-object v0
.end method

.method public bridge synthetic getDataStream(Ljava/io/OutputStream;I)Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;->getDataStream(Ljava/io/OutputStream;I)Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor$BinaryRC4CipherOutputStream;

    move-result-object p1

    return-object p1
.end method

.method public getDataStream(Ljava/io/OutputStream;I)Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor$BinaryRC4CipherOutputStream;
    .locals 0

    .line 3
    new-instance p2, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor$BinaryRC4CipherOutputStream;

    invoke-direct {p2, p0, p1}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor$BinaryRC4CipherOutputStream;-><init>(Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;Ljava/io/OutputStream;)V

    return-object p2
.end method

.method public getKeySizeInBytes()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getKeySize()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public setChunkSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;->chunkSize:I

    return-void
.end method
