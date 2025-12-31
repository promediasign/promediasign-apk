.class public Lorg/apache/ftpserver/impl/IODataConnectionFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;


# instance fields
.field private final LOG:Lorg/slf4j/Logger;

.field address:Ljava/net/InetAddress;

.field private dataSoc:Ljava/net/Socket;

.field private isZip:Z

.field passive:Z

.field port:I

.field requestTime:J

.field secure:Z

.field servSoc:Ljava/net/ServerSocket;

.field private serverContext:Lorg/apache/ftpserver/impl/FtpServerContext;

.field serverControlAddress:Ljava/net/InetAddress;

.field session:Lorg/apache/ftpserver/impl/FtpIoSession;


# direct methods
.method public constructor <init>(Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/impl/FtpIoSession;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->LOG:Lorg/slf4j/Logger;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->port:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->requestTime:J

    iput-boolean v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->passive:Z

    iput-boolean v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->secure:Z

    iput-boolean v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->isZip:Z

    iput-object p2, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->session:Lorg/apache/ftpserver/impl/FtpIoSession;

    iput-object p1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->serverContext:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-virtual {p2}, Lorg/apache/ftpserver/impl/FtpIoSession;->getListener()Lorg/apache/ftpserver/listener/Listener;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/ftpserver/listener/Listener;->getDataConnectionConfiguration()Lorg/apache/ftpserver/DataConnectionConfiguration;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/ftpserver/DataConnectionConfiguration;->isImplicitSsl()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->secure:Z

    :cond_0
    return-void
.end method

.method private declared-synchronized createDataSocket()Ljava/net/Socket;
    .locals 8

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->dataSoc:Ljava/net/Socket;

    iget-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->session:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getListener()Lorg/apache/ftpserver/listener/Listener;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/listener/Listener;->getDataConnectionConfiguration()Lorg/apache/ftpserver/DataConnectionConfiguration;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-boolean v1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->passive:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->secure:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Opening secure active data connection"

    invoke-interface {v1, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->getSslConfiguration()Lorg/apache/ftpserver/ssl/SslConfiguration;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v4, v2}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    invoke-interface {v1}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    :goto_0
    iput-object v4, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->dataSoc:Ljava/net/Socket;

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/apache/ftpserver/ftplet/FtpException;

    const-string v1, "Data connection SSL not configured"

    invoke-direct {v0, v1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Opening active data connection"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    iput-object v1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->dataSoc:Ljava/net/Socket;

    :goto_1
    iget-object v1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->dataSoc:Ljava/net/Socket;

    invoke-virtual {v1, v3}, Ljava/net/Socket;->setReuseAddress(Z)V

    invoke-interface {v0}, Lorg/apache/ftpserver/DataConnectionConfiguration;->getActiveLocalAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->resolveAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->session:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    :cond_3
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-interface {v0}, Lorg/apache/ftpserver/DataConnectionConfiguration;->getActiveLocalPort()I

    move-result v3

    invoke-direct {v2, v1, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget-object v1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Binding active data connection to {}"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->dataSoc:Ljava/net/Socket;

    invoke-virtual {v1, v2}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    iget-object v1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->dataSoc:Ljava/net/Socket;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->address:Ljava/net/InetAddress;

    iget v4, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->port:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    goto/16 :goto_4

    :cond_4
    iget-boolean v1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->secure:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Opening secure passive data connection"

    invoke-interface {v1, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->getSslConfiguration()Lorg/apache/ftpserver/ssl/SslConfiguration;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->servSoc:Ljava/net/ServerSocket;

    invoke-virtual {v5}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/net/Socket;->getPort()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, v3}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v4, v2}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    invoke-interface {v1}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getClientAuth()Lorg/apache/ftpserver/ssl/ClientAuth;

    move-result-object v2

    sget-object v5, Lorg/apache/ftpserver/ssl/ClientAuth;->NEED:Lorg/apache/ftpserver/ssl/ClientAuth;

    if-ne v2, v5, :cond_5

    invoke-virtual {v4, v3}, Ljavax/net/ssl/SSLSocket;->setNeedClientAuth(Z)V

    goto :goto_2

    :cond_5
    invoke-interface {v1}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getClientAuth()Lorg/apache/ftpserver/ssl/ClientAuth;

    move-result-object v2

    sget-object v5, Lorg/apache/ftpserver/ssl/ClientAuth;->WANT:Lorg/apache/ftpserver/ssl/ClientAuth;

    if-ne v2, v5, :cond_6

    invoke-virtual {v4, v3}, Ljavax/net/ssl/SSLSocket;->setWantClientAuth(Z)V

    :cond_6
    :goto_2
    invoke-interface {v1}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_7
    iput-object v4, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->dataSoc:Ljava/net/Socket;

    goto :goto_3

    :cond_8
    new-instance v0, Lorg/apache/ftpserver/ftplet/FtpException;

    const-string v1, "Data connection SSL not configured"

    invoke-direct {v0, v1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    iget-object v1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Opening passive data connection"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->servSoc:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->dataSoc:Ljava/net/Socket;

    :goto_3
    iget-object v1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->session:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getListener()Lorg/apache/ftpserver/listener/Listener;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ftpserver/listener/Listener;->getDataConnectionConfiguration()Lorg/apache/ftpserver/DataConnectionConfiguration;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->dataSoc:Ljava/net/Socket;

    invoke-interface {v1}, Lorg/apache/ftpserver/DataConnectionConfiguration;->getIdleTime()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v2, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Passive data connection opened"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    :try_start_2
    iget-object v1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->dataSoc:Ljava/net/Socket;

    invoke-interface {v0}, Lorg/apache/ftpserver/DataConnectionConfiguration;->getIdleTime()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->dataSoc:Ljava/net/Socket;

    instance-of v1, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_a

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    :cond_a
    iget-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->dataSoc:Ljava/net/Socket;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_5
    :try_start_3
    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->closeDataConnection()V

    iget-object v1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->LOG:Lorg/slf4j/Logger;

    const-string v2, "FtpDataConnection.getDataSocket()"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_6
    monitor-exit p0

    throw v0
.end method

.method private getSslConfiguration()Lorg/apache/ftpserver/ssl/SslConfiguration;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->session:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getListener()Lorg/apache/ftpserver/listener/Listener;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/listener/Listener;->getDataConnectionConfiguration()Lorg/apache/ftpserver/DataConnectionConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/DataConnectionConfiguration;->getSslConfiguration()Lorg/apache/ftpserver/ssl/SslConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->session:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getListener()Lorg/apache/ftpserver/listener/Listener;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/listener/Listener;->getSslConfiguration()Lorg/apache/ftpserver/ssl/SslConfiguration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private resolveAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/ftpserver/DataConnectionException;

    const-string v1, "Failed to resolve address"

    invoke-direct {v0, v1, p1}, Lorg/apache/ftpserver/DataConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized closeDataConnection()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->dataSoc:Ljava/net/Socket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v2, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->LOG:Lorg/slf4j/Logger;

    const-string v3, "FtpDataConnection.closeDataSocket()"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iput-object v1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->dataSoc:Ljava/net/Socket;

    :cond_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->servSoc:Ljava/net/ServerSocket;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    iget-object v2, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->LOG:Lorg/slf4j/Logger;

    const-string v3, "FtpDataConnection.closeDataSocket()"

    invoke-interface {v2, v3, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->session:Lorg/apache/ftpserver/impl/FtpIoSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getListener()Lorg/apache/ftpserver/listener/Listener;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/listener/Listener;->getDataConnectionConfiguration()Lorg/apache/ftpserver/DataConnectionConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v2, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->port:I

    invoke-interface {v0, v2}, Lorg/apache/ftpserver/DataConnectionConfiguration;->releasePassivePort(I)V

    :cond_1
    iput-object v1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->servSoc:Ljava/net/ServerSocket;

    :cond_2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->requestTime:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public dispose()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->closeDataConnection()V

    return-void
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->port:I

    return v0
.end method

.method public declared-synchronized initActiveDataConnection(Ljava/net/InetSocketAddress;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->closeDataConnection()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->passive:Z

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->address:Ljava/net/InetAddress;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    iput p1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->port:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->requestTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized initPassiveDataConnection()Ljava/net/InetSocketAddress;
    .locals 9

    const-string v0, "Failed to initate passive data connection: "

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Initiating passive data connection"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->closeDataConnection()V

    iget-object v1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->session:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getListener()Lorg/apache/ftpserver/listener/Listener;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ftpserver/listener/Listener;->getDataConnectionConfiguration()Lorg/apache/ftpserver/DataConnectionConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ftpserver/DataConnectionConfiguration;->requestPassivePort()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    :try_start_1
    iget-object v2, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->session:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v2}, Lorg/apache/ftpserver/impl/FtpIoSession;->getListener()Lorg/apache/ftpserver/listener/Listener;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ftpserver/listener/Listener;->getDataConnectionConfiguration()Lorg/apache/ftpserver/DataConnectionConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ftpserver/DataConnectionConfiguration;->getPassiveAddress()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->serverControlAddress:Ljava/net/InetAddress;

    :goto_0
    iput-object v4, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->address:Ljava/net/InetAddress;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_0
    move-exception v1

    goto/16 :goto_4

    :cond_0
    invoke-interface {v2}, Lorg/apache/ftpserver/DataConnectionConfiguration;->getPassiveAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->resolveAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    goto :goto_0

    :goto_1
    iget-boolean v4, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->secure:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->LOG:Lorg/slf4j/Logger;

    const-string v6, "Opening SSL passive data connection on address \"{}\" and port {}"

    iget-object v7, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->address:Ljava/net/InetAddress;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v6, v7, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0}, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->getSslConfiguration()Lorg/apache/ftpserver/ssl/SslConfiguration;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/net/ServerSocket;

    iget-object v6, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->address:Ljava/net/InetAddress;

    invoke-direct {v4, v1, v5, v6}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v4, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->servSoc:Ljava/net/ServerSocket;

    iget-object v4, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->LOG:Lorg/slf4j/Logger;

    const-string v5, "SSL Passive data connection created on address \"{}\" and port {}"

    iget-object v6, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->address:Ljava/net/InetAddress;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_2
    invoke-interface {v4, v5, v6, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance v1, Lorg/apache/ftpserver/DataConnectionException;

    const-string v2, "Data connection SSL required but not configured."

    invoke-direct {v1, v2}, Lorg/apache/ftpserver/DataConnectionException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v4, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->LOG:Lorg/slf4j/Logger;

    const-string v6, "Opening passive data connection on address \"{}\" and port {}"

    iget-object v7, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->address:Ljava/net/InetAddress;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v6, v7, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Ljava/net/ServerSocket;

    iget-object v6, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->address:Ljava/net/InetAddress;

    invoke-direct {v4, v1, v5, v6}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v4, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->servSoc:Ljava/net/ServerSocket;

    iget-object v4, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->LOG:Lorg/slf4j/Logger;

    const-string v5, "Passive data connection created on address \"{}\" and port {}"

    iget-object v6, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->address:Ljava/net/InetAddress;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    :goto_3
    iget-object v1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->servSoc:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v1

    iput v1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->port:I

    iget-object v1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->servSoc:Ljava/net/ServerSocket;

    invoke-interface {v2}, Lorg/apache/ftpserver/DataConnectionConfiguration;->getIdleTime()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->passive:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->requestTime:J

    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->address:Ljava/net/InetAddress;

    iget v4, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->port:I

    invoke-direct {v1, v2, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :goto_4
    :try_start_2
    iput-object v3, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->servSoc:Ljava/net/ServerSocket;

    invoke-virtual {p0}, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->closeDataConnection()V

    new-instance v2, Lorg/apache/ftpserver/DataConnectionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lorg/apache/ftpserver/DataConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_3
    iput-object v3, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->servSoc:Ljava/net/ServerSocket;

    new-instance v0, Lorg/apache/ftpserver/DataConnectionException;

    const-string v1, "Cannot find an available passive port."

    invoke-direct {v0, v1}, Lorg/apache/ftpserver/DataConnectionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    monitor-exit p0

    throw v0
.end method

.method public isSecure()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->secure:Z

    return v0
.end method

.method public declared-synchronized isTimeout(J)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->requestTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    monitor-exit p0

    return v4

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->dataSoc:Ljava/net/Socket;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return v4

    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->session:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->getListener()Lorg/apache/ftpserver/listener/Listener;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/listener/Listener;->getDataConnectionConfiguration()Lorg/apache/ftpserver/DataConnectionConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/DataConnectionConfiguration;->getIdleTime()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    mul-int/lit16 v0, v0, 0x3e8

    if-nez v0, :cond_2

    monitor-exit p0

    return v4

    :cond_2
    :try_start_3
    iget-wide v1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->requestTime:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-long/2addr p1, v1

    int-to-long v0, v0

    cmp-long v2, p1, v0

    monitor-exit p0

    if-gez v2, :cond_3

    return v4

    :cond_3
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isZipMode()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->isZip:Z

    return v0
.end method

.method public openConnection()Lorg/apache/ftpserver/ftplet/DataConnection;
    .locals 3

    new-instance v0, Lorg/apache/ftpserver/impl/IODataConnection;

    invoke-direct {p0}, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->createDataSocket()Ljava/net/Socket;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->session:Lorg/apache/ftpserver/impl/FtpIoSession;

    invoke-direct {v0, v1, v2, p0}, Lorg/apache/ftpserver/impl/IODataConnection;-><init>(Ljava/net/Socket;Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;)V

    return-object v0
.end method

.method public setSecure(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->secure:Z

    return-void
.end method

.method public setServerControlAddress(Ljava/net/InetAddress;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->serverControlAddress:Ljava/net/InetAddress;

    return-void
.end method

.method public setZipMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/ftpserver/impl/IODataConnectionFactory;->isZip:Z

    return-void
.end method
