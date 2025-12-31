.class public Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;
.super Lorg/apache/poi/poifs/crypt/Encryptor;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor$AgileCipherOutputStream;
    }
.end annotation


# instance fields
.field private final certificateUri:Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor$Uri$Enum;

.field private integritySalt:[B

.field private final passwordUri:Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor$Uri$Enum;

.field private pwHash:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;-><init>()V

    sget-object v0, Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor$Uri;->HTTP_SCHEMAS_MICROSOFT_COM_OFFICE_2006_KEY_ENCRYPTOR_PASSWORD:Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor$Uri$Enum;

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->passwordUri:Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor$Uri$Enum;

    sget-object v0, Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor$Uri;->HTTP_SCHEMAS_MICROSOFT_COM_OFFICE_2006_KEY_ENCRYPTOR_CERTIFICATE:Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor$Uri$Enum;

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->certificateUri:Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor$Uri$Enum;

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->clone()Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/poifs/crypt/Encryptor;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->clone()Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;
    .locals 3

    .line 3
    invoke-super {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->clone()Lorg/apache/poi/poifs/crypt/Encryptor;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->integritySalt:[B

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    :goto_0
    iput-object v1, v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->integritySalt:[B

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->pwHash:[B

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, [B

    :goto_1
    iput-object v2, v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->pwHash:[B

    return-object v0
.end method

.method public confirmPassword(Ljava/lang/String;)V
    .locals 11

    .line 1
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getBlockSize()I

    move-result v2

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getKeySize()I

    move-result v3

    div-int/lit8 v3, v3, 0x8

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v1

    iget v1, v1, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->hashSize:I

    new-array v8, v2, [B

    new-array v9, v2, [B

    new-array v7, v2, [B

    new-array v6, v3, [B

    new-array v10, v1, [B

    invoke-virtual {v0, v8}, Ljava/util/Random;->nextBytes([B)V

    invoke-virtual {v0, v9}, Ljava/util/Random;->nextBytes([B)V

    invoke-virtual {v0, v7}, Ljava/util/Random;->nextBytes([B)V

    invoke-virtual {v0, v6}, Ljava/util/Random;->nextBytes([B)V

    invoke-virtual {v0, v10}, Ljava/util/Random;->nextBytes([B)V

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v10}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->confirmPassword(Ljava/lang/String;[B[B[B[B[B)V

    return-void
.end method

.method public confirmPassword(Ljava/lang/String;[B[B[B[B[B)V
    .locals 4

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;

    invoke-virtual {v0, p5}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setSalt([B)V

    invoke-virtual {v1, p3}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->setKeySalt([B)V

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getBlockSize()I

    move-result p3

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getSpinCount()I

    move-result v3

    invoke-static {p1, v2, p5, v3}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->hashPassword(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/HashAlgorithm;[BI)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->pwHash:[B

    sget-object p5, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->kVerifierInputBlock:[B

    const/4 v2, 0x1

    invoke-static {v0, p1, p5, p4, v2}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->hashInput(Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;[B[B[BI)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setEncryptedVerifier([B)V

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    iget-object p4, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->pwHash:[B

    sget-object p5, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->kHashedVerifierBlock:[B

    invoke-static {v0, p4, p5, p1, v2}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->hashInput(Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;[B[B[BI)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setEncryptedVerifierHash([B)V

    iget-object p1, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->pwHash:[B

    sget-object p4, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->kCryptoKeyBlock:[B

    invoke-static {v0, p1, p4, p2, v2}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->hashInput(Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;[B[B[BI)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->setEncryptedKey([B)V

    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object p4

    iget-object p4, p4, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    invoke-direct {p1, p2, p4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/Encryptor;->setSecretKey(Ljavax/crypto/SecretKey;)V

    invoke-virtual {p6}, [B->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    iput-object p2, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->integritySalt:[B

    :try_start_0
    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object p2

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getKeySalt()[B

    move-result-object p4

    sget-object p5, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->kIntegrityKeyBlock:[B

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getBlockSize()I

    move-result p6

    invoke-static {p2, p4, p5, p6}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->generateIv(Lorg/apache/poi/poifs/crypt/HashAlgorithm;[B[BI)[B

    move-result-object p2

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object p4

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getChainingMode()Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-result-object p5

    invoke-static {p1, p4, p5, p2, v2}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljavax/crypto/SecretKey;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BI)Ljavax/crypto/Cipher;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->integritySalt:[B

    array-length p4, p2

    invoke-static {p4, p3}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->getNextBlockSize(II)I

    move-result p3

    invoke-static {p2, p3}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlock0([BI)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->setEncryptedHmacKey([B)V

    const-string p1, "RSA"

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;->getCertificates()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;

    iget-object p4, p3, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;->x509:Ljava/security/cert/X509Certificate;

    invoke-virtual {p4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p4

    invoke-virtual {p1, v2, p4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object p4

    invoke-interface {p4}, Ljava/security/Key;->getEncoded()[B

    move-result-object p4

    invoke-virtual {p1, p4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p4

    iput-object p4, p3, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;->encryptedKey:[B

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object p4

    invoke-static {p4}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMac(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljavax/crypto/Mac;

    move-result-object p4

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    iget-object p5, p3, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;->x509:Ljava/security/cert/X509Certificate;

    invoke-virtual {p5}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p5

    invoke-virtual {p4, p5}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p4

    iput-object p4, p3, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier$AgileCertificateEntry;->certVerifier:[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    return-void

    :goto_1
    new-instance p2, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {p2, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public createEncryptionDocument()Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionVerifier;

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;

    invoke-static {}, Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument$Factory;->newInstance()Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;

    const/4 v0, 0x0

    throw v0
.end method

.method public createEncryptionInfoEntry(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/io/File;)V
    .locals 1

    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->addDefaultDataSpace(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object p2

    new-instance v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor$1;

    invoke-direct {v0, p0, p2}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor$1;-><init>(Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    const-string p2, "EncryptionInfo"

    invoke-static {p1, p2, v0}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->createEncryptionEntry(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    return-void
.end method

.method public getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/OutputStream;
    .locals 1

    new-instance v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor$AgileCipherOutputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor$AgileCipherOutputStream;-><init>(Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-object v0
.end method

.method public marshallEncryptionDocument(Lcom/microsoft/schemas/office/x2006/encryption/EncryptionDocument;Lorg/apache/poi/util/LittleEndianByteArrayOutputStream;)V
    .locals 5

    new-instance v0, Lorg/apache/xmlbeans/XmlOptions;

    invoke-direct {v0}, Lorg/apache/xmlbeans/XmlOptions;-><init>()V

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Lorg/apache/xmlbeans/XmlOptions;->setCharacterEncoding(Ljava/lang/String;)Lorg/apache/xmlbeans/XmlOptions;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->passwordUri:Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor$Uri$Enum;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "p"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->certificateUri:Lcom/microsoft/schemas/office/x2006/encryption/CTKeyEncryptor$Uri$Enum;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/StringEnumAbstractBase;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "c"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->setUseDefaultNamespace()Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v0, v2}, Lorg/apache/xmlbeans/XmlOptions;->setSaveSuggestedPrefixes(Ljava/util/Map;)Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->setSaveNamespacesFirst()Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->setSaveAggressiveNamespaces()Lorg/apache/xmlbeans/XmlOptions;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlOptions;->setSaveNoXmlDecl()Lorg/apache/xmlbeans/XmlOptions;

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    const-string v3, "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\r\n"

    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-interface {p1, v2, v0}, Lorg/apache/xmlbeans/XmlTokenSource;->save(Ljava/io/OutputStream;Lorg/apache/xmlbeans/XmlOptions;)V

    invoke-virtual {v2, p2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/poi/EncryptedDocumentException;

    const-string v0, "error marshalling encryption info document"

    invoke-direct {p2, v0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public updateIntegrityHMAC(Ljava/io/File;I)V
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getBlockSize()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMac(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljavax/crypto/Mac;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptor;->integritySalt:[B

    array-length v5, v4

    invoke-static {v5, v1}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->getNextBlockSize(II)I

    move-result v5

    invoke-static {v4, v5}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlock0([BI)[B

    move-result-object v4

    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, v2, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->jceHmacId:Ljava/lang/String;

    invoke-direct {v5, v4, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v5}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const/16 v2, 0x400

    new-array v2, v2, [B

    int-to-long v4, p2

    const/4 p2, 0x0

    invoke-static {v2, p2, v4, v5}, Lorg/apache/poi/util/LittleEndian;->putLong([BIJ)V

    const/16 v4, 0x8

    invoke-virtual {v3, v2, p2, v4}, Ljavax/crypto/Mac;->update([BII)V

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_0
    :try_start_0
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result p1

    const/4 v5, -0x1

    if-eq p1, v5, :cond_0

    invoke-virtual {v3, v2, p2, p1}, Ljavax/crypto/Mac;->update([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    invoke-virtual {v3}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p1

    array-length p2, p1

    invoke-static {p2, v1}, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->getNextBlockSize(II)I

    move-result p2

    invoke-static {p1, p2}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getBlock0([BI)[B

    move-result-object p1

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object p2

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getKeySalt()[B

    move-result-object v2

    sget-object v3, Lorg/apache/poi/poifs/crypt/agile/AgileDecryptor;->kIntegrityValueBlock:[B

    invoke-static {p2, v2, v3, v1}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->generateIv(Lorg/apache/poi/poifs/crypt/HashAlgorithm;[B[BI)[B

    move-result-object p2

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getChainingMode()Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, p2, v4}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljavax/crypto/SecretKey;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BI)Ljavax/crypto/Cipher;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/crypt/agile/AgileEncryptionHeader;->setEncryptedHmacValue([B)V

    return-void

    :goto_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    throw p1
.end method
