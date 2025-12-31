.class public Lorg/h2/util/IOUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "closeSilently"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lorg/h2/util/IOUtils;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static closeSilently(Ljava/io/InputStream;)V
    .locals 2

    .line 2
    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "closeSilently"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lorg/h2/util/IOUtils;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static closeSilently(Ljava/io/Reader;)V
    .locals 0

    .line 3
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static closeSilently(Ljava/io/Writer;)V
    .locals 0

    .line 4
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static closeSilently(Ljava/lang/AutoCloseable;)V
    .locals 2

    .line 5
    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "closeSilently"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lorg/h2/util/IOUtils;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 2

    .line 1
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {p0, p1, v0, v1}, Lorg/h2/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)J
    .locals 10

    .line 2
    const-wide/16 v0, 0x1000

    :try_start_0
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    new-array v2, v3, [B

    const-wide/16 v4, 0x0

    move-wide v6, v4

    :goto_0
    cmp-long v8, p2, v4

    if-lez v8, :cond_2

    const/4 v8, 0x0

    invoke-virtual {p0, v2, v8, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-gez v3, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v2, v8, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_1
    int-to-long v8, v3

    add-long/2addr v6, v8

    sub-long/2addr p2, v8

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v3, v8

    goto :goto_0

    :cond_2
    :goto_2
    return-wide v6

    :goto_3
    invoke-static {p0}, Lorg/h2/message/DbException;->convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static copyAndClose(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 2

    :try_start_0
    invoke-static {p0, p1}, Lorg/h2/util/IOUtils;->copyAndCloseInput(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    return-wide v0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lorg/h2/message/DbException;->convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p0

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {p1}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static copyAndCloseInput(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lorg/h2/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/InputStream;)V

    return-wide v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lorg/h2/message/DbException;->convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {p0}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/InputStream;)V

    throw p1
.end method

.method public static copyAndCloseInput(Ljava/io/Reader;Ljava/io/Writer;J)J
    .locals 10

    .line 2
    const-wide/16 v0, 0x1000

    :try_start_0
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    new-array v2, v3, [C

    const-wide/16 v4, 0x0

    move-wide v6, v4

    :goto_0
    cmp-long v8, p2, v4

    if-lez v8, :cond_2

    const/4 v8, 0x0

    invoke-virtual {p0, v2, v8, v3}, Ljava/io/Reader;->read([CII)I

    move-result v3

    if-gez v3, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v2, v8, v3}, Ljava/io/Writer;->write([CII)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_1
    int-to-long v8, v3

    sub-long/2addr p2, v8

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v3, v8

    int-to-long v8, v3

    add-long/2addr v6, v8

    goto :goto_0

    :cond_2
    :goto_2
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    return-wide v6

    :goto_3
    :try_start_1
    invoke-static {p1}, Lorg/h2/message/DbException;->convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    throw p1
.end method

.method public static copyFiles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lorg/h2/store/fs/FileUtils;->newInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/h2/store/fs/FileUtils;->newOutputStream(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/h2/util/IOUtils;->copyAndClose(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    return-void
.end method

.method public static getAsciiReader(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "US-ASCII"

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method public static getBufferedReader(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static getBufferedWriter(Ljava/io/OutputStream;)Ljava/io/Writer;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    sget-object v2, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static getInputStreamFromString(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public static getReader(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static readBytesAndClose(Ljava/io/InputStream;I)[B
    .locals 4

    if-gtz p1, :cond_0

    const p1, 0x7fffffff

    :cond_0
    const/16 v0, 0x1000

    :try_start_0
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    int-to-long v2, p1

    invoke-static {p0, v1, v2, v3}, Lorg/h2/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)J

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lorg/h2/message/DbException;->convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw p1
.end method

.method public static readFully(Ljava/io/InputStream;[BI)I
    .locals 2

    .line 1
    :try_start_0
    array-length v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-lez p2, :cond_1

    invoke-virtual {p0, p1, v0, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v0, v1

    sub-int/2addr p2, v1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    return v0

    :goto_2
    invoke-static {p0}, Lorg/h2/message/DbException;->convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static readFully(Ljava/io/Reader;[CI)I
    .locals 2

    .line 2
    :try_start_0
    array-length v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-lez p2, :cond_1

    invoke-virtual {p0, p1, v0, p2}, Ljava/io/Reader;->read([CII)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v0, v1

    sub-int/2addr p2, v1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    return v0

    :goto_2
    invoke-static {p0}, Lorg/h2/message/DbException;->convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static readStringAndClose(Ljava/io/Reader;I)Ljava/lang/String;
    .locals 4

    if-gtz p1, :cond_0

    const p1, 0x7fffffff

    :cond_0
    const/16 v0, 0x1000

    :try_start_0
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1, v0}, Ljava/io/StringWriter;-><init>(I)V

    int-to-long v2, p1

    invoke-static {p0, v1, v2, v3}, Lorg/h2/util/IOUtils;->copyAndCloseInput(Ljava/io/Reader;Ljava/io/Writer;J)J

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    throw p1
.end method

.method public static skipFully(Ljava/io/InputStream;J)V
    .locals 5

    .line 1
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    sub-long/2addr p1, v2

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/h2/message/DbException;->convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_1
    return-void
.end method

.method public static skipFully(Ljava/io/Reader;J)V
    .locals 5

    .line 2
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/Reader;->skip(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    sub-long/2addr p1, v2

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/h2/message/DbException;->convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_1
    return-void
.end method

.method public static trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 1
    sget-boolean v0, Lorg/h2/engine/SysProperties;->TRACE_IO:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 6
    .line 7
    const-string v1, "IOUtils."

    .line 8
    .line 9
    const-string v2, " "

    .line 10
    .line 11
    invoke-static {v1, p0, v2, p1, v2}, Lorg/apache/ftpserver/main/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
