.class Lorg/h2/store/fs/FileZip;
.super Lorg/h2/store/fs/FileBase;
.source "SourceFile"


# static fields
.field private static final SKIP_BUFFER:[B


# instance fields
.field private final entry:Ljava/util/zip/ZipEntry;

.field private final file:Ljava/util/zip/ZipFile;

.field private in:Ljava/io/InputStream;

.field private inPos:J

.field private final length:J

.field private pos:J

.field private skipUsingRead:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x400

    new-array v0, v0, [B

    sput-object v0, Lorg/h2/store/fs/FileZip;->SKIP_BUFFER:[B

    return-void
.end method

.method public constructor <init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V
    .locals 0

    invoke-direct {p0}, Lorg/h2/store/fs/FileBase;-><init>()V

    iput-object p1, p0, Lorg/h2/store/fs/FileZip;->file:Ljava/util/zip/ZipFile;

    iput-object p2, p0, Lorg/h2/store/fs/FileZip;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/h2/store/fs/FileZip;->length:J

    return-void
.end method

.method private seek()V
    .locals 8

    iget-wide v0, p0, Lorg/h2/store/fs/FileZip;->inPos:J

    iget-wide v2, p0, Lorg/h2/store/fs/FileZip;->pos:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-object v0, p0, Lorg/h2/store/fs/FileZip;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/store/fs/FileZip;->in:Ljava/io/InputStream;

    :cond_1
    iget-object v0, p0, Lorg/h2/store/fs/FileZip;->in:Ljava/io/InputStream;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/h2/store/fs/FileZip;->file:Ljava/util/zip/ZipFile;

    iget-object v3, p0, Lorg/h2/store/fs/FileZip;->entry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/fs/FileZip;->in:Ljava/io/InputStream;

    iput-wide v1, p0, Lorg/h2/store/fs/FileZip;->inPos:J

    :cond_2
    iget-wide v3, p0, Lorg/h2/store/fs/FileZip;->inPos:J

    iget-wide v5, p0, Lorg/h2/store/fs/FileZip;->pos:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_5

    sub-long/2addr v5, v3

    iget-boolean v0, p0, Lorg/h2/store/fs/FileZip;->skipUsingRead:Z

    if-nez v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lorg/h2/store/fs/FileZip;->in:Ljava/io/InputStream;

    invoke-static {v0, v5, v6}, Lorg/h2/util/IOUtils;->skipFully(Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/h2/store/fs/FileZip;->skipUsingRead:Z

    :cond_3
    :goto_0
    iget-boolean v0, p0, Lorg/h2/store/fs/FileZip;->skipUsingRead:Z

    if-eqz v0, :cond_4

    :goto_1
    cmp-long v0, v5, v1

    if-lez v0, :cond_4

    sget-object v0, Lorg/h2/store/fs/FileZip;->SKIP_BUFFER:[B

    array-length v3, v0

    int-to-long v3, v3

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    iget-object v3, p0, Lorg/h2/store/fs/FileZip;->in:Ljava/io/InputStream;

    const/4 v7, 0x0

    invoke-virtual {v3, v0, v7, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    int-to-long v3, v0

    sub-long/2addr v5, v3

    goto :goto_1

    :cond_4
    iget-wide v0, p0, Lorg/h2/store/fs/FileZip;->pos:J

    iput-wide v0, p0, Lorg/h2/store/fs/FileZip;->inPos:J

    :cond_5
    return-void
.end method


# virtual methods
.method public force(Z)V
    .locals 0

    return-void
.end method

.method public implCloseChannel()V
    .locals 1

    iget-object v0, p0, Lorg/h2/store/fs/FileZip;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/h2/store/fs/FileZip;->in:Ljava/io/InputStream;

    :cond_0
    iget-object v0, p0, Lorg/h2/store/fs/FileZip;->file:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    return-void
.end method

.method public position()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/h2/store/fs/FileZip;->pos:J

    return-wide v0
.end method

.method public position(J)Ljava/nio/channels/FileChannel;
    .locals 0

    .line 2
    iput-wide p1, p0, Lorg/h2/store/fs/FileZip;->pos:J

    return-object p0
.end method

.method public bridge synthetic position(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/h2/store/fs/FileZip;->position(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 5

    .line 1
    invoke-direct {p0}, Lorg/h2/store/fs/FileZip;->seek()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/h2/store/fs/FileZip;->in:Ljava/io/InputStream;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    add-int/2addr v3, v2

    .line 19
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-lez v0, :cond_0

    .line 28
    .line 29
    invoke-static {p1, v0}, LA/g;->B(Ljava/nio/ByteBuffer;I)V

    .line 30
    .line 31
    .line 32
    iget-wide v1, p0, Lorg/h2/store/fs/FileZip;->pos:J

    .line 33
    .line 34
    int-to-long v3, v0

    .line 35
    add-long/2addr v1, v3

    .line 36
    iput-wide v1, p0, Lorg/h2/store/fs/FileZip;->pos:J

    .line 37
    .line 38
    iget-wide v1, p0, Lorg/h2/store/fs/FileZip;->inPos:J

    .line 39
    .line 40
    add-long/2addr v1, v3

    .line 41
    iput-wide v1, p0, Lorg/h2/store/fs/FileZip;->inPos:J

    .line 42
    .line 43
    :cond_0
    return v0
.end method

.method public size()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/store/fs/FileZip;->length:J

    return-wide v0
.end method

.method public truncate(J)Ljava/nio/channels/FileChannel;
    .locals 0

    .line 1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "File is read-only"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/h2/store/fs/FileZip;->truncate(J)Ljava/nio/channels/FileChannel;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized tryLock(JJZ)Ljava/nio/channels/FileLock;
    .locals 9

    monitor-enter p0

    if-eqz p5, :cond_0

    :try_start_0
    new-instance v8, Lorg/h2/store/fs/FileZip$1;

    const/4 v2, 0x0

    move-object v0, v8

    move-object v1, p0

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/h2/store/fs/FileZip$1;-><init>(Lorg/h2/store/fs/FileZip;Ljava/nio/channels/FileChannel;JJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v8

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1

    new-instance p1, Ljava/io/IOException;

    const-string v0, "File is read-only"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
