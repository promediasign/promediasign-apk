.class Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;
.super Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "XORCipherInputStream"
.end annotation


# instance fields
.field private final initialOffset:I

.field private recordEnd:I

.field private recordStart:I

.field final synthetic this$0:Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;Ljava/io/InputStream;I)V
    .locals 2

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;->this$0:Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;

    const-wide/32 v0, 0x7fffffff

    invoke-static {p1}, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;->access$000(Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;)I

    move-result p1

    invoke-direct {p0, p2, v0, v1, p1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;-><init>(Ljava/io/InputStream;JI)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;->recordStart:I

    iput p1, p0, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;->recordEnd:I

    iput p3, p0, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;->initialOffset:I

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
.method public initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;->this$0:Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;->initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;

    move-result-object p1

    return-object p1
.end method

.method public invokeCipher(IZ)I
    .locals 9

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->getPos()J

    move-result-wide v0

    long-to-int p2, v0

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;->this$0:Lorg/apache/poi/poifs/crypt/xor/XORDecryptor;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getEncryptionInfo()Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getDecryptor()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->getChunk()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->getPlain()[B

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->getChunkMask()I

    move-result v3

    and-int/2addr v3, p2

    iget v4, p0, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;->initialOffset:I

    iget v5, p0, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;->recordEnd:I

    add-int/2addr v4, v5

    iget v5, p0, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;->recordStart:I

    sub-int v5, p2, v5

    add-int/2addr v5, v4

    const/4 v4, 0x0

    :goto_0
    add-int v6, p2, v4

    iget v7, p0, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;->recordEnd:I

    if-ge v6, v7, :cond_0

    if-ge v4, p1, :cond_0

    add-int v6, v3, v4

    aget-byte v7, v2, v6

    const/4 v8, 0x3

    invoke-direct {p0, v7, v8}, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;->rotateLeft(BI)B

    move-result v7

    add-int v8, v5, v4

    and-int/lit8 v8, v8, 0xf

    aget-byte v8, v0, v8

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public setNextRecordSize(I)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->getPos()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->getChunk()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->getChunkMask()I

    move-result v2

    iput v1, p0, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;->recordStart:I

    add-int v3, v1, p1

    iput v3, p0, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;->recordEnd:I

    array-length v0, v0

    and-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/poifs/crypt/xor/XORDecryptor$XORCipherInputStream;->invokeCipher(IZ)I

    return-void
.end method
