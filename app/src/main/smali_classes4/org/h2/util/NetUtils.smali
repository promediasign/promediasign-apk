.class public Lorg/h2/util/NetUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CACHE_MILLIS:I = 0x3e8

.field private static cachedBindAddress:Ljava/net/InetAddress;

.field private static cachedLocalAddress:Ljava/lang/String;

.field private static cachedLocalAddressTime:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeSilently(Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createLoopbackSocket(IZ)Ljava/net/Socket;
    .locals 2

    invoke-static {}, Lorg/h2/util/NetUtils;->getLocalAddress()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0, p0, p1}, Lorg/h2/util/NetUtils;->createSocket(Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "localhost"

    invoke-static {v1, p0, p1}, Lorg/h2/util/NetUtils;->createSocket(Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    throw v0
.end method

.method public static createServerSocket(IZ)Ljava/net/ServerSocket;
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Lorg/h2/util/NetUtils;->createServerSocketTry(IZ)Ljava/net/ServerSocket;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-static {p0, p1}, Lorg/h2/util/NetUtils;->createServerSocketTry(IZ)Ljava/net/ServerSocket;

    move-result-object p0

    return-object p0
.end method

.method private static createServerSocketTry(IZ)Ljava/net/ServerSocket;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lorg/h2/util/NetUtils;->getBindAddress()Ljava/net/InetAddress;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, v0}, Lorg/h2/security/CipherFactory;->createServerSocket(ILjava/net/InetAddress;)Ljava/net/ServerSocket;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    goto :goto_0

    .line 14
    :catch_1
    move-exception p1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    if-nez v0, :cond_1

    .line 17
    .line 18
    new-instance v0, Ljava/net/ServerSocket;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Ljava/net/ServerSocket;-><init>(I)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_1
    new-instance v1, Ljava/net/ServerSocket;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-direct {v1, p0, v2, v0}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/net/BindException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    return-object v1

    .line 31
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, "port: "

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p0, " ssl: "

    .line 42
    .line 43
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {v0, p0}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    throw p0

    .line 58
    :goto_1
    const-string v0, ""

    .line 59
    .line 60
    invoke-static {p0, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    filled-new-array {p0, v0}, [Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    const v0, 0x15fcd

    .line 73
    .line 74
    .line 75
    invoke-static {v0, p1, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    throw p0
.end method

.method public static createSocket(Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 3

    .line 1
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x3a

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit8 p1, v0, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/h2/util/NetUtils;->createSocket(Ljava/net/InetAddress;IZ)Ljava/net/Socket;

    move-result-object p0

    return-object p0
.end method

.method public static createSocket(Ljava/net/InetAddress;IZ)Ljava/net/Socket;
    .locals 9

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_0
    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p0, p1}, Lorg/h2/security/CipherFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, p0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    sget v5, Lorg/h2/engine/SysProperties;->SOCKET_CONNECT_TIMEOUT:I

    invoke-virtual {v3, v4, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :goto_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget v7, Lorg/h2/engine/SysProperties;->SOCKET_CONNECT_TIMEOUT:I

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_2

    sget v4, Lorg/h2/engine/SysProperties;->SOCKET_CONNECT_RETRY:I

    if-ge v2, v4, :cond_1

    const/16 v3, 0x100

    mul-int v4, v2, v2

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    throw v3

    :cond_2
    throw v3
.end method

.method private static getBindAddress()Ljava/net/InetAddress;
    .locals 3

    sget-object v0, Lorg/h2/engine/SysProperties;->BIND_ADDRESS:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const-class v1, Lorg/h2/util/NetUtils;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lorg/h2/util/NetUtils;->cachedBindAddress:Ljava/net/InetAddress;

    if-nez v2, :cond_1

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lorg/h2/util/NetUtils;->cachedBindAddress:Ljava/net/InetAddress;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lorg/h2/util/NetUtils;->cachedBindAddress:Ljava/net/InetAddress;

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getHostName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "unknown"

    return-object p0
.end method

.method public static declared-synchronized getLocalAddress()Ljava/lang/String;
    .locals 9

    const-string v0, "["

    const-class v1, Lorg/h2/util/NetUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sget-object v4, Lorg/h2/util/NetUtils;->cachedLocalAddress:Ljava/lang/String;

    if-eqz v4, :cond_0

    sget-wide v4, Lorg/h2/util/NetUtils;->cachedLocalAddressTime:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x3e8

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    cmp-long v6, v4, v2

    if-lez v6, :cond_0

    sget-object v0, Lorg/h2/util/NetUtils;->cachedLocalAddress:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-static {}, Lorg/h2/util/NetUtils;->getBindAddress()Ljava/net/InetAddress;

    move-result-object v5
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :catch_0
    const/4 v5, 0x0

    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    :try_start_2
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v5
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_2
    :goto_1
    if-nez v5, :cond_3

    :goto_2
    const-string v0, "localhost"

    goto :goto_3

    :cond_3
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    instance-of v5, v5, Ljava/net/Inet6Address;

    if-eqz v5, :cond_5

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_4

    goto :goto_2

    :cond_4
    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_5

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    move-object v0, v4

    :goto_3
    const-string v4, "127.0.0.1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v0, "localhost"

    :cond_6
    sput-object v0, Lorg/h2/util/NetUtils;->cachedLocalAddress:Ljava/lang/String;

    sput-wide v2, Lorg/h2/util/NetUtils;->cachedLocalAddressTime:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    return-object v0

    :goto_4
    monitor-exit v1

    throw v0
.end method

.method public static isLocalAddress(Ljava/net/Socket;)Z
    .locals 6

    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    invoke-virtual {p0, v5}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method
