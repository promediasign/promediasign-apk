.class public Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;
.super Lorg/apache/poi/poifs/crypt/EncryptionHeader;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private encryptedHmacKey:[B

.field private encryptedHmacValue:[B


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;-><init>()V

    :try_start_0
    invoke-interface {p1}, Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;->getEncryption()Lcom/microsoft/schemas/office/x2006/encryption/CTEncryption;

    const/4 p1, 0x0

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p1, Lorg/apache/poi/EncryptedDocumentException;

    const-string v0, "Unable to parse keyData"

    invoke-direct {p1, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionInfoBuilder;->parseDescriptor(Ljava/lang/String;)Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;-><init>(Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V

    invoke-virtual {p0, p2}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setHashAlgorithm(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V

    invoke-virtual {p0, p3}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setKeySize(I)V

    invoke-virtual {p0, p4}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setBlockSize(I)V

    invoke-virtual {p0, p5}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setChainingMode(Lorg/apache/poi/poifs/crypt/ChainingMode;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->clone()Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/poifs/crypt/EncryptionHeader;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->clone()Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;
    .locals 3

    .line 3
    invoke-super {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->clone()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->encryptedHmacKey:[B

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    :goto_0
    iput-object v1, v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->encryptedHmacKey:[B

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->encryptedHmacValue:[B

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, [B

    :goto_1
    iput-object v2, v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->encryptedHmacValue:[B

    return-object v0
.end method

.method public getEncryptedHmacKey()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->encryptedHmacKey:[B

    return-object v0
.end method

.method public getEncryptedHmacValue()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->encryptedHmacValue:[B

    return-object v0
.end method

.method public setEncryptedHmacKey([B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->encryptedHmacKey:[B

    return-void
.end method

.method public setEncryptedHmacValue([B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->encryptedHmacValue:[B

    return-void
.end method

.method public setKeySalt([B)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getBlockSize()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setKeySalt([B)V

    return-void

    :cond_0
    new-instance p1, Lorg/apache/poi/EncryptedDocumentException;

    const-string v0, "invalid verifier salt"

    invoke-direct {p1, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
