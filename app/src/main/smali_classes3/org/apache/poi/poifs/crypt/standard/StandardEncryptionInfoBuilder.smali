.class public Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionInfoBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/EncryptionInfoBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 7

    .line 1
    if-nez p2, :cond_0

    sget-object p2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes128:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    :cond_0
    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes128:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    if-eq p2, v0, :cond_2

    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes192:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    if-eq p2, v0, :cond_2

    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes256:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/apache/poi/EncryptedDocumentException;

    const-string p2, "Standard encryption only supports AES128/192/256."

    invoke-direct {p1, p2}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    if-nez p3, :cond_3

    sget-object p3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha1:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    :cond_3
    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha1:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    if-ne p3, v0, :cond_b

    if-nez p6, :cond_4

    sget-object p6, Lorg/apache/poi/poifs/crypt/ChainingMode;->ecb:Lorg/apache/poi/poifs/crypt/ChainingMode;

    :cond_4
    sget-object v0, Lorg/apache/poi/poifs/crypt/ChainingMode;->ecb:Lorg/apache/poi/poifs/crypt/ChainingMode;

    if-ne p6, v0, :cond_a

    const/4 v0, -0x1

    if-ne p4, v0, :cond_5

    iget p4, p2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->defaultKeySize:I

    :cond_5
    if-ne p5, v0, :cond_6

    iget p5, p2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->blockSize:I

    :cond_6
    iget-object v0, p2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->allowedKeySize:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v1, :cond_8

    aget v5, v0, v3

    if-ne v5, p4, :cond_7

    const/4 v5, 0x1

    goto :goto_2

    :cond_7
    const/4 v5, 0x0

    :goto_2
    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    if-eqz v4, :cond_9

    new-instance v6, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;

    move-object v0, v6

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;-><init>(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V

    invoke-virtual {p1, v6}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setHeader(Lorg/apache/poi/poifs/crypt/EncryptionHeader;)V

    new-instance v6, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;-><init>(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V

    invoke-virtual {p1, v6}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setVerifier(Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)V

    new-instance p2, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;

    invoke-direct {p2}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;-><init>()V

    invoke-virtual {p2, p1}, Lorg/apache/poi/poifs/crypt/Decryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    invoke-virtual {p1, p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setDecryptor(Lorg/apache/poi/poifs/crypt/Decryptor;)V

    new-instance p2, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;

    invoke-direct {p2}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;-><init>()V

    invoke-virtual {p2, p1}, Lorg/apache/poi/poifs/crypt/Encryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    invoke-virtual {p1, p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setEncryptor(Lorg/apache/poi/poifs/crypt/Encryptor;)V

    return-void

    :cond_9
    new-instance p1, Lorg/apache/poi/EncryptedDocumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p5, "KeySize "

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " not allowed for Cipher "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Lorg/apache/poi/EncryptedDocumentException;

    const-string p2, "Standard encryption only supports ECB chaining."

    invoke-direct {p1, p2}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Lorg/apache/poi/EncryptedDocumentException;

    const-string p2, "Standard encryption only supports SHA-1."

    invoke-direct {p1, p2}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initialize(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 2

    .line 2
    invoke-interface {p2}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    new-instance v0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;

    invoke-direct {v0, p2}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setHeader(Lorg/apache/poi/poifs/crypt/EncryptionHeader;)V

    new-instance v1, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;

    invoke-direct {v1, p2, v0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;-><init>(Lorg/apache/poi/util/LittleEndianInput;Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;)V

    invoke-virtual {p1, v1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setVerifier(Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)V

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMinor()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMajor()I

    move-result p2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMajor()I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    :cond_0
    new-instance p2, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;

    invoke-direct {p2}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;-><init>()V

    invoke-virtual {p2, p1}, Lorg/apache/poi/poifs/crypt/Decryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    invoke-virtual {p1, p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setDecryptor(Lorg/apache/poi/poifs/crypt/Decryptor;)V

    :cond_1
    return-void
.end method
