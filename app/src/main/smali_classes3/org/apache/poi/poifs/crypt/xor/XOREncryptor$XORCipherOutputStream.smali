.class Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;
.super Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "XORCipherOutputStream"
.end annotation


# instance fields
.field private recordEnd:I

.field private recordStart:I

.field final synthetic this$0:Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;Ljava/io/OutputStream;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->this$0:Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;

    const/4 p1, -0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;-><init>(Ljava/io/OutputStream;I)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->recordStart:I

    iput p1, p0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->recordEnd:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->this$0:Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;

    const/4 p1, -0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;I)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->recordStart:I

    iput p1, p0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->recordEnd:I

    return-void
.end method

.method private rotateLeft(BI)B
    .locals 1

    and-int/lit16 p1, p1, 0xff

    shl-int v0, p1, p2

    rsub-int/lit8 p2, p2, 0x8

    ushr-int/2addr p1, p2

    or-int/2addr p1, v0

    int-to-byte p1, p1

    return p1
.end method


# virtual methods
.method public calculateChecksum(Ljava/io/File;I)V
    .locals 0

    return-void
.end method

.method public createEncryptionInfoEntry(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/io/File;)V
    .locals 0

    iget-object p2, p0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->this$0:Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;

    invoke-virtual {p2, p1}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;->createEncryptionInfoEntry(Lorg/apache/poi/poifs/filesystem/DirectoryNode;)V

    return-void
.end method

.method public flush()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->setNextRecordSize(IZ)V

    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    return-void
.end method

.method public initCipherForBlock(Ljavax/crypto/Cipher;IZ)Ljavax/crypto/Cipher;
    .locals 2

    iget-object p3, p0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->this$0:Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;

    invoke-virtual {p3}, Lorg/apache/poi/poifs/crypt/Encryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object p3

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->this$0:Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/Encryptor;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, p2, p3, v0, v1}, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;->initCipherForBlock(Ljavax/crypto/Cipher;ILorg/apache/poi/poifs/crypt/EncryptionInfo;Ljavax/crypto/SecretKey;I)Ljavax/crypto/Cipher;

    move-result-object p1

    return-object p1
.end method

.method public invokeCipher(IZ)I
    .locals 8

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    iget v0, p0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->recordEnd:I

    iget v1, p0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->recordStart:I

    sub-int/2addr v0, v1

    sub-int v0, p1, v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->getPlainByteFlags()Ljava/util/BitSet;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->this$0:Lorg/apache/poi/poifs/crypt/xor/XOREncryptor;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/Encryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getEncryptor()Lorg/apache/poi/poifs/crypt/Encryptor;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/poifs/crypt/Encryptor;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->getChunk()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    :goto_0
    iget v4, p0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->recordEnd:I

    iget v5, p0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->recordStart:I

    sub-int v5, p2, v5

    add-int/2addr v5, v4

    move v4, p2

    :goto_1
    if-ge v4, p1, :cond_2

    aget-byte v6, v2, v4

    add-int/lit8 v7, v5, 0x1

    and-int/lit8 v5, v5, 0xf

    aget-byte v5, v1, v5

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    const/4 v6, 0x5

    invoke-direct {p0, v5, v6}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->rotateLeft(BI)B

    move-result v5

    aput-byte v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {v0, p2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result p2

    if-ltz p2, :cond_3

    if-ge p2, p1, :cond_3

    aget-byte v1, v3, p2

    aput-byte v1, v2, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    return p1
.end method

.method public setNextRecordSize(IZ)V
    .locals 2

    iget v0, p0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->recordEnd:I

    if-lez v0, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->getPos()J

    move-result-wide v0

    long-to-int p2, v0

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->invokeCipher(IZ)I

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->getTotalPos()J

    move-result-wide v0

    long-to-int p2, v0

    add-int/lit8 p2, p2, 0x4

    iput p2, p0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->recordStart:I

    add-int/2addr p2, p1

    iput p2, p0, Lorg/apache/poi/poifs/crypt/xor/XOREncryptor$XORCipherOutputStream;->recordEnd:I

    return-void
.end method
