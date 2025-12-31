.class public Lorg/apache/poi/poifs/crypt/xor/XOREncryptionInfoBuilder;
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
    .locals 0

    .line 1
    new-instance p2, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionHeader;

    invoke-direct {p2}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionHeader;-><init>()V

    invoke-virtual {p1, p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setHeader(Lorg/apache/poi/poifs/crypt/EncryptionHeader;)V

    new-instance p2, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionVerifier;

    invoke-direct {p2}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionVerifier;-><init>()V

    invoke-virtual {p1, p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setVerifier(Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)V

    new-instance p2, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;

    invoke-direct {p2}, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;-><init>()V

    invoke-virtual {p2, p1}, Lorg/apache/poi/poifs/crypt/Decryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    invoke-virtual {p1, p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setDecryptor(Lorg/apache/poi/poifs/crypt/Decryptor;)V

    new-instance p2, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;

    invoke-direct {p2}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;-><init>()V

    invoke-virtual {p2, p1}, Lorg/apache/poi/poifs/crypt/Encryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    invoke-virtual {p1, p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setEncryptor(Lorg/apache/poi/poifs/crypt/Encryptor;)V

    return-void
.end method

.method public initialize(Lorg/apache/poi/poifs/crypt/EncryptionInfo;Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionHeader;

    invoke-direct {v0}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionHeader;-><init>()V

    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setHeader(Lorg/apache/poi/poifs/crypt/EncryptionHeader;)V

    new-instance v0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionVerifier;

    invoke-direct {v0, p2}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptionVerifier;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setVerifier(Lorg/apache/poi/poifs/crypt/EncryptionVerifier;)V

    new-instance p2, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;

    invoke-direct {p2}, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;-><init>()V

    invoke-virtual {p2, p1}, Lorg/apache/poi/poifs/crypt/Decryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    invoke-virtual {p1, p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setDecryptor(Lorg/apache/poi/poifs/crypt/Decryptor;)V

    new-instance p2, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;

    invoke-direct {p2}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;-><init>()V

    invoke-virtual {p2, p1}, Lorg/apache/poi/poifs/crypt/Encryptor;->setEncryptionInfo(Lorg/apache/poi/poifs/crypt/EncryptionInfo;)V

    invoke-virtual {p1, p2}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->setEncryptor(Lorg/apache/poi/poifs/crypt/Encryptor;)V

    return-void
.end method
