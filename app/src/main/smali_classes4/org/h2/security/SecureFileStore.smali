.class public Lorg/h2/security/SecureFileStore;
.super Lorg/h2/store/FileStore;
.source "SourceFile"


# instance fields
.field private buffer:[B

.field private final bufferForInitVector:[B

.field private final cipher:Lorg/h2/security/BlockCipher;

.field private final cipherForInitVector:Lorg/h2/security/BlockCipher;

.field private key:[B

.field private final keyIterations:I

.field private pos:J


# direct methods
.method public constructor <init>(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/h2/store/FileStore;-><init>(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x4

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/h2/security/SecureFileStore;->buffer:[B

    iput-object p5, p0, Lorg/h2/security/SecureFileStore;->key:[B

    invoke-static {p4}, Lorg/h2/security/CipherFactory;->getBlockCipher(Ljava/lang/String;)Lorg/h2/security/BlockCipher;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/security/SecureFileStore;->cipher:Lorg/h2/security/BlockCipher;

    invoke-static {p4}, Lorg/h2/security/CipherFactory;->getBlockCipher(Ljava/lang/String;)Lorg/h2/security/BlockCipher;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/security/SecureFileStore;->cipherForInitVector:Lorg/h2/security/BlockCipher;

    iput p6, p0, Lorg/h2/security/SecureFileStore;->keyIterations:I

    const/16 p1, 0x10

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/h2/security/SecureFileStore;->bufferForInitVector:[B

    return-void
.end method

.method private xorInitVector([BIIJ)V
    .locals 9

    iget-object v0, p0, Lorg/h2/security/SecureFileStore;->bufferForInitVector:[B

    :goto_0
    if-lez p3, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    int-to-long v4, v2

    add-long/2addr v4, p4

    const/4 v6, 0x3

    ushr-long/2addr v4, v6

    const/16 v6, 0x38

    shr-long v6, v4, v6

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, v0, v2

    add-int/lit8 v6, v2, 0x1

    const/16 v7, 0x30

    shr-long v7, v4, v7

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v0, v6

    add-int/lit8 v6, v2, 0x2

    const/16 v7, 0x28

    shr-long v7, v4, v7

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v0, v6

    add-int/lit8 v6, v2, 0x3

    const/16 v7, 0x20

    shr-long v7, v4, v7

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v0, v6

    add-int/lit8 v6, v2, 0x4

    const/16 v7, 0x18

    shr-long v7, v4, v7

    long-to-int v8, v7

    int-to-byte v7, v8

    aput-byte v7, v0, v6

    add-int/lit8 v6, v2, 0x5

    shr-long v7, v4, v3

    long-to-int v3, v7

    int-to-byte v3, v3

    aput-byte v3, v0, v6

    add-int/lit8 v3, v2, 0x6

    const/16 v6, 0x8

    shr-long v6, v4, v6

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, v0, v3

    add-int/lit8 v3, v2, 0x7

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v0, v3

    add-int/lit8 v2, v2, 0x8

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/h2/security/SecureFileStore;->cipherForInitVector:Lorg/h2/security/BlockCipher;

    invoke-interface {v2, v0, v1, v3}, Lorg/h2/security/BlockCipher;->encrypt([BII)V

    :goto_2
    if-ge v1, v3, :cond_1

    add-int v2, p2, v1

    aget-byte v4, p1, v2

    aget-byte v5, v0, v1

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    const-wide/16 v1, 0x10

    add-long/2addr p4, v1

    add-int/lit8 p2, p2, 0x10

    add-int/lit8 p3, p3, -0x10

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public generateSalt()[B
    .locals 1

    const/16 v0, 0x10

    invoke-static {v0}, Lorg/h2/util/MathUtils;->secureRandomBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public initKey([B)V
    .locals 2

    iget-object v0, p0, Lorg/h2/security/SecureFileStore;->key:[B

    invoke-static {v0, p1}, Lorg/h2/security/SHA256;->getHashWithSalt([B[B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/h2/security/SecureFileStore;->key:[B

    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Lorg/h2/security/SecureFileStore;->keyIterations:I

    const/4 v1, 0x1

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/h2/security/SecureFileStore;->key:[B

    invoke-static {v0, v1}, Lorg/h2/security/SHA256;->getHash([BZ)[B

    move-result-object v0

    iput-object v0, p0, Lorg/h2/security/SecureFileStore;->key:[B

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/h2/security/SecureFileStore;->cipher:Lorg/h2/security/BlockCipher;

    iget-object v0, p0, Lorg/h2/security/SecureFileStore;->key:[B

    invoke-interface {p1, v0}, Lorg/h2/security/BlockCipher;->setKey([B)V

    iget-object p1, p0, Lorg/h2/security/SecureFileStore;->key:[B

    invoke-static {p1, v1}, Lorg/h2/security/SHA256;->getHash([BZ)[B

    move-result-object p1

    iput-object p1, p0, Lorg/h2/security/SecureFileStore;->key:[B

    iget-object v0, p0, Lorg/h2/security/SecureFileStore;->cipherForInitVector:Lorg/h2/security/BlockCipher;

    invoke-interface {v0, p1}, Lorg/h2/security/BlockCipher;->setKey([B)V

    return-void
.end method

.method public readFully([BII)V
    .locals 7

    invoke-super {p0, p1, p2, p3}, Lorg/h2/store/FileStore;->readFully([BII)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    aget-byte v1, p1, v0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/h2/security/SecureFileStore;->cipher:Lorg/h2/security/BlockCipher;

    invoke-interface {v0, p1, p2, p3}, Lorg/h2/security/BlockCipher;->decrypt([BII)V

    iget-wide v5, p0, Lorg/h2/security/SecureFileStore;->pos:J

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/h2/security/SecureFileStore;->xorInitVector([BIIJ)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-wide p1, p0, Lorg/h2/security/SecureFileStore;->pos:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/h2/security/SecureFileStore;->pos:J

    return-void
.end method

.method public readFullyDirect([BII)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lorg/h2/store/FileStore;->readFully([BII)V

    iget-wide p1, p0, Lorg/h2/security/SecureFileStore;->pos:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/h2/security/SecureFileStore;->pos:J

    return-void
.end method

.method public seek(J)V
    .locals 0

    iput-wide p1, p0, Lorg/h2/security/SecureFileStore;->pos:J

    invoke-super {p0, p1, p2}, Lorg/h2/store/FileStore;->seek(J)V

    return-void
.end method

.method public write([BII)V
    .locals 8

    iget-object v0, p0, Lorg/h2/security/SecureFileStore;->buffer:[B

    array-length v0, v0

    array-length v1, p1

    if-ge v0, v1, :cond_0

    new-array v0, p3, [B

    iput-object v0, p0, Lorg/h2/security/SecureFileStore;->buffer:[B

    :cond_0
    iget-object v0, p0, Lorg/h2/security/SecureFileStore;->buffer:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/h2/security/SecureFileStore;->buffer:[B

    const/4 v4, 0x0

    iget-wide v6, p0, Lorg/h2/security/SecureFileStore;->pos:J

    move-object v2, p0

    move v5, p3

    invoke-direct/range {v2 .. v7}, Lorg/h2/security/SecureFileStore;->xorInitVector([BIIJ)V

    iget-object p1, p0, Lorg/h2/security/SecureFileStore;->cipher:Lorg/h2/security/BlockCipher;

    iget-object p2, p0, Lorg/h2/security/SecureFileStore;->buffer:[B

    invoke-interface {p1, p2, v1, p3}, Lorg/h2/security/BlockCipher;->encrypt([BII)V

    iget-object p1, p0, Lorg/h2/security/SecureFileStore;->buffer:[B

    invoke-super {p0, p1, v1, p3}, Lorg/h2/store/FileStore;->write([BII)V

    iget-wide p1, p0, Lorg/h2/security/SecureFileStore;->pos:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/h2/security/SecureFileStore;->pos:J

    return-void
.end method

.method public writeDirect([BII)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lorg/h2/store/FileStore;->write([BII)V

    iget-wide p1, p0, Lorg/h2/security/SecureFileStore;->pos:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/h2/security/SecureFileStore;->pos:J

    return-void
.end method
