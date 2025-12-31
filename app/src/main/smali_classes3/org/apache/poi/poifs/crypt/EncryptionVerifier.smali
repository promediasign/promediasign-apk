.class public abstract Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private chainingMode:Lorg/apache/poi/poifs/crypt/ChainingMode;

.field private cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field private encryptedKey:[B

.field private encryptedVerifier:[B

.field private encryptedVerifierHash:[B

.field private hashAlgorithm:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

.field private salt:[B

.field private spinCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->clone()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/poifs/crypt/EncryptionVerifier;
    .locals 3

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->salt:[B

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    :goto_0
    iput-object v1, v0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->salt:[B

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->encryptedVerifier:[B

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    :goto_1
    iput-object v1, v0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->encryptedVerifier:[B

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->encryptedVerifierHash:[B

    if-nez v1, :cond_2

    move-object v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    :goto_2
    iput-object v1, v0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->encryptedVerifierHash:[B

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->encryptedKey:[B

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, [B

    :goto_3
    iput-object v2, v0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->encryptedKey:[B

    return-object v0
.end method

.method public getAlgorithm()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->ecmaId:I

    return v0
.end method

.method public getChainingMode()Lorg/apache/poi/poifs/crypt/ChainingMode;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->chainingMode:Lorg/apache/poi/poifs/crypt/ChainingMode;

    return-object v0
.end method

.method public getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    return-object v0
.end method

.method public getCipherMode()I
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.18"
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->chainingMode:Lorg/apache/poi/poifs/crypt/ChainingMode;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/ChainingMode;->ecmaId:I

    return v0
.end method

.method public getEncryptedKey()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->encryptedKey:[B

    return-object v0
.end method

.method public getEncryptedVerifier()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->encryptedVerifier:[B

    return-object v0
.end method

.method public getEncryptedVerifierHash()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->encryptedVerifierHash:[B

    return-object v0
.end method

.method public getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->hashAlgorithm:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->salt:[B

    return-object v0
.end method

.method public getSpinCount()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->spinCount:I

    return v0
.end method

.method public setChainingMode(Lorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->chainingMode:Lorg/apache/poi/poifs/crypt/ChainingMode;

    return-void
.end method

.method public setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    return-void
.end method

.method public setEncryptedKey([B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->encryptedKey:[B

    return-void
.end method

.method public setEncryptedVerifier([B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->encryptedVerifier:[B

    return-void
.end method

.method public setEncryptedVerifierHash([B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->encryptedVerifierHash:[B

    return-void
.end method

.method public setHashAlgorithm(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->hashAlgorithm:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-void
.end method

.method public setSalt([B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->salt:[B

    return-void
.end method

.method public setSpinCount(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionVerifier;->spinCount:I

    return-void
.end method
