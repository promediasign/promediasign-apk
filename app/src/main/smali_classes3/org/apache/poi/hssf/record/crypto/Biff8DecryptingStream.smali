.class public final Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hssf/record/BiffHeaderInput;
.implements Lorg/apache/poi/util/LittleEndianInput;


# static fields
.field public static final RC4_REKEYING_INTERVAL:I = 0x400


# instance fields
.field private final buffer:[B

.field private ccis:Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

.field private final info:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

.field private shouldSkipEncryptionOnCurrentRecord:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILorg/apache/poi/poifs/crypt/EncryptionInfo;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->buffer:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->shouldSkipEncryptionOnCurrentRecord:Z

    :try_start_0
    new-array v1, p2, [B

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/PushbackInputStream;

    invoke-direct {v2, p1, p2}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {v2, v1}, Ljava/io/PushbackInputStream;->unread([B)V

    move-object p1, v2

    :goto_0
    iput-object p3, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->info:Lorg/apache/poi/poifs/crypt/EncryptionInfo;

    invoke-virtual {p3}, Lorg/apache/poi/poifs/crypt/EncryptionInfo;->getDecryptor()Lorg/apache/poi/poifs/crypt/Decryptor;

    move-result-object p3

    const/16 v2, 0x400

    invoke-virtual {p3, v2}, Lorg/apache/poi/poifs/crypt/Decryptor;->setChunkSize(I)V

    const v2, 0x7fffffff

    invoke-virtual {p3, p1, v2, v0}, Lorg/apache/poi/poifs/crypt/Decryptor;->getDataStream(Ljava/io/InputStream;II)Ljava/io/InputStream;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    iput-object p1, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->ccis:Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    if-lez p2, :cond_1

    invoke-virtual {p1, v1}, Lorg/apache/poi/util/LittleEndianInputStream;->readFully([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    return-void

    :goto_2
    new-instance p2, Lorg/apache/poi/util/RecordFormatException;

    invoke-direct {p2, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static isNeverEncryptedRecord(I)Z
    .locals 1

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe1

    if-eq p0, v0, :cond_0

    const/16 v0, 0x809

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public available()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->ccis:Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->available()I

    move-result v0

    return v0
.end method

.method public getPosition()J
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->ccis:Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->getPos()J

    move-result-wide v0

    return-wide v0
.end method

.method public readByte()B
    .locals 3

    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->shouldSkipEncryptionOnCurrentRecord:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->buffer:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->readPlain([BII)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->buffer:[B

    aget-byte v0, v0, v2

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->ccis:Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/util/LittleEndianInputStream;->readByte()B

    move-result v0

    return v0
.end method

.method public readDataSize()I
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->buffer:[B

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->readPlain([BII)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->buffer:[B

    invoke-static {v0, v2}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v0

    iget-object v1, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->ccis:Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    invoke-virtual {v1, v0}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->setNextRecordSize(I)V

    return v0
.end method

.method public readDouble()D
    .locals 3

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Did not expect to read NaN"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readFully([B)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->readFully([BII)V

    return-void
.end method

.method public readFully([BII)V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->shouldSkipEncryptionOnCurrentRecord:Z

    if-eqz v0, :cond_0

    array-length p3, p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->readPlain([BII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->ccis:Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/util/LittleEndianInputStream;->readFully([BII)V

    :goto_0
    return-void
.end method

.method public readInt()I
    .locals 3

    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->shouldSkipEncryptionOnCurrentRecord:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->buffer:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->readPlain([BII)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->buffer:[B

    invoke-static {v0}, Lorg/apache/poi/util/LittleEndian;->getInt([B)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->ccis:Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/util/LittleEndianInputStream;->readInt()I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 3

    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->shouldSkipEncryptionOnCurrentRecord:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->buffer:[B

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->readPlain([BII)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->buffer:[B

    invoke-static {v0}, Lorg/apache/poi/util/LittleEndian;->getLong([B)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->ccis:Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/util/LittleEndianInputStream;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readPlain([BII)V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->ccis:Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;->readPlain([BII)V

    return-void
.end method

.method public readRecordSID()I
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->buffer:[B

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->readPlain([BII)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->buffer:[B

    invoke-static {v0, v2}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v0

    invoke-static {v0}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->isNeverEncryptedRecord(I)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->shouldSkipEncryptionOnCurrentRecord:Z

    return v0
.end method

.method public readShort()S
    .locals 3

    iget-boolean v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->shouldSkipEncryptionOnCurrentRecord:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->buffer:[B

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->readPlain([BII)V

    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->buffer:[B

    invoke-static {v0}, Lorg/apache/poi/util/LittleEndian;->getShort([B)S

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->ccis:Lorg/apache/poi/poifs/crypt/ChunkedCipherInputStream;

    invoke-virtual {v0}, Lorg/apache/poi/util/LittleEndianInputStream;->readShort()S

    move-result v0

    return v0
.end method

.method public readUByte()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readUShort()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/crypto/Biff8DecryptingStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method
