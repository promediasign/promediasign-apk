.class Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final cipher:Ljavax/crypto/Cipher;

.field private final encryptor:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;

.field private final oneByte:[B


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [B

    aput-byte v0, v1, v0

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->oneByte:[B

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->encryptor:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->cipher:Ljavax/crypto/Cipher;

    return-void
.end method


# virtual methods
.method public getBuf()[B
    .locals 1

    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    return-object v0
.end method

.method public setBlock(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->encryptor:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;->initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;

    return-void
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    return-void
.end method

.method public write(I)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v4, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->oneByte:[B

    const/4 v0, 0x0

    int-to-byte p1, p1

    aput-byte p1, v4, v0

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->cipher:Ljavax/crypto/Cipher;

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v1, v4

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    iget-object p1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->oneByte:[B

    invoke-super {p0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write([BII)V
    .locals 6

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentOutputStream;->cipher:Ljavax/crypto/Cipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    invoke-super {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {p2, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
