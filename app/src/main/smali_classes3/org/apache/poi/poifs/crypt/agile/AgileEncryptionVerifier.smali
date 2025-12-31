.class public Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;
.super Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;
    }
.end annotation


# instance fields
.field private blockSize:I

.field private certList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;",
            ">;"
        }
    .end annotation
.end field

.field private keyBits:I


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->certList:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->keyBits:I

    iput v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->blockSize:I

    invoke-interface {p1}, Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;->getEncryption()Lcom/microsoft/schemas/office/x2006/encryption/CTEncryption;

    const/4 p1, 0x0

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionInfoBuilder;->parseDescriptor(Ljava/lang/String;)Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;-><init>(Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->certList:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->keyBits:I

    iput v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->blockSize:I

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V

    invoke-virtual {p0, p2}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setHashAlgorithm(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    invoke-virtual {p0, p5}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setChainingMode(Lorg/apache/poi/poifs/crypt/ChainingMode;)V

    invoke-virtual {p0, p3}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setKeySize(I)V

    invoke-virtual {p0, p4}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setBlockSize(I)V

    const p1, 0x186a0

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setSpinCount(I)V

    return-void
.end method


# virtual methods
.method public addCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 1

    new-instance v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;

    invoke-direct {v0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;-><init>()V

    iput-object p1, v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;->x509:Ljava/security/cert/X509Certificate;

    iget-object p1, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->certList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->clone()Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->clone()Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;
    .locals 3

    .line 3
    invoke-super {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->clone()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->certList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->certList:Ljava/util/List;

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->blockSize:I

    return v0
.end method

.method public getCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->certList:Ljava/util/List;

    return-object v0
.end method

.method public getKeySize()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->keyBits:I

    return v0
.end method

.method public setBlockSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->blockSize:I

    return-void
.end method

.method public final setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V

    iget-object v0, p1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->allowedKeySize:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p1, p1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->defaultKeySize:I

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setKeySize(I)V

    :cond_0
    return-void
.end method

.method public setEncryptedKey([B)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setEncryptedKey([B)V

    return-void
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

.method public setKeySize(I)V
    .locals 4

    .line 1
    iput p1, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->keyBits:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->allowedKeySize:[I

    .line 8
    .line 9
    array-length v1, v0

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_1

    .line 12
    .line 13
    aget v3, v0, v2

    .line 14
    .line 15
    if-ne v3, p1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    .line 22
    .line 23
    const-string v1, "KeySize "

    .line 24
    .line 25
    const-string v2, " not allowed for cipher "

    .line 26
    .line 27
    invoke-static {p1, v1, v2}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {v0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0
.end method

.method public setSalt([B)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v1

    iget v1, v1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->blockSize:I

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->setSalt([B)V

    return-void

    :cond_0
    new-instance p1, Lorg/apache/poi/EncryptedDocumentException;

    const-string v0, "invalid verifier salt"

    invoke-direct {p1, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
