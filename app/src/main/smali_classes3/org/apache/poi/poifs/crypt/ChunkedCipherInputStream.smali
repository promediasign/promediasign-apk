.class public abstract Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;
.super Lorg/apache/poi/util/LittleEndianInputStream;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final chunk:[B

.field private final chunkBits:I

.field private chunkIsValid:Z

.field private final chunkSize:I

.field private final cipher:Ljavax/crypto/Cipher;

.field private lastIndex:I

.field private final plain:[B

.field private pos:J

.field private final size:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JI)V
    .locals 6

    .line 1
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;-><init>(Ljava/io/InputStream;JII)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JII)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/poi/util/LittleEndianInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkIsValid:Z

    iput-wide p2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->size:J

    int-to-long p1, p5

    iput-wide p1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->pos:J

    iput p4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkSize:I

    const/4 p1, -0x1

    if-ne p4, p1, :cond_0

    const/16 p4, 0x1000

    :cond_0
    new-array p1, p4, [B

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunk:[B

    new-array p2, p4, [B

    iput-object p2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->plain:[B

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result p1

    iput p1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkBits:I

    iget-wide p2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->pos:J

    shr-long p1, p2, p1

    long-to-int p2, p1

    iput p2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->lastIndex:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->cipher:Ljavax/crypto/Cipher;

    return-void
.end method

.method private nextChunk()V
    .locals 10

    iget v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkSize:I

    const/4 v1, 0x1

    const-string v2, "buffer underrun"

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    iget-wide v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->pos:J

    iget v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkBits:I

    shr-long/2addr v4, v0

    long-to-int v0, v4

    iget-object v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p0, v4, v0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;

    iget v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->lastIndex:I

    if-eq v4, v0, :cond_1

    sub-int v4, v0, v4

    iget v5, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkBits:I

    shl-int/2addr v4, v5

    int-to-long v4, v4

    invoke-super {p0, v4, v5}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-ltz v8, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->lastIndex:I

    :cond_2
    iget-wide v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->size:J

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunk:[B

    array-length v0, v0

    int-to-long v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v0, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_3
    iget-object v6, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->plain:[B

    sub-int v7, v0, v5

    invoke-super {p0, v6, v5, v7}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/2addr v5, v7

    if-eq v6, v3, :cond_4

    if-lt v5, v0, :cond_3

    :cond_4
    if-ne v6, v3, :cond_6

    iget-wide v6, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->pos:J

    int-to-long v8, v5

    add-long/2addr v6, v8

    iget-wide v8, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->size:J

    cmp-long v0, v6, v8

    if-gez v0, :cond_6

    const-wide/32 v6, 0x7fffffff

    cmp-long v0, v8, v6

    if-ltz v0, :cond_5

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_1
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->plain:[B

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunk:[B

    invoke-static {v0, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkSize:I

    if-ne v5, v0, :cond_7

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0, v5, v1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->invokeCipher(IZ)I

    return-void
.end method

.method private read([BIIZ)I
    .locals 11

    .line 3
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->available()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->getChunkMask()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lez p3, :cond_5

    iget-boolean v3, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkIsValid:Z

    if-nez v3, :cond_1

    :try_start_0
    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->nextChunk()V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkIsValid:Z
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/poi/EncryptedDocumentException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/apache/poi/EncryptedDocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    :goto_1
    iget-object v3, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunk:[B

    array-length v3, v3

    int-to-long v3, v3

    iget-wide v5, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->pos:J

    int-to-long v7, v0

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    long-to-int v4, v3

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->available()I

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    invoke-static {v4, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-eqz p4, :cond_3

    iget-object v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->plain:[B

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunk:[B

    :goto_2
    iget-wide v5, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->pos:J

    and-long/2addr v5, v7

    long-to-int v6, v5

    invoke-static {v4, v6, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    iget-wide v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->pos:J

    int-to-long v9, v3

    add-long/2addr v4, v9

    iput-wide v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->pos:J

    and-long/2addr v4, v7

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_4

    iput-boolean v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkIsValid:Z

    :cond_4
    add-int/2addr v2, v3

    goto :goto_0

    :cond_5
    return v2
.end method

.method private remainingBytes()I
    .locals 4

    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->size:J

    iget-wide v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->pos:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method


# virtual methods
.method public available()I
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->remainingBytes()I

    move-result v0

    return v0
.end method

.method public getChunk()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunk:[B

    return-object v0
.end method

.method public getChunkMask()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunk:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getPlain()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->plain:[B

    return-object v0
.end method

.method public getPos()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->pos:J

    return-wide v0
.end method

.method public final initCipherForBlock(I)Ljavax/crypto/Cipher;
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkIsValid:Z

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "the cipher block can only be set for streaming encryption, e.g. CryptoAPI..."

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract initCipherForBlock(Ljavax/crypto/Cipher;I)Ljavax/crypto/Cipher;
.end method

.method public invokeCipher(IZ)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->cipher:Ljavax/crypto/Cipher;

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunk:[B

    invoke-virtual {p2, v1, v0, p1, v1}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    move-result p1

    return p1

    :cond_0
    iget-object p2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->cipher:Ljavax/crypto/Cipher;

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunk:[B

    invoke-virtual {p2, v1, v0, p1, v1}, Ljavax/crypto/Cipher;->update([BII[B)I

    move-result p1

    return p1
.end method

.method public declared-synchronized mark(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 4

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v2, v1, [B

    aput-byte v0, v2, v0

    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ne v3, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    aget-byte v0, v2, v0

    :goto_0
    return v0
.end method

.method public read([BII)I
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->read([BIIZ)I

    move-result p1

    return p1
.end method

.method public readPlain([BII)V
    .locals 4

    if-gtz p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_1
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v2}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->read([BIIZ)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v1, v3

    const/4 v3, -0x1

    if-le v2, v3, :cond_2

    if-lt v1, p3, :cond_1

    :cond_2
    if-lt v1, p3, :cond_3

    return-void

    :cond_3
    new-instance p1, Ljava/io/EOFException;

    const-string p2, "buffer underrun"

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNextRecordSize(I)V
    .locals 0

    return-void
.end method

.method public skip(J)J
    .locals 5

    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->pos:J

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->remainingBytes()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iget-wide v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->pos:J

    add-long/2addr v2, p1

    xor-long/2addr v0, v2

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->getChunkMask()I

    move-result v2

    not-int v2, v2

    int-to-long v2, v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->chunkIsValid:Z

    :cond_0
    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->pos:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->pos:J

    return-wide p1
.end method
