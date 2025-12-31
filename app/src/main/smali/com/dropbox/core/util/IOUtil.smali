.class public abstract Lcom/dropbox/core/util/IOUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/util/IOUtil$ProgressListener;,
        Lcom/dropbox/core/util/IOUtil$WriteException;,
        Lcom/dropbox/core/util/IOUtil$ReadException;,
        Lcom/dropbox/core/util/IOUtil$WrappedException;
    }
.end annotation


# static fields
.field public static final BlackHoleOutputStream:Ljava/io/OutputStream;

.field public static final EmptyInputStream:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dropbox/core/util/IOUtil$1;

    invoke-direct {v0}, Lcom/dropbox/core/util/IOUtil$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/util/IOUtil;->EmptyInputStream:Ljava/io/InputStream;

    new-instance v0, Lcom/dropbox/core/util/IOUtil$2;

    invoke-direct {v0}, Lcom/dropbox/core/util/IOUtil$2;-><init>()V

    sput-object v0, Lcom/dropbox/core/util/IOUtil;->BlackHoleOutputStream:Ljava/io/OutputStream;

    return-void
.end method

.method public static closeInput(Ljava/io/InputStream;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
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

.method public static copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    const/16 v0, 0x4000

    invoke-static {p0, p1, v0}, Lcom/dropbox/core/util/IOUtil;->copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    return-void
.end method

.method public static copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 0

    .line 2
    new-array p2, p2, [B

    invoke-static {p0, p1, p2}, Lcom/dropbox/core/util/IOUtil;->copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V

    return-void
.end method

.method public static copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
    .locals 2

    .line 3
    :goto_0
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p1, p2, v1, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/dropbox/core/util/IOUtil$WriteException;

    invoke-direct {p1, p0}, Lcom/dropbox/core/util/IOUtil$WriteException;-><init>(Ljava/io/IOException;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/dropbox/core/util/IOUtil$ReadException;

    invoke-direct {p1, p0}, Lcom/dropbox/core/util/IOUtil$ReadException;-><init>(Ljava/io/IOException;)V

    throw p1
.end method

.method public static slurp(Ljava/io/InputStream;I)[B
    .locals 1

    .line 1
    const/16 v0, 0x4000

    new-array v0, v0, [B

    invoke-static {p0, p1, v0}, Lcom/dropbox/core/util/IOUtil;->slurp(Ljava/io/InputStream;I[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static slurp(Ljava/io/InputStream;I[B)[B
    .locals 0

    if-ltz p1, :cond_0

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0, p1, p2}, Lcom/dropbox/core/util/IOUtil;->copyStreamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p2, "\'byteLimit\' must be non-negative: "

    .line 2
    invoke-static {p1, p2}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
