.class public abstract Lorg/apache/poi/poifs/crypt/Decryptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFAULT_PASSWORD:Ljava/lang/String; = "VelvetSweatshop"

.field public static final DEFAULT_POIFS_ENTRY:Ljava/lang/String; = "EncryptedPackage"


# instance fields
.field protected encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

.field private integrityHmacKey:[B

.field private integrityHmacValue:[B

.field private secretKey:Ljavax/crypto/SecretKey;

.field private verifier:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)Lorg/apache/poi/poifs/crypt/Decryptor;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getDecryptor()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v0, "Unsupported version"

    invoke-direct {p0, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Decryptor;->clone()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/poifs/crypt/Decryptor;
    .locals 4

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/Decryptor;

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->integrityHmacKey:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lorg/apache/poi/poifs/crypt/Decryptor;->integrityHmacKey:[B

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->integrityHmacValue:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lorg/apache/poi/poifs/crypt/Decryptor;->integrityHmacValue:[B

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->verifier:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lorg/apache/poi/poifs/crypt/Decryptor;->verifier:[B

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->secretKey:Ljavax/crypto/SecretKey;

    invoke-interface {v2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->secretKey:Ljavax/crypto/SecretKey;

    invoke-interface {v3}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v1, v0, Lorg/apache/poi/poifs/crypt/Decryptor;->secretKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getBlockSizeInBytes()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public getDataStream(Ljava/io/InputStream;II)Ljava/io/InputStream;
    .locals 0

    .line 1
    new-instance p1, Lorg/apache/poi/EncryptedDocumentException;

    const-string p2, "this decryptor doesn\'t support reading from a stream"

    invoke-direct {p1, p2}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/InputStream;
.end method

.method public getDataStream(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)Ljava/io/InputStream;
    .locals 0

    .line 2
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/Decryptor;->getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public getDataStream(Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;)Ljava/io/InputStream;
    .locals 0

    .line 3
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/Decryptor;->getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public getDataStream(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)Ljava/io/InputStream;
    .locals 0

    .line 4
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/Decryptor;->getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    return-object v0
.end method

.method public getIntegrityHmacKey()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->integrityHmacKey:[B

    return-object v0
.end method

.method public getIntegrityHmacValue()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->integrityHmacValue:[B

    return-object v0
.end method

.method public getKeySizeInBytes()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getKeySize()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public abstract getLength()J
.end method

.method public getSecretKey()Ljavax/crypto/SecretKey;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->secretKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getVerifier()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->verifier:[B

    return-object v0
.end method

.method public initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;
    .locals 0

    new-instance p1, Lorg/apache/poi/EncryptedDocumentException;

    const-string p2, "this decryptor doesn\'t support initCipherForBlock"

    invoke-direct {p1, p2}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setChunkSize(I)V
    .locals 1

    new-instance p1, Lorg/apache/poi/EncryptedDocumentException;

    const-string v0, "this decryptor doesn\'t support changing the chunk size"

    invoke-direct {p1, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    return-void
.end method

.method public setIntegrityHmacKey([B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->integrityHmacKey:[B

    return-void
.end method

.method public setIntegrityHmacValue([B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->integrityHmacValue:[B

    return-void
.end method

.method public setSecretKey(Ljavax/crypto/SecretKey;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->secretKey:Ljavax/crypto/SecretKey;

    return-void
.end method

.method public setVerifier([B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/Decryptor;->verifier:[B

    return-void
.end method

.method public abstract verifyPassword(Ljava/lang/String;)Z
.end method
