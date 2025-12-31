.class public abstract Landroidx/media3/common/util/Log;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/util/Log$Logger;
    }
.end annotation


# static fields
.field private static final lock:Ljava/lang/Object;

.field private static logLevel:I = 0x0

.field private static logStackTraces:Z = true

.field private static logger:Landroidx/media3/common/util/Log$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/common/util/Log;->lock:Ljava/lang/Object;

    sget-object v0, Landroidx/media3/common/util/Log$Logger;->DEFAULT:Landroidx/media3/common/util/Log$Logger;

    sput-object v0, Landroidx/media3/common/util/Log;->logger:Landroidx/media3/common/util/Log$Logger;

    return-void
.end method

.method public static appendThrowableString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Landroidx/media3/common/util/Log;->getThrowableString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, "\n  "

    .line 12
    .line 13
    invoke-static {p0, v0}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v1, "\n"

    .line 18
    .line 19
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 p1, 0xa

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    :cond_0
    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Landroidx/media3/common/util/Log;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Landroidx/media3/common/util/Log;->logLevel:I

    if-nez v1, :cond_0

    sget-object v1, Landroidx/media3/common/util/Log;->logger:Landroidx/media3/common/util/Log$Logger;

    const/4 v2, 0x0

    invoke-interface {v1, p0, p1, v2}, Landroidx/media3/common/util/Log$Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Landroidx/media3/common/util/Log;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Landroidx/media3/common/util/Log;->logLevel:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    sget-object v1, Landroidx/media3/common/util/Log;->logger:Landroidx/media3/common/util/Log$Logger;

    const/4 v2, 0x0

    invoke-interface {v1, p0, p1, v2}, Landroidx/media3/common/util/Log$Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 2
    sget-object v0, Landroidx/media3/common/util/Log;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Landroidx/media3/common/util/Log;->logLevel:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    sget-object v1, Landroidx/media3/common/util/Log;->logger:Landroidx/media3/common/util/Log$Logger;

    invoke-interface {v1, p0, p1, p2}, Landroidx/media3/common/util/Log$Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getThrowableString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Landroidx/media3/common/util/Log;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Landroidx/media3/common/util/Log;->isCausedByUnknownHostException(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "UnknownHostException (no network)"

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-boolean v1, Landroidx/media3/common/util/Log;->logStackTraces:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_2
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v1, "\t"

    const-string v2, "    "

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Landroidx/media3/common/util/Log;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Landroidx/media3/common/util/Log;->logLevel:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    sget-object v1, Landroidx/media3/common/util/Log;->logger:Landroidx/media3/common/util/Log$Logger;

    const/4 v2, 0x0

    invoke-interface {v1, p0, p1, v2}, Landroidx/media3/common/util/Log$Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static isCausedByUnknownHostException(Ljava/lang/Throwable;)Z
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Landroidx/media3/common/util/Log;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Landroidx/media3/common/util/Log;->logLevel:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    sget-object v1, Landroidx/media3/common/util/Log;->logger:Landroidx/media3/common/util/Log$Logger;

    const/4 v2, 0x0

    invoke-interface {v1, p0, p1, v2}, Landroidx/media3/common/util/Log$Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 2
    sget-object v0, Landroidx/media3/common/util/Log;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Landroidx/media3/common/util/Log;->logLevel:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    sget-object v1, Landroidx/media3/common/util/Log;->logger:Landroidx/media3/common/util/Log$Logger;

    invoke-interface {v1, p0, p1, p2}, Landroidx/media3/common/util/Log$Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
