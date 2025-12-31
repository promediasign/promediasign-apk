.class public final Lorg/apache/poi/util/IOUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static SKIP_BYTE_BUFFER:[B

.field private static final logger:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/util/IOUtils;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/IOUtils;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public static calculateChecksum(Ljava/io/InputStream;)J
    .locals 4

    .line 1
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    const/16 v1, 0x1000

    new-array v1, v1, [B

    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-lez v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/CRC32;->update([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static calculateChecksum([B)J
    .locals 3

    .line 2
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lorg/apache/poi/util/IOUtils;->logger:Lorg/apache/poi/util/POILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to close resource: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p0, v2, v1

    const/4 p0, 0x7

    invoke-virtual {v0, p0, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3

    const/16 v0, 0x1000

    new-array v0, v0, [B

    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    if-lt v1, v2, :cond_1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    const-string p1, "Can\'t have read < -1 bytes"

    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method public static peekFirst8Bytes(Ljava/io/InputStream;)[B
    .locals 1

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lorg/apache/poi/util/IOUtils;->peekFirstNBytes(Ljava/io/InputStream;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static peekFirstNBytes(Ljava/io/InputStream;I)[B
    .locals 4

    invoke-virtual {p0, p1}, Ljava/io/InputStream;->mark(I)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v1, Lorg/apache/poi/util/BoundedInputStream;

    int-to-long v2, p1

    invoke-direct {v1, p0, v2, v3}, Lorg/apache/poi/util/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    invoke-static {v1, v0}, Lorg/apache/poi/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-eqz v1, :cond_2

    if-ge v1, p1, :cond_0

    sub-int/2addr p1, v1

    new-array p1, p1, [B

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    instance-of v0, p0, Ljava/io/PushbackInputStream;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/io/PushbackInputStream;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/PushbackInputStream;->unread([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    :goto_0
    return-object p1

    :cond_2
    new-instance p0, Lorg/apache/poi/EmptyFileException;

    invoke-direct {p0}, Lorg/apache/poi/EmptyFileException;-><init>()V

    throw p0
.end method

.method public static readFully(Ljava/io/InputStream;[B)I
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/io/InputStream;[BII)I

    move-result p0

    return p0
.end method

.method public static readFully(Ljava/io/InputStream;[BII)I
    .locals 3

    .line 2
    const/4 v0, 0x0

    :cond_0
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gez v1, :cond_2

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :cond_1
    return v0

    :cond_2
    add-int/2addr v0, v1

    if-ne v0, p3, :cond_0

    return v0
.end method

.method public static readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 3
    const/4 v0, 0x0

    :cond_0
    invoke-interface {p0, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    if-gez v1, :cond_2

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :cond_1
    return v0

    :cond_2
    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    if-ne v1, v2, :cond_0

    :cond_3
    return v0
.end method

.method public static safelyAllocate(JI)[B
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p0, v0

    .line 4
    .line 5
    if-ltz v2, :cond_2

    .line 6
    .line 7
    const-wide/32 v0, 0x7fffffff

    .line 8
    .line 9
    .line 10
    cmp-long v2, p0, v0

    .line 11
    .line 12
    if-gtz v2, :cond_1

    .line 13
    .line 14
    int-to-long v0, p2

    .line 15
    cmp-long v2, p0, v0

    .line 16
    .line 17
    if-gtz v2, :cond_0

    .line 18
    .line 19
    long-to-int p1, p0

    .line 20
    new-array p0, p1, [B

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    .line 24
    .line 25
    const-string p1, "Not allowed to allocate an array > "

    .line 26
    .line 27
    const-string v0, " for this record type.If the file is not corrupt, please open an issue on bugzilla to request increasing the maximum allowable size for this record type"

    .line 28
    .line 29
    invoke-static {p2, p1, v0}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0

    .line 37
    :cond_1
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    .line 38
    .line 39
    const-string p1, "Can\'t allocate an array > 2147483647"

    .line 40
    .line 41
    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p0

    .line 45
    :cond_2
    new-instance p0, Lorg/apache/poi/util/RecordFormatException;

    .line 46
    .line 47
    const-string p1, "Can\'t allocate an array of length < 0"

    .line 48
    .line 49
    invoke-direct {p0, p1}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0
.end method

.method public static skipFully(Ljava/io/InputStream;J)J
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-ltz v2, :cond_5

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    sget-object v2, Lorg/apache/poi/util/IOUtils;->SKIP_BYTE_BUFFER:[B

    .line 11
    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    const/16 v2, 0x800

    .line 15
    .line 16
    new-array v2, v2, [B

    .line 17
    .line 18
    sput-object v2, Lorg/apache/poi/util/IOUtils;->SKIP_BYTE_BUFFER:[B

    .line 19
    .line 20
    :cond_1
    move-wide v2, p1

    .line 21
    :goto_0
    cmp-long v4, v2, v0

    .line 22
    .line 23
    if-lez v4, :cond_3

    .line 24
    .line 25
    sget-object v4, Lorg/apache/poi/util/IOUtils;->SKIP_BYTE_BUFFER:[B

    .line 26
    .line 27
    const-wide/16 v5, 0x800

    .line 28
    .line 29
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 30
    .line 31
    .line 32
    move-result-wide v5

    .line 33
    long-to-int v6, v5

    .line 34
    const/4 v5, 0x0

    .line 35
    invoke-virtual {p0, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    int-to-long v4, v4

    .line 40
    cmp-long v6, v4, v0

    .line 41
    .line 42
    if-gez v6, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    sub-long/2addr v2, v4

    .line 46
    goto :goto_0

    .line 47
    :cond_3
    :goto_1
    cmp-long p0, p1, v2

    .line 48
    .line 49
    if-nez p0, :cond_4

    .line 50
    .line 51
    const-wide/16 p0, -0x1

    .line 52
    .line 53
    return-wide p0

    .line 54
    :cond_4
    sub-long/2addr p1, v2

    .line 55
    return-wide p1

    .line 56
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    const-string v0, "Skip count must be non-negative, actual: "

    .line 59
    .line 60
    invoke-static {v0, p1, p2}, Lorg/apache/ftpserver/main/a;->h(Ljava/lang/String;J)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p0
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 1

    .line 1
    const v0, 0x7fffffff

    invoke-static {p0, v0}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static toByteArray(Ljava/io/InputStream;I)[B
    .locals 8

    .line 2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x1000

    const v2, 0x7fffffff

    if-ne p1, v2, :cond_0

    const/16 v3, 0x1000

    goto :goto_0

    :cond_0
    move v3, p1

    :goto_0
    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-array v3, v1, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_1
    sub-int v6, p1, v5

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v3, v4, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/2addr v5, v7

    if-lez v6, :cond_2

    invoke-virtual {v0, v3, v4, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_2
    if-ge v5, p1, :cond_3

    const/4 v7, -0x1

    if-gt v6, v7, :cond_1

    :cond_3
    if-eq p1, v2, :cond_5

    if-lt v5, p1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "unexpected EOF"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static toByteArray(Ljava/nio/ByteBuffer;I)[B
    .locals 1

    .line 3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0

    :cond_0
    new-array p1, p1, [B

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public static write(Lorg/apache/poi/POIDocument;Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/POIDocument;->write(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p1}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static write(Lorg/apache/poi/ss/usermodel/Workbook;Ljava/io/OutputStream;)V
    .locals 0

    .line 2
    :try_start_0
    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/Workbook;->write(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p1}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static writeAndClose(Lorg/apache/poi/POIDocument;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/poi/POIDocument;->write()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {p0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static writeAndClose(Lorg/apache/poi/POIDocument;Ljava/io/File;)V
    .locals 0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/poi/POIDocument;->write(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method

.method public static writeAndClose(Lorg/apache/poi/POIDocument;Ljava/io/OutputStream;)V
    .locals 0

    .line 3
    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/poi/util/IOUtils;->write(Lorg/apache/poi/POIDocument;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method

.method public static writeAndClose(Lorg/apache/poi/ss/usermodel/Workbook;Ljava/io/OutputStream;)V
    .locals 0

    .line 4
    :try_start_0
    invoke-interface {p0, p1}, Lorg/apache/poi/ss/usermodel/Workbook;->write(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lorg/apache/poi/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method
