.class public Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionInfoBuilder;
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

    sget-object p2, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rc4:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    :cond_0
    if-nez p3, :cond_1

    sget-object p3, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha1:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    :cond_1
    const/4 v0, -0x1

    if-ne p4, v0, :cond_2

    const/16 p4, 0x28

    :cond_2
    new-instance v6, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;

    move-object v0, v6

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;-><init>(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V

    invoke-virtual {p1, v6}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setHeader(Lorg/apache/poi/poifs/crypt/EncryptionHeader;)V

    new-instance v6, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;-><init>(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V

    invoke-virtual {p1, v6}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setVerifier(Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)V

    new-instance p2, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;

    invoke-direct {p2}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;-><init>()V

    invoke-virtual {p2, p1}, Lorg/apache/poi/poifs/crypt/Decryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    invoke-virtual {p1, p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setDecryptor(Lorg/apache/poi/poifs/crypt/Decryptor;)V

    new-instance p2, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;

    invoke-direct {p2}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;-><init>()V

    invoke-virtual {p2, p1}, Lorg/apache/poi/poifs/crypt/Encryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    invoke-virtual {p1, p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setEncryptor(Lorg/apache/poi/poifs/crypt/Encryptor;)V

    return-void
.end method

.method public initialize(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 2

    .line 2
    invoke-interface {p2}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    new-instance v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;

    invoke-direct {v0, p2}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setHeader(Lorg/apache/poi/poifs/crypt/EncryptionHeader;)V

    new-instance v1, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;

    invoke-direct {v1, p2, v0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;-><init>(Lorg/apache/poi/util/LittleEndianInput;Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;)V

    invoke-virtual {p1, v1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setVerifier(Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)V

    new-instance p2, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;

    invoke-direct {p2}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIDecryptor;-><init>()V

    invoke-virtual {p2, p1}, Lorg/apache/poi/poifs/crypt/Decryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    invoke-virtual {p1, p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setDecryptor(Lorg/apache/poi/poifs/crypt/Decryptor;)V

    new-instance p2, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;

    invoke-direct {p2}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptor;-><init>()V

    invoke-virtual {p2, p1}, Lorg/apache/poi/poifs/crypt/Encryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    invoke-virtual {p1, p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setEncryptor(Lorg/apache/poi/poifs/crypt/Encryptor;)V

    return-void
.end method
