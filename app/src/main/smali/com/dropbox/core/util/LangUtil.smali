.class public abstract Lcom/dropbox/core/util/LangUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 2
    .line 3
    const-string v1, ": "

    .line 4
    .line 5
    invoke-static {p0, v1}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public static truncateMillis(Ljava/util/Date;)Ljava/util/Date;
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    new-instance p0, Ljava/util/Date;

    const-wide/16 v2, 0x3e8

    rem-long v2, v0, v2

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    :cond_0
    return-object p0
.end method
