.class public Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor$BinaryRC4CipherOutputStream;
.super Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BinaryRC4CipherOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor$BinaryRC4CipherOutputStream;->this$0:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;

    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;->access$000(Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;)I

    move-result p1

    invoke-direct {p0, p2, p1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor$BinaryRC4CipherOutputStream;->this$0:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;

    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;->access$000(Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;)I

    move-result p1

    invoke-direct {p0, p2, p1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;I)V

    return-void
.end method


# virtual methods
.method public calculateChecksum(Ljava/io/File;I)V
    .locals 0

    return-void
.end method

.method public createEncryptionInfoEntry(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/io/File;)V
    .locals 0

    iget-object p2, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor$BinaryRC4CipherOutputStream;->this$0:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;

    invoke-virtual {p2, p1}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;->createEncryptionInfoEntry(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-void
.end method

.method public flush()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->writeChunk(Z)V

    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    return-void
.end method

.method public initCipherForBlock(Ljavax/crypto/Cipher;IZ)Ljavax/crypto/Cipher;
    .locals 2

    iget-object p3, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor$BinaryRC4CipherOutputStream;->this$0:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;

    invoke-virtual {p3}, Lorg/apache/poi/poifs/crypt/Encryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object p3

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor$BinaryRC4CipherOutputStream;->this$0:Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Encryptor;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, p2, p3, v0, v1}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4Decryptor;->initCipherForBlock(Ljavax/crypto/Cipher;ILorg/apache/poi/poifs/crypt/EncryptionInfo;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;

    move-result-object p1

    return-object p1
.end method
