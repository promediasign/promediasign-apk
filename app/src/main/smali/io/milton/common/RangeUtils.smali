.class public abstract Lio/milton/common/RangeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/milton/common/RangeUtils;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lio/milton/common/RangeUtils;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public static sendBytes(Ljava/io/InputStream;Ljava/io/OutputStream;J)V
    .locals 9

    const/16 v0, 0x400

    new-array v1, v0, [B

    const-wide/16 v2, 0x0

    :goto_0
    cmp-long v4, v2, p2

    if-gez v4, :cond_2

    sub-long v4, p2, v2

    const-wide/16 v6, 0x400

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    const/16 v5, 0x400

    goto :goto_1

    :cond_0
    long-to-int v5, v4

    :goto_1
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-gez v5, :cond_1

    goto :goto_2

    :cond_1
    int-to-long v6, v5

    add-long/2addr v2, v6

    invoke-virtual {p1, v1, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public static toRangeString(JJLjava/lang/Long;)Ljava/lang/String;
    .locals 7

    .line 1
    if-nez p4, :cond_0

    .line 2
    .line 3
    const-string v0, "*"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    const-wide/16 v1, -0x1

    .line 11
    .line 12
    const-string v3, "/"

    .line 13
    .line 14
    const-string v4, "-"

    .line 15
    .line 16
    const-string v5, "bytes "

    .line 17
    .line 18
    cmp-long v6, p2, v1

    .line 19
    .line 20
    if-lez v6, :cond_1

    .line 21
    .line 22
    :goto_1
    invoke-static {v5, p0, p1, v4}, Ls/a;->e(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    goto :goto_2

    .line 40
    :cond_1
    if-nez p4, :cond_2

    .line 41
    .line 42
    const-wide/16 p2, 0x0

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    .line 46
    .line 47
    .line 48
    move-result-wide p2

    .line 49
    const-wide/16 v1, 0x1

    .line 50
    .line 51
    sub-long/2addr p2, v1

    .line 52
    goto :goto_1

    .line 53
    :goto_2
    return-object p0
.end method

.method public static writeRange(Ljava/io/InputStream;Lio/milton/http/Range;Ljava/io/OutputStream;)V
    .locals 4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lio/milton/http/Range;->getStart()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/milton/http/Range;->getStart()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/InputStream;->skip(J)J

    :cond_0
    invoke-virtual {p1}, Lio/milton/http/Range;->getFinish()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lio/milton/http/Range;->getFinish()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lio/milton/http/Range;->getStart()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {p0, p2, v0, v1}, Lio/milton/common/RangeUtils;->sendBytes(Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p2}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    :goto_0
    return-void
.end method
