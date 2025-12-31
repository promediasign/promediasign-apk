.class public Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;
.super Lorg/apache/poi/poifs/crypt/Decryptor;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;
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

    iput-wide v0, p0, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;->length:J

    const/16 v0, 0x200

    iput v0, p0, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;->chunkSize:I

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;->chunkSize:I

    return p0
.end method

.method public static initCipherForBlock(Ljavax/crypto/Cipher;ILorg/apache/poi/poifs/crypt/EncryptionInfo;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;
    .locals 0

    .line 2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;->clone()Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/poifs/crypt/Decryptor;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;->clone()Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;
    .locals 1

    .line 3
    invoke-super {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;->clone()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;

    return-object v0
.end method

.method public getDataStream(Ljava/io/InputStream;II)Ljava/io/InputStream;
    .locals 0

    .line 1
    new-instance p2, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;

    invoke-direct {p2, p0, p1, p3}, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;-><init>(Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;Ljava/io/InputStream;I)V

    return-object p2
.end method

.method public bridge synthetic getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/InputStream;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;->getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    move-result-object p1

    return-object p1
.end method

.method public getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;
    .locals 1

    .line 3
    new-instance p1, Lorg/apache/poi/EncryptedDocumentException;

    const-string v0, "not supported"

    invoke-direct {p1, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLength()J
    .locals 5

    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;->length:J

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
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public setChunkSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;->chunkSize:I

    return-void
.end method

.method public verifyPassword(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionVerifier;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getEncryptedKey()[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/util/LittleEndian;->getUShort([B)I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getEncryptedVerifier()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/util/LittleEndian;->getUShort([B)I

    move-result v0

    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->createXorKey1(Ljava/lang/String;)I

    move-result v2

    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->createXorVerifier1(Ljava/lang/String;)I

    move-result v3

    if-ne v1, v2, :cond_0

    if-ne v0, v3, :cond_0

    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->createXorArray1(Ljava/lang/String;)[B

    move-result-object p1

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "XOR"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/Decryptor;->setSecretKey(Ljavax/crypto/SecretKey;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
