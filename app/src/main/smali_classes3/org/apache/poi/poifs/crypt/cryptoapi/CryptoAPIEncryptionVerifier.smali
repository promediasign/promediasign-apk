.class public Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;
.super Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;-><init>(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;Lorg/apache/poi/poifs/crypt/HashAlgorithm;IILorg/apache/poi/poifs/crypt/ChainingMode;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionHeader;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;-><init>(Lorg/apache/poi/util/LittleEndianInput;Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionHeader;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;->clone()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;->clone()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;
    .locals 1

    .line 3
    invoke-super {p0}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->clone()Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;->clone()Lorg/apache/poi/poifs/crypt/cryptoapi/CryptoAPIEncryptionVerifier;

    move-result-object v0

    return-object v0
.end method

.method public setEncryptedVerifier([B)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->setEncryptedVerifier([B)V

    return-void
.end method

.method public setEncryptedVerifierHash([B)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->setEncryptedVerifierHash([B)V

    return-void
.end method

.method public setSalt([B)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/poi/poifs/crypt/standard/StandardEncryptionVerifier;->setSalt([B)V

    return-void
.end method
