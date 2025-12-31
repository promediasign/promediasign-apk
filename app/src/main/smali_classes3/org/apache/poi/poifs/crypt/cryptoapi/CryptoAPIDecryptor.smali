.class public Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;
.super Lorg/apache/poi/poifs/crypt/Decryptor;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$CryptoAPICipherInputStream;,
        Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;
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

    iput-wide v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->length:J

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->chunkSize:I

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->chunkSize:I

    return p0
.end method

.method public static generateSecretKey(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)Ljavax/crypto/SecretKey;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getSalt()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-static {p0}, Lorg/apache/poi/util/StringUtil;->getToUnicodeLE(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

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

    invoke-static {v0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object p1

    invoke-interface {p3}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getKeySize()I

    move-result v0

    div-int/lit8 v1, v0, 0x8

    invoke-static {p1, v1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlock0([BI)[B

    move-result-object p1

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    invoke-static {p1, v0}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlock0([BI)[B

    move-result-object p1

    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p3}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p1, p3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    if-nez p0, :cond_1

    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {v0, p0, p1, p1, p4}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljavax/crypto/SecretKey;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BI)Ljavax/crypto/Cipher;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p4, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    :goto_0
    return-object p0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->clone()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/poifs/crypt/Decryptor;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->clone()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;
    .locals 1

    .line 3
    invoke-super {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;->clone()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;

    return-object v0
.end method

.method public bridge synthetic getDataStream(Ljava/io/InputStream;II)Ljava/io/InputStream;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->getDataStream(Ljava/io/InputStream;II)Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/InputStream;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    move-result-object p1

    return-object p1
.end method

.method public getDataStream(Ljava/io/InputStream;II)Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;
    .locals 7

    .line 3
    new-instance v6, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$CryptoAPICipherInputStream;

    int-to-long v3, p2

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$CryptoAPICipherInputStream;-><init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;Ljava/io/InputStream;JI)V

    return-object v6
.end method

.method public getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;
    .locals 1

    .line 4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "not supported"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLength()J
    .locals 5

    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->length:J

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

.method public getSummaryEntries(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;
    .locals 8

    invoke-virtual {p1, p2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->getEntry(Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/Entry;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    invoke-virtual {p1, p2}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocumentInputStream(Lorg/apache/poi/poifs/filesystem/Entry;)Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    move-result-object p1

    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p1, p2}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    new-instance p1, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentInputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentInputStream;-><init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;[B)V

    new-instance p2, Lorg/apache/poi/util/LittleEndianInputStream;

    invoke-direct {p2, p1}, Lorg/apache/poi/util/LittleEndianInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {p2}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    int-to-long v1, v2

    const-wide/16 v3, 0x8

    sub-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-ltz v5, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentInputStream;->setBlock(I)V

    invoke-virtual {p2}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v2

    long-to-int v3, v2

    new-array v2, v3, [Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    new-instance v5, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;

    invoke-direct {v5}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;-><init>()V

    aput-object v5, v2, v4

    invoke-virtual {p2}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v6

    long-to-int v7, v6

    iput v7, v5, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamOffset:I

    invoke-virtual {p2}, Lorg/apache/poi/util/LittleEndianInputStream;->readUInt()J

    move-result-wide v6

    long-to-int v7, v6

    iput v7, v5, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamSize:I

    invoke-virtual {p2}, Lorg/apache/poi/util/LittleEndianInputStream;->readUShort()I

    move-result v6

    iput v6, v5, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->block:I

    invoke-virtual {p2}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result v6

    invoke-virtual {p2}, Lorg/apache/poi/util/LittleEndianInputStream;->readUByte()I

    move-result v7

    iput v7, v5, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->flags:I

    invoke-virtual {p2}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v7

    iput v7, v5, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->reserved2:I

    invoke-static {p2, v6}, Lorg/apache/poi/util/StringUtil;->readUnicodeLE(Lorg/apache/poi/util/LittleEndianInput;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamName:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_0
    new-instance v4, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;

    invoke-direct {v4}, Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-ge v1, v3, :cond_1

    :try_start_1
    aget-object v0, v2, v1

    iget v5, v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamOffset:I

    invoke-virtual {p1, v5}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentInputStream;->seek(I)V

    iget v5, v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->block:I

    invoke-virtual {p1, v5}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentInputStream;->setBlock(I)V

    new-instance v5, Lorg/apache/poi/util/BoundedInputStream;

    iget v6, v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamSize:I

    int-to-long v6, v6

    invoke-direct {v5, p1, v6, v7}, Lorg/apache/poi/util/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    iget-object v0, v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor$StreamDescriptorEntry;->streamName:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->createDocument(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    invoke-virtual {v5}, Lorg/apache/poi/util/BoundedInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v0, v4

    goto :goto_2

    :cond_1
    invoke-static {p2}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p1}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v4

    :cond_2
    :try_start_2
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "buffer underrun"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    :try_start_3
    invoke-static {v0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    instance-of v0, v1, Ljava/security/GeneralSecurityException;

    if-nez v0, :cond_4

    instance-of v0, v1, Ljava/io/IOException;

    if-eqz v0, :cond_3

    check-cast v1, Ljava/io/IOException;

    throw v1

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v2, "summary entries can\'t be read"

    invoke-direct {v0, v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    check-cast v1, Ljava/security/GeneralSecurityException;

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    invoke-static {p2}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {p1}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

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

    invoke-static {p1, p2, v0, v1, v2}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->initCipherForBlock(Ljavax/crypto/Cipher;ILorg/apache/poi/poifs/crypt/EncryptionInfo;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;

    move-result-object p1

    return-object p1
.end method

.method public setChunkSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->chunkSize:I

    return-void
.end method

.method public verifyPassword(Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->generateSecretKey(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)Ljavax/crypto/SecretKey;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4, v3, v1, p1, v2}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->initCipherForBlock(Ljavax/crypto/Cipher;ILorg/apache/poi/poifs/crypt/EncryptionInfo;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;

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
