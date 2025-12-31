.class public abstract Lorg/apache/poi/poifs/crypt/EncryptionHeader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final ALGORITHM_AES_128:I

.field public static final ALGORITHM_AES_192:I

.field public static final ALGORITHM_AES_256:I

.field public static final ALGORITHM_RC4:I

.field public static final HASH_NONE:I

.field public static final HASH_SHA1:I

.field public static final HASH_SHA256:I

.field public static final HASH_SHA384:I

.field public static final HASH_SHA512:I

.field public static final MODE_CBC:I

.field public static final MODE_CFB:I

.field public static final MODE_ECB:I

.field public static final PROVIDER_AES:I

.field public static final PROVIDER_RC4:I


# instance fields
.field private blockSize:I

.field private chainingMode:Lorg/apache/poi/poifs/crypt/ChainingMode;

.field private cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

.field private cspName:Ljava/lang/String;

.field private flags:I

.field private hashAlgorithm:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

.field private keyBits:I

.field private keySalt:[B

.field private providerType:Lorg/apache/poi/poifs/crypt/CipherProvider;

.field private sizeExtra:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->rc4:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->ecmaId:I

    sput v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->ALGORITHM_RC4:I

    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes128:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->ecmaId:I

    sput v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->ALGORITHM_AES_128:I

    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes192:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->ecmaId:I

    sput v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->ALGORITHM_AES_192:I

    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->aes256:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->ecmaId:I

    sput v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->ALGORITHM_AES_256:I

    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->none:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ecmaId:I

    sput v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->HASH_NONE:I

    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha1:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ecmaId:I

    sput v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->HASH_SHA1:I

    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha256:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ecmaId:I

    sput v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->HASH_SHA256:I

    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha384:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ecmaId:I

    sput v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->HASH_SHA384:I

    sget-object v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->sha512:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/HashAlgorithm;->ecmaId:I

    sput v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->HASH_SHA512:I

    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherProvider;->rc4:Lorg/apache/poi/poifs/crypt/CipherProvider;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/CipherProvider;->ecmaId:I

    sput v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->PROVIDER_RC4:I

    sget-object v0, Lorg/apache/poi/poifs/crypt/CipherProvider;->aes:Lorg/apache/poi/poifs/crypt/CipherProvider;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/CipherProvider;->ecmaId:I

    sput v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->PROVIDER_AES:I

    sget-object v0, Lorg/apache/poi/poifs/crypt/ChainingMode;->ecb:Lorg/apache/poi/poifs/crypt/ChainingMode;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/ChainingMode;->ecmaId:I

    sput v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->MODE_ECB:I

    sget-object v0, Lorg/apache/poi/poifs/crypt/ChainingMode;->cbc:Lorg/apache/poi/poifs/crypt/ChainingMode;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/ChainingMode;->ecmaId:I

    sput v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->MODE_CBC:I

    sget-object v0, Lorg/apache/poi/poifs/crypt/ChainingMode;->cfb:Lorg/apache/poi/poifs/crypt/ChainingMode;

    iget v0, v0, Lorg/apache/poi/poifs/crypt/ChainingMode;->ecmaId:I

    sput v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->MODE_CFB:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->clone()Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/poifs/crypt/EncryptionHeader;
    .locals 2

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->keySalt:[B

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    :goto_0
    iput-object v1, v0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->keySalt:[B

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->blockSize:I

    return v0
.end method

.method public getChainingMode()Lorg/apache/poi/poifs/crypt/ChainingMode;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->chainingMode:Lorg/apache/poi/poifs/crypt/ChainingMode;

    return-object v0
.end method

.method public getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    return-object v0
.end method

.method public getCipherProvider()Lorg/apache/poi/poifs/crypt/CipherProvider;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->providerType:Lorg/apache/poi/poifs/crypt/CipherProvider;

    return-object v0
.end method

.method public getCspName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->cspName:Ljava/lang/String;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->flags:I

    return v0
.end method

.method public getHashAlgorithm()Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->hashAlgorithm:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-object v0
.end method

.method public getHashAlgorithmEx()Lorg/apache/poi/poifs/crypt/HashAlgorithm;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Removal;
        version = "3.18"
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->hashAlgorithm:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-object v0
.end method

.method public getKeySalt()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->keySalt:[B

    return-object v0
.end method

.method public getKeySize()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->keyBits:I

    return v0
.end method

.method public getSizeExtra()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->sizeExtra:I

    return v0
.end method

.method public setBlockSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->blockSize:I

    return-void
.end method

.method public setChainingMode(Lorg/apache/poi/poifs/crypt/ChainingMode;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->chainingMode:Lorg/apache/poi/poifs/crypt/ChainingMode;

    return-void
.end method

.method public setCipherAlgorithm(Lorg/apache/poi/poifs/crypt/CipherAlgorithm;)V
    .locals 2

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->cipherAlgorithm:Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    iget-object v0, p1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->allowedKeySize:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p1, p1, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->defaultKeySize:I

    invoke-virtual {p0, p1}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->setKeySize(I)V

    :cond_0
    return-void
.end method

.method public setCipherProvider(Lorg/apache/poi/poifs/crypt/CipherProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->providerType:Lorg/apache/poi/poifs/crypt/CipherProvider;

    return-void
.end method

.method public setCspName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->cspName:Ljava/lang/String;

    return-void
.end method

.method public setFlags(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->flags:I

    return-void
.end method

.method public setHashAlgorithm(Lorg/apache/poi/poifs/crypt/HashAlgorithm;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->hashAlgorithm:Lorg/apache/poi/poifs/crypt/HashAlgorithm;

    return-void
.end method

.method public setKeySalt([B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->keySalt:[B

    return-void
.end method

.method public setKeySize(I)V
    .locals 4

    .line 1
    iput p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->keyBits:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lorg/apache/poi/poifs/crypt/CipherAlgorithm;->allowedKeySize:[I

    .line 8
    .line 9
    array-length v1, v0

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_1

    .line 12
    .line 13
    aget v3, v0, v2

    .line 14
    .line 15
    if-ne v3, p1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    new-instance v0, Lorg/apache/poi/EncryptedDocumentException;

    .line 22
    .line 23
    const-string v1, "KeySize "

    .line 24
    .line 25
    const-string v2, " not allowed for cipher "

    .line 26
    .line 27
    invoke-static {p1, v1, v2}, LA/g;->p(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->getCipherAlgorithm()Lorg/apache/poi/poifs/crypt/CipherAlgorithm;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {v0, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0
.end method

.method public setSizeExtra(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/poifs/crypt/EncryptionHeader;->sizeExtra:I

    return-void
.end method
