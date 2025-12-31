.class public Lorg/apache/ftpserver/listener/nio/NioListener;
.super Lorg/apache/ftpserver/listener/nio/AbstractListener;
.source "SourceFile"


# instance fields
.field private final LOG:Lorg/slf4j/Logger;

.field private acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

.field private address:Ljava/net/InetSocketAddress;

.field private context:Lorg/apache/ftpserver/impl/FtpServerContext;

.field private handler:Lorg/apache/ftpserver/impl/FtpHandler;

.field suspended:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZLorg/apache/ftpserver/ssl/SslConfiguration;Lorg/apache/ftpserver/DataConnectionConfiguration;ILjava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Lorg/apache/ftpserver/ssl/SslConfiguration;",
            "Lorg/apache/ftpserver/DataConnectionConfiguration;",
            "I",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/mina/filter/firewall/Subnet;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p8}, Lorg/apache/ftpserver/listener/nio/AbstractListener;-><init>(Ljava/lang/String;IZLorg/apache/ftpserver/ssl/SslConfiguration;Lorg/apache/ftpserver/DataConnectionConfiguration;ILjava/util/List;Ljava/util/List;)V

    const-class p1, Lorg/apache/ftpserver/listener/nio/NioListener;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->LOG:Lorg/slf4j/Logger;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->suspended:Z

    new-instance p1, Lorg/apache/ftpserver/impl/DefaultFtpHandler;

    invoke-direct {p1}, Lorg/apache/ftpserver/impl/DefaultFtpHandler;-><init>()V

    iput-object p1, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->handler:Lorg/apache/ftpserver/impl/FtpHandler;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZLorg/apache/ftpserver/ssl/SslConfiguration;Lorg/apache/ftpserver/DataConnectionConfiguration;ILorg/apache/ftpserver/ipfilter/IpFilter;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p7}, Lorg/apache/ftpserver/listener/nio/AbstractListener;-><init>(Ljava/lang/String;IZLorg/apache/ftpserver/ssl/SslConfiguration;Lorg/apache/ftpserver/DataConnectionConfiguration;ILorg/apache/ftpserver/ipfilter/IpFilter;)V

    const-class p1, Lorg/apache/ftpserver/listener/nio/NioListener;

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->LOG:Lorg/slf4j/Logger;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->suspended:Z

    new-instance p1, Lorg/apache/ftpserver/impl/DefaultFtpHandler;

    invoke-direct {p1}, Lorg/apache/ftpserver/impl/DefaultFtpHandler;-><init>()V

    iput-object p1, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->handler:Lorg/apache/ftpserver/impl/FtpHandler;

    return-void
.end method

