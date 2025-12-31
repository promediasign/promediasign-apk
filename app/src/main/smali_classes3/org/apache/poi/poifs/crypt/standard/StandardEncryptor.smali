.class public Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;
.super Lorg/apache/poi/poifs/crypt/Encryptor;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;
    }
.end annotation


# static fields
.field private static final logger:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;Ljavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/Cipher;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->getCipher(Ljavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100()Lorg/apache/poi/util/POILogger;
    .locals 1

    sget-object v0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->logger:Lorg/apache/poi/util/POILogger;

    return-object v0
.end method

.method private getCipher(Ljavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/Cipher;
    .locals 7

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getChainingMode()Lorg/apache/poi/poifs/crypt/ChainingMode;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljava/security/Key;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BILjava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->clone()Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/poifs/crypt/Encryptor;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->clone()Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;
    .locals 1

    .line 3
    invoke-super {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->clone()Lorg/apache/poi/poifs/crypt/Encryptor;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;

    return-object v0
.end method

.method public confirmPassword(Ljava/lang/String;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x10

    new-array v6, v1, [B

    new-array v7, v1, [B

    invoke-virtual {v0, v6}, Ljava/util/Random;->nextBytes([B)V

    invoke-virtual {v0, v7}, Ljava/util/Random;->nextBytes([B)V

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->confirmPassword(Ljava/lang/String;[B[B[B[B[B)V

    return-void
.end method

.method public confirmPassword(Ljava/lang/String;[B[B[B[B[B)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object p2

    check-cast p2, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;

    invoke-virtual {p2, p5}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->setSalt([B)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->getKeySizeInBytes()I

    move-result p3

    invoke-static {p1, p2, p3}, Lorg/apache/poi/poifs/crypt/standard/StandardDecryptor;->generateSecretKey(Ljava/lang/String;Lorg/apache/poi/poifs/crypt/EncryptionVerifier;I)Ljavax/crypto/SecretKey;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/Encryptor;->setSecretKey(Ljavax/crypto/SecretKey;)V

    const/4 p3, 0x0

    invoke-direct {p0, p1, p3}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->getCipher(Ljavax/crypto/SecretKey;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1, p4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p3

    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    move-result-object p5

    invoke-static {p5}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getMessageDigest(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)Ljava/security/MessageDigest;

    move-result-object p5

    invoke-virtual {p5, p4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p4

    invoke-virtual {p2}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    move-result-object p5

    iget p5, p5, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->encryptedVerifierHashLength:I

    invoke-static {p4, p5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p4

    invoke-virtual {p1, p4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    invoke-virtual {p2, p3}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->setEncryptedVerifier([B)V

    invoke-virtual {p2, p1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->setEncryptedVerifierHash([B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/poi/EncryptedDocumentException;

    const-string p3, "Password confirmation failed"

    invoke-direct {p2, p3, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public createEncryptionInfoEntry(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getVerifier()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;

    new-instance v3, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$1;

    invoke-direct {v3, p0, v0, v1, v2}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$1;-><init>(Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;)V

    const-string v0, "EncryptionInfo"

    invoke-static {p1, v0, v3}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->createEncryptionEntry(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;Ljava/lang/String;Lorg/apache/poi/poifs/crypt/standard/EncryptionRecord;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    return-void
.end method

.method public getDataStream(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)Ljava/io/OutputStream;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;->createEncryptionInfoEntry(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/DataSpaceMapUtils;->addDefaultDataSpace(Lorg/apache/poi/poifs/filesystem/DirectoryEntry;)V

    new-instance v0, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor$StandardCipherOutputStream;-><init>(Lorg/apache/poi/poifs/crypt/standard/StandardEncryptor;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-object v0
.end method

.method public getKeySizeInBytes()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getHeader()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getKeySize()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    return v0
.end method
