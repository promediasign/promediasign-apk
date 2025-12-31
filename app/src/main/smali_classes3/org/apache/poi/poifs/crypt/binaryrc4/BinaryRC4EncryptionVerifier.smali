.class public Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;
.super Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;-><init>()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setSpinCount(I)V

    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rc4:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setChainingMode(Lorg/apache/poi/poifs/crypt/ChainingMode;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setEncryptedKey([B)V

    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->md5:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setHashAlgorithm(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [B

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;->setSalt([B)V

    new-array v1, v0, [B

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;->setEncryptedVerifier([B)V

    new-array v0, v0, [B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;->setEncryptedVerifierHash([B)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setSpinCount(I)V

    sget-object p1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rc4:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setChainingMode(Lorg/apache/poi/poifs/crypt/ChainingMode;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setEncryptedKey([B)V

    sget-object p1, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->md5:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setHashAlgorithm(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;->clone()Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;->clone()Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;
    .locals 1

    .line 3
    invoke-super {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->clone()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/binaryrc4/BinaryRC4EncryptionVerifier;

    return-object v0
.end method

.method public setEncryptedVerifier([B)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setEncryptedVerifier([B)V

    return-void
.end method

.method public setEncryptedVerifierHash([B)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setEncryptedVerifierHash([B)V

    return-void
.end method

.method public setSalt([B)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setSalt([B)V

    return-void

    :cond_0
    new-instance p1, Lorg/apache/poi/EncryptedDocumentException;

    const-string v0, "invalid verifier salt"

    invoke-direct {p1, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getSalt()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->write([B)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getEncryptedVerifier()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->write([B)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getEncryptedVerifierHash()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->write([B)V

    return-void
.end method
