.class public Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;
.super Lorg/apache/poi/poifs/crypt/EncryptionHeader;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;-><init>()V

    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rc4:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setKeySize(I)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setBlockSize(I)V

    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherProvider;->rc4:Lorg/apache/poi/poifs/crypt/CipherProvider;

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setCipherProvider(Lorg/apache/poi/poifs/crypt/CipherProvider;)V

    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->md5:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setHashAlgorithm(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setSizeExtra(I)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setFlags(I)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setCspName(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setChainingMode(Lorg/apache/poi/poifs/crypt/ChainingMode;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;->clone()Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/poifs/crypt/EncryptionHeader;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;->clone()Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;
    .locals 1

    .line 3
    invoke-super {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->clone()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionHeader;

    return-object v0
.end method

.method public write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V
    .locals 0

    return-void
.end method