.method private updatePort()V
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    invoke-interface {v0}, Lorg/apache/mina/transport/socket/SocketAcceptor;->getLocalAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/ftpserver/listener/nio/AbstractListener;->setPort(I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getActiveSessions()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/ftpserver/impl/FtpIoSession;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    invoke-interface {v0}, Lorg/apache/mina/core/service/IoService;->getManagedSessions()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/core/session/IoSession;

    new-instance v3, Lorg/apache/ftpserver/impl/FtpIoSession;

    iget-object v4, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-direct {v3, v2, v4}, Lorg/apache/ftpserver/impl/FtpIoSession;-><init>(Lorg/apache/mina/core/session/IoSession;Lorg/apache/ftpserver/impl/FtpServerContext;)V

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-object v1

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public isStopped()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSuspended()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->suspended:Z

    return v0
.end method

.method public declared-synchronized resume()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->suspended:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Resuming listener"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    iget-object v1, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->address:Ljava/net/InetSocketAddress;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/service/IoAcceptor;->bind(Ljava/net/SocketAddress;)V

    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Listener resumed"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/apache/ftpserver/listener/nio/NioListener;->updatePort()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->suspended:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Failed to resume listener"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start(Lorg/apache/ftpserver/impl/FtpServerContext;)V
    .locals 7

    const-string v0, "Failed to bind to address "

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ftpserver/listener/nio/NioListener;->isStopped()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_6

    :try_start_1
    iput-object p1, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    new-instance v1, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/mina/transport/socket/nio/NioSocketAcceptor;-><init>(I)V

    iput-object v1, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    invoke-virtual {p0}, Lorg/apache/ftpserver/listener/nio/AbstractListener;->getServerAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lorg/apache/ftpserver/listener/nio/AbstractListener;->getServerAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/ftpserver/listener/nio/AbstractListener;->getPort()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    :goto_0
    iput-object v1, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->address:Ljava/net/InetSocketAddress;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lorg/apache/ftpserver/listener/nio/AbstractListener;->getPort()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/apache/mina/transport/socket/SocketAcceptor;->setReuseAddress(Z)V

    iget-object v1, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    invoke-interface {v1}, Lorg/apache/mina/transport/socket/SocketAcceptor;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object v1

    const/16 v3, 0x800

    invoke-interface {v1, v3}, Lorg/apache/mina/core/session/IoSessionConfig;->setReadBufferSize(I)V

    iget-object v1, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    invoke-interface {v1}, Lorg/apache/mina/transport/socket/SocketAcceptor;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object v1

    sget-object v3, Lorg/apache/mina/core/session/IdleStatus;->BOTH_IDLE:Lorg/apache/mina/core/session/IdleStatus;

    invoke-virtual {p0}, Lorg/apache/ftpserver/listener/nio/AbstractListener;->getIdleTimeout()I

    move-result v4

    invoke-interface {v1, v3, v4}, Lorg/apache/mina/core/session/IoSessionConfig;->setIdleTime(Lorg/apache/mina/core/session/IdleStatus;I)V

    iget-object v1, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    invoke-interface {v1}, Lorg/apache/mina/transport/socket/SocketAcceptor;->getSessionConfig()Lorg/apache/mina/transport/socket/SocketSessionConfig;

    move-result-object v1

    const/16 v3, 0x200

    invoke-interface {v1, v3}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->setReceiveBufferSize(I)V

    new-instance v1, Lorg/apache/mina/filter/logging/MdcInjectionFilter;

    invoke-direct {v1}, Lorg/apache/mina/filter/logging/MdcInjectionFilter;-><init>()V

    iget-object v3, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    invoke-interface {v3}, Lorg/apache/mina/core/service/IoService;->getFilterChain()Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    move-result-object v3

    const-string v4, "mdcFilter"

    invoke-virtual {v3, v4, v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->addLast(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V

    invoke-virtual {p0}, Lorg/apache/ftpserver/listener/nio/AbstractListener;->getIpFilter()Lorg/apache/ftpserver/ipfilter/IpFilter;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    invoke-interface {v4}, Lorg/apache/mina/core/service/IoService;->getFilterChain()Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    move-result-object v4

    const-string v5, "ipFilter"

    new-instance v6, Lorg/apache/ftpserver/ipfilter/MinaIpFilter;

    invoke-direct {v6, v3}, Lorg/apache/ftpserver/ipfilter/MinaIpFilter;-><init>(Lorg/apache/ftpserver/ipfilter/IpFilter;)V

    invoke-virtual {v4, v5, v6}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->addLast(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V

    :cond_1
    iget-object v3, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    invoke-interface {v3}, Lorg/apache/mina/core/service/IoService;->getFilterChain()Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    move-result-object v3

    const-string v4, "threadPool"

    new-instance v5, Lorg/apache/mina/filter/executor/ExecutorFilter;

    invoke-interface {p1}, Lorg/apache/ftpserver/impl/FtpServerContext;->getThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/mina/filter/executor/ExecutorFilter;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-virtual {v3, v4, v5}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->addLast(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V

    iget-object v3, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    invoke-interface {v3}, Lorg/apache/mina/core/service/IoService;->getFilterChain()Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    move-result-object v3

    const-string v4, "codec"

    new-instance v5, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;

    new-instance v6, Lorg/apache/ftpserver/listener/nio/FtpServerProtocolCodecFactory;

    invoke-direct {v6}, Lorg/apache/ftpserver/listener/nio/FtpServerProtocolCodecFactory;-><init>()V

    invoke-direct {v5, v6}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;-><init>(Lorg/apache/mina/filter/codec/ProtocolCodecFactory;)V

    invoke-virtual {v3, v4, v5}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->addLast(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V

    iget-object v3, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    invoke-interface {v3}, Lorg/apache/mina/core/service/IoService;->getFilterChain()Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    move-result-object v3

    const-string v4, "mdcFilter2"

    invoke-virtual {v3, v4, v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->addLast(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V

    iget-object v1, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    invoke-interface {v1}, Lorg/apache/mina/core/service/IoService;->getFilterChain()Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    move-result-object v1

    const-string v3, "logger"

    new-instance v4, Lorg/apache/ftpserver/listener/nio/FtpLoggingFilter;

    invoke-direct {v4}, Lorg/apache/ftpserver/listener/nio/FtpLoggingFilter;-><init>()V

    invoke-virtual {v1, v3, v4}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->addLast(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V

    invoke-virtual {p0}, Lorg/apache/ftpserver/listener/nio/AbstractListener;->isImplicitSsl()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lorg/apache/ftpserver/listener/nio/AbstractListener;->getSslConfiguration()Lorg/apache/ftpserver/ssl/SslConfiguration;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v3, Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-interface {v1}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/mina/filter/ssl/SslFilter;-><init>(Ljavax/net/ssl/SSLContext;)V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v1}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getClientAuth()Lorg/apache/ftpserver/ssl/ClientAuth;

    move-result-object v4

    sget-object v5, Lorg/apache/ftpserver/ssl/ClientAuth;->NEED:Lorg/apache/ftpserver/ssl/ClientAuth;

    if-ne v4, v5, :cond_2

    invoke-virtual {v3, v2}, Lorg/apache/mina/filter/ssl/SslFilter;->setNeedClientAuth(Z)V

    goto :goto_2

    :cond_2
    invoke-interface {v1}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getClientAuth()Lorg/apache/ftpserver/ssl/ClientAuth;

    move-result-object v4

    sget-object v5, Lorg/apache/ftpserver/ssl/ClientAuth;->WANT:Lorg/apache/ftpserver/ssl/ClientAuth;

    if-ne v4, v5, :cond_3

    invoke-virtual {v3, v2}, Lorg/apache/mina/filter/ssl/SslFilter;->setWantClientAuth(Z)V

    :cond_3
    :goto_2
    invoke-interface {v1}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/apache/mina/filter/ssl/SslFilter;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    invoke-interface {v1}, Lorg/apache/mina/core/service/IoService;->getFilterChain()Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    move-result-object v1

    const-string v2, "sslFilter"

    invoke-virtual {v1, v2, v3}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->addFirst(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V

    goto :goto_3

    :catch_1
    new-instance p1, Lorg/apache/ftpserver/FtpServerConfigurationException;

    const-string v0, "SSL could not be initialized, check configuration"

    invoke-direct {p1, v0}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_3
    iget-object v1, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->handler:Lorg/apache/ftpserver/impl/FtpHandler;

    invoke-interface {v1, p1, p0}, Lorg/apache/ftpserver/impl/FtpHandler;->init(Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/listener/Listener;)V

    iget-object v1, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    new-instance v2, Lorg/apache/ftpserver/listener/nio/FtpHandlerAdapter;

    iget-object v3, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->handler:Lorg/apache/ftpserver/impl/FtpHandler;

    invoke-direct {v2, p1, v3}, Lorg/apache/ftpserver/listener/nio/FtpHandlerAdapter;-><init>(Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/impl/FtpHandler;)V

    invoke-interface {v1, v2}, Lorg/apache/mina/core/service/IoService;->setHandler(Lorg/apache/mina/core/service/IoHandler;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object p1, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    iget-object v1, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->address:Ljava/net/InetSocketAddress;

    invoke-interface {p1, v1}, Lorg/apache/mina/core/service/IoAcceptor;->bind(Ljava/net/SocketAddress;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-direct {p0}, Lorg/apache/ftpserver/listener/nio/NioListener;->updatePort()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :catch_2
    move-exception p1

    :try_start_6
    new-instance v1, Lorg/apache/ftpserver/FtpServerConfigurationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", check configuration"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_4
    :try_start_7
    invoke-virtual {p0}, Lorg/apache/ftpserver/listener/nio/NioListener;->stop()V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Listener already started"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_5
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/mina/core/service/IoAcceptor;->unbind()V

    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    invoke-interface {v0}, Lorg/apache/mina/core/service/IoService;->dispose()V

    iput-object v1, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iput-object v1, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->context:Lorg/apache/ftpserver/impl/FtpServerContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized suspend()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->suspended:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Suspending listener"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->acceptor:Lorg/apache/mina/transport/socket/SocketAcceptor;

    invoke-interface {v0}, Lorg/apache/mina/core/service/IoAcceptor;->unbind()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->suspended:Z

    iget-object v0, p0, Lorg/apache/ftpserver/listener/nio/NioListener;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Listener suspended"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method
