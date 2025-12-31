.class public Lfi/iki/elonen/NanoHTTPD$Response;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfi/iki/elonen/NanoHTTPD$Response$IStatus;,
        Lfi/iki/elonen/NanoHTTPD$Response$Status;,
        Lfi/iki/elonen/NanoHTTPD$Response$ChunkedOutputStream;
    }
.end annotation


# instance fields
.field private afterClosed:Ljava/lang/Runnable;

.field private chunkedTransfer:Z

.field private contentLength:J

.field private data:Ljava/io/InputStream;

.field private encodeAsGzip:Z

.field private final header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private keepAlive:Z

.field private final lowerCaseHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mimeType:Ljava/lang/String;

.field private requestMethod:Lfi/iki/elonen/NanoHTTPD$Method;

.field private status:Lfi/iki/elonen/NanoHTTPD$Response$IStatus;


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lfi/iki/elonen/NanoHTTPD$Response$1;

    invoke-direct {v0, p0}, Lfi/iki/elonen/NanoHTTPD$Response$1;-><init>(Lfi/iki/elonen/NanoHTTPD$Response;)V

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->lowerCaseHeader:Ljava/util/Map;

    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->status:Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

    iput-object p2, p0, Lfi/iki/elonen/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    const-wide/16 p1, 0x0

    const/4 v0, 0x0

    if-nez p3, :cond_0

    new-instance p3, Ljava/io/ByteArrayInputStream;

    new-array p4, v0, [B

    invoke-direct {p3, p4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object p3, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    iput-wide p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->contentLength:J

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    iput-wide p4, p0, Lfi/iki/elonen/NanoHTTPD$Response;->contentLength:J

    :goto_0
    iget-wide p3, p0, Lfi/iki/elonen/NanoHTTPD$Response;->contentLength:J

    const/4 p5, 0x1

    cmp-long v1, p3, p1

    if-gez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->chunkedTransfer:Z

    iput-boolean p5, p0, Lfi/iki/elonen/NanoHTTPD$Response;->keepAlive:Z

    return-void
.end method

.method public static synthetic access$500(Lfi/iki/elonen/NanoHTTPD$Response;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->lowerCaseHeader:Ljava/util/Map;

    return-object p0
.end method

.method private sendBody(Ljava/io/OutputStream;J)V
    .locals 6

    const/16 v0, 0x2000

    new-array v0, v0, [B

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    cmp-long v4, p2, v1

    if-nez v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v2, p2, v4

    if-gtz v2, :cond_2

    if-eqz v1, :cond_4

    :cond_2
    const-wide/16 v4, 0x2000

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :goto_1
    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    long-to-int v5, v4

    invoke-virtual {v2, v0, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-gtz v2, :cond_5

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    if-nez v1, :cond_1

    int-to-long v4, v2

    sub-long/2addr p2, v4

    goto :goto_0
.end method

.method private sendBodyWithCorrectEncoding(Ljava/io/OutputStream;J)V
    .locals 2

    iget-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->encodeAsGzip:Z

    if-eqz v0, :cond_0

    new-instance p2, Ljava/util/zip/GZIPOutputStream;

    const/16 p3, 0x47e

    const/4 v0, 0x0

    invoke-direct {p2, p1, p3, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;IZ)V

    const-wide/16 v0, -0x1

    invoke-direct {p0, p2, v0, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->sendBody(Ljava/io/OutputStream;J)V

    invoke-virtual {p2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lfi/iki/elonen/NanoHTTPD$Response;->sendBody(Ljava/io/OutputStream;J)V

    :goto_0
    return-void
.end method

.method private sendBodyWithCorrectTransferAndEncoding(Ljava/io/OutputStream;J)V
    .locals 2

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->requestMethod:Lfi/iki/elonen/NanoHTTPD$Method;

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Method;->HEAD:Lfi/iki/elonen/NanoHTTPD$Method;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->chunkedTransfer:Z

    if-eqz v0, :cond_0

    new-instance p2, Lfi/iki/elonen/NanoHTTPD$Response$ChunkedOutputStream;

    invoke-direct {p2, p1}, Lfi/iki/elonen/NanoHTTPD$Response$ChunkedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-wide/16 v0, -0x1

    invoke-direct {p0, p2, v0, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->sendBodyWithCorrectEncoding(Ljava/io/OutputStream;J)V

    invoke-virtual {p2}, Lfi/iki/elonen/NanoHTTPD$Response$ChunkedOutputStream;->finish()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lfi/iki/elonen/NanoHTTPD$Response;->sendBodyWithCorrectEncoding(Ljava/io/OutputStream;J)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->afterClosed:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->afterClosed:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->lowerCaseHeader:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public isCloseConnection()Z
    .locals 2

    const-string v0, "connection"

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "close"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public printHeader(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    const-string p2, "\r\n"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    return-void
.end method

.method public send(Ljava/io/OutputStream;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lfi/iki/elonen/NanoHTTPD$Response;->status:Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

    if-eqz v0, :cond_a

    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Lfi/iki/elonen/NanoHTTPD$ContentType;

    iget-object v4, p0, Lfi/iki/elonen/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    invoke-direct {v3, v4}, Lfi/iki/elonen/NanoHTTPD$ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lfi/iki/elonen/NanoHTTPD$ContentType;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    const-string v1, "HTTP/1.1 "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$Response;->status:Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

    invoke-interface {v3}, Lfi/iki/elonen/NanoHTTPD$Response$IStatus;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v3, " \r\n"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v3, "Content-Type"

    invoke-virtual {p0, v0, v3, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->printHeader(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :catch_0
    move-exception p1

    goto/16 :goto_6

    :cond_0
    :goto_0
    const-string v1, "date"

    invoke-virtual {p0, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "Date"

    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->access$600()Lj$/time/format/DateTimeFormatter;

    move-result-object v3

    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    move-result-object v4

    sget-object v5, Lj$/time/ZoneOffset;->UTC:Lj$/time/ZoneOffset;

    invoke-virtual {v4, v5}, Lj$/time/Instant;->atOffset(Lj$/time/ZoneOffset;)Lj$/time/OffsetDateTime;

    move-result-object v4

    invoke-virtual {v3, v4}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v3}, Lfi/iki/elonen/NanoHTTPD$Response;->printHeader(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->header:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v0, v4, v3}, Lfi/iki/elonen/NanoHTTPD$Response;->printHeader(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, "connection"

    invoke-virtual {p0, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, "Connection"

    iget-boolean v3, p0, Lfi/iki/elonen/NanoHTTPD$Response;->keepAlive:Z

    if-eqz v3, :cond_3

    const-string v3, "keep-alive"

    goto :goto_2

    :cond_3
    const-string v3, "close"

    :goto_2
    invoke-virtual {p0, v0, v1, v3}, Lfi/iki/elonen/NanoHTTPD$Response;->printHeader(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->status:Lfi/iki/elonen/NanoHTTPD$Response$IStatus;

    sget-object v3, Lfi/iki/elonen/NanoHTTPD$Response$Status;->OK:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    if-eq v1, v3, :cond_5

    iput-boolean v2, p0, Lfi/iki/elonen/NanoHTTPD$Response;->encodeAsGzip:Z

    :cond_5
    iget-boolean v1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->encodeAsGzip:Z

    if-eqz v1, :cond_6

    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    invoke-virtual {p0, v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->printHeader(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->setChunkedTransfer(Z)V

    :cond_6
    iget-object v1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    if-eqz v1, :cond_7

    iget-wide v1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->contentLength:J

    goto :goto_3

    :cond_7
    const-wide/16 v1, 0x0

    :goto_3
    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$Response;->requestMethod:Lfi/iki/elonen/NanoHTTPD$Method;

    sget-object v4, Lfi/iki/elonen/NanoHTTPD$Method;->HEAD:Lfi/iki/elonen/NanoHTTPD$Method;

    if-eq v3, v4, :cond_8

    iget-boolean v3, p0, Lfi/iki/elonen/NanoHTTPD$Response;->chunkedTransfer:Z

    if-eqz v3, :cond_8

    const-string v3, "Transfer-Encoding"

    const-string v4, "chunked"

    invoke-virtual {p0, v0, v3, v4}, Lfi/iki/elonen/NanoHTTPD$Response;->printHeader(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    iget-boolean v3, p0, Lfi/iki/elonen/NanoHTTPD$Response;->encodeAsGzip:Z

    if-nez v3, :cond_9

    invoke-virtual {p0, v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->sendContentLengthHeaderIfNotAlreadyPresent(Ljava/io/PrintWriter;J)J

    move-result-wide v1

    :cond_9
    :goto_4
    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    invoke-direct {p0, p1, v1, v2}, Lfi/iki/elonen/NanoHTTPD$Response;->sendBodyWithCorrectTransferAndEncoding(Ljava/io/OutputStream;J)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_1
    :goto_5
    invoke-virtual {p0}, Lfi/iki/elonen/NanoHTTPD$Response;->close()V

    goto :goto_8

    :cond_a
    :try_start_1
    new-instance p1, Ljava/lang/Error;

    const-string v0, "sendResponse(): Status can\'t be null."

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_6
    :try_start_2
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->access$100()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Could not send response to the client"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :goto_7
    invoke-virtual {p0}, Lfi/iki/elonen/NanoHTTPD$Response;->close()V

    throw p1

    :goto_8
    return-void
.end method

.method public sendContentLengthHeaderIfNotAlreadyPresent(Ljava/io/PrintWriter;J)J
    .locals 2

    const-string v0, "content-length"

    invoke-virtual {p0, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Lfi/iki/elonen/NanoHTTPD;->access$100()Lorg/slf4j/Logger;

    move-result-object p1

    const-string v1, "content-length was no number {}"

    invoke-interface {p1, v1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Content-Length: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    return-wide p2
.end method

.method public setAfterClosed(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->afterClosed:Ljava/lang/Runnable;

    return-void
.end method

.method public setChunkedTransfer(Z)V
    .locals 0

    iput-boolean p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->chunkedTransfer:Z

    return-void
.end method

.method public setGzipEncoding(Z)V
    .locals 0

    iput-boolean p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->encodeAsGzip:Z

    return-void
.end method

.method public setKeepAlive(Z)V
    .locals 0

    iput-boolean p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->keepAlive:Z

    return-void
.end method

.method public setRequestMethod(Lfi/iki/elonen/NanoHTTPD$Method;)V
    .locals 0

    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$Response;->requestMethod:Lfi/iki/elonen/NanoHTTPD$Method;

    return-void
.end method
