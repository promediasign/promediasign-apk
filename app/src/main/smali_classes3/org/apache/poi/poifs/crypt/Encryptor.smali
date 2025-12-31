.class public abstract Lorg/apache/poi/poifs/crypt/Encryptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field protected static final DEFAULT_POIFS_ENTRY:Ljava/lang/String; = "EncryptedPackage"


# instance fields
.field private encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

.field private secretKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)Lorg/apache/poi/poifs/crypt/Encryptor;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getEncryptor()Lorg/apache/poi/poifs/crypt/Encryptor;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->clone()Lorg/apache/poi/poifs/crypt/Encryptor;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/poifs/crypt/Encryptor;
    .locals 4

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/Encryptor;

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/Encryptor;->secretKey:Ljavax/crypto/SecretKey;

    invoke-interface {v2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/Encryptor;->secretKey:Ljavax/crypto/SecretKey;

    invoke-interface {v3}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v1, v0, Lorg/apache/poi/poifs/crypt/Encryptor;->secretKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public abstract confirmPassword(Ljava/lang/String;)V
.end method

.method public abstract confirmPassword(Ljava/lang/String;[B[B[B[B[B)V
.end method

.method public abstract getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/OutputStream;
.end method

.method public getDataStream(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)Ljava/io/OutputStream;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/Encryptor;->getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public getDataStream(Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;)Ljava/io/OutputStream;
    .locals 0

    .line 2
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/OPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/Encryptor;->getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public getDataStream(Lorg/apache/poi/poifs/filesystem/POIFSFileSystem;)Ljava/io/OutputStream;
    .locals 0

    .line 3
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/Encryptor;->getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public getDataStream(Ljava/io/OutputStream;I)Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;
    .locals 0

    .line 4
    new-instance p1, Lorg/apache/poi/EncryptedDocumentException;

    const-string p2, "this decryptor doesn\'t support writing directly to a stream"

    invoke-direct {p1, p2}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/Encryptor;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    return-object v0
.end method

.method public getSecretKey()Ljavax/crypto/SecretKey;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/Encryptor;->secretKey:Ljavax/crypto/SecretKey;

    return-object v0
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

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/Encryptor;->encryptionInfo:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    return-void
.end method

.method public setSecretKey(Ljavax/crypto/SecretKey;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/Encryptor;->secretKey:Ljavax/crypto/SecretKey;

    return-void
.end method
