.class public Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static LOG:Lorg/apache/poi/util/POILogger;

.field private static final cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;


# instance fields
.field private final ivBytes:[B

.field private final skeySpec:Ljavax/crypto/spec/SecretKeySpec;

.field private final tempFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->LOG:Lorg/apache/poi/util/POILogger;

    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes128:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    sput-object v0, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x10

    new-array v2, v1, [B

    iput-object v2, p0, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->ivBytes:[B

    new-array v1, v1, [B

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v2, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    iget-object v2, v2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->skeySpec:Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "poi-temp-data"

    const-string v1, ".tmp"

    invoke-static {v0, v1}, Lorg/apache/poi/util/TempFile;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->tempFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->LOG:Lorg/apache/poi/util/POILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->tempFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " can\'t be removed (or was already removed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->skeySpec:Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    sget-object v2, Lorg/apache/poi/poifs/crypt/ChainingMode;->cbc:Lorg/apache/poi/poifs/crypt/ChainingMode;

    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->ivBytes:[B

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljava/security/Key;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BILjava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v1, Ljavax/crypto/CipherInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->tempFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v1
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->skeySpec:Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    sget-object v2, Lorg/apache/poi/poifs/crypt/ChainingMode;->cbc:Lorg/apache/poi/poifs/crypt/ChainingMode;

    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->ivBytes:[B

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljava/security/Key;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BILjava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v1, Ljavax/crypto/CipherOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/temp/EncryptedTempData;->tempFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v1
.end method
