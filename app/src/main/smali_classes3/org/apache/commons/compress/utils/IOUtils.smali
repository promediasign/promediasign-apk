.class public abstract Lorg/apache/commons/compress/utils/IOUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SKIP_BUF:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1000

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/commons/compress/utils/IOUtils;->SKIP_BUF:[B

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static readFully(Ljava/io/InputStream;[B)I
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[BII)I

    move-result p0

    return p0
.end method

.method public static readFully(Ljava/io/InputStream;[BII)I
    .locals 3

    .line 2
    if-ltz p3, :cond_2

    if-ltz p2, :cond_2

    add-int v0, p3, p2

    array-length v1, p1

    if-gt v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-eq v0, p3, :cond_1

    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public static skip(Ljava/io/InputStream;J)J
    .locals 7

    move-wide v0, p1

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    invoke-virtual {p0, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    sub-long/2addr v0, v4

    goto :goto_0

    :cond_1
    :goto_1
    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    sget-object v4, Lorg/apache/commons/compress/utils/IOUtils;->SKIP_BUF:[B

    const-wide/16 v5, 0x1000

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v6, v5

    const/4 v5, 0x0

    invoke-static {p0, v4, v5, v6}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[BII)I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    goto :goto_2

    :cond_2
    int-to-long v4, v4

    sub-long/2addr v0, v4

    goto :goto_1

    :cond_3
    :goto_2
    sub-long/2addr p1, v0

    return-wide p1
.end method
