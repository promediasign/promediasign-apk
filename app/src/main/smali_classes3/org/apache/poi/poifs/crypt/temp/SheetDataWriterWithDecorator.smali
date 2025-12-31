.class public Lorg/apache/poi/poifs/crypt/temp/SheetDataWriterWithDecorator;
.super Lorg/apache/poi/xssf/streaming/SheetDataWriter;
.source "SourceFile"


# static fields
.field static final cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;


# instance fields
.field ivBytes:[B

.field skeySpec:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes128:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    sput-object v0, Lorg/apache/poi/poifs/crypt/temp/SheetDataWriterWithDecorator;->cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/xssf/streaming/SheetDataWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public decorateInputStream(Ljava/io/FileInputStream;)Ljava/io/InputStream;
    .locals 6

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/temp/SheetDataWriterWithDecorator;->skeySpec:Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lorg/apache/poi/poifs/crypt/temp/SheetDataWriterWithDecorator;->cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    sget-object v2, Lorg/apache/poi/poifs/crypt/ChainingMode;->cbc:Lorg/apache/poi/poifs/crypt/ChainingMode;

    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/temp/SheetDataWriterWithDecorator;->ivBytes:[B

    const/4 v4, 0x2

    const-string v5, "PKCS5Padding"

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljava/security/Key;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BILjava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v1, Ljavax/crypto/CipherInputStream;

    invoke-direct {v1, p1, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v1
.end method

.method public decorateOutputStream(Ljava/io/FileOutputStream;)Ljava/io/OutputStream;
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/temp/SheetDataWriterWithDecorator;->init()V

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/temp/SheetDataWriterWithDecorator;->skeySpec:Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lorg/apache/poi/poifs/crypt/temp/SheetDataWriterWithDecorator;->cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    sget-object v2, Lorg/apache/poi/poifs/crypt/ChainingMode;->cbc:Lorg/apache/poi/poifs/crypt/ChainingMode;

    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/temp/SheetDataWriterWithDecorator;->ivBytes:[B

    const/4 v4, 0x1

    const-string v5, "PKCS5Padding"

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/CryptoFunctions;->getCipher(Ljava/security/Key;Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/ChainingMode;[BILjava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v1, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v1, p1, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v1
.end method

.method public init()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/temp/SheetDataWriterWithDecorator;->skeySpec:Ljavax/crypto/spec/SecretKeySpec;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x10

    new-array v2, v1, [B

    iput-object v2, p0, Lorg/apache/poi/poifs/crypt/temp/SheetDataWriterWithDecorator;->ivBytes:[B

    new-array v1, v1, [B

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v2, Lorg/apache/poi/poifs/crypt/temp/SheetDataWriterWithDecorator;->cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    iget-object v2, v2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->jceId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/temp/SheetDataWriterWithDecorator;->skeySpec:Ljavax/crypto/spec/SecretKeySpec;

    :cond_0
    return-void
.end method
