.class public Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;
.super Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;-><init>(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;->clone()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/poifs/crypt/EncryptionHeader;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;->clone()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;
    .locals 1

    .line 3
    invoke-super {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;->clone()Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;->clone()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;

    move-result-object v0

    return-object v0
.end method

.method public setKeySize(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->allowedKeySize:[I

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_2

    .line 10
    .line 11
    aget v3, v0, v2

    .line 12
    .line 13
    if-ne v3, p1, :cond_1

    .line 14
    .line 15
    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setKeySize(I)V

    .line 16
    .line 17
    .line 18
    const/16 v0, 0x28

    .line 19
    .line 20
    if-le p1, v0, :cond_0

    .line 21
    .line 22
    const-string p1, "Microsoft Enhanced Cryptographic Provider v1.0"

    .line 23
    .line 24
    :goto_1
    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setCspName(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_0
    sget-object p1, Lorg/apache/poi/poifs/crypt/CipherProvider;->rc4:Lorg/apache/poi/poifs/crypt/CipherProvider;

    .line 29
    .line 30
    iget-object p1, p1, Lorg/apache/poi/poifs/crypt/CipherProvider;->cipherProviderName:Ljava/lang/String;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :goto_2
    return-void

    .line 34
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    .line 38
    .line 39
    const-string v1, "invalid keysize "

    .line 40
    .line 41
    const-string v2, " for cipher algorithm "

    .line 42
    .line 43
    invoke-static {p1, v1, v2}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {v0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v0
.end method
