.class public Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;
.super Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;
.implements Ljava/lang/Cloneable;


# instance fields
.field private final verifierHashSize:I


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V

    invoke-virtual {p0, p2}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setHashAlgorithm(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    invoke-virtual {p0, p5}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setChainingMode(Lorg/apache/poi/poifs/crypt/ChainingMode;)V

    const p1, 0xc350

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setSpinCount(I)V

    iget p1, p2, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->hashSize:I

    iput p1, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->verifierHashSize:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;-><init>()V

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    new-array v0, v1, [B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->setSalt([B)V

    new-array v0, v1, [B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->setEncryptedVerifier([B)V

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->verifierHashSize:I

    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v0

    iget v0, v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->encryptedVerifierHashLength:I

    new-array v0, v0, [B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->setEncryptedVerifierHash([B)V

    const p1, 0xc350

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setSpinCount(I)V

    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V

    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getChainingMode()Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setChainingMode(Lorg/apache/poi/poifs/crypt/ChainingMode;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setEncryptedKey([B)V

    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setHashAlgorithm(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Salt size != 16 !?"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->clone()Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->clone()Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;
    .locals 1

    .line 3
    invoke-super {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->clone()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;

    return-object v0
.end method

.method public getVerifierHashSize()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->verifierHashSize:I

    return v0
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
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getSalt()[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p1, v1}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->write([B)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getEncryptedVerifier()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->write([B)V

    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getEncryptedVerifierHash()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;->write([B)V

    return-void
.end method
