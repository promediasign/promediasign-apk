.class public Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionInfoBuilder;
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

.method public static parseDescriptor(Ljava/io/InputStream;)Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p0, v0}, Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument$Factory;->parse(Ljava/io/InputStream;Lorg/apache/xmlbeans/XmlOptions;)Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v1, "Unable to parse encryption descriptor"

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static parseDescriptor(Ljava/lang/String;)Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;
    .locals 2

    .line 2
    :try_start_0
    sget-object v0, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {p0, v0}, Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument$Factory;->parse(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    const-string v1, "Unable to parse encryption descriptor"

    invoke-direct {v0, v1, p0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public initialize(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 7

    .line 1
    if-nez p2, :cond_0

    sget-object p2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes128:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    :cond_0
    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rc4:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    if-eq p2, v0, :cond_a

    if-nez p3, :cond_1

    sget-object p3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha1:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    :cond_1
    if-nez p6, :cond_2

    sget-object p6, Lorg/apache/poi/poifs/crypt/ChainingMode;->cbc:Lorg/apache/poi/poifs/crypt/ChainingMode;

    :cond_2
    sget-object v0, Lorg/apache/poi/poifs/crypt/ChainingMode;->cbc:Lorg/apache/poi/poifs/crypt/ChainingMode;

    if-eq p6, v0, :cond_4

    sget-object v0, Lorg/apache/poi/poifs/crypt/ChainingMode;->cfb:Lorg/apache/poi/poifs/crypt/ChainingMode;

    if-ne p6, v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Lorg/apache/poi/EncryptedDocumentException;

    const-string p2, "Agile encryption only supports CBC/CFB chaining."

    invoke-direct {p1, p2}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
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

    new-instance v6, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;

    move-object v0, v6

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;-><init>(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V

    invoke-virtual {p1, v6}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setHeader(Lorg/apache/poi/poifs/crypt/EncryptionHeader;)V

    new-instance v6, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;-><init>(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V

    invoke-virtual {p1, v6}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setVerifier(Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)V

    new-instance p2, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;

    invoke-direct {p2}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;-><init>()V

    invoke-virtual {p2, p1}, Lorg/apache/poi/poifs/crypt/Decryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    invoke-virtual {p1, p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setDecryptor(Lorg/apache/poi/poifs/crypt/Decryptor;)V

    new-instance p2, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;

    invoke-direct {p2}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;-><init>()V

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

    const-string p2, "RC4 must not be used with agile encryption."

    invoke-direct {p1, p2}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initialize(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 2

    .line 2
    check-cast p2, Ljava/io/InputStream;

    invoke-static {p2}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionInfoBuilder;->parseDescriptor(Ljava/io/InputStream;)Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;

    new-instance p2, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;-><init>(Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;)V

    invoke-virtual {p1, p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setHeader(Lorg/apache/poi/poifs/crypt/EncryptionHeader;)V

    new-instance p2, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;

    invoke-direct {p2, v0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;-><init>(Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;)V

    invoke-virtual {p1, p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setVerifier(Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)V

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMajor()I

    move-result p2

    sget-object v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->agile:Lorg/apache/poi/poifs/crypt/EncryptionMode;

    iget v1, v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMajor:I

    if-ne p2, v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVersionMinor()I

    move-result p2

    iget v0, v0, Lorg/apache/poi/poifs/crypt/EncryptionMode;->versionMinor:I

    if-ne p2, v0, :cond_0

    new-instance p2, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;

    invoke-direct {p2}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;-><init>()V

    invoke-virtual {p2, p1}, Lorg/apache/poi/poifs/crypt/Decryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    invoke-virtual {p1, p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setDecryptor(Lorg/apache/poi/poifs/crypt/Decryptor;)V

    new-instance p2, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;

    invoke-direct {p2}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;-><init>()V

    invoke-virtual {p2, p1}, Lorg/apache/poi/poifs/crypt/Encryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    invoke-virtual {p1, p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setEncryptor(Lorg/apache/poi/poifs/crypt/Encryptor;)V

    :cond_0
    return-void
.end method
