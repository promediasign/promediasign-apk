.class public Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;
.super Lorg/apache/poi/poifs/crypt/Encryptor;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CryptoAPICipherOutputStream;
    }
.end annotation


# instance fields
.field private chunkSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;-><init>()V

    const/16 v0, 0x200

    iput v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->chunkSize:I

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->chunkSize:I

    return p0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->clone()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/poifs/crypt/Encryptor;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->clone()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;
    .locals 1

    .line 3
    invoke-super {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->clone()Lorg/apache/poi/poifs/crypt/Encryptor;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;

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

    invoke-virtual/range {v2 .. v8}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->confirmPassword(Ljava/lang/String;[B[B[B[B[B)V

    return-void
.end method

.method public confirmPassword(Ljava/lang/String;[B[B[B[B[B)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;

    invoke-virtual {p2, p5}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;->setSalt([B)V

    invoke-static {p1, p2}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->generateSecretKey(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)Ljavax/crypto/SecretKey;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/Encryptor;->setSecretKey(Ljavax/crypto/SecretKey;)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p3}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;

    move-result-object p1

    array-length p5, p4

    new-array p5, p5, [B

    array-length p6, p4

    invoke-virtual {p1, p4, p3, p6, p5}, Ljavax/crypto/Cipher;->update([BII[B)I

    invoke-virtual {p2, p5}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;->setEncryptedVerifier([B)V

    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object p3

    invoke-static {p3}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p3

    invoke-virtual {p1, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;->setEncryptedVerifierHash([B)V
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

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;

    new-instance v3, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$1;

    invoke-direct {v3, p0, v0, v1, v2}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$1;-><init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;)V

    const-string v0, "EncryptionInfo"

    invoke-static {p1, v0, v3}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->createEncryptionEntry(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    return-void
.end method

.method public bridge synthetic getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/OutputStream;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDataStream(Ljava/io/OutputStream;I)Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->getDataStream(Ljava/io/OutputStream;I)Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CryptoAPICipherOutputStream;

    move-result-object p1

    return-object p1
.end method

.method public getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;
    .locals 1

    .line 3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "not supported"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDataStream(Ljava/io/OutputStream;I)Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CryptoAPICipherOutputStream;
    .locals 0

    .line 4
    new-instance p2, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CryptoAPICipherOutputStream;

    invoke-direct {p2, p0, p1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor$CryptoAPICipherOutputStream;-><init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;Ljava/io/OutputStream;)V

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

.method public initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, p2, v0, v1, v2}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->initCipherForBlock(Ljavax/crypto/Cipher;ILorg/apache/poi/poifs/crypt/EncryptionInfo;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;

    move-result-object p1

    return-object p1
.end method

.method public setChunkSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->chunkSize:I

    return-void
.end method

.method public setSummaryEntries(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    .locals 11

    new-instance v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;-><init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;)V

    const/16 v1, 0x8

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->write([BII)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p3

    invoke-virtual {p3}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v5, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/poifs/filesystem/Entry;

    invoke-interface {v6}, Lorg/apache/poi/poifs/filesystem/Entry;->isDirectoryEntry()Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    new-instance v8, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;

    invoke-direct {v8}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;-><init>()V

    iput v5, v8, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->block:I

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    iput v9, v8, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamOffset:I

    invoke-interface {v6}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamName:Ljava/lang/String;

    sget-object v9, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->flagStream:Lorg/apache/poi/util/BitField;

    invoke-virtual {v9, v3, v7}, Lorg/apache/poi/util/BitField;->setValue(II)I

    move-result v7

    iput v7, v8, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->flags:I

    iput v3, v8, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->reserved2:I

    invoke-virtual {v0, v5}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->setBlock(I)V

    invoke-virtual {p1, v6}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object v6

    invoke-static {v6, v0}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v6}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    iget v7, v8, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamOffset:I

    sub-int/2addr v6, v7

    iput v6, v8, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamSize:I

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p3

    invoke-virtual {v0, v3}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->setBlock(I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v2, v3, v5, v6}, Lorg/apache/poi/util/LittleEndian;->putUInt([BIJ)V

    const/4 v5, 0x4

    invoke-virtual {v0, v2, v3, v5}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->write([BII)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;

    iget v8, v6, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamOffset:I

    int-to-long v8, v8

    invoke-static {v2, v3, v8, v9}, Lorg/apache/poi/util/LittleEndian;->putUInt([BIJ)V

    invoke-virtual {v0, v2, v3, v5}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->write([BII)V

    iget v8, v6, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamSize:I

    int-to-long v8, v8

    invoke-static {v2, v3, v8, v9}, Lorg/apache/poi/util/LittleEndian;->putUInt([BIJ)V

    invoke-virtual {v0, v2, v3, v5}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->write([BII)V

    iget v8, v6, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->block:I

    invoke-static {v2, v3, v8}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    const/4 v8, 0x2

    invoke-virtual {v0, v2, v3, v8}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->write([BII)V

    iget-object v9, v6, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamName:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    int-to-short v9, v9

    invoke-static {v2, v3, v9}, Lorg/apache/poi/util/LittleEndian;->putUByte([BIS)V

    invoke-virtual {v0, v2, v3, v7}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->write([BII)V

    iget v9, v6, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->flags:I

    int-to-short v9, v9

    invoke-static {v2, v3, v9}, Lorg/apache/poi/util/LittleEndian;->putUByte([BIS)V

    invoke-virtual {v0, v2, v3, v7}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->write([BII)V

    iget v9, v6, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->reserved2:I

    int-to-long v9, v9

    invoke-static {v2, v3, v9, v10}, Lorg/apache/poi/util/LittleEndian;->putUInt([BIJ)V

    invoke-virtual {v0, v2, v3, v5}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->write([BII)V

    iget-object v6, v6, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamName:Ljava/lang/String;

    invoke-static {v6}, Lorg/apache/poi/util/StringUtil;->getToUnicodeLE(Ljava/lang/String;)[B

    move-result-object v6

    array-length v9, v6

    invoke-virtual {v0, v6, v3, v9}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->write([BII)V

    invoke-static {v2, v3, v3}, Lorg/apache/poi/util/LittleEndian;->putShort([BIS)V

    invoke-virtual {v0, v2, v3, v8}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->write([BII)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    sub-int v6, v4, p3

    int-to-long v7, p3

    invoke-static {v2, v3, v7, v8}, Lorg/apache/poi/util/LittleEndian;->putUInt([BIJ)V

    int-to-long v6, v6

    invoke-static {v2, v5, v6, v7}, Lorg/apache/poi/util/LittleEndian;->putUInt([BIJ)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    invoke-virtual {v0, v3}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->setBlock(I)V

    invoke-virtual {v0, v2, v3, v1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->write([BII)V

    invoke-virtual {v0, v4}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->setSize(I)V

    new-instance p3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->getBuf()[B

    move-result-object v0

    invoke-direct {p3, v0, v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-virtual {p1, p2, p3}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Ljava/lang/String;Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    return-void
.end method
