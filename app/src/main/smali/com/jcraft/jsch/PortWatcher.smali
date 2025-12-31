.class Lcom/jcraft/jsch/PortWatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static anyLocalAddress:Ljava/net/InetAddress;

.field private static pool:Ljava/util/Vector;


# instance fields
.field boundaddress:Ljava/net/InetAddress;

.field connectTimeout:I

.field host:Ljava/lang/String;

.field lport:I

.field rport:I

.field session:Lcom/jcraft/jsch/Session;

.field ss:Ljava/net/ServerSocket;

.field thread:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/jcraft/jsch/PortWatcher;->pool:Ljava/util/Vector;

    const/4 v0, 0x0

    sput-object v0, Lcom/jcraft/jsch/PortWatcher;->anyLocalAddress:Ljava/net/InetAddress;

    :try_start_0
    const-string v0, "0.0.0.0"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/PortWatcher;->anyLocalAddress:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>(Lcom/jcraft/jsch/Session;Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/PortWatcher;->connectTimeout:I

    iput-object p1, p0, Lcom/jcraft/jsch/PortWatcher;->session:Lcom/jcraft/jsch/Session;

    iput p3, p0, Lcom/jcraft/jsch/PortWatcher;->lport:I

    iput-object p4, p0, Lcom/jcraft/jsch/PortWatcher;->host:Ljava/lang/String;

    iput p5, p0, Lcom/jcraft/jsch/PortWatcher;->rport:I

    :try_start_0
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lcom/jcraft/jsch/PortWatcher;->boundaddress:Ljava/net/InetAddress;

    if-nez p6, :cond_0

    new-instance p1, Ljava/net/ServerSocket;

    iget-object p4, p0, Lcom/jcraft/jsch/PortWatcher;->boundaddress:Ljava/net/InetAddress;

    invoke-direct {p1, p3, v0, p4}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-interface {p6, p3, v0, p1}, Lcom/jcraft/jsch/ServerSocketFactory;->createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/jcraft/jsch/PortWatcher;->ss:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p3, :cond_1

    invoke-virtual {p1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    iput p1, p0, Lcom/jcraft/jsch/PortWatcher;->lport:I

    :cond_1
    return-void

    :goto_1
    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "PortForwardingL: local port "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " cannot be bound."

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/jcraft/jsch/JSchException;

    invoke-direct {p3, p2, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public static addPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;)Lcom/jcraft/jsch/PortWatcher;
    .locals 7

    invoke-static {p1}, Lcom/jcraft/jsch/PortWatcher;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p2}, Lcom/jcraft/jsch/PortWatcher;->getPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)Lcom/jcraft/jsch/PortWatcher;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/jcraft/jsch/PortWatcher;

    move-object v0, p1

    move-object v1, p0

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/jcraft/jsch/PortWatcher;-><init>(Lcom/jcraft/jsch/Session;Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;)V

    sget-object p0, Lcom/jcraft/jsch/PortWatcher;->pool:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p0, Lcom/jcraft/jsch/JSchException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "PortForwardingL: local port "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is already registered."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static delPort(Lcom/jcraft/jsch/Session;)V
    .locals 7

    sget-object v0, Lcom/jcraft/jsch/PortWatcher;->pool:Ljava/util/Vector;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/jcraft/jsch/PortWatcher;->pool:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lcom/jcraft/jsch/PortWatcher;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    sget-object v5, Lcom/jcraft/jsch/PortWatcher;->pool:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    sget-object v5, Lcom/jcraft/jsch/PortWatcher;->pool:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jcraft/jsch/PortWatcher;

    iget-object v6, v5, Lcom/jcraft/jsch/PortWatcher;->session:Lcom/jcraft/jsch/Session;

    if-ne v6, p0, :cond_0

    invoke-virtual {v5}, Lcom/jcraft/jsch/PortWatcher;->delete()V

    add-int/lit8 v6, v4, 0x1

    aput-object v5, v1, v4

    move v4, v6

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    if-ge v2, v4, :cond_2

    aget-object p0, v1, v2

    sget-object v3, Lcom/jcraft/jsch/PortWatcher;->pool:Ljava/util/Vector;

    invoke-virtual {v3, p0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)Lcom/jcraft/jsch/PortWatcher;
    .locals 5

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 2
    .line 3
    .line 4
    move-result-object p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    sget-object v0, Lcom/jcraft/jsch/PortWatcher;->pool:Ljava/util/Vector;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    :try_start_1
    sget-object v2, Lcom/jcraft/jsch/PortWatcher;->pool:Ljava/util/Vector;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-ge v1, v2, :cond_3

    .line 16
    .line 17
    sget-object v2, Lcom/jcraft/jsch/PortWatcher;->pool:Ljava/util/Vector;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/jcraft/jsch/PortWatcher;

    .line 24
    .line 25
    iget-object v3, v2, Lcom/jcraft/jsch/PortWatcher;->session:Lcom/jcraft/jsch/Session;

    .line 26
    .line 27
    if-ne v3, p0, :cond_2

    .line 28
    .line 29
    iget v3, v2, Lcom/jcraft/jsch/PortWatcher;->lport:I

    .line 30
    .line 31
    if-ne v3, p2, :cond_2

    .line 32
    .line 33
    sget-object v3, Lcom/jcraft/jsch/PortWatcher;->anyLocalAddress:Ljava/net/InetAddress;

    .line 34
    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    iget-object v4, v2, Lcom/jcraft/jsch/PortWatcher;->boundaddress:Ljava/net/InetAddress;

    .line 38
    .line 39
    invoke-virtual {v4, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_2

    .line 48
    :cond_0
    :goto_1
    iget-object v3, v2, Lcom/jcraft/jsch/PortWatcher;->boundaddress:Ljava/net/InetAddress;

    .line 49
    .line 50
    invoke-virtual {v3, p1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    :cond_1
    monitor-exit v0

    .line 57
    return-object v2

    .line 58
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    monitor-exit v0

    .line 62
    const/4 p0, 0x0

    .line 63
    return-object p0

    .line 64
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    throw p0

    .line 66
    :catch_0
    move-exception p0

    .line 67
    new-instance p2, Lcom/jcraft/jsch/JSchException;

    .line 68
    .line 69
    const-string v0, "PortForwardingL: invalid address "

    .line 70
    .line 71
    const-string v1, " specified."

    .line 72
    .line 73
    invoke-static {v0, p1, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-direct {p2, p1, p0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    throw p2
.end method

.method private static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "localhost"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "127.0.0.1"

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "0.0.0.0"

    :cond_2
    :goto_1
    return-object p0
.end method


# virtual methods
.method public delete()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/PortWatcher;->thread:Ljava/lang/Runnable;

    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/PortWatcher;->ss:Ljava/net/ServerSocket;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    :cond_0
    iput-object v0, p0, Lcom/jcraft/jsch/PortWatcher;->ss:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public run()V
    .locals 4

    iput-object p0, p0, Lcom/jcraft/jsch/PortWatcher;->thread:Ljava/lang/Runnable;

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/PortWatcher;->thread:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/PortWatcher;->ss:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    new-instance v3, Lcom/jcraft/jsch/ChannelDirectTCPIP;

    invoke-direct {v3}, Lcom/jcraft/jsch/ChannelDirectTCPIP;-><init>()V

    invoke-virtual {v3}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->init()V

    invoke-virtual {v3, v1}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->setInputStream(Ljava/io/InputStream;)V

    invoke-virtual {v3, v2}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->setOutputStream(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lcom/jcraft/jsch/PortWatcher;->session:Lcom/jcraft/jsch/Session;

    invoke-virtual {v1, v3}, Lcom/jcraft/jsch/Session;->addChannel(Lcom/jcraft/jsch/Channel;)V

    iget-object v1, p0, Lcom/jcraft/jsch/PortWatcher;->host:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->setHost(Ljava/lang/String;)V

    iget v1, p0, Lcom/jcraft/jsch/PortWatcher;->rport:I

    invoke-virtual {v3, v1}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->setPort(I)V

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->setOrgIPAddress(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->setOrgPort(I)V

    iget v0, p0, Lcom/jcraft/jsch/PortWatcher;->connectTimeout:I

    invoke-virtual {v3, v0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->connect(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/PortWatcher;->delete()V

    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/jcraft/jsch/PortWatcher;->connectTimeout:I

    return-void
.end method
