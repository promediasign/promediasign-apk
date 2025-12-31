.class public abstract Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream$EncryptedPackageWriter;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# instance fields
.field private final chunk:[B

.field private final chunkBits:I

.field private final chunkSize:I

.field private cipher:Ljavax/crypto/Cipher;

.field private final dir:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

.field private final fileOut:Ljava/io/File;

.field private isClosed:Z

.field private final plainByteFlags:Ljava/util/BitSet;

.field private pos:J

.field private totalPos:J

.field private written:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->isClosed:Z

    iput p2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunkSize:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 p2, 0x1000

    :cond_0
    new-array v0, p2, [B

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunk:[B

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p2}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->plainByteFlags:Ljava/util/BitSet;

    add-int/lit8 p2, p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->bitCount(I)I

    move-result p2

    iput p2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunkBits:I

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->fileOut:Ljava/io/File;

    iput-object p2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->dir:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {p0, p2, p1, p1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->initCipherForBlock(Ljavax/crypto/Cipher;IZ)Ljavax/crypto/Cipher;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DirectoryNode;I)V
    .locals 3

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->isClosed:Z

    iput p2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunkSize:I

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    const/16 p2, 0x1000

    :cond_0
    new-array v2, p2, [B

    iput-object v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunk:[B

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, p2}, Ljava/util/BitSet;-><init>(I)V

    iput-object v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->plainByteFlags:Ljava/util/BitSet;

    add-int/lit8 p2, p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->bitCount(I)I

    move-result p2

    iput p2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunkBits:I

    const-string p2, "encrypted_package"

    const-string v2, "crypt"

    invoke-static {p2, v2}, Lorg/apache/poi/util/TempFile;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->fileOut:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->deleteOnExit()V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->dir:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {p0, v0, v1, v1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->initCipherForBlock(Ljavax/crypto/Cipher;IZ)Ljavax/crypto/Cipher;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    return-void
.end method

.method public static synthetic access$100(Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;)J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->pos:J

    return-wide v0
.end method

.method public static synthetic access$200(Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->fileOut:Ljava/io/File;

    return-object p0
.end method

.method public static synthetic access$300()Lorg/apache/poi/util/POILogger;
    .locals 1

    sget-object v0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->LOG:Lorg/apache/poi/util/POILogger;

    return-object v0
.end method


# virtual methods
.method public abstract calculateChecksum(Ljava/io/File;I)V
.end method

.method public close()V
    .locals 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->isClosed:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->LOG:Lorg/apache/poi/util/POILogger;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "ChunkedCipherOutputStream was already closed - ignoring"

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    return-void

    :cond_0
    iput-boolean v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->isClosed:Z

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->writeChunk(Z)V

    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->fileOut:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    long-to-int v1, v0

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->fileOut:Ljava/io/File;

    iget-wide v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->pos:J

    long-to-int v3, v2

    invoke-virtual {p0, v0, v3}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->calculateChecksum(Ljava/io/File;I)V

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->dir:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    const-string v2, "EncryptedPackage"

    new-instance v3, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream$EncryptedPackageWriter;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream$EncryptedPackageWriter;-><init>(Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream$1;)V

    invoke-virtual {v0, v2, v1, v3}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->createDocument(Ljava/lang/String;ILorg/apache/poi/poifs/filesystem/POIFSWriterListener;)Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->dir:Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->fileOut:Ljava/io/File;

    invoke-virtual {p0, v0, v1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->createEncryptionInfoEntry(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :goto_1
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract createEncryptionInfoEntry(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Ljava/io/File;)V
.end method

.method public getChunk()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunk:[B

    return-object v0
.end method

.method public getChunkMask()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunk:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getPlainByteFlags()Ljava/util/BitSet;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->plainByteFlags:Ljava/util/BitSet;

    return-object v0
.end method

.method public getPos()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->pos:J

    return-wide v0
.end method

.method public getTotalPos()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->totalPos:J

    return-wide v0
.end method

.method public final initCipherForBlock(IZ)Ljavax/crypto/Cipher;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->initCipherForBlock(Ljavax/crypto/Cipher;IZ)Ljavax/crypto/Cipher;

    move-result-object p1

    return-object p1
.end method

.method public abstract initCipherForBlock(Ljavax/crypto/Cipher;IZ)Ljavax/crypto/Cipher;
.end method

.method public invokeCipher(IZ)I
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->plainByteFlags:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunk:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunk:[B

    invoke-virtual {p2, v2, v1, p1, v2}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    move-result p2

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunk:[B

    invoke-virtual {p2, v2, v1, p1, v2}, Ljavax/crypto/Cipher;->update([BII[B)I

    move-result p2

    :goto_1
    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->plainByteFlags:Ljava/util/BitSet;

    :goto_2
    invoke-virtual {v2, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    if-ltz v1, :cond_2

    if-ge v1, p1, :cond_2

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunk:[B

    aget-byte v3, v0, v1

    aput-byte v3, v2, v1

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->plainByteFlags:Ljava/util/BitSet;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return p2
.end method

.method public setNextRecordSize(IZ)V
    .locals 0

    return-void
.end method

.method public write(I)V
    .locals 2

    .line 1
    int-to-byte p1, p1

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->write([B)V

    return-void
.end method

.method public write([B)V
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->write([BIIZ)V

    return-void
.end method

.method public write([BIIZ)V
    .locals 11

    .line 4
    if-nez p3, :cond_0

    return-void

    :cond_0
    if-ltz p3, :cond_5

    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_5

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->getChunkMask()I

    move-result v0

    :cond_1
    :goto_0
    if-lez p3, :cond_4

    iget-wide v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->pos:J

    int-to-long v3, v0

    and-long/2addr v1, v3

    long-to-int v2, v1

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunk:[B

    array-length v1, v1

    sub-int/2addr v1, v2

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v5, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunk:[B

    invoke-static {p1, p2, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p4, :cond_2

    iget-object v5, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->plainByteFlags:Ljava/util/BitSet;

    add-int v6, v2, v1

    invoke-virtual {v5, v2, v6}, Ljava/util/BitSet;->set(II)V

    :cond_2
    iget-wide v5, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->pos:J

    int-to-long v7, v1

    add-long/2addr v5, v7

    iput-wide v5, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->pos:J

    iget-wide v9, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->totalPos:J

    add-long/2addr v9, v7

    iput-wide v9, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->totalPos:J

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    and-long v1, v5, v3

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    if-lez p3, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->writeChunk(Z)V

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "not enough bytes in your input buffer"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeChunk(Z)V
    .locals 9

    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->pos:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    iget-wide v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->totalPos:J

    iget-wide v6, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->written:J

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->getChunkMask()I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v0, v4

    long-to-int v1, v0

    iget-wide v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->pos:J

    iget v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunkBits:I

    shr-long v6, v4, v0

    long-to-int v0, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunk:[B

    array-length v1, v1

    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    const/4 v8, 0x1

    :goto_0
    :try_start_0
    iput-wide v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->pos:J

    iget v2, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunkSize:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    if-eqz p1, :cond_3

    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p0, p1, v0, v8}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->initCipherForBlock(Ljavax/crypto/Cipher;IZ)Ljavax/crypto/Cipher;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    iput-wide v4, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->pos:J

    :cond_3
    :goto_1
    invoke-virtual {p0, v1, v6}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->invokeCipher(IZ)I

    move-result p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->chunk:[B

    invoke-virtual {v0, v1, v7, p1}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->plainByteFlags:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    iget-wide v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->written:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->written:J

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "can\'t re-/initialize cipher"

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    :goto_2
    return-void
.end method

.method public writePlain([BII)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherOutputStream;->write([BIIZ)V

    return-void
.end method
