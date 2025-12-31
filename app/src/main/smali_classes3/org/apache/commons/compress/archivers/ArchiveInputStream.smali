.class public abstract Lorg/apache/commons/compress/archivers/ArchiveInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private bytesRead:J

.field private final single:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->single:[B

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->bytesRead:J

    return-void
.end method


# virtual methods
.method public count(I)V
    .locals 2

    .line 1
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->count(J)V

    return-void
.end method

.method public count(J)V
    .locals 3

    .line 2
    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->bytesRead:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->bytesRead:J

    :cond_0
    return-void
.end method

.method public getBytesRead()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->bytesRead:J

    return-wide v0
.end method

.method public abstract getNextEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
.end method

.method public pushedBackBytes(J)V
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->bytesRead:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->bytesRead:J

    return-void
.end method

.method public read()I
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->single:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ArchiveInputStream;->single:[B

    aget-byte v0, v0, v2

    and-int/lit16 v1, v0, 0xff

    :goto_0
    return v1
.end method
