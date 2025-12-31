.class Lsk/mimac/slideshow/http/webdav/WebdavRequest$CountingInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/http/webdav/WebdavRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CountingInputStream"
.end annotation


# instance fields
.field private bodySize:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-wide p2, p0, Lsk/mimac/slideshow/http/webdav/WebdavRequest$CountingInputStream;->bodySize:J

    return-void
.end method


# virtual methods
.method public read()I
    .locals 6

    .line 1
    iget-wide v0, p0, Lsk/mimac/slideshow/http/webdav/WebdavRequest$CountingInputStream;->bodySize:J

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    if-ltz v0, :cond_1

    iget-wide v4, p0, Lsk/mimac/slideshow/http/webdav/WebdavRequest$CountingInputStream;->bodySize:J

    sub-long/2addr v4, v2

    iput-wide v4, p0, Lsk/mimac/slideshow/http/webdav/WebdavRequest$CountingInputStream;->bodySize:J

    :cond_1
    return v0
.end method

.method public read([B)I
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lsk/mimac/slideshow/http/webdav/WebdavRequest$CountingInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 5

    .line 3
    iget-wide v0, p0, Lsk/mimac/slideshow/http/webdav/WebdavRequest$CountingInputStream;->bodySize:J

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    int-to-long v2, p3

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    long-to-int p3, v0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_2

    iget-wide p2, p0, Lsk/mimac/slideshow/http/webdav/WebdavRequest$CountingInputStream;->bodySize:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lsk/mimac/slideshow/http/webdav/WebdavRequest$CountingInputStream;->bodySize:J

    :cond_2
    return p1
.end method

.method public skip(J)J
    .locals 3

    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    iget-wide v0, p0, Lsk/mimac/slideshow/http/webdav/WebdavRequest$CountingInputStream;->bodySize:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lsk/mimac/slideshow/http/webdav/WebdavRequest$CountingInputStream;->bodySize:J

    :cond_0
    return-wide p1
.end method
