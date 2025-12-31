.class Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentInputStream;
.super Ljava/io/ByteArrayInputStream;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private cipher:Ljavax/crypto/Cipher;

.field private final decryptor:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;

.field private oneByte:[B


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;[B)V
    .locals 1

    invoke-direct {p0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [B

    aput-byte p2, v0, p2

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentInputStream;->oneByte:[B

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentInputStream;->decryptor:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentInputStream;->cipher:Ljavax/crypto/Cipher;

    return-void
.end method


# virtual methods
.method public declared-synchronized read()I
    .locals 4

    .line 1
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentInputStream;->oneByte:[B

    int-to-byte v0, v0

    const/4 v2, 0x0

    aput-byte v0, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentInputStream;->cipher:Ljavax/crypto/Cipher;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, v1}, Ljavax/crypto/Cipher;->update([BII[B)I
    :try_end_2
    .catch Ljavax/crypto/ShortBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentInputStream;->oneByte:[B

    aget-byte v0, v0, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    new-instance v1, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {v1, v0}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 6

    .line 2
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentInputStream;->cipher:Ljavax/crypto/Cipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I
    :try_end_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p3

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    new-instance p2, Lorg/apache/poi/EncryptedDocumentException;

    invoke-direct {p2, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public seek(I)V
    .locals 1

    iget v0, p0, Ljava/io/ByteArrayInputStream;->count:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iput p1, p0, Ljava/io/ByteArrayInputStream;->mark:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public setBlock(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentInputStream;->decryptor:Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentInputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, v1, p1}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;->initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDocumentInputStream;->cipher:Ljavax/crypto/Cipher;

    return-void
.end method
