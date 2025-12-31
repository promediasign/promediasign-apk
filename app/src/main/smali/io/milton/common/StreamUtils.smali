.class public abstract Lio/milton/common/StreamUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/common/StreamUtils;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/common/StreamUtils;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public static close(Ljava/io/InputStream;)V
    .locals 2

    .line 1
    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lio/milton/common/StreamUtils;->log:Lorg/slf4j/Logger;

    const-string v1, "exception closing inputstream"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static close(Ljava/io/OutputStream;)V
    .locals 2

    .line 2
    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lio/milton/common/StreamUtils;->log:Lorg/slf4j/Logger;

    const-string v1, "exception closing output stream"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static readTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6

    .line 1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lio/milton/common/StreamUtils;->readTo(Ljava/io/InputStream;Ljava/io/OutputStream;ZZLjava/lang/Long;Ljava/lang/Long;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static readTo(Ljava/io/InputStream;Ljava/io/OutputStream;ZZ)J
    .locals 6

    .line 2
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lio/milton/common/StreamUtils;->readTo(Ljava/io/InputStream;Ljava/io/OutputStream;ZZLjava/lang/Long;Ljava/lang/Long;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static readTo(Ljava/io/InputStream;Ljava/io/OutputStream;ZZLjava/lang/Long;Ljava/lang/Long;)J
    .locals 8

    .line 3
    const-wide/16 v0, 0x0

    if-eqz p4, :cond_0

    invoke-static {p0, p4}, Lio/milton/common/StreamUtils;->skip(Ljava/io/InputStream;Ljava/lang/Long;)V

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    goto :goto_0

    :cond_0
    move-wide p4, v0

    :goto_0
    const/16 v2, 0x400

    new-array v2, v2, [B

    :try_start_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v4, v0

    :goto_1
    if-lez v3, :cond_2

    int-to-long v6, v3

    add-long/2addr v4, v6

    add-long/2addr p4, v6

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {p1, v2, v6, v3}, Ljava/io/OutputStream;->write([BII)V

    const-wide/16 v6, 0x2710

    cmp-long v3, p4, v6

    if-lez v3, :cond_1

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide p4, v0

    goto :goto_2

    :catchall_0
    move-exception p4

    goto :goto_3

    :catch_0
    :try_start_2
    sget-object v3, Lio/milton/common/StreamUtils;->log:Lorg/slf4j/Logger;

    const-string v6, "writing exectpion"

    invoke-interface {v3, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_2
    :try_start_3
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p4

    :try_start_4
    new-instance p5, Lio/milton/common/ReadingException;

    invoke-direct {p5, p4}, Lio/milton/common/ReadingException;-><init>(Ljava/io/IOException;)V

    throw p5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    :try_start_5
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz p2, :cond_3

    invoke-static {p0}, Lio/milton/common/StreamUtils;->close(Ljava/io/InputStream;)V

    :cond_3
    if-eqz p3, :cond_4

    invoke-static {p1}, Lio/milton/common/StreamUtils;->close(Ljava/io/OutputStream;)V

    :cond_4
    return-wide v4

    :catch_2
    move-exception p4

    :try_start_6
    new-instance p5, Lio/milton/common/WritingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Write exception at byte: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p5, v0, p4}, Lio/milton/common/WritingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p5

    :catch_3
    sget-object v0, Lio/milton/common/StreamUtils;->log:Lorg/slf4j/Logger;

    const-string v1, "nullpointer exception reading input stream. it happens for sun.nio.ch.ChannelInputStream.read(ChannelInputStream.java:48)"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz p2, :cond_5

    invoke-static {p0}, Lio/milton/common/StreamUtils;->close(Ljava/io/InputStream;)V

    :cond_5
    if-eqz p3, :cond_6

    invoke-static {p1}, Lio/milton/common/StreamUtils;->close(Ljava/io/OutputStream;)V

    :cond_6
    return-wide p4

    :catch_4
    move-exception p4

    :try_start_7
    new-instance p5, Lio/milton/common/ReadingException;

    invoke-direct {p5, p4}, Lio/milton/common/ReadingException;-><init>(Ljava/io/IOException;)V

    throw p5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_3
    if-eqz p2, :cond_7

    invoke-static {p0}, Lio/milton/common/StreamUtils;->close(Ljava/io/InputStream;)V

    :cond_7
    if-eqz p3, :cond_8

    invoke-static {p1}, Lio/milton/common/StreamUtils;->close(Ljava/io/OutputStream;)V

    :cond_8
    throw p4
.end method

.method private static skip(Ljava/io/InputStream;Ljava/lang/Long;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/InputStream;->skip(J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
